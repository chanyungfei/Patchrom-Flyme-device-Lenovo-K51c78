.class Lcom/android/server/wifi/WifiStateMachine$10;
.super Landroid/content/BroadcastReceiver;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiStateMachine;->initializeExtra()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0

    .prologue
    .line 11522
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$10;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const v7, 0x200b9

    const v6, 0x200b7

    .line 11525
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 11526
    .local v0, "action":Ljava/lang/String;
    const-string v3, "WifiStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11527
    const-string v3, "com.android.server.WifiManager.action.CLEAR_WAIT_FLAG"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 11528
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$10;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v4, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mWaitingForEnrollee:Z
    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->access$7002(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 11564
    :cond_0
    :goto_0
    return-void

    .line 11529
    :cond_1
    const-string v3, "mtk.wps.nfc.testbed.configuration.received"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 11530
    const-string v3, "mtk.wps.nfc.testbed.extra.configuration"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    .line 11531
    .local v1, "configurationToken":[B
    if-eqz v1, :cond_2

    .line 11532
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$10;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$10;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$10;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->bytesToHexString([B)Ljava/lang/String;
    invoke-static {v5, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$21600(Lcom/android/server/wifi/WifiStateMachine;[B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 11534
    :cond_2
    const-string v3, "WifiStateMachine"

    const-string v4, "No configuration token!"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 11536
    .end local v1    # "configurationToken":[B
    :cond_3
    const-string v3, "mtk.wps.nfc.testbed.hs.received"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 11537
    const-string v3, "mtk.wps.nfc.testbed.extra.password"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    .line 11538
    .local v2, "passwordToken":[B
    if-eqz v2, :cond_4

    .line 11539
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$10;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$10;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v5, 0x200b8

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$10;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->bytesToHexString([B)Ljava/lang/String;
    invoke-static {v6, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$21600(Lcom/android/server/wifi/WifiStateMachine;[B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 11541
    :cond_4
    const-string v3, "WifiStateMachine"

    const-string v4, "No password token!"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 11543
    .end local v2    # "passwordToken":[B
    :cond_5
    const-string v3, "mtk.wps.nfc.testbed.hr.received"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 11544
    const-string v3, "WifiStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received HR action, mWaitingForHrToken:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$10;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWaitingForHrToken:Z
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$4100(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11545
    const-string v3, "mtk.wps.nfc.testbed.extra.password"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    .line 11546
    .restart local v2    # "passwordToken":[B
    if-eqz v2, :cond_7

    .line 11547
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$10;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWaitingForHrToken:Z
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$4100(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 11548
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$10;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$10;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$10;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->bytesToHexString([B)Ljava/lang/String;
    invoke-static {v5, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$21600(Lcom/android/server/wifi/WifiStateMachine;[B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 11550
    :cond_6
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$10;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$10;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$10;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->bytesToHexString([B)Ljava/lang/String;
    invoke-static {v5, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$21600(Lcom/android/server/wifi/WifiStateMachine;[B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 11553
    :cond_7
    const-string v3, "WifiStateMachine"

    const-string v4, "No password token!"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 11555
    .end local v2    # "passwordToken":[B
    :cond_8
    const-string v3, "mtk.wps.nfc.testbed.password.received"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "mtk.wps.nfc.testbed.externalRegistrar.password.received"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 11557
    :cond_9
    const-string v3, "mtk.wps.nfc.testbed.extra.password"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    .line 11558
    .restart local v2    # "passwordToken":[B
    if-eqz v2, :cond_a

    .line 11559
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$10;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$10;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$10;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->bytesToHexString([B)Ljava/lang/String;
    invoke-static {v5, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$21600(Lcom/android/server/wifi/WifiStateMachine;[B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 11561
    :cond_a
    const-string v3, "WifiStateMachine"

    const-string v4, "No password token!"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
