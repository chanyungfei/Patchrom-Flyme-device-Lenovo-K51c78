.class Lcom/flyme/deviceoriginalsettings/DataUsageSummary$7;
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
    .line 1125
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$7;->this$0:Lcom/flyme/deviceoriginalsettings/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1129
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$7;->this$0:Lcom/flyme/deviceoriginalsettings/DataUsageSummary;

    # getter for: Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/Switch;
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->access$900(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 1130
    .local v0, "disableAtLimit":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 1133
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$7;->this$0:Lcom/flyme/deviceoriginalsettings/DataUsageSummary;

    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$ConfirmLimitFragment;->show(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;)V

    .line 1137
    :goto_1
    return-void

    .line 1129
    .end local v0    # "disableAtLimit":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1135
    .restart local v0    # "disableAtLimit":Z
    :cond_1
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$7;->this$0:Lcom/flyme/deviceoriginalsettings/DataUsageSummary;

    const-wide/16 v2, -0x1

    # invokes: Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->setPolicyLimitBytes(J)V
    invoke-static {v1, v2, v3}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->access$1000(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;J)V

    goto :goto_1
.end method
