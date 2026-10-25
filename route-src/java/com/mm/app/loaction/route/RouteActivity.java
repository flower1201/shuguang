package com.mm.app.loaction.route;

import android.Manifest;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.AppOpsManager;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.location.Location;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import android.text.InputType;
import android.view.Gravity;
import android.view.View;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputMethodManager;
import android.widget.*;
import com.baidu.mapapi.map.*;
import com.baidu.mapapi.model.LatLng;
import com.baidu.mapapi.model.LatLngBounds;
import com.mm.app.loaction.application.utils.LocationUtils;
import org.json.JSONArray;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

public final class RouteActivity extends Activity {
    private static final int TEAL = UiStyles.ACCENT, INK = UiStyles.INK;
    private final Handler handler = new Handler(Looper.getMainLooper());
    private final ArrayList<LatLng> waypoints = new ArrayList<>();
    private final ArrayList<LatLng> planned = new ArrayList<>();
    private final ArrayList<BitmapDescriptor> icons = new ArrayList<>();
    private MapView mapView;
    private BaiduMap map;
    private Marker movingMarker;
    private TextView hint, stats;
    private EditText speed, destinationInput;
    private RadioButton navigation, manual;
    private Spinner transport;
    private Button plan, start, pause, stop, undo, clear, coordinates;
    private NavigationPlanner planner;
    private Button searchButton, locateButton;
    private DestinationSearch destinationSearch;
    private DeviceLocator locator;
    private LatLng pendingDestination, currentPosition;
    private String pendingDestinationName;
    private int searchGeneration, locationGeneration;
    private SharedPreferences preferences;
    private boolean restoring, destroyed, keyConfigured;
    private int generation;
    private int lastTransport;
    private RoutePlayback.State renderedState;
    private final Runnable refresh = new Runnable() {
        public void run() {
            RouteController.Status status = RouteController.status();
            if ((status != null && (status.state == RoutePlayback.State.RUNNING || status.state != renderedState))
                    || (status == null && renderedState != null)) updateStatus();
            handler.postDelayed(this, 500);
        }
    };

    @Override public void onCreate(Bundle state) {
        super.onCreate(state);
        getWindow().setStatusBarColor(UiStyles.CANVAS);
        getWindow().setNavigationBarColor(Color.WHITE);
        getWindow().getDecorView().setSystemUiVisibility(getWindow().getDecorView().getSystemUiVisibility()
                | View.SYSTEM_UI_FLAG_LIGHT_STATUS_BAR | View.SYSTEM_UI_FLAG_LIGHT_NAVIGATION_BAR);
        preferences = getSharedPreferences("route_editor", MODE_PRIVATE);
        keyConfigured = hasMapKey();
        createViews();
        restoreDraft();
        double lat = getIntent().getDoubleExtra("latitude", 36.667662);
        double lng = getIntent().getDoubleExtra("longitude", 117.027707);
        if (!Double.isFinite(lat) || !Double.isFinite(lng) || (lat == 0 && lng == 0)) { lat = 36.667662; lng = 117.027707; }
        double[] bd = LocationUtils.wgs2bd09(lng, lat);
        LatLng center = waypoints.isEmpty() ? new LatLng(bd[1], bd[0]) : waypoints.get(0);
        map.setMapStatus(MapStatusUpdateFactory.newLatLngZoom(center, 16));
        redraw();
        showInstructions();
        updateStatus();
    }

    private void createViews() {
        LinearLayout root = new LinearLayout(this);
        root.setOrientation(LinearLayout.VERTICAL); root.setBackgroundColor(UiStyles.CANVAS);
        setContentView(root);
        LinearLayout header = row(); header.setPadding(dp(12), 0, dp(20), 0);
        Button back = button("返回"); back.setTextColor(TEAL); back.setOnClickListener(v -> finish());
        back.setBackground(UiStyles.ripple(back, UiStyles.CANVAS, 12, false));
        header.addView(back, new LinearLayout.LayoutParams(dp(64), dp(40)));
        TextView title = label("自定义轨迹", 21); title.setTypeface(Typeface.create("sans-serif-medium", Typeface.NORMAL));
        LinearLayout.LayoutParams titleParams = new LinearLayout.LayoutParams(0, dp(52), 1);
        titleParams.leftMargin = dp(12); header.addView(title, titleParams); root.addView(header);

        LinearLayout searchRow = row(); searchRow.setPadding(dp(16), dp(4), dp(16), dp(6));
        destinationInput = new EditText(this); destinationInput.setSingleLine(true); destinationInput.setTextSize(14);
        destinationInput.setHint("搜索目的地（地点 / 地址）"); destinationInput.setContentDescription("搜索目的地");
        destinationInput.setImeOptions(EditorInfo.IME_ACTION_SEARCH);
        destinationInput.setInputType(InputType.TYPE_CLASS_TEXT);
        UiStyles.input(destinationInput);
        int searchIcon = getResources().getIdentifier("sg_ic_search", "drawable", getPackageName());
        if (searchIcon != 0) {
            destinationInput.setCompoundDrawablesWithIntrinsicBounds(searchIcon, 0, 0, 0);
            destinationInput.setCompoundDrawablePadding(dp(8));
        }
        searchRow.addView(destinationInput, new LinearLayout.LayoutParams(0, dp(44), 1));
        searchButton = button("搜索"); searchButton.setOnClickListener(v -> searchDestination());
        UiStyles.button(searchButton, true);
        LinearLayout.LayoutParams searchParams = new LinearLayout.LayoutParams(dp(64), dp(44)); searchParams.leftMargin = dp(8);
        searchRow.addView(searchButton, searchParams); root.addView(searchRow);
        destinationInput.setOnEditorActionListener((view, action, event) -> {
            if (action == EditorInfo.IME_ACTION_SEARCH) { searchDestination(); return true; } return false;
        });

        RadioGroup modes = new RadioGroup(this); modes.setOrientation(LinearLayout.HORIZONTAL); modes.setPadding(dp(20), dp(4), dp(20), dp(4));
        navigation = new RadioButton(this); navigation.setId(View.generateViewId()); navigation.setText("导航推荐");
        manual = new RadioButton(this); manual.setId(View.generateViewId()); manual.setText("手动标定");
        UiStyles.segment(navigation); UiStyles.segment(manual);
        modes.addView(navigation, new RadioGroup.LayoutParams(0, dp(40), 1));
        modes.addView(manual, new RadioGroup.LayoutParams(0, dp(40), 1)); root.addView(modes);
        modes.setOnCheckedChangeListener((group, id) -> {
            if (restoring) return;
            pendingDestination = null;
            RouteController.cancel(); invalidatePlan(); waypoints.clear(); planned.clear(); redraw(); persist(); showInstructions(); updateStatus();
        });

        transport = new Spinner(this);
        transport.setAdapter(new ArrayAdapter<String>(this, android.R.layout.simple_spinner_dropdown_item, new String[]{"步行", "驾车", "骑行"}) {
            @Override public View getView(int position, View convertView, android.view.ViewGroup parent) {
                TextView text = (TextView)super.getView(position, convertView, parent);
                text.setTextSize(13); text.setTextColor(INK); text.setSingleLine(true);
                text.setPadding(dp(8), 0, dp(4), 0); return text;
            }
            @Override public View getDropDownView(int position, View convertView, android.view.ViewGroup parent) {
                TextView text = (TextView)super.getDropDownView(position, convertView, parent);
                text.setTextSize(15); text.setTextColor(INK); text.setPadding(dp(16), dp(12), dp(16), dp(12)); return text;
            }
        });
        modes.addView(transport, new RadioGroup.LayoutParams(dp(92), dp(40)));
        plan = button("规划路线"); plan.setOnClickListener(v -> planNavigation());
        transport.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {
            public void onItemSelected(AdapterView<?> parent, View view, int position, long id) {
                if (restoring || position == lastTransport) return;
                lastTransport = position;
                if (navigation.isChecked()) { RouteController.cancel(); invalidatePlan(); planned.clear(); redraw(); persist(); showInstructions(); updateStatus(); }
            }
            public void onNothingSelected(AdapterView<?> parent) { }
        });

        hint = label("", 12); hint.setTextColor(UiStyles.MUTED); hint.setLineSpacing(dp(2), 1);
        hint.setMaxLines(2); hint.setEllipsize(android.text.TextUtils.TruncateAt.END);
        hint.setPadding(dp(20), dp(6), dp(20), dp(6)); root.addView(hint);
        mapView = new MapView(this); map = mapView.getMap(); mapView.showZoomControls(false);
        FrameLayout mapContainer = new FrameLayout(this);
        mapContainer.setBackground(UiStyles.shape(mapContainer, Color.WHITE, 20, false));
        mapContainer.setClipToOutline(true);
        mapContainer.addView(mapView, new FrameLayout.LayoutParams(-1, -1));
        locateButton = button("当前位置"); locateButton.setContentDescription("定位到当前位置");
        locateButton.setBackground(UiStyles.ripple(locateButton, Color.WHITE, 12, true)); locateButton.setElevation(dp(2));
        locateButton.setOnClickListener(v -> locateCurrentPosition());
        FrameLayout.LayoutParams locateParams = new FrameLayout.LayoutParams(dp(104), dp(44), Gravity.TOP | Gravity.RIGHT);
        locateParams.topMargin = dp(8); locateParams.rightMargin = dp(12);
        mapContainer.addView(locateButton, locateParams);
        LinearLayout.LayoutParams mapParams = new LinearLayout.LayoutParams(-1, 0, 1);
        mapParams.setMargins(dp(12), dp(2), dp(12), dp(8)); root.addView(mapContainer, mapParams);
        map.setOnMapClickListener(new BaiduMap.OnMapClickListener() {
            public void onMapClick(LatLng point) { addWaypoint(point); }
            public void onMapPoiClick(MapPoi poi) { if (poi != null) addWaypoint(poi.getPosition()); }
        });

        LinearLayout panel = new LinearLayout(this); panel.setOrientation(LinearLayout.VERTICAL);
        panel.setBackground(UiStyles.shape(panel, Color.WHITE, 22, false)); panel.setPadding(dp(12), dp(8), dp(12), 0);
        root.addView(panel, new LinearLayout.LayoutParams(-1, -2));
        LinearLayout edit = row(); edit.setPadding(0, 0, 0, 0);
        undo = button("撤销点"); undo.setOnClickListener(v -> {
            if (pendingDestination != null) { pendingDestination = null; redraw(); showInstructions(); updateStatus(); return; }
            if (!waypoints.isEmpty()) { RouteController.cancel(); invalidatePlan(); waypoints.remove(waypoints.size() - 1); planned.clear(); redraw(); persist(); showInstructions(); updateStatus(); }
        });
        clear = button("清空"); clear.setOnClickListener(v -> { pendingDestination = null; RouteController.cancel(); invalidatePlan(); waypoints.clear(); planned.clear(); redraw(); persist(); showInstructions(); updateStatus(); });
        coordinates = button("坐标添加"); coordinates.setOnClickListener(v -> showCoordinates());
        for (Button b : new Button[]{undo, clear, coordinates, plan}) {
            LinearLayout.LayoutParams p = new LinearLayout.LayoutParams(0, dp(40), 1); p.setMargins(dp(3), 0, dp(3), 0); edit.addView(b, p);
        }
        panel.addView(edit);
        LinearLayout summary = row(); summary.setPadding(dp(8), dp(8), dp(8), 0);
        stats = label("", 13); stats.setTypeface(Typeface.create("sans-serif-medium", Typeface.NORMAL));
        stats.setLineSpacing(dp(3), 1); stats.setPadding(0, 0, dp(8), 0); stats.setMinLines(2);
        summary.addView(stats, new LinearLayout.LayoutParams(0, -2, 1));
        LinearLayout settings = new LinearLayout(this); settings.setOrientation(LinearLayout.VERTICAL);
        TextView speedLabel = label("速度 · km/h", 12); speedLabel.setTextColor(UiStyles.MUTED); settings.addView(speedLabel);
        speed = new EditText(this); speed.setSingleLine(true); speed.setTextSize(16); speed.setContentDescription("行进速度");
        speed.setInputType(InputType.TYPE_CLASS_NUMBER | InputType.TYPE_NUMBER_FLAG_DECIMAL);
        UiStyles.input(speed); speed.setTypeface(Typeface.MONOSPACE); speed.setTextSize(18);
        LinearLayout.LayoutParams speedParams = new LinearLayout.LayoutParams(dp(88), dp(40)); speedParams.topMargin = dp(4);
        settings.addView(speed, speedParams); summary.addView(settings); panel.addView(summary);
        LinearLayout actions = row(); actions.setPadding(0, dp(8), 0, dp(10));
        start = button("开始行进"); UiStyles.button(start, true); start.setOnClickListener(v -> startPlayback());
        pause = button("暂停"); pause.setOnClickListener(v -> {
            RouteController.Status s = RouteController.status();
            if (s != null && s.state == RoutePlayback.State.PAUSED) RouteController.resume(); else RouteController.pause();
            updateStatus();
        });
        stop = button("停止"); stop.setOnClickListener(v -> { RouteController.stop(this); updateStatus(); });
        for (Button b : new Button[]{start, pause, stop}) {
            LinearLayout.LayoutParams params = new LinearLayout.LayoutParams(0, dp(46), 1); params.setMargins(dp(3), 0, dp(3), 0); actions.addView(b, params);
        }
        panel.addView(actions);
    }

    private void addWaypoint(LatLng point) {
        if (active()) { toast("请先停止行进再编辑路线"); return; }
        if (pendingDestination != null && navigation.isChecked()) {
            LatLng destination = pendingDestination;
            if (RoutePath.distance(new RoutePath.Point(point.latitude, point.longitude), new RoutePath.Point(destination.latitude, destination.longitude)) < 1) {
                toast("起点与终点过近，请选择其他起点"); return;
            }
            pendingDestination = null; RouteController.cancel(); invalidatePlan(); planned.clear(); waypoints.clear();
            waypoints.add(point); waypoints.add(destination); redraw(); persist(); showInstructions(); updateStatus(); return;
        }
        if (!waypoints.isEmpty() && point.latitude == waypoints.get(waypoints.size() - 1).latitude
                && point.longitude == waypoints.get(waypoints.size() - 1).longitude) { toast("请放置不同的标定点"); return; }
        RouteController.cancel(); invalidatePlan(); planned.clear();
        if (navigation.isChecked() && waypoints.size() == 2) waypoints.set(1, point); else waypoints.add(point);
        redraw(); persist(); showInstructions(); updateStatus();
    }

    private void searchDestination() {
        if (active()) { toast("请先停止行进再搜索目的地"); return; }
        String keyword = destinationInput.getText().toString().trim();
        if (keyword.isEmpty()) { destinationInput.setError("请输入目的地名称或地址"); return; }
        if (!keyConfigured) { message("需要配置地图 Key", "地点搜索需要有效的百度 Android Key 及地点检索服务权限。"); return; }
        InputMethodManager keyboard = (InputMethodManager)getSystemService(INPUT_METHOD_SERVICE);
        if (keyboard != null) keyboard.hideSoftInputFromWindow(destinationInput.getWindowToken(), 0);
        destinationInput.clearFocus();
        requestDestination(keyword, "全国", 0);
    }

    private void cancelDestinationSearch() {
        searchGeneration++;
        if (destinationSearch != null) { destinationSearch.cancel(); destinationSearch = null; }
    }

    private void requestDestination(final String keyword, final String city, final int page) {
        cancelDestinationSearch(); final int request = searchGeneration;
        hint.setText("正在搜索目的地…");
        try {
            destinationSearch = new DestinationSearch(new DestinationSearch.Result() {
                public void ready(List<DestinationSearch.Place> places, List<String> cities, boolean more) { runOnUiThread(() -> {
                    if (destroyed || request != searchGeneration) return;
                    cancelDestinationSearch(); updateStatus(); showInstructions();
                    if (places.isEmpty()) {
                        new AlertDialog.Builder(RouteActivity.this).setTitle("请选择目的地所在城市")
                                .setItems(cities.toArray(new String[0]), (dialog, which) -> requestDestination(keyword, cities.get(which), 0))
                                .setNegativeButton("取消", null).show(); return;
                    }
                    String[] labels = new String[places.size()];
                    for (int i = 0; i < places.size(); i++) labels[i] = places.get(i).name + "\n" + places.get(i).address;
                    AlertDialog.Builder dialog = new AlertDialog.Builder(RouteActivity.this).setTitle("选择目的地 · 第 " + (page + 1) + " 页")
                            .setItems(labels, (d, which) -> selectDestination(places.get(which))).setNegativeButton("取消", null);
                    if (more) dialog.setPositiveButton("下一页", (d, w) -> requestDestination(keyword, city, page + 1));
                    if (page > 0) dialog.setNeutralButton("上一页", (d, w) -> requestDestination(keyword, city, page - 1));
                    dialog.show();
                }); }
                public void failed(String reason) { runOnUiThread(() -> {
                    if (destroyed || request != searchGeneration) return;
                    cancelDestinationSearch(); updateStatus(); hint.setText(reason);
                }); }
            });
            if (!destinationSearch.request(keyword, city, page)) {
                cancelDestinationSearch(); hint.setText("搜索请求未发起，请检查网络及百度 Key 的包名、签名和检索权限。");
            } else handler.postDelayed(() -> {
                if (!destroyed && request == searchGeneration && destinationSearch != null) {
                    cancelDestinationSearch(); updateStatus(); hint.setText("搜索超时，请检查网络后重试。");
                }
            }, 20000);
        } catch (RuntimeException error) { cancelDestinationSearch(); hint.setText("搜索暂不可用，请检查网络和地图配置。"); }
        updateStatus();
    }

    private void selectDestination(DestinationSearch.Place place) {
        if (active()) { toast("请先停止行进再编辑路线"); return; }
        destinationInput.setText(place.name);
        map.animateMapStatus(MapStatusUpdateFactory.newLatLngZoom(place.point, 17));
        if (!navigation.isChecked()) { addWaypoint(place.point); toast("已添加标定点：" + place.name); return; }
        if (waypoints.isEmpty()) {
            pendingDestination = place.point; pendingDestinationName = place.name; redraw(); showInstructions(); updateStatus();
        } else { addWaypoint(place.point); hint.setText("已选终点：" + place.name + "，点击规划推荐路线。"); }
    }

    private void locateCurrentPosition() {
        if (checkSelfPermission(Manifest.permission.ACCESS_FINE_LOCATION) != PackageManager.PERMISSION_GRANTED
                && checkSelfPermission(Manifest.permission.ACCESS_COARSE_LOCATION) != PackageManager.PERMISSION_GRANTED) {
            requestPermissions(new String[]{Manifest.permission.ACCESS_FINE_LOCATION, Manifest.permission.ACCESS_COARSE_LOCATION}, 102); return;
        }
        cancelLocator(); final int request = locationGeneration;
        locateButton.setText("定位中…"); locateButton.setEnabled(false);
        locator = new DeviceLocator(this, new DeviceLocator.Result() {
            public void ready(Location location) {
                if (destroyed || request != locationGeneration) return;
                locator = null; locateButton.setText("当前位置"); locateButton.setEnabled(true);
                double[] bd = LocationUtils.wgs2bd09(location.getLongitude(), location.getLatitude());
                currentPosition = new LatLng(bd[1], bd[0]);
                map.setMyLocationEnabled(true);
                map.setMyLocationData(new MyLocationData.Builder().latitude(bd[1]).longitude(bd[0])
                        .accuracy(location.hasAccuracy() ? location.getAccuracy() : 0).build());
                map.animateMapStatus(MapStatusUpdateFactory.newLatLngZoom(currentPosition, 17));
                String type = location.isFromMockProvider() ? "已定位到设备当前模拟位置" : "已定位到当前位置";
                if (!active() && pendingDestination != null) { addWaypoint(currentPosition); hint.setText(type + "，已设为起点，可规划推荐路线。"); }
                else {
                    toast(type);
                    if (!active()) new AlertDialog.Builder(RouteActivity.this).setTitle(type)
                            .setMessage(navigation.isChecked() ? "是否将此位置设为路线起点？" : "是否将此位置添加为标定点？")
                            .setNegativeButton("仅查看位置", null).setPositiveButton(navigation.isChecked() ? "设为起点" : "添加标定点", (dialog, which) -> {
                                if (active()) return;
                                if (navigation.isChecked()) {
                                    RouteController.cancel(); invalidatePlan(); planned.clear();
                                    if (waypoints.isEmpty()) waypoints.add(currentPosition); else waypoints.set(0, currentPosition);
                                    redraw(); persist(); showInstructions(); updateStatus();
                                } else addWaypoint(currentPosition);
                            }).show();
                }
            }
            public void failed(String reason) {
                if (destroyed || request != locationGeneration) return;
                locator = null; locateButton.setText("当前位置"); locateButton.setEnabled(true);
                new AlertDialog.Builder(RouteActivity.this).setTitle("未获取到位置").setMessage(reason)
                        .setNegativeButton("关闭", null).setPositiveButton("定位设置", (d, w) -> {
                            try { startActivity(new Intent(Settings.ACTION_LOCATION_SOURCE_SETTINGS)); }
                            catch (RuntimeException error) { toast("请手动打开系统定位设置"); }
                        }).show();
            }
        });
        locator.start();
    }

    private void cancelLocator() {
        locationGeneration++; if (locator != null) { locator.cancel(); locator = null; }
        if (locateButton != null) { locateButton.setText("当前位置"); locateButton.setEnabled(true); }
    }

    @Override public void onRequestPermissionsResult(int request, String[] permissions, int[] results) {
        super.onRequestPermissionsResult(request, permissions, results);
        if (request == 102) {
            if (checkSelfPermission(Manifest.permission.ACCESS_FINE_LOCATION) == PackageManager.PERMISSION_GRANTED
                    || checkSelfPermission(Manifest.permission.ACCESS_COARSE_LOCATION) == PackageManager.PERMISSION_GRANTED) locateCurrentPosition();
            else message("需要位置权限", "请在应用权限设置中允许位置权限后，再点击当前位置。");
        }
    }

    private void showCoordinates() {
        LinearLayout fields = new LinearLayout(this); fields.setOrientation(LinearLayout.VERTICAL); fields.setPadding(dp(20), dp(8), dp(20), 0);
        EditText latitude = coordinateInput("纬度，例如 36.670000"), longitude = coordinateInput("经度，例如 117.030000");
        fields.addView(latitude); fields.addView(longitude);
        AlertDialog dialog = new AlertDialog.Builder(this).setTitle("添加百度坐标 BD-09")
                .setView(fields).setNegativeButton("取消", null).setPositiveButton("添加标定点", null).create();
        dialog.setOnShowListener(d -> dialog.getButton(AlertDialog.BUTTON_POSITIVE).setOnClickListener(v -> {
            try {
                RoutePath.Point point = new RoutePath.Point(Double.parseDouble(latitude.getText().toString().trim()), Double.parseDouble(longitude.getText().toString().trim()));
                LatLng bd = new LatLng(point.latitude, point.longitude); addWaypoint(bd);
                map.animateMapStatus(MapStatusUpdateFactory.newLatLng(bd)); dialog.dismiss();
            } catch (IllegalArgumentException error) { latitude.setError("请输入有效的经纬度：纬度 ±90，经度 ±180"); }
        })); dialog.show();
    }

    private EditText coordinateInput(String placeholder) {
        EditText input = new EditText(this); input.setSingleLine(true); input.setHint(placeholder);
        input.setInputType(InputType.TYPE_CLASS_NUMBER | InputType.TYPE_NUMBER_FLAG_DECIMAL | InputType.TYPE_NUMBER_FLAG_SIGNED);
        UiStyles.input(input); input.setMinHeight(dp(48));
        LinearLayout.LayoutParams params = new LinearLayout.LayoutParams(-1, dp(48)); params.bottomMargin = dp(12); input.setLayoutParams(params);
        return input;
    }

    private void planNavigation() {
        if (waypoints.size() != 2) { toast("请先选择起点和终点"); return; }
        if (!keyConfigured) { message("需要配置地图 Key", "公开源码使用 YOUR_BAIDU_LBS_API_KEY 占位符。请在 AndroidManifest.xml 中配置与你的包名及签名匹配的百度地图 Android Key，再构建安装。手动模式仍可通过坐标添加轨迹。"); return; }
        invalidatePlan(); planned.clear(); redraw();
        final int request = generation;
        hint.setText("正在获取推荐路线…");
        try {
            planner = new NavigationPlanner(new NavigationPlanner.Result() {
                public void ready(List<LatLng> points) { runOnUiThread(() -> {
                    if (destroyed || request != generation) return;
                    planned.addAll(points); invalidatePlan(); redraw(); persist(); hint.setText("已采用导航推荐路线，可按设定速度开始行进");
                    LatLngBounds.Builder bounds = new LatLngBounds.Builder(); for (LatLng p : planned) bounds.include(p);
                    map.animateMapStatus(MapStatusUpdateFactory.newLatLngBounds(bounds.build(), dp(36), dp(36), dp(36), dp(36))); updateStatus();
                }); }
                public void failed(String reason) { runOnUiThread(() -> {
                    if (destroyed || request != generation) return;
                    invalidatePlan(); hint.setText(reason); updateStatus();
                }); }
            });
            if (!planner.plan(waypoints.get(0), waypoints.get(1), transport.getSelectedItemPosition())) {
                invalidatePlan(); hint.setText("路线请求未能发起，请检查网络、起终点及百度 Key 的包名和签名授权。");
            } else handler.postDelayed(() -> {
                if (!destroyed && generation == request && planner != null) {
                    invalidatePlan(); hint.setText("路线规划超时，请检查网络及百度 Key 后重试。"); updateStatus();
                }
            }, 30000);
        } catch (RuntimeException error) { invalidatePlan(); hint.setText("导航初始化失败：" + error.getMessage()); }
        updateStatus();
    }

    private void startPlayback() {
        if (checkSelfPermission(Manifest.permission.ACCESS_FINE_LOCATION) != PackageManager.PERMISSION_GRANTED) {
            requestPermissions(new String[]{Manifest.permission.ACCESS_FINE_LOCATION}, 101); return;
        }
        AppOpsManager ops = (AppOpsManager)getSystemService(APP_OPS_SERVICE);
        if (ops == null || ops.checkOpNoThrow("android:mock_location", android.os.Process.myUid(), getPackageName()) != AppOpsManager.MODE_ALLOWED) {
            new AlertDialog.Builder(this).setTitle("选择模拟位置信息应用")
                    .setMessage("请在系统开发者选项中，将“选择模拟位置信息应用”设为“曙光”，然后返回点击开始。")
                    .setNegativeButton("取消", null).setPositiveButton("打开开发者选项", (d, which) -> {
                        try { startActivity(new Intent(Settings.ACTION_APPLICATION_DEVELOPMENT_SETTINGS)); }
                        catch (RuntimeException error) { toast("请手动打开系统开发者选项"); }
                    }).show(); return;
        }
        try {
            double kmh = Double.parseDouble(speed.getText().toString().trim());
            if (!Double.isFinite(kmh) || kmh < 0.1 || kmh > 300) { speed.setError("请输入 0.1 至 300 km/h"); return; }
            List<LatLng> selected = navigation.isChecked() ? planned : waypoints;
            if (navigation.isChecked() && selected.isEmpty()) { toast("请先规划导航推荐路线"); return; }
            ArrayList<RoutePath.Point> wgs = new ArrayList<>();
            for (LatLng point : selected) {
                double[] converted = LocationUtils.bd2wgs(point.longitude, point.latitude);
                wgs.add(new RoutePath.Point(converted[1], converted[0]));
            }
            RouteController.start(this, new RoutePath(wgs), kmh); persist(); updateStatus();
        } catch (NumberFormatException error) { speed.setError("请输入有效速度"); }
        catch (RuntimeException error) { message("无法开始轨迹", error.getMessage() == null ? "请检查定位权限和路线" : error.getMessage()); }
    }

    private void redraw() {
        map.clear(); movingMarker = null;
        for (BitmapDescriptor icon : icons) icon.recycle(); icons.clear();
        List<LatLng> line = navigation.isChecked() ? planned : waypoints;
        if (line.size() > 1) map.addOverlay(new PolylineOptions().points(line).color(TEAL).width(8));
        for (int i = 0; i < waypoints.size(); i++) {
            String text = i == 0 ? "起" : navigation.isChecked() && i == 1 ? "终" : String.valueOf(i + 1);
            BitmapDescriptor icon = icon(text, i == 0 ? TEAL : 0xffeb7046); icons.add(icon);
            map.addOverlay(new MarkerOptions().position(waypoints.get(i)).icon(icon).anchor(0.5f, 0.5f));
        }
        if (pendingDestination != null) {
            BitmapDescriptor icon = icon("终", 0xffeb7046); icons.add(icon);
            map.addOverlay(new MarkerOptions().position(pendingDestination).icon(icon).anchor(0.5f, 0.5f));
        }
    }

    private BitmapDescriptor icon(String text, int color) {
        Bitmap bitmap = Bitmap.createBitmap(dp(34), dp(34), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmap); Paint paint = new Paint(Paint.ANTI_ALIAS_FLAG);
        float center = bitmap.getWidth() / 2f;
        paint.setColor(Color.WHITE); canvas.drawCircle(center, center, center, paint);
        paint.setColor(color); canvas.drawCircle(center, center, center - dp(2), paint);
        paint.setColor(Color.WHITE); paint.setTextSize(dp(15)); paint.setTypeface(Typeface.DEFAULT_BOLD); paint.setTextAlign(Paint.Align.CENTER);
        canvas.drawText(text, center, center - (paint.ascent() + paint.descent()) / 2, paint);
        BitmapDescriptor descriptor = BitmapDescriptorFactory.fromBitmap(bitmap); bitmap.recycle(); return descriptor;
    }

    private boolean active() { RouteController.Status s = RouteController.status(); return s != null && s.active(); }
    private void updateStatus() {
        RouteController.Status status = RouteController.status(); boolean active = status != null && status.active();
        renderedState = status == null ? null : status.state;
        navigation.setEnabled(!active); manual.setEnabled(!active); transport.setEnabled(!active);
        undo.setEnabled(!active && (!waypoints.isEmpty() || pendingDestination != null)); clear.setEnabled(!active && (!waypoints.isEmpty() || pendingDestination != null)); coordinates.setEnabled(!active);
        searchButton.setText(destinationSearch == null ? "搜索" : "搜索中");
        searchButton.setEnabled(!active && destinationSearch == null); destinationInput.setEnabled(!active);
        searchButton.setAlpha(searchButton.isEnabled() ? 1f : 0.4f);
        transport.setVisibility(navigation.isChecked() ? View.VISIBLE : View.GONE);
        plan.setVisibility(navigation.isChecked() ? View.VISIBLE : View.GONE);
        plan.setEnabled(!active && waypoints.size() == 2 && planner == null);
        start.setEnabled(!active && planner == null && (navigation.isChecked() ? planned.size() >= 2 : waypoints.size() >= 2));
        pause.setEnabled(active); stop.setEnabled(active || (status != null && status.state == RoutePlayback.State.COMPLETED));
        pause.setText(status != null && status.state == RoutePlayback.State.PAUSED ? "继续" : "暂停"); speed.setEnabled(!active);
        for (Button button : new Button[]{start, pause, stop, undo, clear, coordinates, plan}) button.setAlpha(button.isEnabled() ? 1f : 0.4f);
        if (status != null && (active || status.state == RoutePlayback.State.COMPLETED)) {
            String state = status.state == RoutePlayback.State.RUNNING ? "行进中" : status.state == RoutePlayback.State.PAUSED ? "已暂停" : "已到达终点";
            stats.setText(String.format(Locale.CHINA, "%s · %.1f km/h\n已行进 %.0f / %.0f 米 · %.0f%%", state, status.speedKmh, status.travelled, status.total, 100 * status.travelled / status.total));
            double[] bd = LocationUtils.wgs2bd09(status.position.longitude, status.position.latitude);
            LatLng position = new LatLng(bd[1], bd[0]);
            if (movingMarker == null) { BitmapDescriptor icon = icon("●", 0xff2071d4); icons.add(icon); movingMarker = (Marker)map.addOverlay(new MarkerOptions().position(position).icon(icon).anchor(0.5f, 0.5f).zIndex(10)); }
            else movingMarker.setPosition(position);
        } else {
            List<LatLng> line = navigation.isChecked() ? planned : waypoints;
            double distance = 0;
            for (int i = 1; i < line.size(); i++) distance += RoutePath.distance(new RoutePath.Point(line.get(i - 1).latitude, line.get(i - 1).longitude), new RoutePath.Point(line.get(i).latitude, line.get(i).longitude));
            stats.setText(String.format(Locale.CHINA, "%s · %d 个标定点\n路线长度 %.0f 米", status != null && status.state == RoutePlayback.State.STOPPED ? "已停止" : "待开始", waypoints.size(), distance));
        }
    }

    private void showInstructions() {
        String text = navigation.isChecked() ? "点选起点、终点，或搜索目的地后规划路线。" : "按顺序放置标定点，相邻点之间沿直线行进。";
        if (pendingDestination != null) text = "已选终点：" + pendingDestinationName + "。请点地图选起点，或点击当前位置设为起点。";
        if (!keyConfigured) text += " 地图 Key 未配置，可先通过坐标添加手动轨迹。";
        hint.setText(text);
    }

    private boolean hasMapKey() {
        try {
            ApplicationInfo info = getPackageManager().getApplicationInfo(getPackageName(), PackageManager.GET_META_DATA);
            String key = info.metaData == null ? null : info.metaData.getString("com.baidu.lbsapi.API_KEY");
            return key != null && !key.trim().isEmpty() && !key.startsWith("YOUR_");
        } catch (PackageManager.NameNotFoundException error) { return false; }
    }

    private void invalidatePlan() { generation++; if (planner != null) { planner.cancel(); planner = null; } }
    private void restoreDraft() {
        restoring = true;
        try {
            if (preferences.getBoolean("navigation", false)) navigation.setChecked(true); else manual.setChecked(true);
            lastTransport = preferences.getInt("transport", 0); transport.setSelection(lastTransport); speed.setText(preferences.getString("speed", "5"));
            readPoints(preferences.getString("waypoints", "[]"), waypoints); readPoints(preferences.getString("planned", "[]"), planned);
        } catch (RuntimeException error) { waypoints.clear(); planned.clear(); speed.setText("5"); }
        finally { restoring = false; }
    }

    private void persist() {
        preferences.edit().putBoolean("navigation", navigation.isChecked()).putInt("transport", transport.getSelectedItemPosition())
                .putString("speed", speed.getText().toString()).putString("waypoints", writePoints(waypoints))
                .putString("planned", writePoints(planned)).apply();
    }
    private static String writePoints(List<LatLng> points) {
        JSONArray list = new JSONArray();
        for (LatLng point : points) { JSONArray pair = new JSONArray(); pair.put((Object)point.latitude); pair.put((Object)point.longitude); list.put(pair); }
        return list.toString();
    }
    private static void readPoints(String raw, List<LatLng> output) {
        try {
            JSONArray list = new JSONArray(raw);
            for (int i = 0; i < list.length(); i++) { JSONArray pair = list.getJSONArray(i); RoutePath.Point p = new RoutePath.Point(pair.getDouble(0), pair.getDouble(1)); output.add(new LatLng(p.latitude, p.longitude)); }
        } catch (org.json.JSONException error) { output.clear(); }
    }

    private int dp(float value) { return Math.round(value * getResources().getDisplayMetrics().density); }
    private TextView label(String value, int size) { TextView text = new TextView(this); text.setText(value); text.setTextSize(size); text.setTextColor(INK); text.setGravity(Gravity.CENTER_VERTICAL); return text; }
    private LinearLayout row() { LinearLayout row = new LinearLayout(this); row.setOrientation(LinearLayout.HORIZONTAL); row.setGravity(Gravity.CENTER_VERTICAL); return row; }
    private GradientDrawable background(int color) { GradientDrawable shape = new GradientDrawable(); shape.setColor(color); shape.setCornerRadius(dp(8)); return shape; }
    private Button button(String value) { Button button = new Button(this); button.setText(value); UiStyles.button(button, false); return button; }
    private void toast(String text) { Toast.makeText(this, text, Toast.LENGTH_SHORT).show(); }
    private void message(String title, String text) { new AlertDialog.Builder(this).setTitle(title).setMessage(text).setPositiveButton("知道了", null).show(); }
    @Override protected void onResume() { super.onResume(); if (mapView != null) mapView.onResume(); handler.post(refresh); }
    @Override protected void onPause() { handler.removeCallbacks(refresh); cancelLocator(); persist(); if (mapView != null) mapView.onPause(); super.onPause(); }
    @Override protected void onDestroy() { destroyed = true; handler.removeCallbacksAndMessages(null); cancelDestinationSearch(); cancelLocator(); invalidatePlan(); if (mapView != null) mapView.onDestroy(); for (BitmapDescriptor icon : icons) icon.recycle(); super.onDestroy(); }
}
