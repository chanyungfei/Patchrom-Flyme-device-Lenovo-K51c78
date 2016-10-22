.class public Lcom/android/server/net/NetworkHttpMonitor;
.super Ljava/lang/Object;
.source "NetworkHttpMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/NetworkHttpMonitor$MyHandler;
    }
.end annotation


# static fields
.field private static final ACTION_POLL:Ljava/lang/String; = "com.android.server.net.NetworkHttpMonitor.action.POLL"

.field private static final ACTION_ROUTING_UPDATE:Ljava/lang/String; = "com.android.server.net.NetworkHttpMonitor.action.routing"

.field private static final DBG:Z = true

.field private static final DEFAULT_SERVER:Ljava/lang/String; = "connectivitycheck.android.com"

.field private static final EVENT_DISABLE_FIREWALL:I = 0x2

.field private static final EVENT_ENABLE_FIREWALL:I = 0x1

.field private static final EVENT_KEEP_ALIVE:I = 0x3

.field private static final EXPIRE_TIME:I = 0x124f80

.field private static final HTTP_FIREWALL_UID:Ljava/lang/String; = "net.http.browser.uid"

.field private static final KEEP_ALIVE_INTERVAL:I = 0x1d4c0

.field private static final MAX_REDIRECT_CONNECTION:I = 0x3

.field private static final MOBILE:I = 0x0

.field private static final SOCKET_TIMEOUT_MS:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "NetworkHttpMonitor"

.field private static WEB_LOCATION:Ljava/lang/String;

.field private static mBrowserAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mBrowserAppUids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mContext:Landroid/content/Context;

.field private static mHttpRedirectCount:I

.field private static mIsFirewallEnabled:Z

.field private static mNetd:Landroid/os/INetworkManagementService;

.field private static mPackageManager:Landroid/content/pm/PackageManager;


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mHandler:Landroid/os/Handler;

.field private mPendingPollIntent:Landroid/app/PendingIntent;

.field final mRulesLock:Ljava/lang/Object;

.field private mServer:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 84
    sput v1, Lcom/android/server/net/NetworkHttpMonitor;->mHttpRedirectCount:I

    .line 86
    const-string v0, "minternet.telcel.com"

    sput-object v0, Lcom/android/server/net/NetworkHttpMonitor;->WEB_LOCATION:Ljava/lang/String;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/net/NetworkHttpMonitor;->mBrowserAppUids:Ljava/util/ArrayList;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/net/NetworkHttpMonitor;->mBrowserAppList:Ljava/util/ArrayList;

    .line 96
    sput-boolean v1, Lcom/android/server/net/NetworkHttpMonitor;->mIsFirewallEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/INetworkManagementService;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "netd"    # Landroid/os/INetworkManagementService;

    .prologue
    const/4 v4, 0x0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkHttpMonitor;->mRulesLock:Ljava/lang/Object;

    .line 99
    sput-object p1, Lcom/android/server/net/NetworkHttpMonitor;->mContext:Landroid/content/Context;

    .line 100
    sput-object p2, Lcom/android/server/net/NetworkHttpMonitor;->mNetd:Landroid/os/INetworkManagementService;

    .line 101
    sget-object v1, Lcom/android/server/net/NetworkHttpMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sput-object v1, Lcom/android/server/net/NetworkHttpMonitor;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 102
    sget-object v1, Lcom/android/server/net/NetworkHttpMonitor;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/android/server/net/NetworkHttpMonitor;->mAlarmManager:Landroid/app/AlarmManager;

    .line 103
    sget-object v1, Lcom/android/server/net/NetworkHttpMonitor;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.server.net.NetworkHttpMonitor.action.POLL"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v4, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/net/NetworkHttpMonitor;->mPendingPollIntent:Landroid/app/PendingIntent;

    .line 106
    invoke-direct {p0}, Lcom/android/server/net/NetworkHttpMonitor;->registerForAlarms()V

    .line 107
    invoke-direct {p0}, Lcom/android/server/net/NetworkHttpMonitor;->registerForRougingUpdate()V

    .line 108
    invoke-direct {p0}, Lcom/android/server/net/NetworkHttpMonitor;->registerForRoutingUpdate()V

    .line 109
    invoke-direct {p0}, Lcom/android/server/net/NetworkHttpMonitor;->registerWifiEvent()V

    .line 111
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "NetworkHttpMonitor"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 112
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 113
    new-instance v1, Lcom/android/server/net/NetworkHttpMonitor$MyHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/net/NetworkHttpMonitor$MyHandler;-><init>(Lcom/android/server/net/NetworkHttpMonitor;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkHttpMonitor;->mHandler:Landroid/os/Handler;

    .line 115
    sget-object v1, Lcom/android/server/net/NetworkHttpMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "captive_portal_server"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/net/NetworkHttpMonitor;->mServer:Ljava/lang/String;

    .line 117
    iget-object v1, p0, Lcom/android/server/net/NetworkHttpMonitor;->mServer:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "connectivitycheck.android.com"

    iput-object v1, p0, Lcom/android/server/net/NetworkHttpMonitor;->mServer:Ljava/lang/String;

    .line 119
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/net/NetworkHttpMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkHttpMonitor;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/server/net/NetworkHttpMonitor;->enableFirewallPolicy()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/net/NetworkHttpMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkHttpMonitor;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/server/net/NetworkHttpMonitor;->disableFirewall()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/net/NetworkHttpMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkHttpMonitor;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/server/net/NetworkHttpMonitor;->sendKeepAlive()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/net/NetworkHttpMonitor;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkHttpMonitor;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/server/net/NetworkHttpMonitor;->mServer:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/net/NetworkHttpMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkHttpMonitor;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/server/net/NetworkHttpMonitor;->resetFirewallStatus()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/net/NetworkHttpMonitor;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkHttpMonitor;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/server/net/NetworkHttpMonitor;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$602(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 53
    sput-boolean p0, Lcom/android/server/net/NetworkHttpMonitor;->mIsFirewallEnabled:Z

    return p0
.end method

.method static synthetic access$700(Lcom/android/server/net/NetworkHttpMonitor;)Landroid/app/PendingIntent;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkHttpMonitor;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/server/net/NetworkHttpMonitor;->mPendingPollIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/net/NetworkHttpMonitor;)Landroid/app/AlarmManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkHttpMonitor;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/server/net/NetworkHttpMonitor;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method private disableFirewall()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x3

    .line 379
    :try_start_0
    sget-object v1, Lcom/android/server/net/NetworkHttpMonitor;->mNetd:Landroid/os/INetworkManagementService;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->setFirewallEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    :goto_0
    const-string v1, "NetworkHttpMonitor"

    const-string v2, "disableFirewall"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    invoke-direct {p0, v4}, Lcom/android/server/net/NetworkHttpMonitor;->sendFirewallIntent(Z)V

    .line 386
    iget-object v1, p0, Lcom/android/server/net/NetworkHttpMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 387
    iget-object v1, p0, Lcom/android/server/net/NetworkHttpMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 389
    :cond_0
    const-string v1, "NetworkHttpMonitor"

    const-string v2, "Keep alive after the disableFirewall"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    iget-object v1, p0, Lcom/android/server/net/NetworkHttpMonitor;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/net/NetworkHttpMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/32 v4, 0x1d4c0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 392
    return-void

    .line 380
    :catch_0
    move-exception v0

    .line 381
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private enableFirewall()V
    .locals 5

    .prologue
    .line 364
    :try_start_0
    sget-object v1, Lcom/android/server/net/NetworkHttpMonitor;->mNetd:Landroid/os/INetworkManagementService;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->setFirewallEnabled(Z)V

    .line 365
    sget-object v1, Lcom/android/server/net/NetworkHttpMonitor;->mNetd:Landroid/os/INetworkManagementService;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/os/INetworkManagementService;->setFirewallUidRule(IZ)V

    .line 366
    sget-object v1, Lcom/android/server/net/NetworkHttpMonitor;->mNetd:Landroid/os/INetworkManagementService;

    const/16 v2, 0x3e8

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/os/INetworkManagementService;->setFirewallUidRule(IZ)V

    .line 367
    sget-object v1, Lcom/android/server/net/NetworkHttpMonitor;->mNetd:Landroid/os/INetworkManagementService;

    const-string v2, "0.0.0.0/0"

    const/16 v3, 0x35

    const/4 v4, 0x1

    invoke-interface {v1, v2, v3, v4}, Landroid/os/INetworkManagementService;->setFirewallEgressDestRule(Ljava/lang/String;IZ)V

    .line 368
    sget-object v1, Lcom/android/server/net/NetworkHttpMonitor;->mNetd:Landroid/os/INetworkManagementService;

    const-string v2, "icmp"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/os/INetworkManagementService;->setFirewallEgressProtoRule(Ljava/lang/String;Z)V

    .line 369
    sget-object v1, Lcom/android/server/net/NetworkHttpMonitor;->mNetd:Landroid/os/INetworkManagementService;

    const-string v2, "lo"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/os/INetworkManagementService;->setFirewallInterfaceRule(Ljava/lang/String;Z)V

    .line 370
    sget-object v1, Lcom/android/server/net/NetworkHttpMonitor;->mNetd:Landroid/os/INetworkManagementService;

    const-string v2, "0.0.0.0/0"

    const/16 v3, 0x7541

    const/4 v4, 0x1

    invoke-interface {v1, v2, v3, v4}, Landroid/os/INetworkManagementService;->setFirewallEgressDestRule(Ljava/lang/String;IZ)V

    .line 371
    sget-object v1, Lcom/android/server/net/NetworkHttpMonitor;->mNetd:Landroid/os/INetworkManagementService;

    const-string v2, "0.0.0.0/0"

    const/16 v3, 0x13ad

    const/4 v4, 0x1

    invoke-interface {v1, v2, v3, v4}, Landroid/os/INetworkManagementService;->setFirewallEgressDestRule(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 375
    :goto_0
    return-void

    .line 372
    :catch_0
    move-exception v0

    .line 373
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private enableFirewallPolicy()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x1

    .line 395
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 396
    .local v1, "sb":Ljava/lang/StringBuffer;
    const-string v6, "NetworkHttpMonitor"

    const-string v7, "enableFirewallPolicy"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    invoke-direct {p0}, Lcom/android/server/net/NetworkHttpMonitor;->enableFirewall()V

    .line 400
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v6, Lcom/android/server/net/NetworkHttpMonitor;->mBrowserAppUids:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_1

    .line 401
    if-eqz v0, :cond_0

    .line 402
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/server/net/NetworkHttpMonitor;->mBrowserAppUids:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 403
    const-string v6, "NetworkHttpMonitor"

    const-string v7, "mBrowserAppUids.get 1"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :goto_1
    sget-object v6, Lcom/android/server/net/NetworkHttpMonitor;->mBrowserAppUids:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {p0, v6, v9}, Lcom/android/server/net/NetworkHttpMonitor;->enableFirewallWithUid(IZ)V

    .line 400
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 405
    :cond_0
    sget-object v6, Lcom/android/server/net/NetworkHttpMonitor;->mBrowserAppUids:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 406
    const-string v6, "NetworkHttpMonitor"

    const-string v7, "mBrowserAppUids.get 2"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 411
    :cond_1
    invoke-direct {p0, v9}, Lcom/android/server/net/NetworkHttpMonitor;->sendFirewallIntent(Z)V

    .line 412
    const-string v6, "NetworkHttpMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "new property:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    const-string v6, "net.http.browser.uid"

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    const-string v6, "NetworkHttpMonitor"

    const-string v7, "start 20 minutes timer"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    sput-boolean v9, Lcom/android/server/net/NetworkHttpMonitor;->mIsFirewallEnabled:Z

    .line 417
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 418
    .local v4, "now":J
    const-wide/32 v6, 0x124f80

    add-long v2, v4, v6

    .line 419
    .local v2, "next":J
    iget-object v6, p0, Lcom/android/server/net/NetworkHttpMonitor;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v7, p0, Lcom/android/server/net/NetworkHttpMonitor;->mPendingPollIntent:Landroid/app/PendingIntent;

    invoke-virtual {v6, v10, v2, v3, v7}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 421
    iget-object v6, p0, Lcom/android/server/net/NetworkHttpMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v10}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v6

    if-nez v6, :cond_2

    .line 422
    iget-object v6, p0, Lcom/android/server/net/NetworkHttpMonitor;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/server/net/NetworkHttpMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    const-wide/32 v8, 0x1d4c0

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 425
    :cond_2
    return-void
.end method

.method private enableFirewallWithUid(IZ)V
    .locals 4
    .param p1, "appUid"    # I
    .param p2, "isEnabled"    # Z

    .prologue
    .line 355
    :try_start_0
    sget-object v1, Lcom/android/server/net/NetworkHttpMonitor;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v1, p1, p2}, Landroid/os/INetworkManagementService;->setFirewallUidRule(IZ)V

    .line 356
    const-string v1, "NetworkHttpMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Test:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    :goto_0
    return-void

    .line 357
    :catch_0
    move-exception v0

    .line 358
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "NetworkHttpMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getBrowserAppList()Ljava/util/ArrayList;
    .locals 7

    .prologue
    .line 449
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 450
    .local v3, "intent":Landroid/content/Intent;
    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 451
    const-string v4, "android.intent.category.BROWSABLE"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 452
    const-string v4, "http://www.google.com"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 453
    const-string v4, "NetworkHttpMonitor"

    const-string v5, "getBrowserAppList"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    sget-object v4, Lcom/android/server/net/NetworkHttpMonitor;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v5, 0x40

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 458
    .local v2, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const-string v4, "NetworkHttpMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getBrowserAppList:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    sget-object v4, Lcom/android/server/net/NetworkHttpMonitor;->mBrowserAppList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 460
    sget-object v4, Lcom/android/server/net/NetworkHttpMonitor;->mBrowserAppUids:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 462
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 463
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    sget-object v4, Lcom/android/server/net/NetworkHttpMonitor;->mBrowserAppList:Ljava/util/ArrayList;

    iget-object v5, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 464
    sget-object v4, Lcom/android/server/net/NetworkHttpMonitor;->mBrowserAppUids:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Integer;

    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 467
    .end local v1    # "info":Landroid/content/pm/ResolveInfo;
    :cond_0
    sget-object v4, Lcom/android/server/net/NetworkHttpMonitor;->mBrowserAppList:Ljava/util/ArrayList;

    return-object v4
.end method

.method private isBrowsrAppByUid(I)Z
    .locals 3
    .param p1, "appUid"    # I

    .prologue
    .line 428
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/android/server/net/NetworkHttpMonitor;->mBrowserAppUids:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 429
    const-string v1, "NetworkHttpMonitor"

    const-string v2, "isBrowsrAppByUid"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    sget-object v1, Lcom/android/server/net/NetworkHttpMonitor;->mBrowserAppUids:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 431
    const/4 v1, 0x1

    .line 435
    :goto_1
    return v1

    .line 428
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 435
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private registerForAlarms()V
    .locals 4

    .prologue
    .line 221
    sget-object v0, Lcom/android/server/net/NetworkHttpMonitor;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/net/NetworkHttpMonitor$2;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkHttpMonitor$2;-><init>(Lcom/android/server/net/NetworkHttpMonitor;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.android.server.net.NetworkHttpMonitor.action.POLL"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 229
    return-void
.end method

.method private registerForRougingUpdate()V
    .locals 4

    .prologue
    .line 244
    sget-object v0, Lcom/android/server/net/NetworkHttpMonitor;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/net/NetworkHttpMonitor$4;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkHttpMonitor$4;-><init>(Lcom/android/server/net/NetworkHttpMonitor;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.ACTION_NETWORK_EVENT"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 261
    return-void
.end method

.method private registerForRoutingUpdate()V
    .locals 4

    .prologue
    .line 232
    sget-object v0, Lcom/android/server/net/NetworkHttpMonitor;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/net/NetworkHttpMonitor$3;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkHttpMonitor$3;-><init>(Lcom/android/server/net/NetworkHttpMonitor;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.android.server.net.NetworkHttpMonitor.action.routing"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 241
    return-void
.end method

.method private registerWifiEvent()V
    .locals 4

    .prologue
    .line 264
    sget-object v0, Lcom/android/server/net/NetworkHttpMonitor;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/net/NetworkHttpMonitor$5;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkHttpMonitor$5;-><init>(Lcom/android/server/net/NetworkHttpMonitor;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 285
    return-void
.end method

.method private resetFirewallStatus()V
    .locals 3

    .prologue
    .line 208
    iget-object v1, p0, Lcom/android/server/net/NetworkHttpMonitor;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 209
    :try_start_0
    sget-boolean v0, Lcom/android/server/net/NetworkHttpMonitor;->mIsFirewallEnabled:Z

    if-eqz v0, :cond_0

    .line 210
    const-string v0, "NetworkHttpMonitor"

    const-string v2, "resetFirewallStatus"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/net/NetworkHttpMonitor;->mIsFirewallEnabled:Z

    .line 212
    const/4 v0, 0x0

    sput v0, Lcom/android/server/net/NetworkHttpMonitor;->mHttpRedirectCount:I

    .line 213
    const-string v0, "net.http.browser.uid"

    const-string v2, ""

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/android/server/net/NetworkHttpMonitor;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/android/server/net/NetworkHttpMonitor;->mPendingPollIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 215
    iget-object v0, p0, Lcom/android/server/net/NetworkHttpMonitor;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 217
    :cond_0
    monitor-exit v1

    .line 218
    return-void

    .line 217
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private sendFirewallIntent(Z)V
    .locals 5
    .param p1, "isEnabled"    # Z

    .prologue
    .line 439
    const-string v3, "NetworkHttpMonitor"

    const-string v4, "sendFirewallIntent"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 441
    .local v0, "ident":J
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.server.net.NetworkHttpMonitor.action.firewall"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 443
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x20000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 444
    const-string v3, "isEnabled"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 445
    sget-object v3, Lcom/android/server/net/NetworkHttpMonitor;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 446
    return-void
.end method

.method private sendKeepAlive()V
    .locals 2

    .prologue
    .line 148
    new-instance v0, Lcom/android/server/net/NetworkHttpMonitor$1;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkHttpMonitor$1;-><init>(Lcom/android/server/net/NetworkHttpMonitor;)V

    .line 198
    .local v0, "runnable":Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 199
    .local v1, "thread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 200
    return-void
.end method


# virtual methods
.method public clearFirewallRule()V
    .locals 0

    .prologue
    .line 204
    invoke-direct {p0}, Lcom/android/server/net/NetworkHttpMonitor;->resetFirewallStatus()V

    .line 205
    return-void
.end method

.method public getWebLocation()Ljava/lang/String;
    .locals 5

    .prologue
    .line 294
    sget-object v1, Lcom/android/server/net/NetworkHttpMonitor;->WEB_LOCATION:Ljava/lang/String;

    .line 296
    .local v1, "web":Ljava/lang/String;
    const-string v2, "net.http.web.location"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 298
    .local v0, "testWeb":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 299
    move-object v1, v0

    .line 302
    :cond_0
    const-string v2, "NetworkHttpMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getWebLocation:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    return-object v1
.end method

.method public isFirewallEnabled()Z
    .locals 3

    .prologue
    .line 288
    const-string v0, "NetworkHttpMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isFirewallEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/net/NetworkHttpMonitor;->mIsFirewallEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    sget-boolean v0, Lcom/android/server/net/NetworkHttpMonitor;->mIsFirewallEnabled:Z

    return v0
.end method

.method public monitorHttpRedirect(Ljava/lang/String;I)V
    .locals 4
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "appUid"    # I

    .prologue
    .line 308
    const-string v1, "NetworkHttpMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "monitorHttpRedirect:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/server/net/NetworkHttpMonitor;->mHttpRedirectCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\nloc:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    const-string v1, "NetworkHttpMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "monitorHttpRedirect:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/server/net/NetworkHttpMonitor;->mHttpRedirectCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\nloc:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    const-string v1, "1"

    const-string v2, "ro.mtk_pre_sim_wo_bal_support"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 313
    const-string v1, "NetworkHttpMonitor"

    const-string v2, "test 1"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    invoke-virtual {p0}, Lcom/android/server/net/NetworkHttpMonitor;->getWebLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 351
    :cond_0
    :goto_0
    return-void

    .line 318
    :cond_1
    sget-boolean v1, Lcom/android/server/net/NetworkHttpMonitor;->mIsFirewallEnabled:Z

    if-eqz v1, :cond_2

    .line 319
    const-string v1, "NetworkHttpMonitor"

    const-string v2, "Http Firewall is enabled"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 324
    :cond_2
    const-string v1, "NetworkHttpMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Non-app id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    const-string v1, "NetworkHttpMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Non-app id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    const/16 v1, 0x2710

    if-ge p2, v1, :cond_3

    .line 328
    const-string v1, "NetworkHttpMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Non-app id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 332
    :cond_3
    invoke-direct {p0}, Lcom/android/server/net/NetworkHttpMonitor;->getBrowserAppList()Ljava/util/ArrayList;

    move-result-object v0

    .line 334
    .local v0, "appList":Ljava/util/ArrayList;
    invoke-direct {p0, p2}, Lcom/android/server/net/NetworkHttpMonitor;->isBrowsrAppByUid(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 338
    sget v1, Lcom/android/server/net/NetworkHttpMonitor;->mHttpRedirectCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/android/server/net/NetworkHttpMonitor;->mHttpRedirectCount:I

    .line 339
    const-string v1, "NetworkHttpMonitor"

    const-string v2, "mHttpRedirectCount add"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    const-string v1, "NetworkHttpMonitor"

    const-string v2, "mHttpRedirectCount add"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    sget v1, Lcom/android/server/net/NetworkHttpMonitor;->mHttpRedirectCount:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_4

    .line 344
    const-string v1, "NetworkHttpMonitor"

    const-string v2, "Enable firewall"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iget-object v2, p0, Lcom/android/server/net/NetworkHttpMonitor;->mRulesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 346
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkHttpMonitor;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 347
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 350
    .end local v0    # "appList":Ljava/util/ArrayList;
    :cond_4
    const-string v1, "NetworkHttpMonitor"

    const-string v2, "test 2"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 347
    .restart local v0    # "appList":Ljava/util/ArrayList;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
