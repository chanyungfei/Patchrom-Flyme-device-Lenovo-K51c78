.class public Landroid/widget/CustomDrawLayout;
.super Landroid/widget/LinearLayout;
.source "CustomDrawLayout.java"


# static fields
.field private static final RES_UNSPECIFIED:I


# instance fields
.field private mDrawableRect:Landroid/graphics/Rect;

.field private mDrawableResId:I

.field private mDrawableToDraw:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/CustomDrawLayout;->mDrawableResId:I

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/CustomDrawLayout;->mDrawableResId:I

    .line 46
    return-void
.end method

.method private drawDrawable(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 61
    iget-object v0, p0, Landroid/widget/CustomDrawLayout;->mDrawableToDraw:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Landroid/widget/CustomDrawLayout;->mDrawableToDraw:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/CustomDrawLayout;->getDrawableRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 63
    iget-object v0, p0, Landroid/widget/CustomDrawLayout;->mDrawableToDraw:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 67
    :cond_0
    return-void
.end method


# virtual methods
.method protected getDrawableRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Landroid/widget/CustomDrawLayout;->mDrawableRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/CustomDrawLayout;->mDrawableRect:Landroid/graphics/Rect;

    .line 79
    :cond_0
    iget-object v0, p0, Landroid/widget/CustomDrawLayout;->mDrawableRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 52
    invoke-direct {p0, p1}, Landroid/widget/CustomDrawLayout;->drawDrawable(Landroid/graphics/Canvas;)V

    .line 53
    return-void
.end method

.method public recycleResource()V
    .locals 0

    .prologue
    .line 176
    return-void
.end method

.method public setDrawablePosition(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 168
    iput-object p1, p0, Landroid/widget/CustomDrawLayout;->mDrawableRect:Landroid/graphics/Rect;

    .line 169
    invoke-virtual {p0}, Landroid/widget/CustomDrawLayout;->postInvalidate()V

    .line 170
    return-void
.end method

.method public setDrawableToDraw(III)V
    .locals 3
    .param p1, "resId"    # I
    .param p2, "pivotX"    # I
    .param p3, "pivotY"    # I

    .prologue
    .line 153
    iget v0, p0, Landroid/widget/CustomDrawLayout;->mDrawableResId:I

    if-eq v0, p1, :cond_0

    .line 154
    invoke-virtual {p0}, Landroid/widget/CustomDrawLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/CustomDrawLayout;->mDrawableToDraw:Landroid/graphics/drawable/Drawable;

    .line 155
    iput p1, p0, Landroid/widget/CustomDrawLayout;->mDrawableResId:I

    .line 158
    :cond_0
    invoke-virtual {p0}, Landroid/widget/CustomDrawLayout;->getDrawableRect()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/CustomDrawLayout;->mDrawableRect:Landroid/graphics/Rect;

    .line 159
    iget-object v0, p0, Landroid/widget/CustomDrawLayout;->mDrawableRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/widget/CustomDrawLayout;->mDrawableToDraw:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    add-int/2addr v1, p2

    iget-object v2, p0, Landroid/widget/CustomDrawLayout;->mDrawableToDraw:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {v0, p2, p3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 161
    invoke-virtual {p0}, Landroid/widget/CustomDrawLayout;->postInvalidate()V

    .line 162
    return-void
.end method

.method public setDrawableToDraw(ILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "resId"    # I
    .param p2, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 110
    iget v0, p0, Landroid/widget/CustomDrawLayout;->mDrawableResId:I

    if-eq v0, p1, :cond_0

    .line 111
    invoke-virtual {p0}, Landroid/widget/CustomDrawLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/CustomDrawLayout;->mDrawableToDraw:Landroid/graphics/drawable/Drawable;

    .line 112
    iput p1, p0, Landroid/widget/CustomDrawLayout;->mDrawableResId:I

    .line 115
    :cond_0
    iput-object p2, p0, Landroid/widget/CustomDrawLayout;->mDrawableRect:Landroid/graphics/Rect;

    .line 116
    invoke-virtual {p0}, Landroid/widget/CustomDrawLayout;->postInvalidate()V

    .line 117
    return-void
.end method

.method public setDrawableToDraw(Landroid/graphics/drawable/Drawable;II)V
    .locals 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "pivotX"    # I
    .param p3, "pivotY"    # I

    .prologue
    .line 131
    iget-object v0, p0, Landroid/widget/CustomDrawLayout;->mDrawableToDraw:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/CustomDrawLayout;->mDrawableToDraw:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/CustomDrawLayout;->mDrawableToDraw:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 132
    :cond_0
    iput-object p1, p0, Landroid/widget/CustomDrawLayout;->mDrawableToDraw:Landroid/graphics/drawable/Drawable;

    .line 135
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/CustomDrawLayout;->mDrawableResId:I

    .line 136
    invoke-virtual {p0}, Landroid/widget/CustomDrawLayout;->getDrawableRect()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/CustomDrawLayout;->mDrawableRect:Landroid/graphics/Rect;

    .line 137
    iget-object v0, p0, Landroid/widget/CustomDrawLayout;->mDrawableRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/widget/CustomDrawLayout;->mDrawableToDraw:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    add-int/2addr v1, p2

    iget-object v2, p0, Landroid/widget/CustomDrawLayout;->mDrawableToDraw:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {v0, p2, p3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 139
    invoke-virtual {p0}, Landroid/widget/CustomDrawLayout;->postInvalidate()V

    .line 140
    return-void
.end method

.method public setDrawableToDraw(Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 92
    iget-object v0, p0, Landroid/widget/CustomDrawLayout;->mDrawableToDraw:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/CustomDrawLayout;->mDrawableToDraw:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/CustomDrawLayout;->mDrawableToDraw:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 93
    :cond_0
    iput-object p1, p0, Landroid/widget/CustomDrawLayout;->mDrawableToDraw:Landroid/graphics/drawable/Drawable;

    .line 96
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/CustomDrawLayout;->mDrawableResId:I

    .line 97
    iput-object p2, p0, Landroid/widget/CustomDrawLayout;->mDrawableRect:Landroid/graphics/Rect;

    .line 98
    invoke-virtual {p0}, Landroid/widget/CustomDrawLayout;->postInvalidate()V

    .line 99
    return-void
.end method
