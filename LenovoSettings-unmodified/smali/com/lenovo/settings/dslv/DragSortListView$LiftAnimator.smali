.class Lcom/lenovo/settings/dslv/DragSortListView$LiftAnimator;
.super Lcom/lenovo/settings/dslv/DragSortListView$SmoothAnimator;
.source "DragSortListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/settings/dslv/DragSortListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LiftAnimator"
.end annotation


# instance fields
.field private mFinalDragDeltaY:F

.field private mInitDragDeltaY:F

.field final synthetic this$0:Lcom/lenovo/settings/dslv/DragSortListView;


# direct methods
.method public constructor <init>(Lcom/lenovo/settings/dslv/DragSortListView;FI)V
    .locals 0
    .param p2, "smoothness"    # F
    .param p3, "duration"    # I

    .prologue
    .line 1185
    iput-object p1, p0, Lcom/lenovo/settings/dslv/DragSortListView$LiftAnimator;->this$0:Lcom/lenovo/settings/dslv/DragSortListView;

    .line 1186
    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/settings/dslv/DragSortListView$SmoothAnimator;-><init>(Lcom/lenovo/settings/dslv/DragSortListView;FI)V

    .line 1187
    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 1

    .prologue
    .line 1191
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView$LiftAnimator;->this$0:Lcom/lenovo/settings/dslv/DragSortListView;

    # getter for: Lcom/lenovo/settings/dslv/DragSortListView;->mDragDeltaY:I
    invoke-static {v0}, Lcom/lenovo/settings/dslv/DragSortListView;->access$300(Lcom/lenovo/settings/dslv/DragSortListView;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/lenovo/settings/dslv/DragSortListView$LiftAnimator;->mInitDragDeltaY:F

    .line 1192
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView$LiftAnimator;->this$0:Lcom/lenovo/settings/dslv/DragSortListView;

    # getter for: Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewHeightHalf:I
    invoke-static {v0}, Lcom/lenovo/settings/dslv/DragSortListView;->access$400(Lcom/lenovo/settings/dslv/DragSortListView;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/lenovo/settings/dslv/DragSortListView$LiftAnimator;->mFinalDragDeltaY:F

    .line 1193
    return-void
.end method

.method public onUpdate(FF)V
    .locals 4
    .param p1, "frac"    # F
    .param p2, "smoothFrac"    # F

    .prologue
    .line 1197
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView$LiftAnimator;->this$0:Lcom/lenovo/settings/dslv/DragSortListView;

    # getter for: Lcom/lenovo/settings/dslv/DragSortListView;->mDragState:I
    invoke-static {v0}, Lcom/lenovo/settings/dslv/DragSortListView;->access$100(Lcom/lenovo/settings/dslv/DragSortListView;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 1198
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView$LiftAnimator;->cancel()V

    .line 1205
    :goto_0
    return-void

    .line 1200
    :cond_0
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView$LiftAnimator;->this$0:Lcom/lenovo/settings/dslv/DragSortListView;

    iget v1, p0, Lcom/lenovo/settings/dslv/DragSortListView$LiftAnimator;->mFinalDragDeltaY:F

    mul-float/2addr v1, p2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p2

    iget v3, p0, Lcom/lenovo/settings/dslv/DragSortListView$LiftAnimator;->mInitDragDeltaY:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    # setter for: Lcom/lenovo/settings/dslv/DragSortListView;->mDragDeltaY:I
    invoke-static {v0, v1}, Lcom/lenovo/settings/dslv/DragSortListView;->access$302(Lcom/lenovo/settings/dslv/DragSortListView;I)I

    .line 1202
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView$LiftAnimator;->this$0:Lcom/lenovo/settings/dslv/DragSortListView;

    # getter for: Lcom/lenovo/settings/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;
    invoke-static {v0}, Lcom/lenovo/settings/dslv/DragSortListView;->access$500(Lcom/lenovo/settings/dslv/DragSortListView;)Landroid/graphics/Point;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/settings/dslv/DragSortListView$LiftAnimator;->this$0:Lcom/lenovo/settings/dslv/DragSortListView;

    # getter for: Lcom/lenovo/settings/dslv/DragSortListView;->mY:I
    invoke-static {v1}, Lcom/lenovo/settings/dslv/DragSortListView;->access$600(Lcom/lenovo/settings/dslv/DragSortListView;)I

    move-result v1

    iget-object v2, p0, Lcom/lenovo/settings/dslv/DragSortListView$LiftAnimator;->this$0:Lcom/lenovo/settings/dslv/DragSortListView;

    # getter for: Lcom/lenovo/settings/dslv/DragSortListView;->mDragDeltaY:I
    invoke-static {v2}, Lcom/lenovo/settings/dslv/DragSortListView;->access$300(Lcom/lenovo/settings/dslv/DragSortListView;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 1203
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView$LiftAnimator;->this$0:Lcom/lenovo/settings/dslv/DragSortListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/dslv/DragSortListView;->doDragFloatView(Z)V

    goto :goto_0
.end method
