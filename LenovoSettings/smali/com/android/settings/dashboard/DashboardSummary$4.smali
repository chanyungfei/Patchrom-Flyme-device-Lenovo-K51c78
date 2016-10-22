.class Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$4;
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


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary;)V
    .locals 0

    .prologue
    .line 297
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$4;->this$0:Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 301
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 302
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

    .line 304
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$4;->this$0:Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary;

    # invokes: Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary;->sendRebuildUI()V
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary;->access$300(Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary;)V

    .line 305
    return-void
.end method
