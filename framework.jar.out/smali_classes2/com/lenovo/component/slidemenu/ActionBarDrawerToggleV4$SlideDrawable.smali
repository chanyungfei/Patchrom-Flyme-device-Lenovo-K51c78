.class Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4$SlideDrawable;
.super Landroid/graphics/drawable/InsetDrawable;
.source "ActionBarDrawerToggleV4.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlideDrawable"
.end annotation


# instance fields
.field private final mHasMirroring:Z

.field private mOffset:F

.field private mPosition:F

.field private final mTmpRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4;


# direct methods
.method private constructor <init>(Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p2, "wrapped"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v0, 0x0

    .line 500
    iput-object p1, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4$SlideDrawable;->this$0:Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4;

    .line 501
    invoke-direct {p0, p2, v0}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 494
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-le v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4$SlideDrawable;->mHasMirroring:Z

    .line 495
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4$SlideDrawable;->mTmpRect:Landroid/graphics/Rect;

    .line 502
    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4;Landroid/graphics/drawable/Drawable;Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4;
    .param p2, "x1"    # Landroid/graphics/drawable/Drawable;
    .param p3, "x2"    # Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4$1;

    .prologue
    .line 493
    invoke-direct {p0, p1, p2}, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4$SlideDrawable;-><init>(Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x1

    .line 532
    iget-object v3, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4$SlideDrawable;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v3}, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4$SlideDrawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 533
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 536
    iget-object v3, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4$SlideDrawable;->this$0:Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4;

    # getter for: Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4;->access$300(Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutDirection()I

    move-result v3

    if-ne v3, v0, :cond_2

    move v1, v0

    .line 537
    .local v1, "isLayoutRTL":Z
    :goto_0
    if-eqz v1, :cond_0

    const/4 v0, -0x1

    .line 538
    .local v0, "flipRtl":I
    :cond_0
    iget-object v3, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4$SlideDrawable;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 539
    .local v2, "width":I
    iget v3, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4$SlideDrawable;->mOffset:F

    neg-float v3, v3

    int-to-float v4, v2

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4$SlideDrawable;->mPosition:F

    mul-float/2addr v3, v4

    int-to-float v4, v0

    mul-float/2addr v3, v4

    invoke-virtual {p1, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 542
    if-eqz v1, :cond_1

    iget-boolean v3, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4$SlideDrawable;->mHasMirroring:Z

    if-nez v3, :cond_1

    .line 543
    int-to-float v3, v2

    invoke-virtual {p1, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 544
    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 547
    :cond_1
    invoke-super {p0, p1}, Landroid/graphics/drawable/InsetDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 548
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 549
    return-void

    .line 536
    .end local v0    # "flipRtl":I
    .end local v1    # "isLayoutRTL":Z
    .end local v2    # "width":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPosition()F
    .locals 1

    .prologue
    .line 515
    iget v0, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4$SlideDrawable;->mPosition:F

    return v0
.end method

.method public setOffset(F)V
    .locals 0
    .param p1, "offset"    # F

    .prologue
    .line 526
    iput p1, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4$SlideDrawable;->mOffset:F

    .line 527
    invoke-virtual {p0}, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4$SlideDrawable;->invalidateSelf()V

    .line 528
    return-void
.end method

.method public setPosition(F)V
    .locals 0
    .param p1, "position"    # F

    .prologue
    .line 510
    iput p1, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4$SlideDrawable;->mPosition:F

    .line 511
    invoke-virtual {p0}, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4$SlideDrawable;->invalidateSelf()V

    .line 512
    return-void
.end method
