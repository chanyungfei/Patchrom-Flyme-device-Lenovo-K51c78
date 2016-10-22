.class Lcom/lenovo/settings/dslv/DragSortListView$1;
.super Ljava/lang/Object;
.source "DragSortListView.java"

# interfaces
.implements Lcom/lenovo/settings/dslv/DragSortListView$DragScrollProfile;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/settings/dslv/DragSortListView;
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
    .line 254
    iput-object p1, p0, Lcom/lenovo/settings/dslv/DragSortListView$1;->this$0:Lcom/lenovo/settings/dslv/DragSortListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpeed(FJ)F
    .locals 1
    .param p1, "w"    # F
    .param p2, "t"    # J

    .prologue
    .line 258
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView$1;->this$0:Lcom/lenovo/settings/dslv/DragSortListView;

    # getter for: Lcom/lenovo/settings/dslv/DragSortListView;->mMaxScrollSpeed:F
    invoke-static {v0}, Lcom/lenovo/settings/dslv/DragSortListView;->access$000(Lcom/lenovo/settings/dslv/DragSortListView;)F

    move-result v0

    mul-float/2addr v0, p1

    return v0
.end method
