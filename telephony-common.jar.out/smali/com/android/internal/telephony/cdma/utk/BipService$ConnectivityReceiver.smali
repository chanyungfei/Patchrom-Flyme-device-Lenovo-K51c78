.class public Lcom/android/internal/telephony/cdma/utk/BipService$ConnectivityReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/utk/BipService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConnectivityReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cdma/utk/BipService;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cdma/utk/BipService;)V
    .locals 0

    .prologue
    .line 371
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/utk/BipService$ConnectivityReceiver;->this$0:Lcom/android/internal/telephony/cdma/utk/BipService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 374
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 435
    :cond_0
    :goto_0
    return-void

    .line 378
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 379
    const-string v8, "networkInfo"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    .line 382
    .local v3, "info":Landroid/net/NetworkInfo;
    if-eqz v3, :cond_0

    .line 387
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    .line 388
    .local v7, "type":I
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v6

    .line 390
    .local v6, "state":Landroid/net/NetworkInfo$State;
    const-string v8, "BipService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " CONNECTIVITY_ACTION type:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " state:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    if-eqz v7, :cond_2

    const/4 v8, 0x3

    if-ne v7, v8, :cond_0

    .line 397
    :cond_2
    sget-object v8, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v6, v8, :cond_3

    sget-object v8, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v6, v8, :cond_0

    .line 399
    :cond_3
    sget-object v8, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v6, v8, :cond_5

    .line 400
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/utk/BipService$ConnectivityReceiver;->this$0:Lcom/android/internal/telephony/cdma/utk/BipService;

    # getter for: Lcom/android/internal/telephony/cdma/utk/BipService;->mConnectivityManager:Landroid/net/ConnectivityManager;
    invoke-static {v8}, Lcom/android/internal/telephony/cdma/utk/BipService;->access$000(Lcom/android/internal/telephony/cdma/utk/BipService;)Landroid/net/ConnectivityManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/ConnectivityManager;->getActiveLinkProperties()Landroid/net/LinkProperties;

    move-result-object v5

    .line 401
    .local v5, "link":Landroid/net/LinkProperties;
    if-eqz v5, :cond_5

    .line 402
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/utk/BipService$ConnectivityReceiver;->this$0:Lcom/android/internal/telephony/cdma/utk/BipService;

    # getter for: Lcom/android/internal/telephony/cdma/utk/BipService;->mLocalIps:Ljava/util/List;
    invoke-static {v8}, Lcom/android/internal/telephony/cdma/utk/BipService;->access$100(Lcom/android/internal/telephony/cdma/utk/BipService;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 403
    invoke-virtual {v5}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 404
    .local v4, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 405
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 406
    .local v0, "ad":Ljava/net/InetAddress;
    if-eqz v0, :cond_4

    .line 407
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/utk/BipService$ConnectivityReceiver;->this$0:Lcom/android/internal/telephony/cdma/utk/BipService;

    # getter for: Lcom/android/internal/telephony/cdma/utk/BipService;->mLocalIps:Ljava/util/List;
    invoke-static {v8}, Lcom/android/internal/telephony/cdma/utk/BipService;->access$100(Lcom/android/internal/telephony/cdma/utk/BipService;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 408
    const-string v8, "BipService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " local ip:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 414
    .end local v0    # "ad":Ljava/net/InetAddress;
    .end local v4    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    .end local v5    # "link":Landroid/net/LinkProperties;
    :cond_5
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/utk/BipService$ConnectivityReceiver;->this$0:Lcom/android/internal/telephony/cdma/utk/BipService;

    # getter for: Lcom/android/internal/telephony/cdma/utk/BipService;->mWaitConnect:Z
    invoke-static {v8}, Lcom/android/internal/telephony/cdma/utk/BipService;->access$200(Lcom/android/internal/telephony/cdma/utk/BipService;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 418
    const-string v8, "BipService"

    const-string v9, " network status changed"

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/utk/BipService$ConnectivityReceiver;->this$0:Lcom/android/internal/telephony/cdma/utk/BipService;

    const/4 v9, 0x0

    # setter for: Lcom/android/internal/telephony/cdma/utk/BipService;->mWaitConnect:Z
    invoke-static {v8, v9}, Lcom/android/internal/telephony/cdma/utk/BipService;->access$202(Lcom/android/internal/telephony/cdma/utk/BipService;Z)Z

    .line 422
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/utk/BipService$ConnectivityReceiver;->this$0:Lcom/android/internal/telephony/cdma/utk/BipService;

    # invokes: Lcom/android/internal/telephony/cdma/utk/BipService;->FindBipChannelToLink()Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/internal/telephony/cdma/utk/BipService;->access$300(Lcom/android/internal/telephony/cdma/utk/BipService;)Ljava/util/ArrayList;

    move-result-object v1

    .line 423
    .local v1, "chs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/cdma/utk/BipChannel;>;"
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_6

    .line 424
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_6

    .line 425
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/utk/BipService$ConnectivityReceiver;->this$0:Lcom/android/internal/telephony/cdma/utk/BipService;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/cdma/utk/BipChannel;

    # invokes: Lcom/android/internal/telephony/cdma/utk/BipService;->onNetworkConnected(Lcom/android/internal/telephony/cdma/utk/BipChannel;)V
    invoke-static {v9, v8}, Lcom/android/internal/telephony/cdma/utk/BipService;->access$400(Lcom/android/internal/telephony/cdma/utk/BipService;Lcom/android/internal/telephony/cdma/utk/BipChannel;)V

    .line 424
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 429
    .end local v2    # "i":I
    :cond_6
    if-eqz v1, :cond_0

    .line 430
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0
.end method
