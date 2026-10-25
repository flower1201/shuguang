.class public final Lcom/mm/app/loaction/route/UiStyles;
.super Ljava/lang/Object;
.source "UiStyles.java"


# static fields
.field static final ACCENT:I = -0xdc8698

.field static final CANVAS:I = -0xa090e

.field static final INK:I = -0xdfccd1

.field static final LINE:I = -0x221a22

.field static final MUTED:I = -0x9b8a92

.field static final SOFT:I = -0x170d13


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyChrome(Landroid/app/Activity;)V
    .registers 3

    .line 18
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, -0xa090e

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 19
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 20
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    or-int/lit16 v0, v0, 0x2000

    or-int/lit8 v0, v0, 0x10

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 23
    return-void
.end method

.method static button(Landroid/widget/Button;Z)V
    .registers 5

    .line 33
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setAllCaps(Z)V

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {p0, v1}, Landroid/widget/Button;->setTextSize(F)V

    const-string v1, "sans-serif-medium"

    invoke-static {v1, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 34
    if-eqz p1, :cond_16

    const/4 v1, -0x1

    goto :goto_19

    :cond_16
    const v1, -0xdfccd1

    :goto_19
    invoke-virtual {p0, v1}, Landroid/widget/Button;->setTextColor(I)V

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {p0, v1}, Lcom/mm/app/loaction/route/UiStyles;->dp(Landroid/view/View;F)I

    move-result v2

    invoke-static {p0, v1}, Lcom/mm/app/loaction/route/UiStyles;->dp(Landroid/view/View;F)I

    move-result v1

    invoke-virtual {p0, v2, v0, v1, v0}, Landroid/widget/Button;->setPadding(IIII)V

    .line 35
    invoke-virtual {p0, v0}, Landroid/widget/Button;->setMinWidth(I)V

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setMinimumWidth(I)V

    const/high16 v1, 0x42200000    # 40.0f

    invoke-static {p0, v1}, Lcom/mm/app/loaction/route/UiStyles;->dp(Landroid/view/View;F)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/Button;->setMinHeight(I)V

    invoke-static {p0, v1}, Lcom/mm/app/loaction/route/UiStyles;->dp(Landroid/view/View;F)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/Button;->setMinimumHeight(I)V

    .line 36
    if-eqz p1, :cond_45

    const p1, -0xdc8698

    goto :goto_48

    :cond_45
    const p1, -0x170d13

    :goto_48
    const/16 v1, 0xc

    invoke-static {p0, p1, v1, v0}, Lcom/mm/app/loaction/route/UiStyles;->ripple(Landroid/view/View;IIZ)Landroid/graphics/drawable/RippleDrawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 37
    return-void
.end method

.method static dp(Landroid/view/View;F)I
    .registers 2

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method static input(Landroid/widget/EditText;)V
    .registers 7

    .line 39
    const v0, -0xdfccd1

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setTextColor(I)V

    const v0, -0x9b8a92

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setHintTextColor(I)V

    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setTextSize(F)V

    .line 40
    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {p0, v0}, Lcom/mm/app/loaction/route/UiStyles;->dp(Landroid/view/View;F)I

    move-result v1

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {p0, v2}, Lcom/mm/app/loaction/route/UiStyles;->dp(Landroid/view/View;F)I

    move-result v3

    invoke-static {p0, v0}, Lcom/mm/app/loaction/route/UiStyles;->dp(Landroid/view/View;F)I

    move-result v0

    invoke-static {p0, v2}, Lcom/mm/app/loaction/route/UiStyles;->dp(Landroid/view/View;F)I

    move-result v2

    invoke-virtual {p0, v1, v3, v0, v2}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 41
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 42
    const/4 v1, -0x1

    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v3}, Lcom/mm/app/loaction/route/UiStyles;->shape(Landroid/view/View;IIZ)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {p0, v4}, Lcom/mm/app/loaction/route/UiStyles;->dp(Landroid/view/View;F)I

    move-result v4

    const v5, -0xdc8698

    invoke-virtual {v1, v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 43
    const v4, 0x101009c

    filled-new-array {v4}, [I

    move-result-object v4

    invoke-virtual {v0, v4, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 44
    new-array v1, v3, [I

    const v3, -0xa090e

    const/4 v4, 0x1

    invoke-static {p0, v3, v2, v4}, Lcom/mm/app/loaction/route/UiStyles;->shape(Landroid/view/View;IIZ)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 45
    return-void
.end method

.method static ripple(Landroid/view/View;IIZ)Landroid/graphics/drawable/RippleDrawable;
    .registers 7

    .line 30
    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    const v1, 0x24237968

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-static {p0, p1, p2, p3}, Lcom/mm/app/loaction/route/UiStyles;->shape(Landroid/view/View;IIZ)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p1

    const/4 p3, -0x1

    const/4 v2, 0x0

    invoke-static {p0, p3, p2, v2}, Lcom/mm/app/loaction/route/UiStyles;->shape(Landroid/view/View;IIZ)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p0

    invoke-direct {v0, v1, p1, p0}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method static segment(Landroid/widget/RadioButton;)V
    .registers 7

    .line 47
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/widget/RadioButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Landroid/widget/RadioButton;->setGravity(I)V

    .line 48
    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {p0, v0}, Landroid/widget/RadioButton;->setTextSize(F)V

    const-string v0, "sans-serif-medium"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 49
    new-instance v0, Landroid/content/res/ColorStateList;

    const v2, 0x10100a0

    filled-new-array {v2}, [I

    move-result-object v3

    new-array v4, v1, [I

    filled-new-array {v3, v4}, [[I

    move-result-object v3

    const v4, -0xdc8698

    const v5, -0x9b8a92

    filled-new-array {v4, v5}, [I

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {p0, v0}, Landroid/widget/RadioButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 50
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 51
    filled-new-array {v2}, [I

    move-result-object v2

    const/4 v3, -0x1

    const/16 v4, 0xa

    invoke-static {p0, v3, v4, v1}, Lcom/mm/app/loaction/route/UiStyles;->ripple(Landroid/view/View;IIZ)Landroid/graphics/drawable/RippleDrawable;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 52
    new-array v2, v1, [I

    const v3, -0xa090e

    invoke-static {p0, v3, v4, v1}, Lcom/mm/app/loaction/route/UiStyles;->ripple(Landroid/view/View;IIZ)Landroid/graphics/drawable/RippleDrawable;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v0}, Landroid/widget/RadioButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 53
    return-void
.end method

.method static shape(Landroid/view/View;IIZ)Landroid/graphics/drawable/GradientDrawable;
    .registers 5

    .line 26
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    int-to-float p1, p2

    invoke-static {p0, p1}, Lcom/mm/app/loaction/route/UiStyles;->dp(Landroid/view/View;F)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 27
    if-eqz p3, :cond_1f

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {p0, p1}, Lcom/mm/app/loaction/route/UiStyles;->dp(Landroid/view/View;F)I

    move-result p0

    const p1, -0x221a22

    invoke-virtual {v0, p0, p1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    :cond_1f
    return-object v0
.end method
