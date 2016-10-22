.class public Lcom/android/internal/telephony/cat/bip/BipManager$ConnectivityChangeThread;
.super Ljava/lang/Object;
.source "BipManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/bip/BipManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ConnectivityChangeThread"
.end annotation


# instance fields
.field intent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/android/internal/telephony/cat/bip/BipManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/bip/BipManager;Landroid/content/Intent;)V
    .locals 2
    .param p2, "in"    # Landroid/content/Intent;

    .prologue
    .line 1233
    iput-object p1, p0, Lcom/android/internal/telephony/cat/bip/BipManager$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1234
    const-string v0, "[BIP]"

    const-string v1, "ConnectivityChangeThread Init"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1235
    iput-object p2, p0, Lcom/android/internal/telephony/cat/bip/BipManager$ConnectivityChangeThread;->intent:Landroid/content/Intent;

    .line 1236
    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 1241
    const-string v9, "[BIP]"

    const-string v10, "ConnectivityChangeThread Enter"

    invoke-static {v9, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1242
    const-string v9, "[BIP]"

    const-string v10, "Connectivity changed"

    invoke-static {v9, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1243
    const/4 v3, 0x0

    .line 1244
    .local v3, "ret":I
    const/4 v2, 0x0

    .line 1246
    .local v2, "response":Landroid/os/Message;
    iget-object v9, p0, Lcom/android/internal/telephony/cat/bip/BipManager$ConnectivityChangeThread;->intent:Landroid/content/Intent;

    const-string v10, "networkInfo"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 1248
    .local v1, "info":Landroid/net/NetworkInfo;
    iget-object v9, p0, Lcom/android/internal/telephony/cat/bip/BipManager$ConnectivityChangeThread;->intent:Landroid/content/Intent;

    const-string v10, "subId"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1249
    .local v6, "strSubId":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1250
    .local v7, "subId":I
    if-nez v6, :cond_1

    .line 1251
    const-string v9, "[BIP]"

    const-string v10, "No subId in intet extra."

    invoke-static {v9, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1299
    :cond_0
    :goto_0
    return-void

    .line 1255
    :cond_1
    :try_start_0
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 1259
    :goto_1
    invoke-static {v7}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v9

    if-nez v9, :cond_2

    .line 1260
    const-string v9, "[BIP]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid subId: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1256
    :catch_0
    move-exception v0

    .line 1257
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v9, "[BIP]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid long string. strSubId: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1263
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    invoke-static {v7}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v4

    .line 1264
    .local v4, "simId":I
    const-string v9, "[BIP]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "EXTRA_SIM_ID :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",mSlotId:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/cat/bip/BipManager$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    # getter for: Lcom/android/internal/telephony/cat/bip/BipManager;->mSlotId:I
    invoke-static {v11}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$1600(Lcom/android/internal/telephony/cat/bip/BipManager;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1265
    if-eqz v1, :cond_3

    iget-object v9, p0, Lcom/android/internal/telephony/cat/bip/BipManager$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    # getter for: Lcom/android/internal/telephony/cat/bip/BipManager;->mSlotId:I
    invoke-static {v9}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$1600(Lcom/android/internal/telephony/cat/bip/BipManager;)I

    move-result v9

    if-eq v4, v9, :cond_4

    .line 1266
    :cond_3
    const-string v9, "[BIP]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "receive CONN intent sim!="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/cat/bip/BipManager$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    # getter for: Lcom/android/internal/telephony/cat/bip/BipManager;->mSlotId:I
    invoke-static {v11}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$1600(Lcom/android/internal/telephony/cat/bip/BipManager;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1269
    :cond_4
    const-string v9, "[BIP]"

    const-string v10, "receive valid CONN intent"

    invoke-static {v9, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1272
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v8

    .line 1273
    .local v8, "type":I
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    .line 1274
    .local v5, "state":Landroid/net/NetworkInfo$State;
    const-string v9, "[BIP]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "network type is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1275
    const-string v9, "[BIP]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "network state is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1277
    const/4 v9, 0x3

    if-ne v8, v9, :cond_0

    .line 1278
    iget-object v9, p0, Lcom/android/internal/telephony/cat/bip/BipManager$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    # getter for: Lcom/android/internal/telephony/cat/bip/BipManager;->isConnMgrIntentTimeout:Z
    invoke-static {v9}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$000(Lcom/android/internal/telephony/cat/bip/BipManager;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 1279
    iget-object v9, p0, Lcom/android/internal/telephony/cat/bip/BipManager$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    # getter for: Lcom/android/internal/telephony/cat/bip/BipManager;->mBipMgrHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$600(Lcom/android/internal/telephony/cat/bip/BipManager;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0xa

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 1281
    :cond_5
    sget-object v9, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v5, v9, :cond_6

    .line 1283
    const-string v9, "[BIP]"

    const-string v10, "network state - connected."

    invoke-static {v9, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1284
    :cond_6
    sget-object v9, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v5, v9, :cond_0

    .line 1285
    const-string v9, "[BIP]"

    const-string v10, "network state - disconnected"

    invoke-static {v9, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1286
    iget-object v9, p0, Lcom/android/internal/telephony/cat/bip/BipManager$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    # getter for: Lcom/android/internal/telephony/cat/bip/BipManager;->mCloseLock:Ljava/lang/Object;
    invoke-static {v9}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$200(Lcom/android/internal/telephony/cat/bip/BipManager;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    .line 1287
    :try_start_1
    const-string v9, "[BIP]"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mIsCloseInProgress: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/internal/telephony/cat/bip/BipManager$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    # getter for: Lcom/android/internal/telephony/cat/bip/BipManager;->mIsCloseInProgress:Z
    invoke-static {v12}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$300(Lcom/android/internal/telephony/cat/bip/BipManager;)Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1288
    const/4 v9, 0x1

    iget-object v11, p0, Lcom/android/internal/telephony/cat/bip/BipManager$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    # getter for: Lcom/android/internal/telephony/cat/bip/BipManager;->mIsCloseInProgress:Z
    invoke-static {v11}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$300(Lcom/android/internal/telephony/cat/bip/BipManager;)Z

    move-result v11

    if-ne v9, v11, :cond_7

    .line 1289
    const-string v9, "[BIP]"

    const-string v11, "Return TR for close channel."

    invoke-static {v9, v11}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1290
    iget-object v9, p0, Lcom/android/internal/telephony/cat/bip/BipManager$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    # getter for: Lcom/android/internal/telephony/cat/bip/BipManager;->mBipMgrHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$600(Lcom/android/internal/telephony/cat/bip/BipManager;)Landroid/os/Handler;

    move-result-object v9

    const/16 v11, 0xc

    invoke-virtual {v9, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 1291
    iget-object v9, p0, Lcom/android/internal/telephony/cat/bip/BipManager$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    const/4 v11, 0x0

    # setter for: Lcom/android/internal/telephony/cat/bip/BipManager;->mIsCloseInProgress:Z
    invoke-static {v9, v11}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$302(Lcom/android/internal/telephony/cat/bip/BipManager;Z)Z

    .line 1292
    iget-object v9, p0, Lcom/android/internal/telephony/cat/bip/BipManager$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    # getter for: Lcom/android/internal/telephony/cat/bip/BipManager;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$500(Lcom/android/internal/telephony/cat/bip/BipManager;)Landroid/os/Handler;

    move-result-object v9

    const/16 v11, 0x2b

    const/4 v12, 0x0

    const/4 v13, 0x0

    iget-object v14, p0, Lcom/android/internal/telephony/cat/bip/BipManager$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    # getter for: Lcom/android/internal/telephony/cat/bip/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;
    invoke-static {v14}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$400(Lcom/android/internal/telephony/cat/bip/BipManager;)Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-result-object v14

    invoke-virtual {v9, v11, v12, v13, v14}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1294
    iget-object v9, p0, Lcom/android/internal/telephony/cat/bip/BipManager$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    # getter for: Lcom/android/internal/telephony/cat/bip/BipManager;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$500(Lcom/android/internal/telephony/cat/bip/BipManager;)Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1296
    :cond_7
    monitor-exit v10

    goto/16 :goto_0

    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v9
.end method
