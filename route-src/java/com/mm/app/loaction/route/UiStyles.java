package com.mm.app.loaction.route;

import android.content.res.ColorStateList;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.StateListDrawable;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.RadioButton;

/** Presentation only: no listeners, route state or location behavior. */
public final class UiStyles {
    static final int ACCENT = 0xff237968, INK = 0xff20332f, MUTED = 0xff64756e;
    static final int CANVAS = 0xfff5f6f2, SOFT = 0xffe8f2ed, LINE = 0xffdde5de;
    public static void applyChrome(android.app.Activity activity) {
        activity.getWindow().setStatusBarColor(CANVAS);
        activity.getWindow().setNavigationBarColor(0xffffffff);
        View decor = activity.getWindow().getDecorView();
        decor.setSystemUiVisibility(decor.getSystemUiVisibility()
                | View.SYSTEM_UI_FLAG_LIGHT_STATUS_BAR | View.SYSTEM_UI_FLAG_LIGHT_NAVIGATION_BAR);
    }
    static int dp(View v, float n) { return Math.round(n * v.getResources().getDisplayMetrics().density); }
    static GradientDrawable shape(View v, int color, int radius, boolean border) {
        GradientDrawable d = new GradientDrawable(); d.setColor(color); d.setCornerRadius(dp(v, radius));
        if (border) d.setStroke(dp(v, 1), LINE); return d;
    }
    static RippleDrawable ripple(View v, int color, int radius, boolean border) {
        return new RippleDrawable(ColorStateList.valueOf(0x24237968), shape(v, color, radius, border), shape(v, 0xffffffff, radius, false));
    }
    static void button(Button b, boolean primary) {
        b.setAllCaps(false); b.setTextSize(14); b.setTypeface(Typeface.create("sans-serif-medium", Typeface.NORMAL));
        b.setTextColor(primary ? 0xffffffff : INK); b.setPadding(dp(b, 10), 0, dp(b, 10), 0);
        b.setMinWidth(0); b.setMinimumWidth(0); b.setMinHeight(dp(b, 40)); b.setMinimumHeight(dp(b, 40));
        b.setBackground(ripple(b, primary ? ACCENT : SOFT, 12, false)); b.setStateListAnimator(null);
    }
    static void input(EditText e) {
        e.setTextColor(INK); e.setHintTextColor(MUTED); e.setTextSize(14);
        e.setPadding(dp(e, 12), dp(e, 4), dp(e, 12), dp(e, 4));
        StateListDrawable background = new StateListDrawable();
        GradientDrawable focused = shape(e, 0xffffffff, 12, false); focused.setStroke(dp(e, 2), ACCENT);
        background.addState(new int[]{android.R.attr.state_focused}, focused);
        background.addState(new int[]{}, shape(e, CANVAS, 12, true)); e.setBackground(background);
    }
    static void segment(RadioButton b) {
        b.setButtonDrawable((android.graphics.drawable.Drawable)null); b.setGravity(android.view.Gravity.CENTER);
        b.setTextSize(14); b.setTypeface(Typeface.create("sans-serif-medium", Typeface.NORMAL));
        b.setTextColor(new ColorStateList(new int[][]{new int[]{android.R.attr.state_checked}, new int[]{}}, new int[]{ACCENT, MUTED}));
        StateListDrawable background = new StateListDrawable();
        background.addState(new int[]{android.R.attr.state_checked}, ripple(b, 0xffffffff, 10, false));
        background.addState(new int[]{}, ripple(b, CANVAS, 10, false)); b.setBackground(background);
    }
}
