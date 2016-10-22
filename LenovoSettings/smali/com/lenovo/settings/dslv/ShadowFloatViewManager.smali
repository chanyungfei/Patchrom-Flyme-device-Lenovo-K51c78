.class public Lcom/lenovo/settings/dslv/ShadowFloatViewManager;
.super Ljava/lang/Object;
.source "ShadowFloatViewManager.java"

# interfaces
.implements Lcom/lenovo/settings/dslv/DragSortListView$FloatViewManager;


# static fields
.field private static final SCALE_FACTOR:F = 1.05f


# instance fields
.field private mContainer:Landroid/widget/LinearLayout;

.field private mFloatBGColor:I

.field private mFloatBitmap:Landroid/graphics/Bitmap;

.field private mImageView:Landroid/widget/ImageView;

.field private mListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Landroid/widget/ListView;)V
    .locals 1
    .param p1, "lv"    # Landroid/widget/ListView;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/settings/dslv/ShadowFloatViewManager;->mFloatBGColor:I

    .line 34
    iput-object p1, p0, Lcom/lenovo/settings/dslv/ShadowFloatViewManager;->mListView:Landroid/widget/ListView;

    .line 35
    return-void
.end method

.method private initContainer()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 121
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/lenovo/settings/dslv/ShadowFloatViewManager;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lenovo/settings/dslv/ShadowFloatViewManager;->mContainer:Landroid/widget/LinearLayout;

    .line 122
    iget-object v1, p0, Lcom/lenovo/settings/dslv/ShadowFloatViewManager;->mContainer:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 123
    iget-object v1, p0, Lcom/lenovo/settings/dslv/ShadowFloatViewManager;->mContainer:Landroid/widget/LinearLayout;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 124
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 126
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Lcom/lenovo/settings/dslv/ShadowFloatViewManager;->mContainer:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 127
    iget-object v1, p0, Lcom/lenovo/settings/dslv/ShadowFloatViewManager;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    return-void
.end method


# virtual methods
.method public onCreateFloatView(I)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I

    .prologue
    const/4 v6, 0x1

    const v10, 0x3f866666    # 1.05f

    const/4 v1, 0x0

    .line 49
    iget-object v0, p0, Lcom/lenovo/settings/dslv/ShadowFloatViewManager;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/lenovo/settings/dslv/ShadowFloatViewManager;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    add-int/2addr v2, p1

    iget-object v3, p0, Lcom/lenovo/settings/dslv/ShadowFloatViewManager;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 51
    .local v9, "v":Landroid/view/View;
    if-nez v9, :cond_0

    .line 52
    const/4 v0, 0x0

    .line 89
    :goto_0
    return-object v0

    .line 55
    :cond_0
    invoke-virtual {v9, v1}, Landroid/view/View;->setPressed(Z)V

    .line 60
    invoke-virtual {v9, v6}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 61
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 62
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v5, v10, v10}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 63
    invoke-virtual {v9}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v4

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/settings/dslv/ShadowFloatViewManager;->mFloatBitmap:Landroid/graphics/Bitmap;

    .line 65
    invoke-virtual {v9, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 67
    iget-object v0, p0, Lcom/lenovo/settings/dslv/ShadowFloatViewManager;->mImageView:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 68
    new-instance v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/lenovo/settings/dslv/ShadowFloatViewManager;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/settings/dslv/ShadowFloatViewManager;->mImageView:Landroid/widget/ImageView;

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/lenovo/settings/dslv/ShadowFloatViewManager;->mImageView:Landroid/widget/ImageView;

    iget v2, p0, Lcom/lenovo/settings/dslv/ShadowFloatViewManager;->mFloatBGColor:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 71
    iget-object v0, p0, Lcom/lenovo/settings/dslv/ShadowFloatViewManager;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 72
    iget-object v0, p0, Lcom/lenovo/settings/dslv/ShadowFloatViewManager;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lenovo/settings/dslv/ShadowFloatViewManager;->mFloatBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 73
    iget-object v0, p0, Lcom/lenovo/settings/dslv/ShadowFloatViewManager;->mImageView:Landroid/widget/ImageView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v10

    float-to-int v2, v2

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v10

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    iget-object v0, p0, Lcom/lenovo/settings/dslv/ShadowFloatViewManager;->mContainer:Landroid/widget/LinearLayout;

    if-nez v0, :cond_2

    .line 77
    invoke-direct {p0}, Lcom/lenovo/settings/dslv/ShadowFloatViewManager;->initContainer()V

    .line 79
    :cond_2
    iget-object v0, p0, Lcom/lenovo/settings/dslv/ShadowFloatViewManager;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 80
    iget-object v0, p0, Lcom/lenovo/settings/dslv/ShadowFloatViewManager;->mContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/lenovo/settings/dslv/ShadowFloatViewManager;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 83
    new-instance v8, Landroid/view/View;

    iget-object v0, p0, Lcom/lenovo/settings/dslv/ShadowFloatViewManager;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v8, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 84
    .local v8, "shadowView":Landroid/view/View;
    const v0, 0x7f0200e8

    invoke-virtual {v8, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 85
    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x1

    const/16 v1, 0x1e

    invoke-direct {v7, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 87
    .local v7, "shadowLp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v0, p0, Lcom/lenovo/settings/dslv/ShadowFloatViewManager;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    iget-object v0, p0, Lcom/lenovo/settings/dslv/ShadowFloatViewManager;->mContainer:Landroid/widget/LinearLayout;

    goto/16 :goto_0
.end method

.method public onDestroyFloatView(Landroid/view/View;)V
    .locals 2
    .param p1, "floatView"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 107
    iget-object v0, p0, Lcom/lenovo/settings/dslv/ShadowFloatViewManager;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/lenovo/settings/dslv/ShadowFloatViewManager;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/lenovo/settings/dslv/ShadowFloatViewManager;->mFloatBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/lenovo/settings/dslv/ShadowFloatViewManager;->mFloatBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 112
    iput-object v1, p0, Lcom/lenovo/settings/dslv/ShadowFloatViewManager;->mFloatBitmap:Landroid/graphics/Bitmap;

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/lenovo/settings/dslv/ShadowFloatViewManager;->mContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 116
    iget-object v0, p0, Lcom/lenovo/settings/dslv/ShadowFloatViewManager;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 118
    :cond_2
    return-void
.end method

.method public onDragFloatView(Landroid/view/View;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 0
    .param p1, "floatView"    # Landroid/view/View;
    .param p2, "position"    # Landroid/graphics/Point;
    .param p3, "touch"    # Landroid/graphics/Point;

    .prologue
    .line 98
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/lenovo/settings/dslv/ShadowFloatViewManager;->mFloatBGColor:I

    .line 39
    return-void
.end method
