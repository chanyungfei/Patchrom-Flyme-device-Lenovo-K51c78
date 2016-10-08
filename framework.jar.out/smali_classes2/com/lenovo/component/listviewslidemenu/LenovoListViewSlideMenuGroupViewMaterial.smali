.class public Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;
.super Landroid/view/ViewGroup;
.source "LenovoListViewSlideMenuGroupViewMaterial.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial$OnMenuClickListener;,
        Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial$OnRightMenuClickListener;,
        Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial$OnLeftMenuClickListener;
    }
.end annotation


# instance fields
.field private DEBUG:Z

.field private TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDensity:F

.field private mHeight:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLeftMenu:Landroid/view/View;

.field private mLeftMenuHeight:I

.field private mLeftMenuHide:Z

.field private mLeftMenuWidth:I

.field private mListItem:Landroid/view/View;

.field private mOnLeftMenuClickListener:Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial$OnLeftMenuClickListener;

.field private mOnMenuClickListener:Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial$OnMenuClickListener;

.field private mOnRightMenuClickListener:Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial$OnRightMenuClickListener;

.field private mPosition:I

.field private mRightMenu:Landroid/view/View;

.field private mRightMenuHeight:I

.field private mRightMenuHide:Z

.field private mRightMenuWidth:I

.field private mScroller:Landroid/widget/Scroller;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const v10, -0x50506

    const/4 v9, -0x2

    const/high16 v8, 0x41800000    # 16.0f

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 69
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 22
    const-string v4, "zyw"

    iput-object v4, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->TAG:Ljava/lang/String;

    .line 23
    iput-boolean v6, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->DEBUG:Z

    .line 30
    const/4 v4, -0x1

    iput v4, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mPosition:I

    .line 31
    iput v6, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mWidth:I

    .line 32
    iput v6, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mHeight:I

    .line 33
    iput v6, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mLeftMenuWidth:I

    .line 34
    iput v6, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mLeftMenuHeight:I

    .line 35
    iput v6, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mRightMenuWidth:I

    .line 36
    iput v6, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mRightMenuHeight:I

    .line 37
    iput-object v7, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mOnLeftMenuClickListener:Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial$OnLeftMenuClickListener;

    .line 38
    iput-object v7, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mOnRightMenuClickListener:Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial$OnRightMenuClickListener;

    .line 39
    iput-object v7, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mOnMenuClickListener:Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial$OnMenuClickListener;

    .line 40
    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mDensity:F

    .line 41
    iput-boolean v6, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mLeftMenuHide:Z

    .line 42
    iput-boolean v6, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mRightMenuHide:Z

    .line 70
    iput-object p1, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mContext:Landroid/content/Context;

    .line 71
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mInflater:Landroid/view/LayoutInflater;

    .line 72
    new-instance v4, Landroid/widget/Scroller;

    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-direct {v4, p1, v5}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v4, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mScroller:Landroid/widget/Scroller;

    .line 73
    invoke-virtual {p0}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    iput v4, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mDensity:F

    .line 75
    new-instance v2, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 76
    .local v2, "leftMenu":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mContext:Landroid/content/Context;

    const v5, 0x902009e

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 77
    .local v0, "dLeft":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v0, v6, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 78
    invoke-virtual {v2, v0, v7, v7, v7}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 79
    iget v4, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mDensity:F

    mul-float/2addr v4, v8

    float-to-int v4, v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 80
    iget v4, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mDensity:F

    mul-float/2addr v4, v8

    float-to-int v4, v4

    iget v5, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mDensity:F

    mul-float/2addr v5, v8

    float-to-int v5, v5

    invoke-virtual {v2, v4, v6, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 81
    const/16 v4, 0x11

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 82
    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 83
    const/4 v4, 0x2

    invoke-virtual {v2, v4, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 91
    const v4, 0x90200a1

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 92
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    iget-object v4, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mLeftMenu:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 95
    iget-object v4, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mLeftMenu:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->removeView(Landroid/view/View;)V

    .line 97
    :cond_0
    iput-object v2, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mLeftMenu:Landroid/view/View;

    .line 98
    iget-object v4, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mLeftMenu:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->addView(Landroid/view/View;)V

    .line 100
    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 101
    .local v3, "rightMenu":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mContext:Landroid/content/Context;

    const v5, 0x902009d

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 102
    .local v1, "dRight":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v1, v6, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 103
    invoke-virtual {v3, v7, v7, v1, v7}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 104
    iget v4, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mDensity:F

    mul-float/2addr v4, v8

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 105
    iget v4, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mDensity:F

    mul-float/2addr v4, v8

    float-to-int v4, v4

    iget v5, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mDensity:F

    mul-float/2addr v5, v8

    float-to-int v5, v5

    invoke-virtual {v3, v4, v6, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 106
    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 107
    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 108
    const/4 v4, 0x2

    invoke-virtual {v3, v4, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 109
    const v4, 0x90200a2

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 110
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    iget-object v4, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mRightMenu:Landroid/view/View;

    if-eqz v4, :cond_1

    .line 114
    iget-object v4, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mRightMenu:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->removeView(Landroid/view/View;)V

    .line 116
    :cond_1
    iput-object v3, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mRightMenu:Landroid/view/View;

    .line 117
    iget-object v4, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mRightMenu:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->addView(Landroid/view/View;)V

    .line 118
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;)Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial$OnMenuClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mOnMenuClickListener:Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial$OnMenuClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;)Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial$OnLeftMenuClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mOnLeftMenuClickListener:Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial$OnLeftMenuClickListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;)Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial$OnRightMenuClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mOnRightMenuClickListener:Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial$OnRightMenuClickListener;

    return-object v0
.end method


# virtual methods
.method public final computeScroll()V
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->scrollTo(II)V

    .line 175
    invoke-virtual {p0}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->postInvalidate()V

    .line 177
    :cond_0
    return-void
.end method

.method public dumpLog()Ljava/lang/String;
    .locals 2

    .prologue
    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "para:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLeftMenu()Landroid/view/View;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mLeftMenu:Landroid/view/View;

    return-object v0
.end method

.method public getLeftMenuWidth()I
    .locals 1

    .prologue
    .line 275
    iget v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mLeftMenuWidth:I

    return v0
.end method

.method public getRightMenu()Landroid/view/View;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mRightMenu:Landroid/view/View;

    return-object v0
.end method

.method public getRightMenuWidth()I
    .locals 1

    .prologue
    .line 267
    iget v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mRightMenuWidth:I

    return v0
.end method

.method public isLeftMenuHide()Z
    .locals 1

    .prologue
    .line 307
    iget-boolean v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mLeftMenuHide:Z

    return v0
.end method

.method public isRightMenuHide()Z
    .locals 1

    .prologue
    .line 299
    iget-boolean v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mRightMenuHide:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/16 v3, 0x8

    const/4 v4, 0x0

    .line 123
    iget-object v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mListItem:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mListItem:Landroid/view/View;

    iget v1, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mWidth:I

    iget v2, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mHeight:I

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mLeftMenu:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mLeftMenu:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v3, :cond_1

    .line 127
    iget-object v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mLeftMenu:Landroid/view/View;

    iget v1, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mLeftMenuWidth:I

    neg-int v1, v1

    iget v2, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mHeight:I

    invoke-virtual {v0, v1, v4, v4, v2}, Landroid/view/View;->layout(IIII)V

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mRightMenu:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mRightMenu:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v3, :cond_2

    .line 130
    iget-object v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mRightMenu:Landroid/view/View;

    iget v1, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mWidth:I

    iget v2, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mWidth:I

    iget v3, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mRightMenuWidth:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mHeight:I

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 132
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/16 v6, 0x8

    const/4 v3, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    .line 136
    iget-object v1, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mListItem:Landroid/view/View;

    if-eqz v1, :cond_5

    .line 137
    iget-object v1, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mListItem:Landroid/view/View;

    invoke-virtual {v1, p1, p2}, Landroid/view/View;->measure(II)V

    .line 138
    iget-object v1, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mListItem:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iput v1, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mWidth:I

    .line 139
    iget-object v1, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mListItem:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iput v1, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mHeight:I

    .line 141
    iget-object v1, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mLeftMenu:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mLeftMenu:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v6, :cond_0

    .line 142
    iget-object v1, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mLeftMenu:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 143
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v4, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mLeftMenu:Landroid/view/View;

    iget v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v1, :cond_4

    move v1, v2

    :goto_0
    invoke-static {v5, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget v5, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mHeight:I

    invoke-static {v5, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v4, v1, v5}, Landroid/view/View;->measure(II)V

    .line 146
    iget-object v1, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mLeftMenu:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iput v1, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mLeftMenuWidth:I

    .line 147
    iget-object v1, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mLeftMenu:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iput v1, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mLeftMenuHeight:I

    .line 149
    .end local v0    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget-object v1, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mRightMenu:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mRightMenu:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v6, :cond_2

    .line 150
    iget-object v1, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mRightMenu:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 151
    .restart local v0    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mRightMenu:Landroid/view/View;

    iget v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v5, :cond_1

    move v3, v2

    :cond_1
    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iget v4, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mHeight:I

    invoke-static {v4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v1, v3, v2}, Landroid/view/View;->measure(II)V

    .line 154
    iget-object v1, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mRightMenu:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iput v1, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mRightMenuWidth:I

    .line 155
    iget-object v1, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mRightMenu:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iput v1, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mRightMenuHeight:I

    .line 157
    .end local v0    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    iget v1, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mWidth:I

    invoke-static {v1, p1}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->resolveSize(II)I

    move-result v1

    iget v2, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mHeight:I

    invoke-static {v2, p2}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->resolveSize(II)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->setMeasuredDimension(II)V

    .line 159
    iget-boolean v1, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->DEBUG:Z

    if-eqz v1, :cond_3

    .line 160
    iget-object v1, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>>>mLeftMenu="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mLeftMenuWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mLeftMenuHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mRightMenu="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mRightMenuWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mRightMenuHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mListItem="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mListItem:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mListItem:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_3
    :goto_1
    return-void

    .restart local v0    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    move v1, v3

    .line 143
    goto/16 :goto_0

    .line 167
    .end local v0    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    goto :goto_1
.end method

.method public scrollSmoothTo(II)V
    .locals 6
    .param p1, "finalX"    # I
    .param p2, "finalY"    # I

    .prologue
    const/4 v2, 0x0

    .line 185
    invoke-virtual {p0}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->getScrollX()I

    move-result v1

    .line 186
    .local v1, "startX":I
    iget-boolean v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>>>>scrollSmoothTo , finalX="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", startX="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mScroller:Landroid/widget/Scroller;

    sub-int v3, p1, v1

    const/16 v5, 0x64

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 190
    invoke-virtual {p0}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->postInvalidate()V

    .line 191
    return-void
.end method

.method public setDebugEnable(Z)V
    .locals 0
    .param p1, "isTrue"    # Z

    .prologue
    .line 418
    iput-boolean p1, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->DEBUG:Z

    .line 419
    return-void
.end method

.method public setLeftMenu(I)V
    .locals 1
    .param p1, "resid"    # I

    .prologue
    .line 233
    iget-object v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mLeftMenu:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mLeftMenu:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->removeView(Landroid/view/View;)V

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, p1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mLeftMenu:Landroid/view/View;

    .line 237
    return-void
.end method

.method public setLeftMenu(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 221
    iget-object v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mLeftMenu:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mLeftMenu:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->removeView(Landroid/view/View;)V

    .line 224
    :cond_0
    iput-object p1, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mLeftMenu:Landroid/view/View;

    .line 225
    iget-object v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mLeftMenu:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->addView(Landroid/view/View;)V

    .line 226
    return-void
.end method

.method public setLeftMenuClickListener(Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial$OnLeftMenuClickListener;)V
    .locals 2
    .param p1, "l"    # Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial$OnLeftMenuClickListener;

    .prologue
    .line 348
    iput-object p1, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mOnLeftMenuClickListener:Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial$OnLeftMenuClickListener;

    .line 349
    iget-object v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mLeftMenu:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mOnLeftMenuClickListener:Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial$OnLeftMenuClickListener;

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mLeftMenu:Landroid/view/View;

    new-instance v1, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial$1;

    invoke-direct {v1, p0}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial$1;-><init>(Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 368
    :goto_0
    return-void

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mLeftMenu:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 364
    iget-object v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mLeftMenu:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 366
    :cond_1
    iget-object v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->TAG:Ljava/lang/String;

    const-string v1, ">>>>>setLeftMenuClickListener null error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setLeftMenuHide(Z)V
    .locals 0
    .param p1, "isTrue"    # Z

    .prologue
    .line 340
    iput-boolean p1, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mLeftMenuHide:Z

    .line 341
    return-void
.end method

.method public setListItemView(I)V
    .locals 1
    .param p1, "resid"    # I

    .prologue
    .line 210
    iget-object v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mListItem:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mListItem:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->removeView(Landroid/view/View;)V

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, p1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mListItem:Landroid/view/View;

    .line 214
    return-void
.end method

.method public setListItemView(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 198
    iget-object v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mListItem:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mListItem:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->removeView(Landroid/view/View;)V

    .line 201
    :cond_0
    iput-object p1, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mListItem:Landroid/view/View;

    .line 202
    iget-object v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mListItem:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->addView(Landroid/view/View;)V

    .line 203
    return-void
.end method

.method public setMenuClickListener(Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial$OnMenuClickListener;)V
    .locals 0
    .param p1, "l"    # Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial$OnMenuClickListener;

    .prologue
    .line 402
    iput-object p1, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mOnMenuClickListener:Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial$OnMenuClickListener;

    .line 403
    return-void
.end method

.method public setRightMenu(I)V
    .locals 1
    .param p1, "resid"    # I

    .prologue
    .line 256
    iget-object v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mRightMenu:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mRightMenu:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->removeView(Landroid/view/View;)V

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, p1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mRightMenu:Landroid/view/View;

    .line 260
    return-void
.end method

.method public setRightMenu(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 244
    iget-object v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mRightMenu:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mRightMenu:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->removeView(Landroid/view/View;)V

    .line 247
    :cond_0
    iput-object p1, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mRightMenu:Landroid/view/View;

    .line 248
    iget-object v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mRightMenu:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->addView(Landroid/view/View;)V

    .line 249
    return-void
.end method

.method public setRightMenuClickListener(Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial$OnRightMenuClickListener;)V
    .locals 2
    .param p1, "l"    # Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial$OnRightMenuClickListener;

    .prologue
    .line 375
    iput-object p1, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mOnRightMenuClickListener:Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial$OnRightMenuClickListener;

    .line 376
    iget-object v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mRightMenu:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mOnRightMenuClickListener:Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial$OnRightMenuClickListener;

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mRightMenu:Landroid/view/View;

    new-instance v1, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial$2;

    invoke-direct {v1, p0}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial$2;-><init>(Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 395
    :goto_0
    return-void

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mRightMenu:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 391
    iget-object v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mRightMenu:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 393
    :cond_1
    iget-object v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->TAG:Ljava/lang/String;

    const-string v1, ">>>>>setRightMenuClickListener null error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setRightMenuHide(Z)V
    .locals 0
    .param p1, "isTrue"    # Z

    .prologue
    .line 325
    iput-boolean p1, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->mRightMenuHide:Z

    .line 326
    return-void
.end method
