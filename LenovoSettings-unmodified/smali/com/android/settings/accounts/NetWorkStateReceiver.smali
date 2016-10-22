.class public Lcom/android/settings/accounts/NetWorkStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetWorkStateReceiver.java"


# static fields
.field private static final ACCOUNTS_SETTINGS_SYNC:Ljava/lang/String; = "accounts_settings_sync"

.field private static final KEY_ACCOUNT_AUTO_SYNC:Ljava/lang/String; = "account_auto_sync"

.field private static final KEY_ACCOUNT_WLAN_SYNC:Ljava/lang/String; = "account_wlan_sync"

.field public static final TAG:Ljava/lang/String; = "NetWorkStateReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private getDefaultValues(Landroid/content/Context;)Z
    .locals 6
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 58
    const-string v5, "accounts_settings_sync"

    invoke-virtual {p1, v5, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 61
    .local v2, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v5, "account_auto_sync"

    invoke-interface {v2, v5, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-static {v5}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    move v0, v4

    .line 65
    .local v0, "isAutoSync":Z
    :goto_0
    const-string v5, "account_wlan_sync"

    invoke-interface {v2, v5, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 67
    .local v1, "isWlanSync":Z
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    :goto_1
    return v4

    .end local v0    # "isAutoSync":Z
    .end local v1    # "isWlanSync":Z
    :cond_1
    move v0, v3

    .line 61
    goto :goto_0

    .restart local v0    # "isAutoSync":Z
    .restart local v1    # "isWlanSync":Z
    :cond_2
    move v4, v3

    .line 67
    goto :goto_1
.end method

.method private getWlanState(Landroid/content/Context;Landroid/os/Bundle;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "extra"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 45
    if-eqz p2, :cond_0

    const-string v2, "networkInfo"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 46
    const-string v2, "networkInfo"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 48
    .local v0, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    .line 54
    .end local v0    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_0
    return v1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 26
    const-string v1, "NetWorkStateReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive intent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/xlog/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0, p1}, Lcom/android/settings/accounts/NetWorkStateReceiver;->getDefaultValues(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 30
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 32
    .local v0, "mUserHandle":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/settings/accounts/NetWorkStateReceiver;->getWlanState(Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 33
    const-string v1, "NetWorkStateReceiver"

    const-string v2, "The current network isn\'t WLAN, don\'t sync it"

    invoke-static {v1, v2}, Lcom/lenovo/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const/4 v1, 0x0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-static {v1, v2}, Landroid/content/ContentResolver;->setMasterSyncAutomaticallyAsUser(ZI)V

    .line 42
    .end local v0    # "mUserHandle":Landroid/os/UserHandle;
    :cond_0
    :goto_0
    return-void

    .line 37
    .restart local v0    # "mUserHandle":Landroid/os/UserHandle;
    :cond_1
    const-string v1, "NetWorkStateReceiver"

    const-string v2, "The current network is WLAN, sync it"

    invoke-static {v1, v2}, Lcom/lenovo/xlog/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const/4 v1, 0x1

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-static {v1, v2}, Landroid/content/ContentResolver;->setMasterSyncAutomaticallyAsUser(ZI)V

    goto :goto_0
.end method
