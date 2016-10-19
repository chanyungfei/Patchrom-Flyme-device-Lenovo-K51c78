.class Lcom/mediatek/hdmi/MtkHdmiManagerService$4;
.super Landroid/content/BroadcastReceiver;
.source "MtkHdmiManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/hdmi/MtkHdmiManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;


# direct methods
.method constructor <init>(Lcom/mediatek/hdmi/MtkHdmiManagerService;)V
    .locals 0

    .prologue
    .line 425
    iput-object p1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$4;->this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private sendMsg(I)V
    .locals 3
    .param p1, "msgInit"    # I

    .prologue
    .line 453
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$4;->this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;

    # getter for: Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHandler:Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;
    invoke-static {v0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->access$1700(Lcom/mediatek/hdmi/MtkHdmiManagerService;)Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$4;->this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;

    # getter for: Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHandler:Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;
    invoke-static {v0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->access$1700(Lcom/mediatek/hdmi/MtkHdmiManagerService;)Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;->sendEmptyMessage(I)Z

    .line 455
    const-string v0, "MtkHdmiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->access$000(Ljava/lang/String;Ljava/lang/Object;)V

    .line 457
    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 429
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 430
    .local v0, "action":Ljava/lang/String;
    const-string v1, "MtkHdmiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receive: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V
    invoke-static {v1, v2}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->access$000(Ljava/lang/String;Ljava/lang/Object;)V

    .line 431
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.ACTION_BOOT_IPO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 433
    :cond_0
    invoke-direct {p0, v4}, Lcom/mediatek/hdmi/MtkHdmiManagerService$4;->sendMsg(I)V

    .line 450
    :cond_1
    :goto_0
    return-void

    .line 434
    :cond_2
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 436
    :cond_3
    invoke-direct {p0, v5}, Lcom/mediatek/hdmi/MtkHdmiManagerService$4;->sendMsg(I)V

    goto :goto_0

    .line 437
    :cond_4
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 438
    invoke-direct {p0, v5}, Lcom/mediatek/hdmi/MtkHdmiManagerService$4;->sendMsg(I)V

    .line 439
    invoke-direct {p0, v4}, Lcom/mediatek/hdmi/MtkHdmiManagerService$4;->sendMsg(I)V

    goto :goto_0

    .line 441
    :cond_5
    const-string v1, "android.intent.action.SMARTBOOK_PLUG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 442
    iget-object v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$4;->this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;

    const-string v2, "state"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    # setter for: Lcom/mediatek/hdmi/MtkHdmiManagerService;->mIsSmartBookPluggedIn:Z
    invoke-static {v1, v2}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->access$1502(Lcom/mediatek/hdmi/MtkHdmiManagerService;Z)Z

    .line 444
    const-string v1, "MtkHdmiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "smartbook plug:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$4;->this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;

    # getter for: Lcom/mediatek/hdmi/MtkHdmiManagerService;->mIsSmartBookPluggedIn:Z
    invoke-static {v3}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->access$1500(Lcom/mediatek/hdmi/MtkHdmiManagerService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    iget-object v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$4;->this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;

    # invokes: Lcom/mediatek/hdmi/MtkHdmiManagerService;->handleNotification(Z)V
    invoke-static {v1, v4}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->access$1600(Lcom/mediatek/hdmi/MtkHdmiManagerService;Z)V

    goto :goto_0
.end method
