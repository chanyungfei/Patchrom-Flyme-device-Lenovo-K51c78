.class public Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;
.super Ljava/lang/Object;
.source "LenovoListViewSlideMenuListenerMaterial.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field public static final SWIPE_STAT_IDLE:I = 0x0

.field public static final SWIPE_STAT_PROCESS:I = 0x1

.field public static final SWIPE_STAT_SHOW_MENU:I = 0x2


# instance fields
.field private DEBUG:Z

.field private TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDownX:F

.field private mDownY:F

.field private mListView:Landroid/widget/ListView;

.field private mMaxFlingVelocity:I

.field private mMinFlingVelocity:I

.field private mSlideEnabled:Z

.field private mSwipeStatus:I

.field private mTouchDownListItemViewGroup:Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/ListView;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listView"    # Landroid/widget/ListView;

    .prologue
    const/4 v2, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v1, "zyw"

    iput-object v1, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->TAG:Ljava/lang/String;

    .line 15
    iput-boolean v2, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->DEBUG:Z

    .line 24
    iput v2, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->mSwipeStatus:I

    .line 25
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->mTouchDownListItemViewGroup:Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;

    .line 30
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->mSlideEnabled:Z

    .line 34
    iput-object p1, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->mContext:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->mListView:Landroid/widget/ListView;

    .line 36
    iget-object v1, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 37
    .local v0, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->mTouchSlop:I

    .line 38
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->mMinFlingVelocity:I

    .line 39
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->mMaxFlingVelocity:I

    .line 40
    iget-boolean v1, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 41
    iget-object v1, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>>>>mMinFlingVelocity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->mMinFlingVelocity:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mMaxFlingVelocity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->mMaxFlingVelocity:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->scrollBack()V

    return-void
.end method

.method private getFocusChild(II)Landroid/view/View;
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 248
    const/4 v0, 0x0

    .line 249
    .local v0, "child":Landroid/view/View;
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 250
    .local v4, "rect":Landroid/graphics/Rect;
    const/4 v7, 0x2

    new-array v3, v7, [I

    .line 251
    .local v3, "listViewCoords":[I
    iget-object v7, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7, v3}, Landroid/widget/ListView;->getLocationOnScreen([I)V

    .line 252
    const/4 v7, 0x0

    aget v7, v3, v7

    sub-int v5, p1, v7

    .line 253
    .local v5, "view_x":I
    const/4 v7, 0x1

    aget v7, v3, v7

    sub-int v6, p2, v7

    .line 254
    .local v6, "view_y":I
    iget-object v7, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    .line 256
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 257
    iget-object v7, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 258
    invoke-virtual {v0, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 259
    invoke-virtual {v4, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 260
    instance-of v7, v0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;

    if-eqz v7, :cond_0

    move-object v7, v0

    .line 265
    :goto_1
    return-object v7

    .line 256
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 265
    :cond_1
    const/4 v7, 0x0

    goto :goto_1
.end method

.method private scrollBack()V
    .locals 1

    .prologue
    .line 221
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->scrollBack(Z)V

    .line 222
    return-void
.end method

.method private scrollBack(Z)V
    .locals 3
    .param p1, "quickly"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 229
    iget-object v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->mTouchDownListItemViewGroup:Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;

    if-eqz v0, :cond_2

    .line 230
    if-eqz p1, :cond_1

    .line 231
    iget-object v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->mTouchDownListItemViewGroup:Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;

    invoke-virtual {v0, v1, v1}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->scrollTo(II)V

    .line 235
    :goto_0
    iget-object v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->mTouchDownListItemViewGroup:Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;

    invoke-virtual {v0, v2}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->setMenuClickListener(Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial$OnMenuClickListener;)V

    .line 236
    iput v1, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->mSwipeStatus:I

    .line 237
    iput-object v2, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->mTouchDownListItemViewGroup:Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;

    .line 238
    iget-object v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 240
    iput-object v2, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 245
    :cond_0
    :goto_1
    return-void

    .line 233
    :cond_1
    iget-object v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->mTouchDownListItemViewGroup:Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;

    invoke-virtual {v0, v1, v1}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->scrollSmoothTo(II)V

    goto :goto_0

    .line 243
    :cond_2
    iget-object v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->TAG:Ljava/lang/String;

    const-string v1, ">>>>>scrollBack  NULL pointer"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public dumpLog()Ljava/lang/String;
    .locals 1

    .prologue
    .line 295
    const-string v0, "para:"

    return-object v0
.end method

.method public getSlideFunctionEnable()Z
    .locals 1

    .prologue
    .line 287
    iget-boolean v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->mSlideEnabled:Z

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 48
    iget-boolean v7, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->mSlideEnabled:Z

    if-nez v7, :cond_1

    .line 49
    iget-object v7, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->mTouchDownListItemViewGroup:Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;

    if-eqz v7, :cond_0

    .line 50
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->scrollBack(Z)V

    .line 52
    :cond_0
    const/4 v7, 0x0

    .line 214
    :goto_0
    return v7

    .line 54
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 56
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 214
    :cond_2
    :goto_1
    const/4 v7, 0x0

    goto :goto_0

    .line 58
    :pswitch_0
    iget-boolean v7, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->DEBUG:Z

    if-eqz v7, :cond_3

    .line 59
    iget-object v7, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ">>>>>onTouch ACTION_DOWN, touch="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "+"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mSwipeStatus="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->mSwipeStatus:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_3
    iget v7, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->mSwipeStatus:I

    if-nez v7, :cond_6

    .line 62
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    iput v7, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->mDownX:F

    .line 63
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    iput v7, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->mDownY:F

    .line 64
    iget v7, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->mDownX:F

    float-to-int v7, v7

    iget v8, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->mDownY:F

    float-to-int v8, v8

    invoke-direct {p0, v7, v8}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->getFocusChild(II)Landroid/view/View;

    move-result-object v3

    .line 65
    .local v3, "downV":Landroid/view/View;
    if-eqz v3, :cond_2

    instance-of v7, v3, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;

    if-eqz v7, :cond_2

    .line 66
    check-cast v3, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;

    .end local v3    # "downV":Landroid/view/View;
    iput-object v3, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->mTouchDownListItemViewGroup:Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;

    .line 67
    iget-object v7, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v7, :cond_4

    .line 68
    iget-object v7, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7}, Landroid/view/VelocityTracker;->recycle()V

    .line 69
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 71
    :cond_4
    iget-object v7, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v7, :cond_5

    .line 72
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v7

    iput-object v7, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 74
    :cond_5
    iget-object v7, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 76
    :cond_6
    iget v7, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->mSwipeStatus:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_7

    .line 77
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->scrollBack(Z)V

    .line 79
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 80
    .local v1, "cancelEvent":Landroid/view/MotionEvent;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v7

    shl-int/lit8 v7, v7, 0x8

    or-int/lit8 v7, v7, 0x3

    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->setAction(I)V

    .line 83
    iget-object v7, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7, v1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 84
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 85
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 86
    .end local v1    # "cancelEvent":Landroid/view/MotionEvent;
    :cond_7
    iget v7, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->mSwipeStatus:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    .line 87
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->scrollBack(Z)V

    .line 89
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 90
    .restart local v1    # "cancelEvent":Landroid/view/MotionEvent;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v7

    shl-int/lit8 v7, v7, 0x8

    or-int/lit8 v7, v7, 0x3

    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->setAction(I)V

    .line 93
    iget-object v7, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7, v1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 94
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 95
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 99
    .end local v1    # "cancelEvent":Landroid/view/MotionEvent;
    :pswitch_1
    iget-boolean v7, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->DEBUG:Z

    if-eqz v7, :cond_8

    .line 100
    iget-object v7, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ">>>>>onTouch ACTION_MOVE, touch="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "+"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mSwipeStatus="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->mSwipeStatus:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_8
    iget v7, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->mSwipeStatus:I

    if-nez v7, :cond_9

    iget-object v7, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->mTouchDownListItemViewGroup:Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;

    if-eqz v7, :cond_9

    .line 103
    iget v7, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->mDownX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->mTouchSlop:I

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_9

    iget v7, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->mDownY:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->mTouchSlop:I

    int-to-float v8, v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_9

    .line 104
    const/4 v7, 0x1

    iput v7, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->mSwipeStatus:I

    .line 108
    :cond_9
    iget v7, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->mSwipeStatus:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    .line 109
    iget-object v7, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->mListView:Landroid/widget/ListView;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 112
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 113
    .restart local v1    # "cancelEvent":Landroid/view/MotionEvent;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v7

    shl-int/lit8 v7, v7, 0x8

    or-int/lit8 v7, v7, 0x3

    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->setAction(I)V

    .line 116
    iget-object v7, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7, v1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 117
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 119
    iget v7, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->mDownX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    sub-float/2addr v7, v8

    float-to-int v2, v7

    .line 120
    .local v2, "deltaX":I
    iget-boolean v7, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->DEBUG:Z

    if-eqz v7, :cond_a

    .line 121
    iget-object v7, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ">>>>>onTouch ACTION_MOVE, touch="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mDownX="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->mDownX:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_a
    if-lez v2, :cond_d

    .line 125
    iget-object v7, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->mTouchDownListItemViewGroup:Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;

    invoke-virtual {v7}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->getRightMenuWidth()I

    move-result v7

    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 126
    iget-object v7, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->mTouchDownListItemViewGroup:Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;

    invoke-virtual {v7}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->isRightMenuHide()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 127
    const/4 v2, 0x0

    .line 136
    :cond_b
    :goto_2
    iget-object v7, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->mTouchDownListItemViewGroup:Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;

    const/4 v8, 0x0

    invoke-virtual {v7, v2, v8}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->scrollTo(II)V

    .line 137
    iget-object v7, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v7, :cond_c

    .line 138
    iget-object v7, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 140
    :cond_c
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 131
    :cond_d
    iget-object v7, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->mTouchDownListItemViewGroup:Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;

    invoke-virtual {v7}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->getLeftMenuWidth()I

    move-result v7

    neg-int v7, v7

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 132
    iget-object v7, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->mTouchDownListItemViewGroup:Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;

    invoke-virtual {v7}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->isLeftMenuHide()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 133
    const/4 v2, 0x0

    goto :goto_2

    .line 146
    .end local v1    # "cancelEvent":Landroid/view/MotionEvent;
    .end local v2    # "deltaX":I
    :pswitch_2
    iget-boolean v7, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->DEBUG:Z

    if-eqz v7, :cond_e

    .line 147
    iget-object v7, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ">>>>>onTouch ACTION_UP, touch="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "+"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mSwipeStatus="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->mSwipeStatus:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_e
    iget v7, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->mSwipeStatus:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_13

    .line 150
    const/4 v6, 0x0

    .line 151
    .local v6, "velocityEnoughToFling":Z
    const/4 v4, 0x0

    .line 152
    .local v4, "v_x":I
    const/4 v5, 0x0

    .line 153
    .local v5, "v_y":I
    iget v7, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->mDownX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    sub-float/2addr v7, v8

    float-to-int v2, v7

    .line 154
    .restart local v2    # "deltaX":I
    iget-object v7, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v7, :cond_10

    .line 155
    iget-object v7, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v8, 0x3e8

    iget v9, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->mMaxFlingVelocity:I

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 156
    iget-object v7, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v7

    float-to-int v4, v7

    .line 157
    iget-object v7, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v7

    float-to-int v5, v7

    .line 158
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v7

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-ge v7, v8, :cond_f

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget v8, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->mMinFlingVelocity:I

    if-le v7, v8, :cond_f

    .line 159
    const/4 v6, 0x1

    .line 161
    :cond_f
    iget-boolean v7, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->DEBUG:Z

    if-eqz v7, :cond_10

    .line 162
    iget-object v7, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ">>>>>onTouch ACTION_UP, Velocity="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "+"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_10
    if-lez v2, :cond_14

    iget-object v7, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->mTouchDownListItemViewGroup:Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;

    invoke-virtual {v7}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->getRightMenuWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    if-gt v2, v7, :cond_11

    if-eqz v6, :cond_14

    if-gez v4, :cond_14

    .line 168
    :cond_11
    iget-object v7, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->mTouchDownListItemViewGroup:Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;

    invoke-virtual {v7}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->isRightMenuHide()Z

    move-result v7

    if-eqz v7, :cond_12

    .line 169
    invoke-direct {p0}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->scrollBack()V

    goto/16 :goto_1

    .line 172
    :cond_12
    iget-object v7, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->mTouchDownListItemViewGroup:Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;

    invoke-virtual {v7}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->getRightMenuWidth()I

    move-result v2

    .line 173
    iget-object v7, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->mTouchDownListItemViewGroup:Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;

    const/4 v8, 0x0

    invoke-virtual {v7, v2, v8}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->scrollSmoothTo(II)V

    .line 174
    const/4 v7, 0x2

    iput v7, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->mSwipeStatus:I

    .line 175
    iget-object v7, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->mTouchDownListItemViewGroup:Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;

    new-instance v8, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial$1;

    invoke-direct {v8, p0}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial$1;-><init>(Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;)V

    invoke-virtual {v7, v8}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->setMenuClickListener(Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial$OnMenuClickListener;)V

    .line 204
    .end local v2    # "deltaX":I
    .end local v4    # "v_x":I
    .end local v5    # "v_y":I
    .end local v6    # "velocityEnoughToFling":Z
    :cond_13
    :goto_3
    iget-object v7, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v7, :cond_2

    .line 205
    iget-object v7, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7}, Landroid/view/VelocityTracker;->recycle()V

    .line 206
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_1

    .line 183
    .restart local v2    # "deltaX":I
    .restart local v4    # "v_x":I
    .restart local v5    # "v_y":I
    .restart local v6    # "velocityEnoughToFling":Z
    :cond_14
    if-gez v2, :cond_17

    iget-object v7, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->mTouchDownListItemViewGroup:Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;

    invoke-virtual {v7}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->getLeftMenuWidth()I

    move-result v7

    neg-int v7, v7

    div-int/lit8 v7, v7, 0x2

    if-lt v2, v7, :cond_15

    if-eqz v6, :cond_17

    if-lez v4, :cond_17

    .line 185
    :cond_15
    iget-object v7, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->mTouchDownListItemViewGroup:Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;

    invoke-virtual {v7}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->isLeftMenuHide()Z

    move-result v7

    if-eqz v7, :cond_16

    .line 186
    invoke-direct {p0}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->scrollBack()V

    goto/16 :goto_1

    .line 189
    :cond_16
    iget-object v7, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->mTouchDownListItemViewGroup:Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;

    invoke-virtual {v7}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->getLeftMenuWidth()I

    move-result v7

    neg-int v2, v7

    .line 190
    iget-object v7, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->mTouchDownListItemViewGroup:Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;

    const/4 v8, 0x0

    invoke-virtual {v7, v2, v8}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->scrollSmoothTo(II)V

    .line 191
    const/4 v7, 0x2

    iput v7, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->mSwipeStatus:I

    .line 192
    iget-object v7, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->mTouchDownListItemViewGroup:Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;

    new-instance v8, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial$2;

    invoke-direct {v8, p0}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial$2;-><init>(Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;)V

    invoke-virtual {v7, v8}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;->setMenuClickListener(Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial$OnMenuClickListener;)V

    goto :goto_3

    .line 201
    :cond_17
    invoke-direct {p0}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->scrollBack()V

    goto :goto_3

    .line 56
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setDebugEnable(Z)V
    .locals 0
    .param p1, "isTrue"    # Z

    .prologue
    .line 303
    iput-boolean p1, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->DEBUG:Z

    .line 304
    return-void
.end method

.method public setSlideFunctionEnable(Z)V
    .locals 3
    .param p1, "isTrue"    # Z

    .prologue
    .line 273
    iget-object v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->mTouchDownListItemViewGroup:Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupViewMaterial;

    if-eqz v0, :cond_0

    .line 274
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->scrollBack(Z)V

    .line 276
    :cond_0
    iput-boolean p1, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->mSlideEnabled:Z

    .line 277
    iget-boolean v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 278
    iget-object v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>>>>mSlideEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuListenerMaterial;->mSlideEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :cond_1
    return-void
.end method
