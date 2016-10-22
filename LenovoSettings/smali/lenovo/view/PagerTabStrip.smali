.class public Llenovo/view/PagerTabStrip;
.super Llenovo/view/PagerTitleStrip;
.source "PagerTabStrip.java"


# static fields
.field private static final FULL_UNDERLINE_HEIGHT:I = 0x1

.field private static final MIN_TEXT_SPACING:I = 0x28

.field private static final TAB_PADDING:I = 0x4

.field private static final TAB_SPACING:I = 0x20

.field private static final TAG:Ljava/lang/String; = "PagerTabStrip"


# instance fields
.field private mDrawFullUnderline:Z

.field private mDrawFullUnderlineSet:Z

.field private mFullUnderlineHeight:I

.field private mIgnoreTap:Z

.field private mIndicatorColor:I

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mMinTextSpacing:I

.field private final mTabPaint:Landroid/graphics/Paint;

.field private mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Llenovo/view/PagerTabStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 73
    invoke-direct {p0, p1, p2}, Llenovo/view/PagerTitleStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Llenovo/view/PagerTabStrip;->mTabPaint:Landroid/graphics/Paint;

    .line 59
    iput-boolean v5, p0, Llenovo/view/PagerTabStrip;->mDrawFullUnderline:Z

    .line 60
    iput-boolean v5, p0, Llenovo/view/PagerTabStrip;->mDrawFullUnderlineSet:Z

    .line 74
    iget-object v4, p0, Llenovo/view/PagerTabStrip;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    iput v4, p0, Llenovo/view/PagerTabStrip;->mIndicatorColor:I

    .line 75
    iget-object v4, p0, Llenovo/view/PagerTabStrip;->mTabPaint:Landroid/graphics/Paint;

    iget v5, p0, Llenovo/view/PagerTabStrip;->mIndicatorColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 78
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 79
    .local v3, "tValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x1010036

    invoke-virtual {v4, v5, v3, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    .line 80
    .local v2, "hasArr":Z
    if-eqz v2, :cond_0

    iget v4, v3, Landroid/util/TypedValue;->resourceId:I

    if-eqz v4, :cond_0

    .line 81
    invoke-virtual {p0}, Llenovo/view/PagerTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, v3, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 82
    .local v0, "colorStateList":Landroid/content/res/ColorStateList;
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    iput v4, p0, Llenovo/view/PagerTabStrip;->mIndicatorColor:I

    .line 83
    iget-object v4, p0, Llenovo/view/PagerTabStrip;->mTabPaint:Landroid/graphics/Paint;

    iget v5, p0, Llenovo/view/PagerTabStrip;->mIndicatorColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 86
    .end local v0    # "colorStateList":Landroid/content/res/ColorStateList;
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v1, v4, Landroid/util/DisplayMetrics;->density:F

    .line 88
    .local v1, "density":F
    const/high16 v4, 0x42200000    # 40.0f

    mul-float/2addr v4, v1

    float-to-int v4, v4

    iput v4, p0, Llenovo/view/PagerTabStrip;->mMinTextSpacing:I

    .line 89
    iput v6, p0, Llenovo/view/PagerTabStrip;->mFullUnderlineHeight:I

    .line 90
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v4

    iput v4, p0, Llenovo/view/PagerTabStrip;->mTouchSlop:I

    .line 95
    invoke-virtual {p0}, Llenovo/view/PagerTabStrip;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v4, :cond_1

    .line 96
    iput-boolean v6, p0, Llenovo/view/PagerTabStrip;->mDrawFullUnderline:Z

    .line 98
    :cond_1
    return-void
.end method


# virtual methods
.method public getDrawFullUnderline()Z
    .locals 1

    .prologue
    .line 187
    iget-boolean v0, p0, Llenovo/view/PagerTabStrip;->mDrawFullUnderline:Z

    return v0
.end method

.method public getTabIndicatorColor()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Llenovo/view/PagerTabStrip;->mIndicatorColor:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 230
    invoke-super {p0, p1}, Llenovo/view/PagerTitleStrip;->onDraw(Landroid/graphics/Canvas;)V

    .line 232
    invoke-virtual {p0}, Llenovo/view/PagerTabStrip;->getHeight()I

    move-result v6

    .line 237
    .local v6, "height":I
    iget-boolean v0, p0, Llenovo/view/PagerTabStrip;->mDrawFullUnderline:Z

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Llenovo/view/PagerTabStrip;->mTabPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    iget v2, p0, Llenovo/view/PagerTabStrip;->mIndicatorColor:I

    const v3, 0xffffff

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 239
    invoke-virtual {p0}, Llenovo/view/PagerTabStrip;->getPaddingLeft()I

    move-result v0

    int-to-float v1, v0

    iget v0, p0, Llenovo/view/PagerTabStrip;->mFullUnderlineHeight:I

    sub-int v0, v6, v0

    int-to-float v2, v0

    invoke-virtual {p0}, Llenovo/view/PagerTabStrip;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Llenovo/view/PagerTabStrip;->getPaddingRight()I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v3, v0

    int-to-float v4, v6

    iget-object v5, p0, Llenovo/view/PagerTabStrip;->mTabPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 242
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 192
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 193
    .local v0, "action":I
    if-eqz v0, :cond_0

    iget-boolean v3, p0, Llenovo/view/PagerTabStrip;->mIgnoreTap:Z

    if-eqz v3, :cond_0

    .line 194
    invoke-super {p0, p1}, Llenovo/view/PagerTitleStrip;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 224
    :goto_0
    return v3

    .line 199
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 200
    .local v1, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 201
    .local v2, "y":F
    packed-switch v0, :pswitch_data_0

    .line 224
    :cond_1
    :goto_1
    :pswitch_0
    invoke-super {p0, p1}, Llenovo/view/PagerTitleStrip;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_0

    .line 203
    :pswitch_1
    iput v1, p0, Llenovo/view/PagerTabStrip;->mInitialMotionX:F

    .line 204
    iput v2, p0, Llenovo/view/PagerTabStrip;->mInitialMotionY:F

    .line 205
    const/4 v3, 0x0

    iput-boolean v3, p0, Llenovo/view/PagerTabStrip;->mIgnoreTap:Z

    goto :goto_1

    .line 209
    :pswitch_2
    iget v3, p0, Llenovo/view/PagerTabStrip;->mInitialMotionX:F

    sub-float v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Llenovo/view/PagerTabStrip;->mTouchSlop:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_2

    iget v3, p0, Llenovo/view/PagerTabStrip;->mInitialMotionY:F

    sub-float v3, v2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Llenovo/view/PagerTabStrip;->mTouchSlop:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 211
    :cond_2
    const/4 v3, 0x1

    iput-boolean v3, p0, Llenovo/view/PagerTabStrip;->mIgnoreTap:Z

    goto :goto_1

    .line 201
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 153
    invoke-super {p0, p1}, Llenovo/view/PagerTitleStrip;->setBackgroundColor(I)V

    .line 154
    iget-boolean v0, p0, Llenovo/view/PagerTabStrip;->mDrawFullUnderlineSet:Z

    if-nez v0, :cond_0

    .line 155
    const/high16 v0, -0x1000000

    and-int/2addr v0, p1

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Llenovo/view/PagerTabStrip;->mDrawFullUnderline:Z

    .line 157
    :cond_0
    return-void

    .line 155
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 145
    invoke-super {p0, p1}, Llenovo/view/PagerTitleStrip;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 146
    iget-boolean v0, p0, Llenovo/view/PagerTabStrip;->mDrawFullUnderlineSet:Z

    if-nez v0, :cond_0

    .line 147
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Llenovo/view/PagerTabStrip;->mDrawFullUnderline:Z

    .line 149
    :cond_0
    return-void

    .line 147
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBackgroundResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 161
    invoke-super {p0, p1}, Llenovo/view/PagerTitleStrip;->setBackgroundResource(I)V

    .line 162
    iget-boolean v0, p0, Llenovo/view/PagerTabStrip;->mDrawFullUnderlineSet:Z

    if-nez v0, :cond_0

    .line 163
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Llenovo/view/PagerTabStrip;->mDrawFullUnderline:Z

    .line 165
    :cond_0
    return-void

    .line 163
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDrawFullUnderline(Z)V
    .locals 1
    .param p1, "drawFull"    # Z

    .prologue
    .line 174
    iput-boolean p1, p0, Llenovo/view/PagerTabStrip;->mDrawFullUnderline:Z

    .line 175
    const/4 v0, 0x1

    iput-boolean v0, p0, Llenovo/view/PagerTabStrip;->mDrawFullUnderlineSet:Z

    .line 176
    invoke-virtual {p0}, Llenovo/view/PagerTabStrip;->invalidate()V

    .line 177
    return-void
.end method

.method public setPadding(IIII)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 132
    invoke-super {p0, p1, p2, p3, p4}, Llenovo/view/PagerTitleStrip;->setPadding(IIII)V

    .line 133
    return-void
.end method

.method public setTabIndicatorColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 106
    iput p1, p0, Llenovo/view/PagerTabStrip;->mIndicatorColor:I

    .line 107
    iget-object v0, p0, Llenovo/view/PagerTabStrip;->mTabPaint:Landroid/graphics/Paint;

    iget v1, p0, Llenovo/view/PagerTabStrip;->mIndicatorColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 108
    invoke-virtual {p0}, Llenovo/view/PagerTabStrip;->invalidate()V

    .line 109
    return-void
.end method

.method public setTabIndicatorColorResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 117
    invoke-virtual {p0}, Llenovo/view/PagerTabStrip;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Llenovo/view/PagerTabStrip;->setTabIndicatorColor(I)V

    .line 118
    return-void
.end method

.method public setTextSpacing(I)V
    .locals 1
    .param p1, "textSpacing"    # I

    .prologue
    .line 137
    iget v0, p0, Llenovo/view/PagerTabStrip;->mMinTextSpacing:I

    if-ge p1, v0, :cond_0

    .line 138
    iget p1, p0, Llenovo/view/PagerTabStrip;->mMinTextSpacing:I

    .line 140
    :cond_0
    invoke-super {p0, p1}, Llenovo/view/PagerTitleStrip;->setTextSpacing(I)V

    .line 141
    return-void
.end method
