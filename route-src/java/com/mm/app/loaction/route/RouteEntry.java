package com.mm.app.loaction.route;

import android.app.Activity;
import android.content.Intent;
import android.view.Gravity;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;

public final class RouteEntry {
    public static void install(Activity activity) { install(activity, 0, 0); }
    public static void install(final Activity activity, final double latitude, final double longitude) {
        ViewGroup content = activity.findViewById(android.R.id.content);
        if (activity.getClass().getSimpleName().equals("MainHomeActivity")) {
            int mainId = activity.getResources().getIdentifier("include_app_bar_main", "id", activity.getPackageName());
            android.view.View main = activity.findViewById(mainId);
            if (main instanceof ViewGroup) {
                ViewGroup group = (ViewGroup)main;
                for (int i = 0; i < group.getChildCount(); i++) {
                    if (group.getChildAt(i) instanceof FrameLayout) { content = (FrameLayout)group.getChildAt(i); break; }
                }
            }
        }
        float scale = activity.getResources().getDisplayMetrics().density;
        Button button = new Button(activity);
        button.setText("自定义轨迹");
        UiStyles.button(button, true);
        button.setContentDescription("打开自定义轨迹");
        button.setElevation(3 * scale);
        FrameLayout.LayoutParams layout = new FrameLayout.LayoutParams((int)(116 * scale), (int)(44 * scale), Gravity.TOP | Gravity.RIGHT);
        layout.topMargin = (int)(72 * scale); layout.rightMargin = (int)(12 * scale);
        if (activity.getClass().getSimpleName().equals("SelectMapActivity")) {
            layout = new FrameLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, (int)(52 * scale), Gravity.BOTTOM);
            layout.leftMargin = layout.rightMargin = (int)(24 * scale); layout.bottomMargin = (int)(24 * scale);
        }
        content.addView(button, layout);
        button.setOnClickListener(view -> activity.startActivity(new Intent(activity, RouteActivity.class)
                .putExtra("latitude", latitude).putExtra("longitude", longitude)));
    }
}
