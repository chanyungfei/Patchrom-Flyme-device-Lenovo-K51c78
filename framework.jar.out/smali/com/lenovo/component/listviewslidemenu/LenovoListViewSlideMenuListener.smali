.class public Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;
.super Ljava/lang/Object;
.source "LenovoListViewSlideMenuListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener$OnSlideMenuClickListener;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "LenovoSlidemenuListViewListener"


# instance fields
.field private bIntercepTouch:Z

.field private bMenuTouch:Z

.field private bSliding:Z

.field private mDownView:Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;

.field private mDownX:F

.field private mDownY:F

.field private mListView:Landroid/widget/ListView;

.field private mMaxFlingVelocity:I

.field private mMenuItemView:Landroid/view/View;

.field private mMinFlingVelocity:I

.field private mOnSlideMenuClickListener:Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener$OnSlideMenuClickListener;

.field private mScrollState:I

.field private mSelectView:Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;

.field private mTouchSlop:I

.field private mTouchX:F

.field private mTouchY:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/widget/ListView;Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener$OnSlideMenuClickListener;)V
    .locals 2
    .param p1, "listView"    # Landroid/widget/ListView;
    .param p2, "listener"    # Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener$OnSlideMenuClickListener;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->mListView:Landroid/widget/ListView;

    .line 43
    iput-object p2, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->mOnSlideMenuClickListener:Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener$OnSlideMenuClickListener;

    .line 44
    invoke-virtual {p1}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 45
    .local v0, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->mTouchSlop:I

    .line 46
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->mMinFlingVelocity:I

    .line 47
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->mMaxFlingVelocity:I

    .line 48
    const/4 v1, 0x0

    iput v1, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->mScrollState:I

    .line 49
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 17
    sget-boolean v0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;

    .prologue
    .line 17
    iget v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->mScrollState:I

    return v0
.end method

.method static synthetic access$102(Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;
    .param p1, "x1"    # I

    .prologue
    .line 17
    iput p1, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->mScrollState:I

    return p1
.end method

.method static synthetic access$202(Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;)Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;
    .param p1, "x1"    # Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->mSelectView:Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;

    return-object p1
.end method

.method private getFocusChild(II)Landroid/view/View;
    .locals 10
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 259
    const/4 v0, 0x0

    .line 260
    .local v0, "child":Landroid/view/View;
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 261
    .local v4, "rect":Landroid/graphics/Rect;
    const/4 v7, 0x2

    new-array v3, v7, [I

    .line 262
    .local v3, "listViewCoords":[I
    iget-object v7, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7, v3}, Landroid/widget/ListView;->getLocationOnScreen([I)V

    .line 263
    const/4 v7, 0x0

    aget v7, v3, v7

    sub-int v5, p1, v7

    .line 264
    .local v5, "view_x":I
    const/4 v7, 0x1

    aget v7, v3, v7

    sub-int v6, p2, v7

    .line 265
    .local v6, "view_y":I
    iget-object v7, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    .line 266
    .local v1, "childCount":I
    sget-boolean v7, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->DEBUG:Z

    if-eqz v7, :cond_0

    .line 267
    const-string v7, "LenovoSlidemenuListViewListener"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "####childCount:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 271
    iget-object v7, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 272
    invoke-virtual {v0, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 273
    invoke-virtual {v4, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 274
    sget-boolean v7, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->DEBUG:Z

    if-eqz v7, :cond_1

    .line 275
    const-string v7, "LenovoSlidemenuListViewListener"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "####Focus: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_1
    instance-of v7, v0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;

    if-eqz v7, :cond_2

    move-object v7, v0

    .line 283
    :goto_1
    return-object v7

    .line 270
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 283
    :cond_3
    const/4 v7, 0x0

    goto :goto_1
.end method

.method private registerOnScrollListener()V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->mDownView:Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;

    if-nez v0, :cond_0

    .line 77
    :goto_0
    return-void

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->mDownView:Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;

    new-instance v1, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener$1;

    invoke-direct {v1, p0}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener$1;-><init>(Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->registerSlideSectionListener(Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView$OnSlideSectionListener;)V

    goto :goto_0
.end method


# virtual methods
.method public abortSlide()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 81
    iget v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->mScrollState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 82
    iget-object v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->mMenuItemView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->mMenuItemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->mMenuItemView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->mSelectView:Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;

    invoke-virtual {v0}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->resetState()V

    .line 89
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->mDownView:Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;

    .line 90
    iput-boolean v2, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->bSliding:Z

    .line 91
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 95
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    iput v8, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->mTouchX:F

    .line 96
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    iput v8, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->mTouchY:F

    .line 98
    sget-boolean v8, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->DEBUG:Z

    if-eqz v8, :cond_0

    .line 99
    const-string v8, "LenovoSlidemenuListViewListener"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "####onTouch:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mScrollState:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->mScrollState:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 255
    :cond_1
    :goto_0
    const/4 v8, 0x0

    :goto_1
    return v8

    .line 105
    :pswitch_0
    iget-boolean v8, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->bIntercepTouch:Z

    if-nez v8, :cond_2

    iget v8, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->mScrollState:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    .line 107
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->bIntercepTouch:Z

    .line 110
    :cond_2
    iget-boolean v8, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->bIntercepTouch:Z

    if-nez v8, :cond_3

    iget v8, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->mScrollState:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_3

    .line 113
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->bIntercepTouch:Z

    .line 114
    iget-object v8, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->mSelectView:Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;

    iget v9, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->mTouchX:F

    float-to-int v9, v9

    iget v10, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->mTouchY:F

    float-to-int v10, v10

    invoke-virtual {v8, v9, v10}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->getTouchMenu(II)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->mMenuItemView:Landroid/view/View;

    .line 115
    iget-object v8, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->mMenuItemView:Landroid/view/View;

    if-nez v8, :cond_4

    .line 116
    iget-object v8, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->mSelectView:Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;

    invoke-virtual {v8}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->cancelScroll()V

    .line 123
    :cond_3
    :goto_2
    iget-boolean v8, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->bIntercepTouch:Z

    if-eqz v8, :cond_5

    .line 124
    const/4 v8, 0x1

    goto :goto_1

    .line 118
    :cond_4
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->bMenuTouch:Z

    .line 119
    iget-object v8, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->mMenuItemView:Landroid/view/View;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/view/View;->setSelected(Z)V

    goto :goto_2

    .line 127
    :cond_5
    iget v8, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->mTouchX:F

    float-to-int v8, v8

    iget v9, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->mTouchY:F

    float-to-int v9, v9

    invoke-direct {p0, v8, v9}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->getFocusChild(II)Landroid/view/View;

    move-result-object v4

    .line 129
    .local v4, "downView":Landroid/view/View;
    if-eqz v4, :cond_6

    instance-of v8, v4, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;

    if-eqz v8, :cond_6

    .line 130
    check-cast v4, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;

    .end local v4    # "downView":Landroid/view/View;
    iput-object v4, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->mDownView:Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;

    .line 132
    :cond_6
    iget-object v8, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->mDownView:Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;

    if-eqz v8, :cond_1

    .line 134
    sget-boolean v8, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->DEBUG:Z

    if-eqz v8, :cond_7

    .line 135
    const-string v8, "LenovoSlidemenuListViewListener"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "#####mDownView:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->mDownView:Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_7
    iget v8, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->mTouchX:F

    iput v8, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->mDownX:F

    .line 138
    iget v8, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->mTouchY:F

    iput v8, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->mDownY:F

    .line 139
    iget-object v8, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v8, :cond_8

    .line 140
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v8

    iput-object v8, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 142
    :cond_8
    iget-object v8, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 147
    :pswitch_1
    iget v8, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->mTouchX:F

    iget v9, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->mDownX:F

    sub-float v2, v8, v9

    .line 148
    .local v2, "deltaX_move":F
    iget v8, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->mTouchY:F

    iget v9, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->mDownY:F

    sub-float v3, v8, v9

    .line 150
    .local v3, "deltaY_move":F
    iget-boolean v8, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->bIntercepTouch:Z

    if-eqz v8, :cond_a

    .line 151
    iget-boolean v8, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->bMenuTouch:Z

    if-eqz v8, :cond_9

    iget v8, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->mScrollState:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_9

    .line 153
    iget-object v8, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->mMenuItemView:Landroid/view/View;

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->mMenuItemView:Landroid/view/View;

    iget-object v9, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->mSelectView:Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;

    iget v10, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->mTouchX:F

    float-to-int v10, v10

    iget v11, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->mTouchY:F

    float-to-int v11, v11

    invoke-virtual {v9, v10, v11}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->getTouchMenu(II)Landroid/view/View;

    move-result-object v9

    if-eq v8, v9, :cond_9

    .line 156
    iget-object v8, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->mMenuItemView:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setSelected(Z)V

    .line 159
    :cond_9
    const/4 v8, 0x1

    goto/16 :goto_1

    .line 162
    :cond_a
    iget-object v8, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->mDownView:Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v8, :cond_1

    .line 167
    iget-object v8, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 169
    iget-boolean v8, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->bSliding:Z

    if-nez v8, :cond_b

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget v9, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->mTouchSlop:I

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_b

    .line 171
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->mDownView:Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;

    goto/16 :goto_0

    .line 175
    :cond_b
    iget-boolean v8, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->bSliding:Z

    if-nez v8, :cond_c

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget v9, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->mTouchSlop:I

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_c

    .line 177
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->bSliding:Z

    .line 180
    :cond_c
    iget-boolean v8, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->bSliding:Z

    if-eqz v8, :cond_1

    .line 181
    sget-boolean v8, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->DEBUG:Z

    if-eqz v8, :cond_d

    .line 182
    const-string v8, "LenovoSlidemenuListViewListener"

    const-string v9, "####touchScroll"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_d
    iget-object v8, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->mListView:Landroid/widget/ListView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 187
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 188
    .local v1, "cancelEvent":Landroid/view/MotionEvent;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v8

    shl-int/lit8 v8, v8, 0x8

    or-int/lit8 v8, v8, 0x3

    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->setAction(I)V

    .line 191
    iget-object v8, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->mListView:Landroid/widget/ListView;

    invoke-virtual {v8, v1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 192
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 194
    iget-object v8, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->mDownView:Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;

    float-to-int v9, v2

    invoke-virtual {v8, v9}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->touchScroll(I)V

    .line 195
    const/4 v8, 0x1

    goto/16 :goto_1

    .line 201
    .end local v1    # "cancelEvent":Landroid/view/MotionEvent;
    .end local v2    # "deltaX_move":F
    .end local v3    # "deltaY_move":F
    :pswitch_2
    const/4 v0, 0x0

    .line 202
    .local v0, "bIntercepInternel":Z
    iget-boolean v8, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->bIntercepTouch:Z

    if-nez v8, :cond_e

    iget-boolean v8, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->bSliding:Z

    if-eqz v8, :cond_13

    .line 203
    :cond_e
    iget-boolean v8, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->bIntercepTouch:Z

    if-eqz v8, :cond_12

    iget-boolean v8, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->bMenuTouch:Z

    if-eqz v8, :cond_12

    iget v8, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->mScrollState:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_12

    .line 206
    iget-object v8, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->mMenuItemView:Landroid/view/View;

    if-eqz v8, :cond_12

    iget-object v8, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->mMenuItemView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->isSelected()Z

    move-result v8

    if-eqz v8, :cond_12

    .line 208
    iget-object v8, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->mMenuItemView:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setSelected(Z)V

    .line 209
    sget-boolean v8, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->DEBUG:Z

    if-eqz v8, :cond_f

    .line 210
    const-string v8, "LenovoSlidemenuListViewListener"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "#####mMenuItemView click:mSelectView="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->mSelectView:Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_f
    iget-object v8, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->mOnSlideMenuClickListener:Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener$OnSlideMenuClickListener;

    if-eqz v8, :cond_11

    .line 213
    iget-object v8, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->mMenuItemView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 214
    .local v5, "position":I
    sget-boolean v8, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->DEBUG:Z

    if-eqz v8, :cond_10

    .line 215
    const-string v8, "LenovoSlidemenuListViewListener"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "#####mMenuItemView click: mSelectView="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->mSelectView:Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_10
    iget-object v8, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->mOnSlideMenuClickListener:Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener$OnSlideMenuClickListener;

    iget-object v9, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->mListView:Landroid/widget/ListView;

    iget-object v10, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->mSelectView:Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;

    invoke-interface {v8, v9, v10, v5}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener$OnSlideMenuClickListener;->onClick(Landroid/widget/ListView;Landroid/view/View;I)V

    .line 219
    .end local v5    # "position":I
    :cond_11
    iget-object v8, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->mSelectView:Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;

    invoke-virtual {v8}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->resetState()V

    .line 222
    :cond_12
    const/4 v0, 0x1

    .line 225
    :cond_13
    iget-boolean v8, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->bIntercepTouch:Z

    if-nez v8, :cond_14

    iget-boolean v8, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->bSliding:Z

    if-eqz v8, :cond_14

    iget-object v8, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->mDownView:Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;

    if-eqz v8, :cond_14

    iget-object v8, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v8, :cond_14

    .line 229
    iget-object v8, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v9, 0x3e8

    iget v10, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->mMaxFlingVelocity:I

    int-to-float v10, v10

    invoke-virtual {v8, v9, v10}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 230
    iget-object v8, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v8

    float-to-int v6, v8

    .line 231
    .local v6, "v_x":I
    iget-object v8, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v8

    float-to-int v7, v8

    .line 232
    .local v7, "v_y":I
    invoke-direct {p0}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->registerOnScrollListener()V

    .line 233
    iget-object v8, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->mDownView:Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;

    invoke-virtual {v8, v6, v7}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;->touchCancelScroll(II)V

    .line 234
    const/4 v0, 0x1

    .line 237
    .end local v6    # "v_x":I
    .end local v7    # "v_y":I
    :cond_14
    iget-object v8, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v8, :cond_15

    .line 238
    iget-object v8, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8}, Landroid/view/VelocityTracker;->recycle()V

    .line 239
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 241
    :cond_15
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->bIntercepTouch:Z

    .line 242
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->bMenuTouch:Z

    .line 243
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->mDownView:Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;

    .line 244
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->bSliding:Z

    .line 246
    if-eqz v0, :cond_1

    .line 247
    const/4 v8, 0x1

    goto/16 :goto_1

    .line 102
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setDebugLog(Z)V
    .locals 0
    .param p1, "isTrue"    # Z

    .prologue
    .line 287
    sput-boolean p1, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListener;->DEBUG:Z

    .line 288
    return-void
.end method
