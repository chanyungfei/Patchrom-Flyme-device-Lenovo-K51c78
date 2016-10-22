.class Lcom/flyme/deviceoriginalsettings/DataUsageSummary$9;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;)V
    .locals 0

    .prologue
    .line 1157
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$9;->this$0:Lcom/flyme/deviceoriginalsettings/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1162
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$AppItem;

    .line 1165
    .local v0, "app":Lcom/flyme/deviceoriginalsettings/DataUsageSummary$AppItem;
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$9;->this$0:Lcom/flyme/deviceoriginalsettings/DataUsageSummary;

    # getter for: Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mUidDetailProvider:Lcom/flyme/deviceoriginalsettings/net/UidDetailProvider;
    invoke-static {v2}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->access$1300(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;)Lcom/flyme/deviceoriginalsettings/net/UidDetailProvider;

    move-result-object v2

    if-eqz v2, :cond_0

    if-nez v0, :cond_1

    .line 1171
    :cond_0
    :goto_0
    return-void

    .line 1169
    :cond_1
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$9;->this$0:Lcom/flyme/deviceoriginalsettings/DataUsageSummary;

    # getter for: Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mUidDetailProvider:Lcom/flyme/deviceoriginalsettings/net/UidDetailProvider;
    invoke-static {v2}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->access$1300(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;)Lcom/flyme/deviceoriginalsettings/net/UidDetailProvider;

    move-result-object v2

    iget v3, v0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$AppItem;->key:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/flyme/deviceoriginalsettings/net/UidDetailProvider;->getUidDetail(IZ)Lcom/flyme/deviceoriginalsettings/net/UidDetail;

    move-result-object v1

    .line 1170
    .local v1, "detail":Lcom/flyme/deviceoriginalsettings/net/UidDetail;
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$9;->this$0:Lcom/flyme/deviceoriginalsettings/DataUsageSummary;

    iget-object v3, v1, Lcom/flyme/deviceoriginalsettings/net/UidDetail;->label:Ljava/lang/CharSequence;

    invoke-static {v2, v0, v3}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$AppDetailsFragment;->show(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;Lcom/flyme/deviceoriginalsettings/DataUsageSummary$AppItem;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
