.class Lcom/android/server/wifi/WifiServiceImpl$2;
.super Landroid/content/BroadcastReceiver;
.source "WifiServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiServiceImpl;->checkAndStartWifi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiServiceImpl;)V
    .locals 0

    .prologue
    .line 456
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$2;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const v4, 0x26009

    .line 460
    const-string v1, "state"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 461
    .local v0, "isAirplaneModeOn":Z
    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_AIRPLANE_MODE_CHANGED isAirplaneModeOn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/SXlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl$2;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    iget-object v1, v1, Lcom/android/server/wifi/WifiServiceImpl;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/WifiSettingsStore;->handleAirplaneModeToggled(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 465
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->sIsEpdgSupported:Z
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$600()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 466
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl$2;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mRnsMgr:Lcom/mediatek/rns/RnsManager;
    invoke-static {v1}, Lcom/android/server/wifi/WifiServiceImpl;->access$700(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/mediatek/rns/RnsManager;

    move-result-object v1

    if-nez v1, :cond_0

    .line 467
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl$2;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl$2;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/wifi/WifiServiceImpl;->access$200(Lcom/android/server/wifi/WifiServiceImpl;)Landroid/content/Context;

    move-result-object v1

    const-string v3, "rns"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/rns/RnsManager;

    # setter for: Lcom/android/server/wifi/WifiServiceImpl;->mRnsMgr:Lcom/mediatek/rns/RnsManager;
    invoke-static {v2, v1}, Lcom/android/server/wifi/WifiServiceImpl;->access$702(Lcom/android/server/wifi/WifiServiceImpl;Lcom/mediatek/rns/RnsManager;)Lcom/mediatek/rns/RnsManager;

    .line 471
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl$2;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mRnsMgr:Lcom/mediatek/rns/RnsManager;
    invoke-static {v1}, Lcom/android/server/wifi/WifiServiceImpl;->access$700(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/mediatek/rns/RnsManager;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl$2;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mRnsMgr:Lcom/mediatek/rns/RnsManager;
    invoke-static {v1}, Lcom/android/server/wifi/WifiServiceImpl;->access$700(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/mediatek/rns/RnsManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/mediatek/rns/RnsManager;->isNeedWifiConnected(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 473
    const-string v1, "WifiService"

    const-string v2, "Keep Wi-Fi connection"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    :cond_1
    :goto_0
    return-void

    .line 475
    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl$2;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mWifiController:Lcom/android/server/wifi/WifiController;
    invoke-static {v1}, Lcom/android/server/wifi/WifiServiceImpl;->access$800(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiController;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V

    goto :goto_0

    .line 478
    :cond_3
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl$2;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mWifiController:Lcom/android/server/wifi/WifiController;
    invoke-static {v1}, Lcom/android/server/wifi/WifiServiceImpl;->access$800(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiController;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V

    goto :goto_0
.end method
