.class Lcom/lenovo/settings/dslv/DragSortListView$2;
.super Landroid/database/DataSetObserver;
.source "DragSortListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/settings/dslv/DragSortListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/settings/dslv/DragSortListView;


# direct methods
.method constructor <init>(Lcom/lenovo/settings/dslv/DragSortListView;)V
    .locals 0

    .prologue
    .line 521
    iput-object p1, p0, Lcom/lenovo/settings/dslv/DragSortListView$2;->this$0:Lcom/lenovo/settings/dslv/DragSortListView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method private cancel()V
    .locals 2

    .prologue
    .line 534
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView$2;->this$0:Lcom/lenovo/settings/dslv/DragSortListView;

    # getter for: Lcom/lenovo/settings/dslv/DragSortListView;->mDragState:I
    invoke-static {v0}, Lcom/lenovo/settings/dslv/DragSortListView;->access$100(Lcom/lenovo/settings/dslv/DragSortListView;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 535
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView$2;->this$0:Lcom/lenovo/settings/dslv/DragSortListView;

    invoke-virtual {v0}, Lcom/lenovo/settings/dslv/DragSortListView;->cancelDrag()V

    .line 537
    :cond_0
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 0

    .prologue
    .line 525
    invoke-direct {p0}, Lcom/lenovo/settings/dslv/DragSortListView$2;->cancel()V

    .line 526
    return-void
.end method

.method public onInvalidated()V
    .locals 0

    .prologue
    .line 530
    invoke-direct {p0}, Lcom/lenovo/settings/dslv/DragSortListView$2;->cancel()V

    .line 531
    return-void
.end method
