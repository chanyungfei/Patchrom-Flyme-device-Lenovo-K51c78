.class Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "LeExpandableListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field expandBtn:Landroid/view/View;

.field expandBtnLayout:Landroid/view/View;

.field isExpanded:Z

.field final synthetic this$1:Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter;


# direct methods
.method constructor <init>(Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter;)V
    .locals 0

    .prologue
    .line 549
    iput-object p1, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter$ViewHolder;->this$1:Lcom/lenovo/component/expandlistview/LeExpandableListView$InternalExpandListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
