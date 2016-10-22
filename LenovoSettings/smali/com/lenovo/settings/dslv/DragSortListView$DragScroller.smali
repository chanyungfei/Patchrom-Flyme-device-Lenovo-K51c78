.class Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;
.super Ljava/lang/Object;
.source "DragSortListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/settings/dslv/DragSortListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DragScroller"
.end annotation


# static fields
.field public static final DOWN:I = 0x1

.field public static final STOP:I = -0x1

.field public static final UP:I


# instance fields
.field private dt:F

.field private dy:I

.field private mAbort:Z

.field private mCurrTime:J

.field private mFirstFooter:I

.field private mLastHeader:I

.field private mPrevTime:J

.field private mScrollSpeed:F

.field private mScrolling:Z

.field private scrollDir:I

.field private tStart:J

.field final synthetic this$0:Lcom/lenovo/settings/dslv/DragSortListView;


# direct methods
.method public constructor <init>(Lcom/lenovo/settings/dslv/DragSortListView;)V
    .locals 1

    .prologue
    .line 2828
    iput-object p1, p0, Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;->this$0:Lcom/lenovo/settings/dslv/DragSortListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2813
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;->mScrolling:Z

    .line 2829
    return-void
.end method


# virtual methods
.method public getScrollDir()I
    .locals 1

    .prologue
    .line 2825
    iget-boolean v0, p0, Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;->mScrolling:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;->scrollDir:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public isScrolling()Z
    .locals 1

    .prologue
    .line 2821
    iget-boolean v0, p0, Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;->mScrolling:Z

    return v0
.end method

.method public run()V
    .locals 18

    .prologue
    .line 2856
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;->mAbort:Z

    if-eqz v13, :cond_0

    .line 2857
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;->mScrolling:Z

    .line 2938
    :goto_0
    return-void

    .line 2861
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;->this$0:Lcom/lenovo/settings/dslv/DragSortListView;

    invoke-virtual {v13}, Lcom/lenovo/settings/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v3

    .line 2862
    .local v3, "first":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;->this$0:Lcom/lenovo/settings/dslv/DragSortListView;

    invoke-virtual {v13}, Lcom/lenovo/settings/dslv/DragSortListView;->getLastVisiblePosition()I

    move-result v4

    .line 2863
    .local v4, "last":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;->this$0:Lcom/lenovo/settings/dslv/DragSortListView;

    invoke-virtual {v13}, Lcom/lenovo/settings/dslv/DragSortListView;->getCount()I

    move-result v2

    .line 2864
    .local v2, "count":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;->this$0:Lcom/lenovo/settings/dslv/DragSortListView;

    invoke-virtual {v13}, Lcom/lenovo/settings/dslv/DragSortListView;->getPaddingTop()I

    move-result v10

    .line 2865
    .local v10, "padTop":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;->this$0:Lcom/lenovo/settings/dslv/DragSortListView;

    invoke-virtual {v13}, Lcom/lenovo/settings/dslv/DragSortListView;->getHeight()I

    move-result v13

    sub-int/2addr v13, v10

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;->this$0:Lcom/lenovo/settings/dslv/DragSortListView;

    invoke-virtual {v14}, Lcom/lenovo/settings/dslv/DragSortListView;->getPaddingBottom()I

    move-result v14

    sub-int v5, v13, v14

    .line 2867
    .local v5, "listHeight":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;->this$0:Lcom/lenovo/settings/dslv/DragSortListView;

    # getter for: Lcom/lenovo/settings/dslv/DragSortListView;->mY:I
    invoke-static {v13}, Lcom/lenovo/settings/dslv/DragSortListView;->access$600(Lcom/lenovo/settings/dslv/DragSortListView;)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;->this$0:Lcom/lenovo/settings/dslv/DragSortListView;

    # getter for: Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewMid:I
    invoke-static {v14}, Lcom/lenovo/settings/dslv/DragSortListView;->access$1900(Lcom/lenovo/settings/dslv/DragSortListView;)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;->this$0:Lcom/lenovo/settings/dslv/DragSortListView;

    # getter for: Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewHeightHalf:I
    invoke-static {v15}, Lcom/lenovo/settings/dslv/DragSortListView;->access$400(Lcom/lenovo/settings/dslv/DragSortListView;)I

    move-result v15

    add-int/2addr v14, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 2868
    .local v7, "minY":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;->this$0:Lcom/lenovo/settings/dslv/DragSortListView;

    # getter for: Lcom/lenovo/settings/dslv/DragSortListView;->mY:I
    invoke-static {v13}, Lcom/lenovo/settings/dslv/DragSortListView;->access$600(Lcom/lenovo/settings/dslv/DragSortListView;)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;->this$0:Lcom/lenovo/settings/dslv/DragSortListView;

    # getter for: Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewMid:I
    invoke-static {v14}, Lcom/lenovo/settings/dslv/DragSortListView;->access$1900(Lcom/lenovo/settings/dslv/DragSortListView;)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;->this$0:Lcom/lenovo/settings/dslv/DragSortListView;

    # getter for: Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewHeightHalf:I
    invoke-static {v15}, Lcom/lenovo/settings/dslv/DragSortListView;->access$400(Lcom/lenovo/settings/dslv/DragSortListView;)I

    move-result v15

    sub-int/2addr v14, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 2870
    .local v6, "maxY":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;->scrollDir:I

    if-nez v13, :cond_4

    .line 2871
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;->this$0:Lcom/lenovo/settings/dslv/DragSortListView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/lenovo/settings/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 2872
    .local v12, "v":Landroid/view/View;
    if-nez v12, :cond_1

    .line 2873
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;->mScrolling:Z

    goto/16 :goto_0

    .line 2876
    :cond_1
    if-nez v3, :cond_2

    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v13

    if-ne v13, v10, :cond_2

    .line 2877
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;->mScrolling:Z

    goto/16 :goto_0

    .line 2881
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;->this$0:Lcom/lenovo/settings/dslv/DragSortListView;

    # getter for: Lcom/lenovo/settings/dslv/DragSortListView;->mScrollProfile:Lcom/lenovo/settings/dslv/DragSortListView$DragScrollProfile;
    invoke-static {v13}, Lcom/lenovo/settings/dslv/DragSortListView;->access$2200(Lcom/lenovo/settings/dslv/DragSortListView;)Lcom/lenovo/settings/dslv/DragSortListView$DragScrollProfile;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;->this$0:Lcom/lenovo/settings/dslv/DragSortListView;

    # getter for: Lcom/lenovo/settings/dslv/DragSortListView;->mUpScrollStartYF:F
    invoke-static {v14}, Lcom/lenovo/settings/dslv/DragSortListView;->access$2000(Lcom/lenovo/settings/dslv/DragSortListView;)F

    move-result v14

    int-to-float v15, v6

    sub-float/2addr v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;->this$0:Lcom/lenovo/settings/dslv/DragSortListView;

    # getter for: Lcom/lenovo/settings/dslv/DragSortListView;->mDragUpScrollHeight:F
    invoke-static {v15}, Lcom/lenovo/settings/dslv/DragSortListView;->access$2100(Lcom/lenovo/settings/dslv/DragSortListView;)F

    move-result v15

    div-float/2addr v14, v15

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;->mPrevTime:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-interface {v13, v14, v0, v1}, Lcom/lenovo/settings/dslv/DragSortListView$DragScrollProfile;->getSpeed(FJ)F

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;->mScrollSpeed:F

    .line 2898
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;->mCurrTime:J

    .line 2899
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;->mCurrTime:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;->mPrevTime:J

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    long-to-float v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;->dt:F

    .line 2905
    move-object/from16 v0, p0

    iget v13, v0, Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;->mScrollSpeed:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;->dt:F

    mul-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;->dy:I

    .line 2908
    move-object/from16 v0, p0

    iget v13, v0, Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;->dy:I

    if-ltz v13, :cond_7

    .line 2909
    move-object/from16 v0, p0

    iget v13, v0, Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;->dy:I

    invoke-static {v5, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;->dy:I

    .line 2910
    move v9, v3

    .line 2916
    .local v9, "movePos":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;->this$0:Lcom/lenovo/settings/dslv/DragSortListView;

    sub-int v14, v9, v3

    invoke-virtual {v13, v14}, Lcom/lenovo/settings/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 2917
    .local v8, "moveItem":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;->dy:I

    add-int v11, v13, v14

    .line 2919
    .local v11, "top":I
    if-nez v9, :cond_3

    if-le v11, v10, :cond_3

    .line 2920
    move v11, v10

    .line 2924
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;->this$0:Lcom/lenovo/settings/dslv/DragSortListView;

    const/4 v14, 0x1

    # setter for: Lcom/lenovo/settings/dslv/DragSortListView;->mBlockLayoutRequests:Z
    invoke-static {v13, v14}, Lcom/lenovo/settings/dslv/DragSortListView;->access$2502(Lcom/lenovo/settings/dslv/DragSortListView;Z)Z

    .line 2926
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;->this$0:Lcom/lenovo/settings/dslv/DragSortListView;

    sub-int v14, v11, v10

    invoke-virtual {v13, v9, v14}, Lcom/lenovo/settings/dslv/DragSortListView;->setSelectionFromTop(II)V

    .line 2927
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;->this$0:Lcom/lenovo/settings/dslv/DragSortListView;

    invoke-virtual {v13}, Lcom/lenovo/settings/dslv/DragSortListView;->layoutChildren()V

    .line 2928
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;->this$0:Lcom/lenovo/settings/dslv/DragSortListView;

    invoke-virtual {v13}, Lcom/lenovo/settings/dslv/DragSortListView;->invalidate()V

    .line 2930
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;->this$0:Lcom/lenovo/settings/dslv/DragSortListView;

    const/4 v14, 0x0

    # setter for: Lcom/lenovo/settings/dslv/DragSortListView;->mBlockLayoutRequests:Z
    invoke-static {v13, v14}, Lcom/lenovo/settings/dslv/DragSortListView;->access$2502(Lcom/lenovo/settings/dslv/DragSortListView;Z)Z

    .line 2933
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;->this$0:Lcom/lenovo/settings/dslv/DragSortListView;

    const/4 v14, 0x0

    # invokes: Lcom/lenovo/settings/dslv/DragSortListView;->doDragFloatView(ILandroid/view/View;Z)V
    invoke-static {v13, v9, v8, v14}, Lcom/lenovo/settings/dslv/DragSortListView;->access$2600(Lcom/lenovo/settings/dslv/DragSortListView;ILandroid/view/View;Z)V

    .line 2935
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;->mCurrTime:J

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;->mPrevTime:J

    .line 2937
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;->this$0:Lcom/lenovo/settings/dslv/DragSortListView;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lcom/lenovo/settings/dslv/DragSortListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 2884
    .end local v8    # "moveItem":Landroid/view/View;
    .end local v9    # "movePos":I
    .end local v11    # "top":I
    .end local v12    # "v":Landroid/view/View;
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;->this$0:Lcom/lenovo/settings/dslv/DragSortListView;

    sub-int v14, v4, v3

    invoke-virtual {v13, v14}, Lcom/lenovo/settings/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 2885
    .restart local v12    # "v":Landroid/view/View;
    if-nez v12, :cond_5

    .line 2886
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;->mScrolling:Z

    goto/16 :goto_0

    .line 2889
    :cond_5
    add-int/lit8 v13, v2, -0x1

    if-ne v4, v13, :cond_6

    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v13

    add-int v14, v5, v10

    if-gt v13, v14, :cond_6

    .line 2890
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;->mScrolling:Z

    goto/16 :goto_0

    .line 2894
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;->this$0:Lcom/lenovo/settings/dslv/DragSortListView;

    # getter for: Lcom/lenovo/settings/dslv/DragSortListView;->mScrollProfile:Lcom/lenovo/settings/dslv/DragSortListView$DragScrollProfile;
    invoke-static {v13}, Lcom/lenovo/settings/dslv/DragSortListView;->access$2200(Lcom/lenovo/settings/dslv/DragSortListView;)Lcom/lenovo/settings/dslv/DragSortListView$DragScrollProfile;

    move-result-object v13

    int-to-float v14, v7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;->this$0:Lcom/lenovo/settings/dslv/DragSortListView;

    # getter for: Lcom/lenovo/settings/dslv/DragSortListView;->mDownScrollStartYF:F
    invoke-static {v15}, Lcom/lenovo/settings/dslv/DragSortListView;->access$2300(Lcom/lenovo/settings/dslv/DragSortListView;)F

    move-result v15

    sub-float/2addr v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;->this$0:Lcom/lenovo/settings/dslv/DragSortListView;

    # getter for: Lcom/lenovo/settings/dslv/DragSortListView;->mDragDownScrollHeight:F
    invoke-static {v15}, Lcom/lenovo/settings/dslv/DragSortListView;->access$2400(Lcom/lenovo/settings/dslv/DragSortListView;)F

    move-result v15

    div-float/2addr v14, v15

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;->mPrevTime:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-interface {v13, v14, v0, v1}, Lcom/lenovo/settings/dslv/DragSortListView$DragScrollProfile;->getSpeed(FJ)F

    move-result v13

    neg-float v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;->mScrollSpeed:F

    goto/16 :goto_1

    .line 2912
    :cond_7
    neg-int v13, v5

    move-object/from16 v0, p0

    iget v14, v0, Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;->dy:I

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;->dy:I

    .line 2913
    move v9, v4

    .restart local v9    # "movePos":I
    goto/16 :goto_2
.end method

.method public startScrolling(I)V
    .locals 2
    .param p1, "dir"    # I

    .prologue
    .line 2832
    iget-boolean v0, p0, Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;->mScrolling:Z

    if-nez v0, :cond_0

    .line 2834
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;->mAbort:Z

    .line 2835
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;->mScrolling:Z

    .line 2836
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;->tStart:J

    .line 2837
    iget-wide v0, p0, Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;->tStart:J

    iput-wide v0, p0, Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;->mPrevTime:J

    .line 2838
    iput p1, p0, Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;->scrollDir:I

    .line 2839
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;->this$0:Lcom/lenovo/settings/dslv/DragSortListView;

    invoke-virtual {v0, p0}, Lcom/lenovo/settings/dslv/DragSortListView;->post(Ljava/lang/Runnable;)Z

    .line 2841
    :cond_0
    return-void
.end method

.method public stopScrolling(Z)V
    .locals 1
    .param p1, "now"    # Z

    .prologue
    .line 2844
    if-eqz p1, :cond_0

    .line 2845
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;->this$0:Lcom/lenovo/settings/dslv/DragSortListView;

    invoke-virtual {v0, p0}, Lcom/lenovo/settings/dslv/DragSortListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2846
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;->mScrolling:Z

    .line 2852
    :goto_0
    return-void

    .line 2848
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;->mAbort:Z

    goto :goto_0
.end method
