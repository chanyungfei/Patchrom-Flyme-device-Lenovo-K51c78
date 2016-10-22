.class Lcom/lenovo/settings/WifiStatuListener$1;
.super Landroid/os/Handler;
.source "WifiStatuListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/settings/WifiStatuListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/settings/WifiStatuListener;


# direct methods
.method constructor <init>(Lcom/lenovo/settings/WifiStatuListener;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/lenovo/settings/WifiStatuListener$1;->this$0:Lcom/lenovo/settings/WifiStatuListener;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x1

    .line 42
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.net.wifi.PICK_WIFI_NETWORK_DIALOG"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 43
    .local v1, "i":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 44
    const-string v4, "wifi_auto_finish_on_connect"

    invoke-virtual {v1, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 45
    const-string v4, "wifi_show_menu"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 47
    const-string v4, "Wifi_Dialog"

    const-string v5, "handlerMessage"

    invoke-static {v4, v5}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v4, p0, Lcom/lenovo/settings/WifiStatuListener$1;->this$0:Lcom/lenovo/settings/WifiStatuListener;

    # getter for: Lcom/lenovo/settings/WifiStatuListener;->context:Landroid/content/Context;
    invoke-static {v4}, Lcom/lenovo/settings/WifiStatuListener;->access$000(Lcom/lenovo/settings/WifiStatuListener;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "wifi"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 50
    .local v3, "wif":Landroid/net/wifi/WifiManager;
    iget-object v4, p0, Lcom/lenovo/settings/WifiStatuListener$1;->this$0:Lcom/lenovo/settings/WifiStatuListener;

    # getter for: Lcom/lenovo/settings/WifiStatuListener;->context:Landroid/content/Context;
    invoke-static {v4}, Lcom/lenovo/settings/WifiStatuListener;->access$000(Lcom/lenovo/settings/WifiStatuListener;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 52
    .local v0, "cm":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v8}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 55
    const-string v4, "Wifi_Dialog"

    const-string v5, "wifi is connected or connectings---->"

    invoke-static {v4, v5}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :goto_0
    return-void

    .line 58
    :cond_0
    # getter for: Lcom/lenovo/settings/WifiStatuListener;->isConnect:Z
    invoke-static {}, Lcom/lenovo/settings/WifiStatuListener;->access$100()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 59
    const-string v4, "Wifi_Dialog"

    const-string v5, "wifi has connected "

    invoke-static {v4, v5}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_3

    .line 63
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 64
    const-string v4, "Wifi_Dialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "br say wifi state is enabled,but wifimanger say ----statue is  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v4, p0, Lcom/lenovo/settings/WifiStatuListener$1;->this$0:Lcom/lenovo/settings/WifiStatuListener;

    # getter for: Lcom/lenovo/settings/WifiStatuListener;->myHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/lenovo/settings/WifiStatuListener;->access$200(Lcom/lenovo/settings/WifiStatuListener;)Landroid/os/Handler;

    move-result-object v4

    const-wide/16 v6, 0x7d0

    invoke-virtual {v4, v8, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 68
    :cond_2
    const-string v4, "Wifi_Dialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "wifi state is not enabled----statue is  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 72
    :cond_3
    :try_start_0
    iget-object v4, p0, Lcom/lenovo/settings/WifiStatuListener$1;->this$0:Lcom/lenovo/settings/WifiStatuListener;

    invoke-virtual {v4}, Lcom/lenovo/settings/WifiStatuListener;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v2

    .line 73
    .local v2, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v2, :cond_4

    .line 74
    invoke-interface {v2}, Lcom/android/internal/statusbar/IStatusBarService;->collapsePanels()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .end local v2    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_4
    :goto_1
    iget-object v4, p0, Lcom/lenovo/settings/WifiStatuListener$1;->this$0:Lcom/lenovo/settings/WifiStatuListener;

    # getter for: Lcom/lenovo/settings/WifiStatuListener;->context:Landroid/content/Context;
    invoke-static {v4}, Lcom/lenovo/settings/WifiStatuListener;->access$000(Lcom/lenovo/settings/WifiStatuListener;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 76
    :catch_0
    move-exception v4

    goto :goto_1
.end method
