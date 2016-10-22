.class Lcom/mediatek/perfservice/PerfServiceImpl$PerfServiceBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PerfServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/perfservice/PerfServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PerfServiceBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/perfservice/PerfServiceImpl;


# direct methods
.method constructor <init>(Lcom/mediatek/perfservice/PerfServiceImpl;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/mediatek/perfservice/PerfServiceImpl$PerfServiceBroadcastReceiver;->this$0:Lcom/mediatek/perfservice/PerfServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 60
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceImpl$PerfServiceBroadcastReceiver;->this$0:Lcom/mediatek/perfservice/PerfServiceImpl;

    const-string v2, "Intent.ACTION_SCREEN_OFF"

    # invokes: Lcom/mediatek/perfservice/PerfServiceImpl;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/perfservice/PerfServiceImpl;->access$000(Lcom/mediatek/perfservice/PerfServiceImpl;Ljava/lang/String;)V

    .line 63
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceImpl$PerfServiceBroadcastReceiver;->this$0:Lcom/mediatek/perfservice/PerfServiceImpl;

    # getter for: Lcom/mediatek/perfservice/PerfServiceImpl;->perfServiceMgr:Lcom/mediatek/perfservice/IPerfServiceManager;
    invoke-static {v1}, Lcom/mediatek/perfservice/PerfServiceImpl;->access$100(Lcom/mediatek/perfservice/PerfServiceImpl;)Lcom/mediatek/perfservice/IPerfServiceManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/mediatek/perfservice/IPerfServiceManager;->userDisableAll()V

    .line 74
    :goto_0
    return-void

    .line 66
    :cond_0
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 67
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceImpl$PerfServiceBroadcastReceiver;->this$0:Lcom/mediatek/perfservice/PerfServiceImpl;

    const-string v2, "Intent.ACTION_SCREEN_ON"

    # invokes: Lcom/mediatek/perfservice/PerfServiceImpl;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/perfservice/PerfServiceImpl;->access$000(Lcom/mediatek/perfservice/PerfServiceImpl;Ljava/lang/String;)V

    .line 68
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceImpl$PerfServiceBroadcastReceiver;->this$0:Lcom/mediatek/perfservice/PerfServiceImpl;

    # getter for: Lcom/mediatek/perfservice/PerfServiceImpl;->perfServiceMgr:Lcom/mediatek/perfservice/IPerfServiceManager;
    invoke-static {v1}, Lcom/mediatek/perfservice/PerfServiceImpl;->access$100(Lcom/mediatek/perfservice/PerfServiceImpl;)Lcom/mediatek/perfservice/IPerfServiceManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/mediatek/perfservice/IPerfServiceManager;->userRestoreAll()V

    goto :goto_0

    .line 72
    :cond_1
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceImpl$PerfServiceBroadcastReceiver;->this$0:Lcom/mediatek/perfservice/PerfServiceImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected intent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/mediatek/perfservice/PerfServiceImpl;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/perfservice/PerfServiceImpl;->access$000(Lcom/mediatek/perfservice/PerfServiceImpl;Ljava/lang/String;)V

    goto :goto_0
.end method
