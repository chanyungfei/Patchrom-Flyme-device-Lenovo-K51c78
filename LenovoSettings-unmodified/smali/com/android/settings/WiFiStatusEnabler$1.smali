.class Lcom/android/settings/WiFiStatusEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "WiFiStatusEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/WiFiStatusEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/WiFiStatusEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/WiFiStatusEnabler;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/android/settings/WiFiStatusEnabler$1;->this$0:Lcom/android/settings/WiFiStatusEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 30
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 32
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 33
    .local v1, "extra":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    const-string v3, "networkInfo"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 34
    const-string v3, "networkInfo"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    .line 35
    .local v2, "networkInfo":Landroid/net/NetworkInfo;
    iget-object v3, p0, Lcom/android/settings/WiFiStatusEnabler$1;->this$0:Lcom/android/settings/WiFiStatusEnabler;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    # setter for: Lcom/android/settings/WiFiStatusEnabler;->mIsConnected:Z
    invoke-static {v3, v4}, Lcom/android/settings/WiFiStatusEnabler;->access$002(Lcom/android/settings/WiFiStatusEnabler;Z)Z

    .line 37
    .end local v2    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_0
    iget-object v3, p0, Lcom/android/settings/WiFiStatusEnabler$1;->this$0:Lcom/android/settings/WiFiStatusEnabler;

    # getter for: Lcom/android/settings/WiFiStatusEnabler;->mStatusListener:Lcom/lenovo/settings/LenovoStatusStateChangeListener;
    invoke-static {v3}, Lcom/android/settings/WiFiStatusEnabler;->access$100(Lcom/android/settings/WiFiStatusEnabler;)Lcom/lenovo/settings/LenovoStatusStateChangeListener;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 38
    iget-object v3, p0, Lcom/android/settings/WiFiStatusEnabler$1;->this$0:Lcom/android/settings/WiFiStatusEnabler;

    # getter for: Lcom/android/settings/WiFiStatusEnabler;->mStatusListener:Lcom/lenovo/settings/LenovoStatusStateChangeListener;
    invoke-static {v3}, Lcom/android/settings/WiFiStatusEnabler;->access$100(Lcom/android/settings/WiFiStatusEnabler;)Lcom/lenovo/settings/LenovoStatusStateChangeListener;

    move-result-object v3

    const-string v4, "WifiEnabler"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Lcom/lenovo/settings/LenovoStatusStateChangeListener;->onStateChange(Ljava/lang/String;Z)V

    .line 41
    .end local v1    # "extra":Landroid/os/Bundle;
    :cond_1
    return-void
.end method
