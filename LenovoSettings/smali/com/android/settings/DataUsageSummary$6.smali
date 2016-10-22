.class Lcom/flyme/deviceoriginalsettings/DataUsageSummary$6;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 1101
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$6;->this$0:Lcom/flyme/deviceoriginalsettings/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1105
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$6;->this$0:Lcom/flyme/deviceoriginalsettings/DataUsageSummary;

    # getter for: Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mBinding:Z
    invoke-static {v4}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->access$400(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1122
    :goto_0
    return-void

    .line 1109
    :cond_0
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$6;->this$0:Lcom/flyme/deviceoriginalsettings/DataUsageSummary;

    # getter for: Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;
    invoke-static {v4}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->access$500(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;)Landroid/widget/Switch;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Switch;->isChecked()Z

    move-result v4

    if-nez v4, :cond_2

    move v1, v2

    .line 1110
    .local v1, "dataEnabled":Z
    :goto_1
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$6;->this$0:Lcom/flyme/deviceoriginalsettings/DataUsageSummary;

    # getter for: Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;
    invoke-static {v4}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->access$600(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;)Ljava/lang/String;

    move-result-object v0

    .line 1111
    .local v0, "currentTab":Ljava/lang/String;
    const-string v4, "mobile"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1112
    if-eqz v1, :cond_3

    .line 1113
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$6;->this$0:Lcom/flyme/deviceoriginalsettings/DataUsageSummary;

    # invokes: Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->setMobileDataEnabled(Z)V
    invoke-static {v4, v2}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->access$700(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;Z)V

    .line 1121
    :cond_1
    :goto_2
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$6;->this$0:Lcom/flyme/deviceoriginalsettings/DataUsageSummary;

    # invokes: Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->updatePolicy(Z)V
    invoke-static {v2, v3}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->access$800(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;Z)V

    goto :goto_0

    .end local v0    # "currentTab":Ljava/lang/String;
    .end local v1    # "dataEnabled":Z
    :cond_2
    move v1, v3

    .line 1109
    goto :goto_1

    .line 1117
    .restart local v0    # "currentTab":Ljava/lang/String;
    .restart local v1    # "dataEnabled":Z
    :cond_3
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$6;->this$0:Lcom/flyme/deviceoriginalsettings/DataUsageSummary;

    invoke-static {v2}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$ConfirmDataDisableFragment;->show(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;)V

    goto :goto_2
.end method
