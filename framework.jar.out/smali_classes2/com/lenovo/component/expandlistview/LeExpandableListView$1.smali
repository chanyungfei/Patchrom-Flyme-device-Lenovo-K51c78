.class Lcom/lenovo/component/expandlistview/LeExpandableListView$1;
.super Ljava/lang/Object;
.source "LeExpandableListView.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupExpandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/component/expandlistview/LeExpandableListView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/component/expandlistview/LeExpandableListView;


# direct methods
.method constructor <init>(Lcom/lenovo/component/expandlistview/LeExpandableListView;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView$1;->this$0:Lcom/lenovo/component/expandlistview/LeExpandableListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupExpand(I)V
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 95
    iget-object v0, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView$1;->this$0:Lcom/lenovo/component/expandlistview/LeExpandableListView;

    # getter for: Lcom/lenovo/component/expandlistview/LeExpandableListView;->expandSet:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/lenovo/component/expandlistview/LeExpandableListView;->access$000(Lcom/lenovo/component/expandlistview/LeExpandableListView;)Ljava/util/HashSet;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object v0, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView$1;->this$0:Lcom/lenovo/component/expandlistview/LeExpandableListView;

    # getter for: Lcom/lenovo/component/expandlistview/LeExpandableListView;->mOnGroupExpandListener:Landroid/widget/ExpandableListView$OnGroupExpandListener;
    invoke-static {v0}, Lcom/lenovo/component/expandlistview/LeExpandableListView;->access$100(Lcom/lenovo/component/expandlistview/LeExpandableListView;)Landroid/widget/ExpandableListView$OnGroupExpandListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/lenovo/component/expandlistview/LeExpandableListView$1;->this$0:Lcom/lenovo/component/expandlistview/LeExpandableListView;

    # getter for: Lcom/lenovo/component/expandlistview/LeExpandableListView;->mOnGroupExpandListener:Landroid/widget/ExpandableListView$OnGroupExpandListener;
    invoke-static {v0}, Lcom/lenovo/component/expandlistview/LeExpandableListView;->access$100(Lcom/lenovo/component/expandlistview/LeExpandableListView;)Landroid/widget/ExpandableListView$OnGroupExpandListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/widget/ExpandableListView$OnGroupExpandListener;->onGroupExpand(I)V

    .line 99
    :cond_0
    return-void
.end method
