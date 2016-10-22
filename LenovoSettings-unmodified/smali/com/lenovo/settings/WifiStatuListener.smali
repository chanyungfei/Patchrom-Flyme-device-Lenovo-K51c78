.class public Lcom/lenovo/settings/WifiStatuListener;
.super Landroid/content/BroadcastReceiver;
.source "WifiStatuListener.java"


# static fields
.field private static isConnect:Z

.field static isShowWLANListActivity:Z


# instance fields
.field private context:Landroid/content/Context;

.field final mServiceAquireLock:Ljava/lang/Object;

.field mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private myHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 29
    sput-boolean v0, Lcom/lenovo/settings/WifiStatuListener;->isConnect:Z

    .line 34
    sput-boolean v0, Lcom/lenovo/settings/WifiStatuListener;->isShowWLANListActivity:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lenovo/settings/WifiStatuListener;->mServiceAquireLock:Ljava/lang/Object;

    .line 40
    new-instance v0, Lcom/lenovo/settings/WifiStatuListener$1;

    invoke-direct {v0, p0}, Lcom/lenovo/settings/WifiStatuListener$1;-><init>(Lcom/lenovo/settings/WifiStatuListener;)V

    iput-object v0, p0, Lcom/lenovo/settings/WifiStatuListener;->myHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/settings/WifiStatuListener;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/WifiStatuListener;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/lenovo/settings/WifiStatuListener;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 26
    sget-boolean v0, Lcom/lenovo/settings/WifiStatuListener;->isConnect:Z

    return v0
.end method

.method static synthetic access$200(Lcom/lenovo/settings/WifiStatuListener;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/WifiStatuListener;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/lenovo/settings/WifiStatuListener;->myHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .locals 2

    .prologue
    .line 140
    iget-object v1, p0, Lcom/lenovo/settings/WifiStatuListener;->mServiceAquireLock:Ljava/lang/Object;

    monitor-enter v1

    .line 141
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/settings/WifiStatuListener;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_0

    .line 142
    const-string v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/settings/WifiStatuListener;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/lenovo/settings/WifiStatuListener;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    monitor-exit v1

    return-object v0

    .line 146
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 87
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "action":Ljava/lang/String;
    iput-object p1, p0, Lcom/lenovo/settings/WifiStatuListener;->context:Landroid/content/Context;

    .line 89
    const-string v5, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 90
    sput-boolean v8, Lcom/lenovo/settings/WifiStatuListener;->isConnect:Z

    .line 91
    const-string v5, "wifi_state"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 92
    .local v4, "wifiState":I
    packed-switch v4, :pswitch_data_0

    .line 137
    .end local v4    # "wifiState":I
    :cond_0
    :goto_0
    return-void

    .line 94
    .restart local v4    # "wifiState":I
    :pswitch_0
    const-string v5, "Wifi_Dialog"

    const-string v6, "wifi has WIFI_STATE_DISABLED "

    invoke-static {v5, v6}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 97
    :pswitch_1
    const-string v5, "Wifi_Dialog"

    const-string v6, "wifi has WIFI_STATE_DISABLING "

    invoke-static {v5, v6}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 100
    :pswitch_2
    const-string v5, "Wifi_Dialog"

    const-string v6, "wifi has WIFI_STATE_ENABLED "

    invoke-static {v5, v6}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    sget-boolean v5, Lcom/lenovo/settings/WifiStatuListener;->isShowWLANListActivity:Z

    if-eqz v5, :cond_0

    .line 102
    iget-object v5, p0, Lcom/lenovo/settings/WifiStatuListener;->myHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x7d0

    invoke-virtual {v5, v9, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 103
    sput-boolean v8, Lcom/lenovo/settings/WifiStatuListener;->isShowWLANListActivity:Z

    goto :goto_0

    .line 107
    :pswitch_3
    const-string v5, "Wifi_Dialog"

    const-string v6, "wifi has WIFI_STATE_ENABLING "

    invoke-static {v5, v6}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 110
    :pswitch_4
    sput-boolean v8, Lcom/lenovo/settings/WifiStatuListener;->isShowWLANListActivity:Z

    goto :goto_0

    .line 114
    .end local v4    # "wifiState":I
    :cond_1
    const-string v5, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 115
    const-string v5, "networkInfo"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    .line 117
    .local v3, "parcelableExtra":Landroid/os/Parcelable;
    if-eqz v3, :cond_0

    move-object v2, v3

    .line 118
    check-cast v2, Landroid/net/NetworkInfo;

    .line 119
    .local v2, "networkInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 120
    sput-boolean v8, Lcom/lenovo/settings/WifiStatuListener;->isShowWLANListActivity:Z

    .line 121
    sput-boolean v9, Lcom/lenovo/settings/WifiStatuListener;->isConnect:Z

    .line 123
    :cond_2
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    .line 124
    .local v1, "isConnected":Z
    if-eqz v1, :cond_0

    .line 125
    sput-boolean v8, Lcom/lenovo/settings/WifiStatuListener;->isShowWLANListActivity:Z

    .line 126
    sput-boolean v9, Lcom/lenovo/settings/WifiStatuListener;->isConnect:Z

    goto :goto_0

    .line 130
    .end local v1    # "isConnected":Z
    .end local v2    # "networkInfo":Landroid/net/NetworkInfo;
    .end local v3    # "parcelableExtra":Landroid/os/Parcelable;
    :cond_3
    const-string v5, "intent.action.DISPLAY_WLAN_POPUP"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 131
    sput-boolean v9, Lcom/lenovo/settings/WifiStatuListener;->isShowWLANListActivity:Z

    goto :goto_0

    .line 132
    :cond_4
    const-string v5, "com.lenovo.lesafe.CANCLE_WLAN_DIALOG"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 133
    const-string v5, "Wifi_Dialog"

    const-string v6, "com.lenovo.lesafe.CANCLE_WLAN_DIALOG "

    invoke-static {v5, v6}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    sput-boolean v8, Lcom/lenovo/settings/WifiStatuListener;->isShowWLANListActivity:Z

    goto :goto_0

    .line 92
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method
