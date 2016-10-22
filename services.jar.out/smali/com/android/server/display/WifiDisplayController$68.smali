.class Lcom/android/server/display/WifiDisplayController$68;
.super Ljava/lang/Object;
.source "WifiDisplayController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/WifiDisplayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayController;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    .prologue
    .line 4943
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$68;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 4947
    const-string v1, "WifiDisplayController"

    const-string v2, "Enable wifi automatically."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4948
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$68;->this$0:Lcom/android/server/display/WifiDisplayController;

    # setter for: Lcom/android/server/display/WifiDisplayController;->mAutoEnableWifi:Z
    invoke-static {v1, v4}, Lcom/android/server/display/WifiDisplayController;->access$602(Lcom/android/server/display/WifiDisplayController;Z)Z

    .line 4950
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$68;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->access$6300(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    .line 4951
    .local v0, "wifiApState":I
    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    .line 4953
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$68;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->access$6300(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 4955
    :cond_1
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$68;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->access$6300(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 4958
    return-void
.end method
