.class public final Lcom/mm/app/loaction/route/RouteEntry;
.super Ljava/lang/Object;
.source "RouteEntry.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static install(Landroid/app/Activity;)V
    .registers 3

    .line 11
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1, v0, v1}, Lcom/mm/app/loaction/route/RouteEntry;->install(Landroid/app/Activity;DD)V

    return-void
.end method

.method public static install(Landroid/app/Activity;DD)V
    .registers 15

    .line 13
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MainHomeActivity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 15
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "include_app_bar_main"

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 16
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 17
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_4c

    .line 18
    check-cast v1, Landroid/view/ViewGroup;

    .line 19
    const/4 v2, 0x0

    :goto_34
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_4c

    .line 20
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Landroid/widget/FrameLayout;

    if-eqz v3, :cond_49

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    goto :goto_4c

    .line 19
    :cond_49
    add-int/lit8 v2, v2, 0x1

    goto :goto_34

    .line 24
    :cond_4c
    :goto_4c
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 25
    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 26
    const-string v3, "\u81ea\u5b9a\u4e49\u8f68\u8ff9"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 27
    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/mm/app/loaction/route/UiStyles;->button(Landroid/widget/Button;Z)V

    .line 28
    const-string v3, "\u6253\u5f00\u81ea\u5b9a\u4e49\u8f68\u8ff9"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 29
    const/high16 v3, 0x40400000    # 3.0f

    mul-float/2addr v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setElevation(F)V

    .line 30
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v4, 0x42e80000    # 116.0f

    mul-float/2addr v4, v1

    float-to-int v4, v4

    const/high16 v5, 0x42300000    # 44.0f

    mul-float/2addr v5, v1

    float-to-int v5, v5

    const/16 v6, 0x35

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 31
    const/high16 v4, 0x42900000    # 72.0f

    mul-float/2addr v4, v1

    float-to-int v4, v4

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/high16 v4, 0x41400000    # 12.0f

    mul-float/2addr v4, v1

    float-to-int v4, v4

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SelectMapActivity"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b0

    .line 33
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v4, 0x42500000    # 52.0f

    mul-float/2addr v4, v1

    float-to-int v4, v4

    const/16 v5, 0x50

    const/4 v6, -0x1

    invoke-direct {v3, v6, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 34
    const/high16 v4, 0x41c00000    # 24.0f

    mul-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 36
    :cond_b0
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 37
    new-instance v4, Lcom/mm/app/loaction/route/RouteEntry$0;

    move-object v5, p0

    move-wide v6, p1

    move-wide v8, p3

    invoke-direct/range {v4 .. v9}, Lcom/mm/app/loaction/route/RouteEntry$0;-><init>(Landroid/app/Activity;DD)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    return-void
.end method

.method static synthetic lambda$install$0(Landroid/app/Activity;DDLandroid/view/View;)V
    .registers 7

    .line 37
    new-instance p5, Landroid/content/Intent;

    const-class v0, Lcom/mm/app/loaction/route/RouteActivity;

    invoke-direct {p5, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 38
    const-string v0, "latitude"

    invoke-virtual {p5, v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "longitude"

    invoke-virtual {p1, p2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    move-result-object p1

    .line 37
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
