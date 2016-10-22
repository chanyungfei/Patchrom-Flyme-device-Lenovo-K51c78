.class public Lcom/android/server/net/LockdownVpnTracker;
.super Ljava/lang/Object;
.source "LockdownVpnTracker.java"


# static fields
.field private static final ACTION_LOCKDOWN_RESET:Ljava/lang/String; = "com.android.server.action.LOCKDOWN_RESET"

.field private static final ACTION_VPN_SETTINGS:Ljava/lang/String; = "android.net.vpn.SETTINGS"

.field private static final EXTRA_PICK_LOCKDOWN:Ljava/lang/String; = "android.net.vpn.PICK_LOCKDOWN"

.field private static final MAX_ERROR_COUNT:I = 0x4

.field private static final ROOT_UID:I = 0x0

.field private static final TAG:Ljava/lang/String; = "LockdownVpnTracker"


# instance fields
.field private mAcceptedEgressIface:Ljava/lang/String;

.field private mAcceptedIface:Ljava/lang/String;

.field private mAcceptedSourceAddr:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/LinkAddress;",
            ">;"
        }
    .end annotation
.end field

.field private final mConfigIntent:Landroid/app/PendingIntent;

.field private final mConnService:Lcom/android/server/ConnectivityService;

.field private final mContext:Landroid/content/Context;

.field private mErrorCount:I

.field private final mNetService:Landroid/os/INetworkManagementService;

.field private final mProfile:Lcom/android/internal/net/VpnProfile;

.field private final mResetIntent:Landroid/app/PendingIntent;

.field private mResetReceiver:Landroid/content/BroadcastReceiver;

.field private final mStateLock:Ljava/lang/Object;

.field private final mVpn:Lcom/android/server/connectivity/Vpn;

.field private mVpnStateChangedReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/VpnProfile;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "netService"    # Landroid/os/INetworkManagementService;
    .param p3, "connService"    # Lcom/android/server/ConnectivityService;
    .param p4, "vpn"    # Lcom/android/server/connectivity/Vpn;
    .param p5, "profile"    # Lcom/android/internal/net/VpnProfile;

    .prologue
    const/4 v4, 0x0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mStateLock:Ljava/lang/Object;

    .line 124
    new-instance v2, Lcom/android/server/net/LockdownVpnTracker$1;

    invoke-direct {v2, p0}, Lcom/android/server/net/LockdownVpnTracker$1;-><init>(Lcom/android/server/net/LockdownVpnTracker;)V

    iput-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mResetReceiver:Landroid/content/BroadcastReceiver;

    .line 143
    new-instance v2, Lcom/android/server/net/LockdownVpnTracker$2;

    invoke-direct {v2, p0}, Lcom/android/server/net/LockdownVpnTracker$2;-><init>(Lcom/android/server/net/LockdownVpnTracker;)V

    iput-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpnStateChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 109
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    iput-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    .line 110
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/INetworkManagementService;

    iput-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mNetService:Landroid/os/INetworkManagementService;

    .line 111
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ConnectivityService;

    iput-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mConnService:Lcom/android/server/ConnectivityService;

    .line 112
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/Vpn;

    iput-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    .line 113
    invoke-static {p5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/VpnProfile;

    iput-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mProfile:Lcom/android/internal/net/VpnProfile;

    .line 115
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.net.vpn.SETTINGS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 116
    .local v0, "configIntent":Landroid/content/Intent;
    const-string v2, "android.net.vpn.PICK_LOCKDOWN"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 117
    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    invoke-static {v2, v4, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mConfigIntent:Landroid/app/PendingIntent;

    .line 119
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.server.action.LOCKDOWN_RESET"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 120
    .local v1, "resetIntent":Landroid/content/Intent;
    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 121
    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    invoke-static {v2, v4, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mResetIntent:Landroid/app/PendingIntent;

    .line 122
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/net/LockdownVpnTracker;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/LockdownVpnTracker;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/server/net/LockdownVpnTracker;->handleKeystoreChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/net/LockdownVpnTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/LockdownVpnTracker;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/server/net/LockdownVpnTracker;->handleVpnClear()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/net/LockdownVpnTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/LockdownVpnTracker;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/server/net/LockdownVpnTracker;->handleVpnFailed()V

    return-void
.end method

.method private clearSourceRulesLocked()V
    .locals 6

    .prologue
    .line 438
    :try_start_0
    iget-object v3, p0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedIface:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 439
    iget-object v3, p0, Lcom/android/server/net/LockdownVpnTracker;->mNetService:Landroid/os/INetworkManagementService;

    iget-object v4, p0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedIface:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/os/INetworkManagementService;->setFirewallInterfaceRule(Ljava/lang/String;Z)V

    .line 440
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedIface:Ljava/lang/String;

    .line 442
    :cond_0
    iget-object v3, p0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedSourceAddr:Ljava/util/List;

    if-eqz v3, :cond_2

    .line 443
    iget-object v3, p0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedSourceAddr:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/LinkAddress;

    .line 444
    .local v0, "addr":Landroid/net/LinkAddress;
    const/4 v3, 0x0

    invoke-direct {p0, v0, v3}, Lcom/android/server/net/LockdownVpnTracker;->setFirewallEgressSourceRule(Landroid/net/LinkAddress;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 452
    .end local v0    # "addr":Landroid/net/LinkAddress;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v1

    .line 453
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Problem setting firewall rules"

    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 447
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/server/net/LockdownVpnTracker;->mNetService:Landroid/os/INetworkManagementService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/os/INetworkManagementService;->setFirewallUidRule(IZ)V

    .line 448
    iget-object v3, p0, Lcom/android/server/net/LockdownVpnTracker;->mNetService:Landroid/os/INetworkManagementService;

    invoke-static {}, Landroid/system/Os;->getuid()I

    move-result v4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/os/INetworkManagementService;->setFirewallUidRule(IZ)V

    .line 450
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedSourceAddr:Ljava/util/List;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 459
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    return-void

    .line 455
    :catch_1
    move-exception v1

    .line 456
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string v3, "LockdownVpnTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleStateChanged() e = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private handleKeystoreChanged(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 164
    invoke-static {}, Lcom/android/server/net/LockdownVpnTracker;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    const-string v1, "keystore_action"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, "extra":Ljava/lang/String;
    const-string v1, "LockdownVpnTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleKeystoreChanged() extra = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 179
    const-string v1, "LockdownVpnTracker"

    const-string v2, "handleKeystoreChanged() default happens!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 168
    :sswitch_0
    const-string v2, "keystore_delete_key"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_1
    const-string v2, "keystore_reset"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    .line 170
    :pswitch_0
    const-string v1, "LOCKDOWN_VPN"

    const-string v2, "keystore_delete_key"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    invoke-direct {p0}, Lcom/android/server/net/LockdownVpnTracker;->updateLockdownVpn()V

    goto :goto_0

    .line 176
    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/net/LockdownVpnTracker;->updateLockdownVpn()V

    goto :goto_0

    .line 168
    :sswitch_data_0
    .sparse-switch
        -0x7753c3b8 -> :sswitch_0
        -0x3446734e -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handleStateChangedLocked()V
    .locals 20

    .prologue
    .line 223
    invoke-static {}, Lcom/android/server/net/LockdownVpnTracker;->isEnabled()Z

    move-result v17

    if-nez v17, :cond_1

    .line 224
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/LockdownVpnTracker;->updateLockdownVpn()V

    .line 325
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/LockdownVpnTracker;->mConnService:Lcom/android/server/ConnectivityService;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/ConnectivityService;->getActiveNetworkInfoUnfiltered()Landroid/net/NetworkInfo;

    move-result-object v8

    .line 230
    .local v8, "egressInfo":Landroid/net/NetworkInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/LockdownVpnTracker;->mConnService:Lcom/android/server/ConnectivityService;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/ConnectivityService;->getActiveLinkProperties()Landroid/net/LinkProperties;

    move-result-object v9

    .line 232
    .local v9, "egressProp":Landroid/net/LinkProperties;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/connectivity/Vpn;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v16

    .line 233
    .local v16, "vpnInfo":Landroid/net/NetworkInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/connectivity/Vpn;->getLegacyVpnConfig()Lcom/android/internal/net/VpnConfig;

    move-result-object v15

    .line 236
    .local v15, "vpnConfig":Lcom/android/internal/net/VpnConfig;
    if-eqz v8, :cond_2

    sget-object v17, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    :cond_2
    const/4 v6, 0x1

    .line 238
    .local v6, "egressDisconnected":Z
    :goto_1
    if-eqz v9, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedEgressIface:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual {v9}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_7

    :cond_3
    const/4 v5, 0x1

    .line 241
    .local v5, "egressChanged":Z
    :goto_2
    if-nez v8, :cond_8

    const/4 v11, 0x0

    .line 243
    .local v11, "egressTypeName":Ljava/lang/String;
    :goto_3
    if-nez v9, :cond_9

    const/4 v7, 0x0

    .line 245
    .local v7, "egressIface":Ljava/lang/String;
    :goto_4
    const-string v17, "LockdownVpnTracker"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "handleStateChanged: egress="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedEgressIface:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "->"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    if-nez v6, :cond_4

    if-eqz v5, :cond_5

    .line 249
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/LockdownVpnTracker;->clearSourceRulesLocked()V

    .line 250
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedEgressIface:Ljava/lang/String;

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/connectivity/Vpn;->stopLegacyVpnPrivileged()V

    .line 253
    :cond_5
    if-eqz v6, :cond_a

    .line 254
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/LockdownVpnTracker;->hideNotification()V

    goto/16 :goto_0

    .line 236
    .end local v5    # "egressChanged":Z
    .end local v6    # "egressDisconnected":Z
    .end local v7    # "egressIface":Ljava/lang/String;
    .end local v11    # "egressTypeName":Ljava/lang/String;
    :cond_6
    const/4 v6, 0x0

    goto :goto_1

    .line 238
    .restart local v6    # "egressDisconnected":Z
    :cond_7
    const/4 v5, 0x0

    goto :goto_2

    .line 241
    .restart local v5    # "egressChanged":Z
    :cond_8
    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getType()I

    move-result v17

    invoke-static/range {v17 .. v17}, Landroid/net/ConnectivityManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_3

    .line 243
    .restart local v11    # "egressTypeName":Ljava/lang/String;
    :cond_9
    invoke-virtual {v9}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    .line 258
    .restart local v7    # "egressIface":Ljava/lang/String;
    :cond_a
    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getType()I

    move-result v10

    .line 259
    .local v10, "egressType":I
    invoke-virtual/range {v16 .. v16}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v17

    sget-object v18, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_b

    .line 260
    invoke-static {v10}, Lcom/android/server/EventLogTags;->writeLockdownVpnError(I)V

    .line 263
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/net/LockdownVpnTracker;->mErrorCount:I

    move/from16 v17, v0

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_c

    .line 264
    const v17, 0x104055b

    const v18, 0x1080755

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/server/net/LockdownVpnTracker;->showNotification(II)V

    goto/16 :goto_0

    .line 266
    :cond_c
    invoke-virtual {v8}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v17

    if-eqz v17, :cond_e

    invoke-virtual/range {v16 .. v16}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v17

    if-nez v17, :cond_e

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/LockdownVpnTracker;->mProfile:Lcom/android/internal/net/VpnProfile;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/net/VpnProfile;->isValidLockdownProfile()Z

    move-result v17

    if-eqz v17, :cond_d

    .line 268
    const-string v17, "LockdownVpnTracker"

    const-string v18, "Active network connected; starting VPN"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    invoke-static {v10}, Lcom/android/server/EventLogTags;->writeLockdownVpnConnecting(I)V

    .line 270
    const v17, 0x1040559

    const v18, 0x1080755

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/server/net/LockdownVpnTracker;->showNotification(II)V

    .line 272
    invoke-virtual {v9}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedEgressIface:Ljava/lang/String;

    .line 276
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/LockdownVpnTracker;->mProfile:Lcom/android/internal/net/VpnProfile;

    move-object/from16 v18, v0

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2, v9}, Lcom/android/server/connectivity/Vpn;->startLegacyVpnPrivileged(Lcom/android/internal/net/VpnProfile;Landroid/security/KeyStore;Landroid/net/LinkProperties;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 277
    :catch_0
    move-exception v4

    .line 278
    .local v4, "e":Ljava/lang/IllegalStateException;
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedEgressIface:Ljava/lang/String;

    .line 279
    const-string v17, "LockdownVpnTracker"

    const-string v18, "Failed to start VPN"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 280
    const v17, 0x104055b

    const v18, 0x1080755

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/server/net/LockdownVpnTracker;->showNotification(II)V

    goto/16 :goto_0

    .line 283
    .end local v4    # "e":Ljava/lang/IllegalStateException;
    :cond_d
    const-string v17, "LockdownVpnTracker"

    const-string v18, "Invalid VPN profile; requires IP-based server and DNS"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    const v17, 0x104055b

    const v18, 0x1080755

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/server/net/LockdownVpnTracker;->showNotification(II)V

    goto/16 :goto_0

    .line 287
    :cond_e
    invoke-virtual/range {v16 .. v16}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v17

    if-eqz v17, :cond_0

    if-eqz v15, :cond_0

    .line 288
    iget-object v13, v15, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    .line 289
    .local v13, "iface":Ljava/lang/String;
    iget-object v14, v15, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    .line 291
    .local v14, "sourceAddrs":Ljava/util/List;, "Ljava/util/List<Landroid/net/LinkAddress;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedIface:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v13, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedSourceAddr:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v14, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 296
    :cond_f
    const-string v17, "LockdownVpnTracker"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "VPN connected using iface="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", sourceAddr="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    invoke-static {v10}, Lcom/android/server/EventLogTags;->writeLockdownVpnConnected(I)V

    .line 299
    const v17, 0x104055a

    const v18, 0x1080754

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/server/net/LockdownVpnTracker;->showNotification(II)V

    .line 302
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/LockdownVpnTracker;->clearSourceRulesLocked()V

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/LockdownVpnTracker;->mNetService:Landroid/os/INetworkManagementService;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v0, v13, v1}, Landroid/os/INetworkManagementService;->setFirewallInterfaceRule(Ljava/lang/String;Z)V

    .line 305
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_10

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/LinkAddress;

    .line 306
    .local v3, "addr":Landroid/net/LinkAddress;
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v3, v1}, Lcom/android/server/net/LockdownVpnTracker;->setFirewallEgressSourceRule(Landroid/net/LinkAddress;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_5

    .line 315
    .end local v3    # "addr":Landroid/net/LinkAddress;
    .end local v12    # "i$":Ljava/util/Iterator;
    :catch_1
    move-exception v4

    .line 316
    .local v4, "e":Landroid/os/RemoteException;
    new-instance v17, Ljava/lang/RuntimeException;

    const-string v18, "Problem setting firewall rules"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v17

    .line 309
    .end local v4    # "e":Landroid/os/RemoteException;
    .restart local v12    # "i$":Ljava/util/Iterator;
    :cond_10
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/LockdownVpnTracker;->mNetService:Landroid/os/INetworkManagementService;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x1

    invoke-interface/range {v17 .. v19}, Landroid/os/INetworkManagementService;->setFirewallUidRule(IZ)V

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/LockdownVpnTracker;->mNetService:Landroid/os/INetworkManagementService;

    move-object/from16 v17, v0

    invoke-static {}, Landroid/system/Os;->getuid()I

    move-result v18

    const/16 v19, 0x1

    invoke-interface/range {v17 .. v19}, Landroid/os/INetworkManagementService;->setFirewallUidRule(IZ)V

    .line 312
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/net/LockdownVpnTracker;->mErrorCount:I

    .line 313
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedIface:Ljava/lang/String;

    .line 314
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedSourceAddr:Ljava/util/List;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2

    .line 323
    .end local v12    # "i$":Ljava/util/Iterator;
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/LockdownVpnTracker;->mConnService:Lcom/android/server/ConnectivityService;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/server/net/LockdownVpnTracker;->augmentNetworkInfo(Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/ConnectivityService;->sendConnectedBroadcast(Landroid/net/NetworkInfo;)V

    goto/16 :goto_0

    .line 318
    :catch_2
    move-exception v4

    .line 319
    .local v4, "e":Ljava/lang/IllegalStateException;
    const-string v17, "LockdownVpnTracker"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "handleStateChanged() e = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method

.method private handleVpnClear()V
    .locals 2

    .prologue
    .line 200
    invoke-static {}, Lcom/android/server/net/LockdownVpnTracker;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    const-string v1, "LOCKDOWN_VPN"

    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->delete(Ljava/lang/String;)Z

    .line 205
    :goto_0
    return-void

    .line 203
    :cond_0
    invoke-direct {p0}, Lcom/android/server/net/LockdownVpnTracker;->updateLockdownVpn()V

    goto :goto_0
.end method

.method private handleVpnFailed()V
    .locals 1

    .prologue
    .line 208
    invoke-static {}, Lcom/android/server/net/LockdownVpnTracker;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    invoke-direct {p0}, Lcom/android/server/net/LockdownVpnTracker;->handleStateChangedLocked()V

    .line 213
    :goto_0
    return-void

    .line 211
    :cond_0
    invoke-direct {p0}, Lcom/android/server/net/LockdownVpnTracker;->updateLockdownVpn()V

    goto :goto_0
.end method

.method private hideNotification()V
    .locals 3

    .prologue
    .line 511
    iget-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    const-string v1, "LockdownVpnTracker"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 512
    return-void
.end method

.method private initLocked()V
    .locals 7

    .prologue
    .line 334
    const-string v3, "LockdownVpnTracker"

    const-string v4, "initLocked()"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-object v3, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/connectivity/Vpn;->setEnableTeardown(Z)V

    .line 338
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.android.server.action.LOCKDOWN_RESET"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 339
    .local v2, "resetFilter":Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/net/LockdownVpnTracker;->mResetReceiver:Landroid/content/BroadcastReceiver;

    const-string v5, "android.permission.CONNECTIVITY_INTERNAL"

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 348
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 349
    .local v1, "keystoreChangedFilter":Landroid/content/IntentFilter;
    const-string v3, "lenovo.com.android.server.connectivity.Vpn.action.VPN_CLEAR"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 350
    const-string v3, "lenovo.android.security.KeyStore.action.KEYSTORE_CHANGE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 351
    const-string v3, "lenovo.com.android.server.connectivity.Vpn.action.VPN_FAILED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 352
    iget-object v3, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpnStateChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 357
    :try_start_0
    iget-object v3, p0, Lcom/android/server/net/LockdownVpnTracker;->mNetService:Landroid/os/INetworkManagementService;

    iget-object v4, p0, Lcom/android/server/net/LockdownVpnTracker;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v4, v4, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    const/16 v5, 0x1f4

    const/4 v6, 0x1

    invoke-interface {v3, v4, v5, v6}, Landroid/os/INetworkManagementService;->setFirewallEgressDestRule(Ljava/lang/String;IZ)V

    .line 358
    iget-object v3, p0, Lcom/android/server/net/LockdownVpnTracker;->mNetService:Landroid/os/INetworkManagementService;

    iget-object v4, p0, Lcom/android/server/net/LockdownVpnTracker;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v4, v4, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    const/16 v5, 0x1194

    const/4 v6, 0x1

    invoke-interface {v3, v4, v5, v6}, Landroid/os/INetworkManagementService;->setFirewallEgressDestRule(Ljava/lang/String;IZ)V

    .line 359
    iget-object v3, p0, Lcom/android/server/net/LockdownVpnTracker;->mNetService:Landroid/os/INetworkManagementService;

    iget-object v4, p0, Lcom/android/server/net/LockdownVpnTracker;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v4, v4, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    const/16 v5, 0x6a5

    const/4 v6, 0x1

    invoke-interface {v3, v4, v5, v6}, Landroid/os/INetworkManagementService;->setFirewallEgressDestRule(Ljava/lang/String;IZ)V

    .line 363
    iget-object v3, p0, Lcom/android/server/net/LockdownVpnTracker;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget v3, v3, Lcom/android/internal/net/VpnProfile;->type:I

    if-nez v3, :cond_0

    .line 364
    iget-object v3, p0, Lcom/android/server/net/LockdownVpnTracker;->mNetService:Landroid/os/INetworkManagementService;

    iget-object v4, p0, Lcom/android/server/net/LockdownVpnTracker;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v4, v4, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    const/16 v5, 0x6bb

    const/4 v6, 0x1

    invoke-interface {v3, v4, v5, v6}, Landroid/os/INetworkManagementService;->setFirewallEgressDestRule(Ljava/lang/String;IZ)V

    .line 365
    iget-object v3, p0, Lcom/android/server/net/LockdownVpnTracker;->mNetService:Landroid/os/INetworkManagementService;

    const-string v4, "gre"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/os/INetworkManagementService;->setFirewallEgressProtoRule(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 376
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/server/net/LockdownVpnTracker;->mStateLock:Ljava/lang/Object;

    monitor-enter v4

    .line 377
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/net/LockdownVpnTracker;->handleStateChangedLocked()V

    .line 378
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 379
    return-void

    .line 368
    :catch_0
    move-exception v0

    .line 369
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Problem setting firewall rules"

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 371
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 372
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v3, "LockdownVpnTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleStateChanged() e = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 378
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method public static isEnabled()Z
    .locals 2

    .prologue
    .line 99
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    const-string v1, "LOCKDOWN_VPN"

    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isFileUsable()Z
    .locals 2

    .prologue
    .line 104
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    const-string v1, "LOCKDOWN_VPN"

    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setFirewallEgressSourceRule(Landroid/net/LinkAddress;Z)V
    .locals 2
    .param p1, "address"    # Landroid/net/LinkAddress;
    .param p2, "allow"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 465
    invoke-virtual {p1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 466
    .local v0, "addrString":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mNetService:Landroid/os/INetworkManagementService;

    invoke-interface {v1, v0, p2}, Landroid/os/INetworkManagementService;->setFirewallEgressSourceRule(Ljava/lang/String;Z)V

    .line 467
    return-void
.end method

.method private showNotification(II)V
    .locals 5
    .param p1, "titleRes"    # I
    .param p2, "iconRes"    # I

    .prologue
    .line 494
    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    const v3, 0x104055c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mConfigIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    const v2, 0x10803f5

    iget-object v3, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    const v4, 0x104055f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/net/LockdownVpnTracker;->mResetIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1060059

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 507
    .local v0, "builder":Landroid/app/Notification$Builder;
    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v1

    const-string v2, "LockdownVpnTracker"

    const/4 v3, 0x0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 508
    return-void
.end method

.method private shutdownLocked()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 388
    const-string v1, "LockdownVpnTracker"

    const-string v2, "shutdownLocked()"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedEgressIface:Ljava/lang/String;

    .line 391
    iput v3, p0, Lcom/android/server/net/LockdownVpnTracker;->mErrorCount:I

    .line 393
    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v1}, Lcom/android/server/connectivity/Vpn;->stopLegacyVpnPrivileged()V

    .line 395
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mNetService:Landroid/os/INetworkManagementService;

    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v2, v2, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    const/16 v3, 0x1f4

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/os/INetworkManagementService;->setFirewallEgressDestRule(Ljava/lang/String;IZ)V

    .line 396
    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mNetService:Landroid/os/INetworkManagementService;

    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v2, v2, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    const/16 v3, 0x1194

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/os/INetworkManagementService;->setFirewallEgressDestRule(Ljava/lang/String;IZ)V

    .line 397
    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mNetService:Landroid/os/INetworkManagementService;

    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v2, v2, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    const/16 v3, 0x6a5

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/os/INetworkManagementService;->setFirewallEgressDestRule(Ljava/lang/String;IZ)V

    .line 400
    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget v1, v1, Lcom/android/internal/net/VpnProfile;->type:I

    if-nez v1, :cond_0

    .line 401
    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mNetService:Landroid/os/INetworkManagementService;

    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v2, v2, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    const/16 v3, 0x6bb

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/os/INetworkManagementService;->setFirewallEgressDestRule(Ljava/lang/String;IZ)V

    .line 402
    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mNetService:Landroid/os/INetworkManagementService;

    const-string v2, "gre"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/INetworkManagementService;->setFirewallEgressProtoRule(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 412
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/server/net/LockdownVpnTracker;->clearSourceRulesLocked()V

    .line 413
    invoke-direct {p0}, Lcom/android/server/net/LockdownVpnTracker;->hideNotification()V

    .line 415
    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mResetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 421
    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpnStateChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 423
    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/Vpn;->setEnableTeardown(Z)V

    .line 424
    return-void

    .line 405
    :catch_0
    move-exception v0

    .line 406
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Problem setting firewall rules"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 408
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 409
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "LockdownVpnTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleStateChanged() e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateLockdownVpn()V
    .locals 4

    .prologue
    .line 192
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mConnService:Lcom/android/server/ConnectivityService;

    invoke-virtual {v1}, Lcom/android/server/ConnectivityService;->updateLockdownVpn()Z

    .line 193
    const-string v1, "LockdownVpnTracker"

    const-string v2, "updateLockdownVpn()"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :goto_0
    return-void

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "LockdownVpnTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateLockdownVpn() e -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public augmentNetworkInfo(Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .locals 5
    .param p1, "info"    # Landroid/net/NetworkInfo;

    .prologue
    .line 485
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 486
    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v2}, Lcom/android/server/connectivity/Vpn;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 487
    .local v1, "vpnInfo":Landroid/net/NetworkInfo;
    new-instance v0, Landroid/net/NetworkInfo;

    invoke-direct {v0, p1}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    .line 488
    .end local p1    # "info":Landroid/net/NetworkInfo;
    .local v0, "info":Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v0

    .line 490
    .end local v0    # "info":Landroid/net/NetworkInfo;
    .end local v1    # "vpnInfo":Landroid/net/NetworkInfo;
    .restart local p1    # "info":Landroid/net/NetworkInfo;
    :cond_0
    return-object p1
.end method

.method public init()V
    .locals 2

    .prologue
    .line 328
    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 329
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/net/LockdownVpnTracker;->initLocked()V

    .line 330
    monitor-exit v1

    .line 331
    return-void

    .line 330
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onNetworkInfoChanged()V
    .locals 2

    .prologue
    .line 470
    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 471
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/net/LockdownVpnTracker;->handleStateChangedLocked()V

    .line 472
    monitor-exit v1

    .line 473
    return-void

    .line 472
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onVpnStateChanged(Landroid/net/NetworkInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/net/NetworkInfo;

    .prologue
    .line 476
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v0, v1, :cond_0

    .line 477
    iget v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mErrorCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mErrorCount:I

    .line 479
    :cond_0
    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 480
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/net/LockdownVpnTracker;->handleStateChangedLocked()V

    .line 481
    monitor-exit v1

    .line 482
    return-void

    .line 481
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 427
    const-string v0, "LockdownVpnTracker"

    const-string v1, "reset()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 430
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/net/LockdownVpnTracker;->shutdownLocked()V

    .line 431
    invoke-direct {p0}, Lcom/android/server/net/LockdownVpnTracker;->initLocked()V

    .line 432
    invoke-direct {p0}, Lcom/android/server/net/LockdownVpnTracker;->handleStateChangedLocked()V

    .line 433
    monitor-exit v1

    .line 434
    return-void

    .line 433
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public shutdown()V
    .locals 2

    .prologue
    .line 382
    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 383
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/net/LockdownVpnTracker;->shutdownLocked()V

    .line 384
    monitor-exit v1

    .line 385
    return-void

    .line 384
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
