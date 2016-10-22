.class Lcom/flyme/deviceoriginalsettings/DataUsageSummary$8;
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
    .line 1140
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$8;->this$0:Lcom/flyme/deviceoriginalsettings/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 1144
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$8;->this$0:Lcom/flyme/deviceoriginalsettings/DataUsageSummary;

    # getter for: Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mAppRestrict:Landroid/widget/Switch;
    invoke-static {v2}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->access$1100(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;)Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    .line 1146
    .local v0, "restrictBackground":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 1150
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$8;->this$0:Lcom/flyme/deviceoriginalsettings/DataUsageSummary;

    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$ConfirmAppRestrictFragment;->show(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;)V

    .line 1154
    :goto_1
    return-void

    .end local v0    # "restrictBackground":Z
    :cond_0
    move v0, v1

    .line 1144
    goto :goto_0

    .line 1152
    .restart local v0    # "restrictBackground":Z
    :cond_1
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$8;->this$0:Lcom/flyme/deviceoriginalsettings/DataUsageSummary;

    # invokes: Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->setAppRestrictBackground(Z)V
    invoke-static {v2, v1}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->access$1200(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;Z)V

    goto :goto_1
.end method
