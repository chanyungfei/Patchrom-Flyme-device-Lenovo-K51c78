.class Lcom/flyme/deviceoriginalsettings/DataUsageSummary$12;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/net/NetworkStats;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;)V
    .locals 0

    .prologue
    .line 1308
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$12;->this$0:Lcom/flyme/deviceoriginalsettings/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private updateEmptyVisible()V
    .locals 5

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x0

    .line 1330
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$12;->this$0:Lcom/flyme/deviceoriginalsettings/DataUsageSummary;

    # getter for: Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mAdapter:Lcom/flyme/deviceoriginalsettings/DataUsageSummary$DataUsageAdapter;
    invoke-static {v2}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->access$2200(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;)Lcom/flyme/deviceoriginalsettings/DataUsageSummary$DataUsageAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$DataUsageAdapter;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$12;->this$0:Lcom/flyme/deviceoriginalsettings/DataUsageSummary;

    # invokes: Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->isAppDetailMode()Z
    invoke-static {v2}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->access$2300(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    .line 1331
    .local v0, "isEmpty":Z
    :goto_0
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$12;->this$0:Lcom/flyme/deviceoriginalsettings/DataUsageSummary;

    # getter for: Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mEmpty:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->access$2400(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;)Landroid/widget/TextView;

    move-result-object v4

    if-eqz v0, :cond_1

    move v2, v1

    :goto_1
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1332
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$12;->this$0:Lcom/flyme/deviceoriginalsettings/DataUsageSummary;

    # getter for: Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mStupidPadding:Landroid/view/View;
    invoke-static {v2}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->access$2500(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;)Landroid/view/View;

    move-result-object v2

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1333
    return-void

    .end local v0    # "isEmpty":Z
    :cond_0
    move v0, v1

    .line 1330
    goto :goto_0

    .restart local v0    # "isEmpty":Z
    :cond_1
    move v2, v3

    .line 1331
    goto :goto_1

    :cond_2
    move v1, v3

    .line 1332
    goto :goto_2
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 3
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/net/NetworkStats;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1312
    new-instance v0, Lcom/flyme/deviceoriginalsettings/net/SummaryForAllUidLoader;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$12;->this$0:Lcom/flyme/deviceoriginalsettings/DataUsageSummary;

    invoke-virtual {v1}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$12;->this$0:Lcom/flyme/deviceoriginalsettings/DataUsageSummary;

    # getter for: Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;
    invoke-static {v2}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->access$1700(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;)Landroid/net/INetworkStatsSession;

    move-result-object v2

    invoke-direct {v0, v1, v2, p2}, Lcom/flyme/deviceoriginalsettings/net/SummaryForAllUidLoader;-><init>(Landroid/content/Context;Landroid/net/INetworkStatsSession;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/net/NetworkStats;)V
    .locals 3
    .param p2, "data"    # Landroid/net/NetworkStats;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/net/NetworkStats;",
            ">;",
            "Landroid/net/NetworkStats;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1317
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/net/NetworkStats;>;"
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$12;->this$0:Lcom/flyme/deviceoriginalsettings/DataUsageSummary;

    # getter for: Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->access$2100(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;)Landroid/net/NetworkPolicyManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/NetworkPolicyManager;->getUidsWithPolicy(I)[I

    move-result-object v0

    .line 1319
    .local v0, "restrictedUids":[I
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$12;->this$0:Lcom/flyme/deviceoriginalsettings/DataUsageSummary;

    # getter for: Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mAdapter:Lcom/flyme/deviceoriginalsettings/DataUsageSummary$DataUsageAdapter;
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->access$2200(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;)Lcom/flyme/deviceoriginalsettings/DataUsageSummary$DataUsageAdapter;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$DataUsageAdapter;->bindStats(Landroid/net/NetworkStats;[I)V

    .line 1320
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$12;->updateEmptyVisible()V

    .line 1321
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 1308
    check-cast p2, Landroid/net/NetworkStats;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$12;->onLoadFinished(Landroid/content/Loader;Landroid/net/NetworkStats;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/net/NetworkStats;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1325
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/net/NetworkStats;>;"
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$12;->this$0:Lcom/flyme/deviceoriginalsettings/DataUsageSummary;

    # getter for: Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mAdapter:Lcom/flyme/deviceoriginalsettings/DataUsageSummary$DataUsageAdapter;
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->access$2200(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;)Lcom/flyme/deviceoriginalsettings/DataUsageSummary$DataUsageAdapter;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [I

    invoke-virtual {v0, v1, v2}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$DataUsageAdapter;->bindStats(Landroid/net/NetworkStats;[I)V

    .line 1326
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$12;->updateEmptyVisible()V

    .line 1327
    return-void
.end method
