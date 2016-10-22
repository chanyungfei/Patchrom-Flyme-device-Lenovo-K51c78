.class Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$3;
.super Landroid/content/BroadcastReceiver;
.source "DashboardSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary;->registerBroadcastReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary;

.field final synthetic val$simStateAction:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 278
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$3;->this$0:Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary;

    iput-object p2, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$3;->val$simStateAction:Ljava/lang/String;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 282
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 283
    .local v0, "action":Ljava/lang/String;
    const-string v1, "DashboardSummary"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$3;->val$simStateAction:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 286
    :cond_0
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$3;->this$0:Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary;

    invoke-virtual {v1}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary;->updateSimState()V

    .line 288
    :cond_1
    return-void
.end method
