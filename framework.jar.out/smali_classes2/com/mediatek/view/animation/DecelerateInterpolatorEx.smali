.class public Lcom/mediatek/view/animation/DecelerateInterpolatorEx;
.super Landroid/view/animation/BaseInterpolator;
.source "DecelerateInterpolatorEx.java"


# instance fields
.field private mFactor:F

.field private mScale:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 16
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    .line 74
    iput v0, p0, Lcom/mediatek/view/animation/DecelerateInterpolatorEx;->mFactor:F

    .line 75
    iput v0, p0, Lcom/mediatek/view/animation/DecelerateInterpolatorEx;->mScale:F

    .line 17
    return-void
.end method

.method public constructor <init>(F)V
    .locals 1
    .param p1, "factor"    # F

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 19
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    .line 74
    iput v0, p0, Lcom/mediatek/view/animation/DecelerateInterpolatorEx;->mFactor:F

    .line 75
    iput v0, p0, Lcom/mediatek/view/animation/DecelerateInterpolatorEx;->mScale:F

    .line 20
    iput p1, p0, Lcom/mediatek/view/animation/DecelerateInterpolatorEx;->mFactor:F

    .line 21
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 1
    .param p1, "factor"    # F
    .param p2, "scale"    # F

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 23
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    .line 74
    iput v0, p0, Lcom/mediatek/view/animation/DecelerateInterpolatorEx;->mFactor:F

    .line 75
    iput v0, p0, Lcom/mediatek/view/animation/DecelerateInterpolatorEx;->mScale:F

    .line 24
    iput p1, p0, Lcom/mediatek/view/animation/DecelerateInterpolatorEx;->mFactor:F

    .line 25
    iput p2, p0, Lcom/mediatek/view/animation/DecelerateInterpolatorEx;->mScale:F

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 28
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    .line 74
    iput v2, p0, Lcom/mediatek/view/animation/DecelerateInterpolatorEx;->mFactor:F

    .line 75
    iput v2, p0, Lcom/mediatek/view/animation/DecelerateInterpolatorEx;->mScale:F

    .line 29
    sget-object v1, Lcom/mediatek/internal/R$styleable;->DecelerateInterpolatorEx:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 33
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/mediatek/view/animation/DecelerateInterpolatorEx;->mFactor:F

    .line 34
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/mediatek/view/animation/DecelerateInterpolatorEx;->mScale:F

    .line 36
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 40
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    .line 74
    iput v2, p0, Lcom/mediatek/view/animation/DecelerateInterpolatorEx;->mFactor:F

    .line 75
    iput v2, p0, Lcom/mediatek/view/animation/DecelerateInterpolatorEx;->mScale:F

    .line 42
    if-eqz p2, :cond_0

    .line 43
    sget-object v1, Lcom/mediatek/internal/R$styleable;->DecelerateInterpolatorEx:[I

    invoke-virtual {p2, p3, v1, v3, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 48
    .local v0, "a":Landroid/content/res/TypedArray;
    :goto_0
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/mediatek/view/animation/DecelerateInterpolatorEx;->mFactor:F

    .line 49
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/mediatek/view/animation/DecelerateInterpolatorEx;->mScale:F

    .line 51
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 52
    return-void

    .line 45
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_0
    sget-object v1, Lcom/mediatek/internal/R$styleable;->DecelerateInterpolatorEx:[I

    invoke-virtual {p1, p3, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .restart local v0    # "a":Landroid/content/res/TypedArray;
    goto :goto_0
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 9
    .param p1, "input"    # F

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    .line 55
    iget v2, p0, Lcom/mediatek/view/animation/DecelerateInterpolatorEx;->mScale:F

    cmpl-float v2, v2, v8

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/mediatek/view/animation/DecelerateInterpolatorEx;->mScale:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    .line 56
    .local v0, "needScale":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 57
    iget v2, p0, Lcom/mediatek/view/animation/DecelerateInterpolatorEx;->mScale:F

    mul-float/2addr p1, v2

    .line 61
    :cond_0
    iget v2, p0, Lcom/mediatek/view/animation/DecelerateInterpolatorEx;->mFactor:F

    cmpl-float v2, v2, v8

    if-nez v2, :cond_3

    .line 62
    sub-float v2, v8, p1

    sub-float v3, v8, p1

    mul-float/2addr v2, v3

    sub-float v1, v8, v2

    .line 67
    .local v1, "result":F
    :goto_1
    if-eqz v0, :cond_1

    cmpl-float v2, p1, v8

    if-ltz v2, :cond_1

    .line 68
    const/high16 v1, 0x3f800000    # 1.0f

    .line 71
    :cond_1
    return v1

    .line 55
    .end local v0    # "needScale":Z
    .end local v1    # "result":F
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 64
    .restart local v0    # "needScale":Z
    :cond_3
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-float v4, v8, p1

    float-to-double v4, v4

    const/high16 v6, 0x40000000    # 2.0f

    iget v7, p0, Lcom/mediatek/view/animation/DecelerateInterpolatorEx;->mFactor:F

    mul-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    sub-double/2addr v2, v4

    double-to-float v1, v2

    .restart local v1    # "result":F
    goto :goto_1
.end method
