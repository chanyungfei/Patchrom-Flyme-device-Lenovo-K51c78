.class public Lcom/android/server/net/NetworkStatsService;
.super Landroid/net/INetworkStatsService$Stub;
.source "NetworkStatsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;,
        Lcom/android/server/net/NetworkStatsService$DropBoxNonMonotonicObserver;,
        Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;
    }
.end annotation


# static fields
.field public static final ACTION_NETWORK_STATS_POLL:Ljava/lang/String; = "com.android.server.action.NETWORK_STATS_POLL"

.field public static final ACTION_NETWORK_STATS_UPDATED:Ljava/lang/String; = "com.android.server.action.NETWORK_STATS_UPDATED"

.field private static final FLAG_PERSIST_ALL:I = 0x3

.field private static final FLAG_PERSIST_FORCE:I = 0x100

.field private static final FLAG_PERSIST_NETWORK:I = 0x1

.field private static final FLAG_PERSIST_UID:I = 0x2

.field private static final LOGV:Z = true

.field private static final MSG_PERFORM_POLL:I = 0x1

.field private static final MSG_REGISTER_GLOBAL_ALERT:I = 0x3

.field private static final MSG_UPDATE_IFACES:I = 0x2

.field private static final PREFIX_DEV:Ljava/lang/String; = "dev"

.field private static final PREFIX_UID:Ljava/lang/String; = "uid"

.field private static final PREFIX_UID_TAG:Ljava/lang/String; = "uid_tag"

.field private static final PREFIX_XT:Ljava/lang/String; = "xt"

.field private static final TAG:Ljava/lang/String; = "NetworkStats"

.field private static final TAG_NETSTATS_ERROR:Ljava/lang/String; = "netstats_error"

.field public static USE_TRUESTED_TIME:Z


# instance fields
.field private mActiveIface:Ljava/lang/String;

.field private final mActiveIfaces:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/net/NetworkIdentitySet;",
            ">;"
        }
    .end annotation
.end field

.field private mActiveUidCounterSet:Landroid/util/SparseIntArray;

.field private final mActiveUidIfaces:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/net/NetworkIdentitySet;",
            ">;"
        }
    .end annotation
.end field

.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private mAlertObserver:Landroid/net/INetworkManagementEventObserver;

.field private final mBaseDir:Ljava/io/File;

.field private mConnManager:Landroid/net/IConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

.field private mGlobalAlertBytes:J

.field private final mHandler:Landroid/os/Handler;

.field private mHandlerCallback:Landroid/os/Handler$Callback;

.field private mIgnoreAlert:Z

.field private mIgnoreAlertReceiver:Landroid/content/BroadcastReceiver;

.field private mMobileIfaces:[Ljava/lang/String;

.field private final mNetworkManager:Landroid/os/INetworkManagementService;

.field private final mNonMonotonicObserver:Lcom/android/server/net/NetworkStatsService$DropBoxNonMonotonicObserver;

.field private mPersistThreshold:J

.field private mPollIntent:Landroid/app/PendingIntent;

.field private mPollReceiver:Landroid/content/BroadcastReceiver;

.field private mRemovedReceiver:Landroid/content/BroadcastReceiver;

.field private final mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

.field private mShutdownReceiver:Landroid/content/BroadcastReceiver;

.field private final mStatsLock:Ljava/lang/Object;

.field private final mSystemDir:Ljava/io/File;

.field private mSystemReady:Z

.field private final mTeleManager:Landroid/telephony/TelephonyManager;

.field private mTetherReceiver:Landroid/content/BroadcastReceiver;

.field private final mTime:Landroid/util/TrustedTime;

.field private mUidOperations:Landroid/net/NetworkStats;

.field private mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

.field private mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

.field private mUserReceiver:Landroid/content/BroadcastReceiver;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

.field private mXtStatsCached:Lcom/android/server/net/NetworkStatsCollection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/net/NetworkStatsService;->USE_TRUESTED_TIME:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "networkManager"    # Landroid/os/INetworkManagementService;
    .param p3, "alarmManager"    # Landroid/app/IAlarmManager;

    .prologue
    .line 262
    invoke-static {p1}, Landroid/util/NtpTrustedTime;->getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;

    move-result-object v4

    invoke-static {}, Lcom/android/server/net/NetworkStatsService;->getDefaultSystemDir()Ljava/io/File;

    move-result-object v5

    new-instance v6, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;

    invoke-direct {v6, p1}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;-><init>(Landroid/content/Context;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;Landroid/util/TrustedTime;Ljava/io/File;Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;)V

    .line 264
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;Landroid/util/TrustedTime;Ljava/io/File;Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "networkManager"    # Landroid/os/INetworkManagementService;
    .param p3, "alarmManager"    # Landroid/app/IAlarmManager;
    .param p4, "time"    # Landroid/util/TrustedTime;
    .param p5, "systemDir"    # Ljava/io/File;
    .param p6, "settings"    # Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    .prologue
    const/4 v6, 0x0

    .line 272
    invoke-direct {p0}, Landroid/net/INetworkStatsService$Stub;-><init>()V

    .line 223
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    .line 226
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Landroid/util/ArrayMap;

    .line 228
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mActiveUidIfaces:Landroid/util/ArrayMap;

    .line 232
    new-array v2, v6, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mMobileIfaces:[Ljava/lang/String;

    .line 234
    new-instance v2, Lcom/android/server/net/NetworkStatsService$DropBoxNonMonotonicObserver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/net/NetworkStatsService$DropBoxNonMonotonicObserver;-><init>(Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkStatsService$1;)V

    iput-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mNonMonotonicObserver:Lcom/android/server/net/NetworkStatsService$DropBoxNonMonotonicObserver;

    .line 246
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mActiveUidCounterSet:Landroid/util/SparseIntArray;

    .line 249
    new-instance v2, Landroid/net/NetworkStats;

    const-wide/16 v4, 0x0

    const/16 v3, 0xa

    invoke-direct {v2, v4, v5, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    iput-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mUidOperations:Landroid/net/NetworkStats;

    .line 254
    const-wide/32 v2, 0x200000

    iput-wide v2, p0, Lcom/android/server/net/NetworkStatsService;->mPersistThreshold:J

    .line 258
    iput-boolean v6, p0, Lcom/android/server/net/NetworkStatsService;->mIgnoreAlert:Z

    .line 767
    new-instance v2, Lcom/android/server/net/NetworkStatsService$2;

    invoke-direct {v2, p0}, Lcom/android/server/net/NetworkStatsService$2;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    iput-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mTetherReceiver:Landroid/content/BroadcastReceiver;

    .line 776
    new-instance v2, Lcom/android/server/net/NetworkStatsService$3;

    invoke-direct {v2, p0}, Lcom/android/server/net/NetworkStatsService$3;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    iput-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mPollReceiver:Landroid/content/BroadcastReceiver;

    .line 788
    new-instance v2, Lcom/android/server/net/NetworkStatsService$4;

    invoke-direct {v2, p0}, Lcom/android/server/net/NetworkStatsService$4;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    iput-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mRemovedReceiver:Landroid/content/BroadcastReceiver;

    .line 808
    new-instance v2, Lcom/android/server/net/NetworkStatsService$5;

    invoke-direct {v2, p0}, Lcom/android/server/net/NetworkStatsService$5;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    iput-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    .line 829
    new-instance v2, Lcom/android/server/net/NetworkStatsService$6;

    invoke-direct {v2, p0}, Lcom/android/server/net/NetworkStatsService$6;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    iput-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mIgnoreAlertReceiver:Landroid/content/BroadcastReceiver;

    .line 837
    new-instance v2, Lcom/android/server/net/NetworkStatsService$7;

    invoke-direct {v2, p0}, Lcom/android/server/net/NetworkStatsService$7;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    iput-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    .line 850
    new-instance v2, Lcom/android/server/net/NetworkStatsService$8;

    invoke-direct {v2, p0}, Lcom/android/server/net/NetworkStatsService$8;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    iput-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mAlertObserver:Landroid/net/INetworkManagementEventObserver;

    .line 1301
    new-instance v2, Lcom/android/server/net/NetworkStatsService$9;

    invoke-direct {v2, p0}, Lcom/android/server/net/NetworkStatsService$9;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    iput-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mHandlerCallback:Landroid/os/Handler$Callback;

    .line 273
    const-string v2, "missing Context"

    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    iput-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    .line 274
    const-string v2, "missing INetworkManagementService"

    invoke-static {p2, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/INetworkManagementService;

    iput-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    .line 275
    const-string v2, "missing TrustedTime"

    invoke-static {p4, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/TrustedTime;

    iput-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;

    .line 276
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const-string v3, "missing TelephonyManager"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mTeleManager:Landroid/telephony/TelephonyManager;

    .line 277
    const-string v2, "missing NetworkStatsSettings"

    invoke-static {p6, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    iput-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    .line 278
    const-string v2, "alarm"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    iput-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 280
    const-string v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 282
    .local v0, "powerManager":Landroid/os/PowerManager;
    const/4 v2, 0x1

    const-string v3, "NetworkStats"

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 284
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "NetworkStats"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 285
    .local v1, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 286
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/net/NetworkStatsService;->mHandlerCallback:Landroid/os/Handler$Callback;

    invoke-direct {v2, v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mHandler:Landroid/os/Handler;

    .line 288
    invoke-static {p5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    iput-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mSystemDir:Ljava/io/File;

    .line 289
    new-instance v2, Ljava/io/File;

    const-string v3, "netstats"

    invoke-direct {v2, p5, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mBaseDir:Ljava/io/File;

    .line 290
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mBaseDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 292
    iput-boolean v6, p0, Lcom/android/server/net/NetworkStatsService;->mIgnoreAlert:Z

    .line 293
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/net/NetworkStatsService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsService;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/net/NetworkStatsService;[I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsService;
    .param p1, "x1"    # [I

    .prologue
    .line 140
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkStatsService;->removeUidsLocked([I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/net/NetworkStatsService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsService;
    .param p1, "x1"    # I

    .prologue
    .line 140
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkStatsService;->removeUserLocked(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/net/NetworkStatsService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsService;

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/android/server/net/NetworkStatsService;->mIgnoreAlert:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/server/net/NetworkStatsService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsService;
    .param p1, "x1"    # Z

    .prologue
    .line 140
    iput-boolean p1, p0, Lcom/android/server/net/NetworkStatsService;->mIgnoreAlert:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/server/net/NetworkStatsService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsService;

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->shutdownLocked()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/net/NetworkStatsService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsService;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/net/NetworkStatsService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsService;

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->updateIfaces()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/net/NetworkStatsService;)Lcom/android/server/net/NetworkStatsRecorder;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsService;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/net/NetworkStatsService;)Lcom/android/server/net/NetworkStatsRecorder;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsService;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/net/NetworkStatsService;Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;
    .locals 2
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsService;
    .param p1, "x1"    # Landroid/net/NetworkTemplate;
    .param p2, "x2"    # J
    .param p4, "x3"    # J

    .prologue
    .line 140
    invoke-direct/range {p0 .. p5}, Lcom/android/server/net/NetworkStatsService;->internalGetSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/net/NetworkStatsService;Landroid/net/NetworkTemplate;I)Landroid/net/NetworkStatsHistory;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsService;
    .param p1, "x1"    # Landroid/net/NetworkTemplate;
    .param p2, "x2"    # I

    .prologue
    .line 140
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkStatsService;->internalGetHistoryForNetwork(Landroid/net/NetworkTemplate;I)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/net/NetworkStatsService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsService;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/net/NetworkStatsService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsService;
    .param p1, "x1"    # I

    .prologue
    .line 140
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkStatsService;->performPoll(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/net/NetworkStatsService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsService;

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->registerGlobalAlert()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/net/NetworkStatsService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsService;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method private assertBandwidthControlEnabled()V
    .locals 2

    .prologue
    .line 1326
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->isBandwidthControlEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1327
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bandwidth module disabled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1329
    :cond_0
    return-void
.end method

.method private bootstrapStatsLocked()V
    .locals 9

    .prologue
    .line 982
    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v6}, Landroid/util/TrustedTime;->hasCache()Z

    move-result v6

    if-eqz v6, :cond_0

    sget-boolean v6, Lcom/android/server/net/NetworkStatsService;->USE_TRUESTED_TIME:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v6}, Landroid/util/TrustedTime;->currentTimeMillis()J

    move-result-wide v0

    .line 988
    .local v0, "currentTime":J
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->getNetworkStatsUidDetail()Landroid/net/NetworkStats;

    move-result-object v4

    .line 989
    .local v4, "uidSnapshot":Landroid/net/NetworkStats;
    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v6}, Landroid/os/INetworkManagementService;->getNetworkStatsSummaryXt()Landroid/net/NetworkStats;

    move-result-object v5

    .line 990
    .local v5, "xtSnapshot":Landroid/net/NetworkStats;
    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v6}, Landroid/os/INetworkManagementService;->getNetworkStatsSummaryDev()Landroid/net/NetworkStats;

    move-result-object v2

    .line 992
    .local v2, "devSnapshot":Landroid/net/NetworkStats;
    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    iget-object v7, p0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Landroid/util/ArrayMap;

    invoke-virtual {v6, v2, v7, v0, v1}, Lcom/android/server/net/NetworkStatsRecorder;->recordSnapshotLocked(Landroid/net/NetworkStats;Ljava/util/Map;J)V

    .line 993
    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    iget-object v7, p0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5, v7, v0, v1}, Lcom/android/server/net/NetworkStatsRecorder;->recordSnapshotLocked(Landroid/net/NetworkStats;Ljava/util/Map;J)V

    .line 994
    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    iget-object v7, p0, Lcom/android/server/net/NetworkStatsService;->mActiveUidIfaces:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4, v7, v0, v1}, Lcom/android/server/net/NetworkStatsRecorder;->recordSnapshotLocked(Landroid/net/NetworkStats;Ljava/util/Map;J)V

    .line 995
    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    iget-object v7, p0, Lcom/android/server/net/NetworkStatsService;->mActiveUidIfaces:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4, v7, v0, v1}, Lcom/android/server/net/NetworkStatsRecorder;->recordSnapshotLocked(Landroid/net/NetworkStats;Ljava/util/Map;J)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1002
    .end local v2    # "devSnapshot":Landroid/net/NetworkStats;
    .end local v4    # "uidSnapshot":Landroid/net/NetworkStats;
    .end local v5    # "xtSnapshot":Landroid/net/NetworkStats;
    :goto_1
    return-void

    .line 982
    .end local v0    # "currentTime":J
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_0

    .line 997
    .restart local v0    # "currentTime":J
    :catch_0
    move-exception v3

    .line 998
    .local v3, "e":Ljava/lang/IllegalStateException;
    const-string v6, "NetworkStats"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "problem reading network stats: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 999
    .end local v3    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v6

    goto :goto_1
.end method

.method private buildRecorder(Ljava/lang/String;Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;Z)Lcom/android/server/net/NetworkStatsRecorder;
    .locals 9
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "config"    # Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;
    .param p3, "includeTags"    # Z

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const-string v1, "dropbox"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/DropBoxManager;

    .line 368
    .local v8, "dropBox":Landroid/os/DropBoxManager;
    new-instance v0, Lcom/android/server/net/NetworkStatsRecorder;

    new-instance v1, Lcom/android/internal/util/FileRotator;

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mBaseDir:Ljava/io/File;

    iget-wide v4, p2, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;->rotateAgeMillis:J

    iget-wide v6, p2, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;->deleteAgeMillis:J

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/util/FileRotator;-><init>(Ljava/io/File;Ljava/lang/String;JJ)V

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mNonMonotonicObserver:Lcom/android/server/net/NetworkStatsService$DropBoxNonMonotonicObserver;

    iget-wide v5, p2, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;->bucketDuration:J

    move-object v3, v8

    move-object v4, p1

    move v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/server/net/NetworkStatsRecorder;-><init>(Lcom/android/internal/util/FileRotator;Landroid/net/NetworkStats$NonMonotonicObserver;Landroid/os/DropBoxManager;Ljava/lang/String;JZ)V

    return-object v0
.end method

.method private static findOrCreateNetworkIdentitySet(Landroid/util/ArrayMap;Ljava/lang/Object;)Lcom/android/server/net/NetworkIdentitySet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/ArrayMap",
            "<TK;",
            "Lcom/android/server/net/NetworkIdentitySet;",
            ">;TK;)",
            "Lcom/android/server/net/NetworkIdentitySet;"
        }
    .end annotation

    .prologue
    .line 968
    .local p0, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;Lcom/android/server/net/NetworkIdentitySet;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkIdentitySet;

    .line 969
    .local v0, "ident":Lcom/android/server/net/NetworkIdentitySet;
    if-nez v0, :cond_0

    .line 970
    new-instance v0, Lcom/android/server/net/NetworkIdentitySet;

    .end local v0    # "ident":Lcom/android/server/net/NetworkIdentitySet;
    invoke-direct {v0}, Lcom/android/server/net/NetworkIdentitySet;-><init>()V

    .line 971
    .restart local v0    # "ident":Lcom/android/server/net/NetworkIdentitySet;
    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 973
    :cond_0
    return-object v0
.end method

.method private static getDefaultSystemDir()Ljava/io/File;
    .locals 3

    .prologue
    .line 267
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getNetworkStatsTethering()Landroid/net/NetworkStats;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1289
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v1}, Landroid/os/INetworkManagementService;->getNetworkStatsTethering()Landroid/net/NetworkStats;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1297
    :goto_0
    return-object v1

    .line 1290
    :catch_0
    move-exception v0

    .line 1296
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "NetworkStats"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "problem reading network stats"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    new-instance v1, Landroid/net/NetworkStats;

    const-wide/16 v2, 0x0

    const/16 v4, 0xa

    invoke-direct {v1, v2, v3, v4}, Landroid/net/NetworkStats;-><init>(JI)V

    goto :goto_0
.end method

.method private getNetworkStatsUidDetail()Landroid/net/NetworkStats;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1273
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    const/4 v3, -0x1

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->getNetworkStatsUidDetail(I)Landroid/net/NetworkStats;

    move-result-object v1

    .line 1276
    .local v1, "uidSnapshot":Landroid/net/NetworkStats;
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->getNetworkStatsTethering()Landroid/net/NetworkStats;

    move-result-object v0

    .line 1277
    .local v0, "tetherSnapshot":Landroid/net/NetworkStats;
    invoke-virtual {v1, v0}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V

    .line 1278
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mUidOperations:Landroid/net/NetworkStats;

    invoke-virtual {v1, v2}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V

    .line 1280
    return-object v1
.end method

.method private internalGetHistoryForNetwork(Landroid/net/NetworkTemplate;I)Landroid/net/NetworkStatsHistory;
    .locals 6
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "fields"    # I

    .prologue
    const/4 v2, -0x1

    .line 609
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mXtStatsCached:Lcom/android/server/net/NetworkStatsCollection;

    const/4 v4, 0x0

    move-object v1, p1

    move v3, v2

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsCollection;->getHistory(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    return-object v0
.end method

.method private internalGetSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;
    .locals 6
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "start"    # J
    .param p4, "end"    # J

    .prologue
    .line 599
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mXtStatsCached:Lcom/android/server/net/NetworkStatsCollection;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsCollection;->getSummary(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method private isBandwidthControlEnabled()Z
    .locals 4

    .prologue
    .line 1332
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1334
    .local v2, "token":J
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v1}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 1339
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    return v1

    .line 1335
    :catch_0
    move-exception v0

    .line 1337
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    .line 1339
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public static isValidSubscriptionId(J)Z
    .locals 2
    .param p0, "subId"    # J

    .prologue
    .line 588
    const-wide/16 v0, -0x1

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeUpgradeLegacyStatsLocked()V
    .locals 4

    .prologue
    .line 416
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mSystemDir:Ljava/io/File;

    const-string v3, "netstats.bin"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 417
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 418
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v2, v1}, Lcom/android/server/net/NetworkStatsRecorder;->importLegacyNetworkLocked(Ljava/io/File;)V

    .line 419
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 422
    :cond_0
    new-instance v1, Ljava/io/File;

    .end local v1    # "file":Ljava/io/File;
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mSystemDir:Ljava/io/File;

    const-string v3, "netstats_xt.bin"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 423
    .restart local v1    # "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 424
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 427
    :cond_1
    new-instance v1, Ljava/io/File;

    .end local v1    # "file":Ljava/io/File;
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mSystemDir:Ljava/io/File;

    const-string v3, "netstats_uid.bin"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 428
    .restart local v1    # "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 429
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v2, v1}, Lcom/android/server/net/NetworkStatsRecorder;->importLegacyUidLocked(Ljava/io/File;)V

    .line 430
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v2, v1}, Lcom/android/server/net/NetworkStatsRecorder;->importLegacyUidLocked(Ljava/io/File;)V

    .line 431
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 439
    .end local v1    # "file":Ljava/io/File;
    :cond_2
    :goto_0
    return-void

    .line 433
    :catch_0
    move-exception v0

    .line 435
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "NetworkStats"

    const-string v3, "problem during legacy upgrade"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 436
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 437
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    const-string v2, "NetworkStats"

    const-string v3, "problem during legacy upgrade"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private performPoll(I)V
    .locals 4
    .param p1, "flags"    # I

    .prologue
    .line 1007
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v0}, Landroid/util/TrustedTime;->getCacheAge()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    invoke-interface {v2}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getTimeCacheMaxAge()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    sget-boolean v0, Lcom/android/server/net/NetworkStatsService;->USE_TRUESTED_TIME:Z

    if-eqz v0, :cond_0

    .line 1008
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v0}, Landroid/util/TrustedTime;->forceRefresh()Z

    .line 1011
    :cond_0
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1012
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1015
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkStatsService;->performPollLocked(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1017
    :try_start_2
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1019
    monitor-exit v1

    .line 1020
    return-void

    .line 1017
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0

    .line 1019
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method private performPollLocked(I)V
    .locals 21
    .param p1, "flags"    # I

    .prologue
    .line 1027
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/net/NetworkStatsService;->mSystemReady:Z

    move/from16 v18, v0

    if-nez v18, :cond_0

    .line 1093
    :goto_0
    return-void

    .line 1028
    :cond_0
    const-string v18, "NetworkStats"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "performPollLocked(flags=0x"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ")"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    .line 1032
    .local v14, "startRealtime":J
    and-int/lit8 v18, p1, 0x1

    if-eqz v18, :cond_3

    const/4 v11, 0x1

    .line 1033
    .local v11, "persistNetwork":Z
    :goto_1
    and-int/lit8 v18, p1, 0x2

    if-eqz v18, :cond_4

    const/4 v12, 0x1

    .line 1034
    .local v12, "persistUid":Z
    :goto_2
    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x100

    move/from16 v18, v0

    if-eqz v18, :cond_5

    const/4 v10, 0x1

    .line 1038
    .local v10, "persistForce":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Landroid/util/TrustedTime;->hasCache()Z

    move-result v18

    if-eqz v18, :cond_6

    sget-boolean v18, Lcom/android/server/net/NetworkStatsService;->USE_TRUESTED_TIME:Z

    if-eqz v18, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Landroid/util/TrustedTime;->currentTimeMillis()J

    move-result-wide v4

    .line 1044
    .local v4, "currentTime":J
    :goto_4
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkStatsService;->getNetworkStatsUidDetail()Landroid/net/NetworkStats;

    move-result-object v13

    .line 1045
    .local v13, "uidSnapshot":Landroid/net/NetworkStats;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Landroid/os/INetworkManagementService;->getNetworkStatsSummaryXt()Landroid/net/NetworkStats;

    move-result-object v17

    .line 1046
    .local v17, "xtSnapshot":Landroid/net/NetworkStats;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Landroid/os/INetworkManagementService;->getNetworkStatsSummaryDev()Landroid/net/NetworkStats;

    move-result-object v6

    .line 1048
    .local v6, "devSnapshot":Landroid/net/NetworkStats;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Landroid/util/ArrayMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v6, v1, v4, v5}, Lcom/android/server/net/NetworkStatsRecorder;->recordSnapshotLocked(Landroid/net/NetworkStats;Ljava/util/Map;J)V

    .line 1049
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Landroid/util/ArrayMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/android/server/net/NetworkStatsRecorder;->recordSnapshotLocked(Landroid/net/NetworkStats;Ljava/util/Map;J)V

    .line 1050
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mActiveUidIfaces:Landroid/util/ArrayMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v13, v1, v4, v5}, Lcom/android/server/net/NetworkStatsRecorder;->recordSnapshotLocked(Landroid/net/NetworkStats;Ljava/util/Map;J)V

    .line 1051
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mActiveUidIfaces:Landroid/util/ArrayMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v13, v1, v4, v5}, Lcom/android/server/net/NetworkStatsRecorder;->recordSnapshotLocked(Landroid/net/NetworkStats;Ljava/util/Map;J)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1062
    if-eqz v10, :cond_7

    .line 1063
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    .line 1064
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    .line 1065
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    .line 1066
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    .line 1079
    :cond_1
    :goto_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    sub-long v8, v18, v14

    .line 1080
    .local v8, "duration":J
    const-string v18, "NetworkStats"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "performPollLocked() took "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "ms"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getSampleEnabled()Z

    move-result v18

    if-eqz v18, :cond_2

    .line 1085
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkStatsService;->performSampleLocked()V

    .line 1089
    :cond_2
    new-instance v16, Landroid/content/Intent;

    const-string v18, "com.android.server.action.NETWORK_STATS_UPDATED"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1090
    .local v16, "updatedIntent":Landroid/content/Intent;
    const/high16 v18, 0x40000000    # 2.0f

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1091
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    sget-object v19, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v20, "android.permission.READ_NETWORK_USAGE_HISTORY"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1032
    .end local v4    # "currentTime":J
    .end local v6    # "devSnapshot":Landroid/net/NetworkStats;
    .end local v8    # "duration":J
    .end local v10    # "persistForce":Z
    .end local v11    # "persistNetwork":Z
    .end local v12    # "persistUid":Z
    .end local v13    # "uidSnapshot":Landroid/net/NetworkStats;
    .end local v16    # "updatedIntent":Landroid/content/Intent;
    .end local v17    # "xtSnapshot":Landroid/net/NetworkStats;
    :cond_3
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 1033
    .restart local v11    # "persistNetwork":Z
    :cond_4
    const/4 v12, 0x0

    goto/16 :goto_2

    .line 1034
    .restart local v12    # "persistUid":Z
    :cond_5
    const/4 v10, 0x0

    goto/16 :goto_3

    .line 1038
    .restart local v10    # "persistForce":Z
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    goto/16 :goto_4

    .line 1053
    .restart local v4    # "currentTime":J
    :catch_0
    move-exception v7

    .line 1054
    .local v7, "e":Ljava/lang/IllegalStateException;
    const-string v18, "NetworkStats"

    const-string v19, "problem reading network stats"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1056
    .end local v7    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v7

    .line 1058
    .local v7, "e":Landroid/os/RemoteException;
    goto/16 :goto_0

    .line 1068
    .end local v7    # "e":Landroid/os/RemoteException;
    .restart local v6    # "devSnapshot":Landroid/net/NetworkStats;
    .restart local v13    # "uidSnapshot":Landroid/net/NetworkStats;
    .restart local v17    # "xtSnapshot":Landroid/net/NetworkStats;
    :cond_7
    if-eqz v11, :cond_8

    .line 1069
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Lcom/android/server/net/NetworkStatsRecorder;->maybePersistLocked(J)V

    .line 1070
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Lcom/android/server/net/NetworkStatsRecorder;->maybePersistLocked(J)V

    .line 1072
    :cond_8
    if-eqz v12, :cond_1

    .line 1073
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Lcom/android/server/net/NetworkStatsRecorder;->maybePersistLocked(J)V

    .line 1074
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Lcom/android/server/net/NetworkStatsRecorder;->maybePersistLocked(J)V

    goto/16 :goto_5
.end method

.method private performSampleLocked()V
    .locals 32

    .prologue
    .line 1101
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v2}, Landroid/util/TrustedTime;->hasCache()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/android/server/net/NetworkStatsService;->USE_TRUESTED_TIME:Z

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v2}, Landroid/util/TrustedTime;->currentTimeMillis()J

    move-result-wide v26

    .line 1109
    .local v26, "trustedTime":J
    :goto_0
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateMobileWildcard()Landroid/net/NetworkTemplate;

    move-result-object v29

    .line 1110
    .local v29, "template":Landroid/net/NetworkTemplate;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Lcom/android/server/net/NetworkStatsRecorder;->getTotalSinceBootLocked(Landroid/net/NetworkTemplate;)Landroid/net/NetworkStats$Entry;

    move-result-object v28

    .line 1111
    .local v28, "devTotal":Landroid/net/NetworkStats$Entry;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Lcom/android/server/net/NetworkStatsRecorder;->getTotalSinceBootLocked(Landroid/net/NetworkTemplate;)Landroid/net/NetworkStats$Entry;

    move-result-object v31

    .line 1112
    .local v31, "xtTotal":Landroid/net/NetworkStats$Entry;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Lcom/android/server/net/NetworkStatsRecorder;->getTotalSinceBootLocked(Landroid/net/NetworkTemplate;)Landroid/net/NetworkStats$Entry;

    move-result-object v30

    .line 1114
    .local v30, "uidTotal":Landroid/net/NetworkStats$Entry;
    move-object/from16 v0, v28

    iget-wide v2, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-object/from16 v0, v28

    iget-wide v4, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    move-object/from16 v0, v28

    iget-wide v6, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-object/from16 v0, v28

    iget-wide v8, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    move-object/from16 v0, v31

    iget-wide v10, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-object/from16 v0, v31

    iget-wide v12, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    move-object/from16 v0, v31

    iget-wide v14, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-object/from16 v0, v31

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    move-wide/from16 v16, v0

    move-object/from16 v0, v30

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-wide/from16 v18, v0

    move-object/from16 v0, v30

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v30

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v30

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    move-wide/from16 v24, v0

    invoke-static/range {v2 .. v27}, Lcom/android/server/EventLogTags;->writeNetstatsMobileSample(JJJJJJJJJJJJJ)V

    .line 1121
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v29

    .line 1122
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Lcom/android/server/net/NetworkStatsRecorder;->getTotalSinceBootLocked(Landroid/net/NetworkTemplate;)Landroid/net/NetworkStats$Entry;

    move-result-object v28

    .line 1123
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Lcom/android/server/net/NetworkStatsRecorder;->getTotalSinceBootLocked(Landroid/net/NetworkTemplate;)Landroid/net/NetworkStats$Entry;

    move-result-object v31

    .line 1124
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Lcom/android/server/net/NetworkStatsRecorder;->getTotalSinceBootLocked(Landroid/net/NetworkTemplate;)Landroid/net/NetworkStats$Entry;

    move-result-object v30

    .line 1126
    move-object/from16 v0, v28

    iget-wide v2, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-object/from16 v0, v28

    iget-wide v4, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    move-object/from16 v0, v28

    iget-wide v6, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-object/from16 v0, v28

    iget-wide v8, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    move-object/from16 v0, v31

    iget-wide v10, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-object/from16 v0, v31

    iget-wide v12, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    move-object/from16 v0, v31

    iget-wide v14, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-object/from16 v0, v31

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    move-wide/from16 v16, v0

    move-object/from16 v0, v30

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-wide/from16 v18, v0

    move-object/from16 v0, v30

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v30

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v30

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    move-wide/from16 v24, v0

    invoke-static/range {v2 .. v27}, Lcom/android/server/EventLogTags;->writeNetstatsWifiSample(JJJJJJJJJJJJJ)V

    .line 1131
    return-void

    .line 1101
    .end local v26    # "trustedTime":J
    .end local v28    # "devTotal":Landroid/net/NetworkStats$Entry;
    .end local v29    # "template":Landroid/net/NetworkTemplate;
    .end local v30    # "uidTotal":Landroid/net/NetworkStats$Entry;
    .end local v31    # "xtTotal":Landroid/net/NetworkStats$Entry;
    :cond_0
    const-wide/16 v26, -0x1

    goto/16 :goto_0
.end method

.method private registerGlobalAlert()V
    .locals 4

    .prologue
    .line 465
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsService;->mGlobalAlertBytes:J

    invoke-interface {v1, v2, v3}, Landroid/os/INetworkManagementService;->setGlobalAlert(J)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 471
    :goto_0
    return-void

    .line 466
    :catch_0
    move-exception v0

    .line 467
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "NetworkStats"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "problem registering for global alert: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 468
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private registerPollAlarmLocked()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 446
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mPollIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mPollIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 450
    :cond_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.android.server.action.NETWORK_STATS_POLL"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v5, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mPollIntent:Landroid/app/PendingIntent;

    .line 453
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 454
    .local v2, "currentRealtime":J
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x3

    iget-object v4, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    invoke-interface {v4}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getPollInterval()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mPollIntent:Landroid/app/PendingIntent;

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    .line 456
    return-void
.end method

.method private varargs removeUidsLocked([I)V
    .locals 7
    .param p1, "uids"    # [I

    .prologue
    .line 1137
    const-string v4, "NetworkStats"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removeUidsLocked() for UIDs "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    const/4 v4, 0x3

    invoke-direct {p0, v4}, Lcom/android/server/net/NetworkStatsService;->performPollLocked(I)V

    .line 1142
    iget-object v4, p0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v4, p1}, Lcom/android/server/net/NetworkStatsRecorder;->removeUidsLocked([I)V

    .line 1143
    iget-object v4, p0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v4, p1}, Lcom/android/server/net/NetworkStatsRecorder;->removeUidsLocked([I)V

    .line 1146
    move-object v0, p1

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget v3, v0, v1

    .line 1147
    .local v3, "uid":I
    invoke-static {v3}, Lcom/android/server/NetworkManagementSocketTagger;->resetKernelUidStats(I)V

    .line 1146
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1149
    .end local v3    # "uid":I
    :cond_0
    return-void
.end method

.method private removeUserLocked(I)V
    .locals 8
    .param p1, "userId"    # I

    .prologue
    .line 1155
    const-string v5, "NetworkStats"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "removeUserLocked() for userId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    const/4 v5, 0x0

    new-array v4, v5, [I

    .line 1159
    .local v4, "uids":[I
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/16 v6, 0x2200

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    .line 1161
    .local v1, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 1162
    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p1, v5}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    .line 1163
    .local v3, "uid":I
    invoke-static {v4, v3}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v4

    .line 1164
    goto :goto_0

    .line 1166
    .end local v0    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "uid":I
    :cond_0
    invoke-direct {p0, v4}, Lcom/android/server/net/NetworkStatsService;->removeUidsLocked([I)V

    .line 1167
    return-void
.end method

.method private shutdownLocked()V
    .locals 3

    .prologue
    .line 388
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v2}, Landroid/util/TrustedTime;->hasCache()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/android/server/net/NetworkStatsService;->USE_TRUESTED_TIME:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v2}, Landroid/util/TrustedTime;->currentTimeMillis()J

    move-result-wide v0

    .line 391
    .local v0, "currentTime":J
    :goto_0
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    .line 392
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    .line 393
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    .line 394
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    .line 411
    return-void

    .line 388
    .end local v0    # "currentTime":J
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_0
.end method

.method private updateIfaces()V
    .locals 3

    .prologue
    .line 872
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 873
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 875
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->updateIfacesLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 877
    :try_start_2
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 879
    monitor-exit v1

    .line 880
    return-void

    .line 877
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0

    .line 879
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method private updateIfacesLocked()V
    .locals 23

    .prologue
    .line 889
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/net/NetworkStatsService;->mSystemReady:Z

    move/from16 v20, v0

    if-nez v20, :cond_1

    .line 964
    :cond_0
    :goto_0
    return-void

    .line 890
    :cond_1
    const-string v20, "NetworkStats"

    const-string v21, "updateIfacesLocked()"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/net/NetworkStatsService;->performPollLocked(I)V

    .line 903
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mConnManager:Landroid/net/IConnectivityManager;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/net/IConnectivityManager;->getAllNetworkState()[Landroid/net/NetworkState;

    move-result-object v19

    .line 904
    .local v19, "states":[Landroid/net/NetworkState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mConnManager:Landroid/net/IConnectivityManager;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/net/IConnectivityManager;->getActiveLinkProperties()Landroid/net/LinkProperties;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 910
    .local v2, "activeLink":Landroid/net/LinkProperties;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v20

    :goto_1
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/net/NetworkStatsService;->mActiveIface:Ljava/lang/String;

    .line 913
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Landroid/util/ArrayMap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/util/ArrayMap;->clear()V

    .line 914
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mActiveUidIfaces:Landroid/util/ArrayMap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/util/ArrayMap;->clear()V

    .line 916
    new-instance v14, Landroid/util/ArraySet;

    invoke-direct {v14}, Landroid/util/ArraySet;-><init>()V

    .line 917
    .local v14, "mobileIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object/from16 v3, v19

    .local v3, "arr$":[Landroid/net/NetworkState;
    array-length v13, v3

    .local v13, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    move v8, v7

    .end local v7    # "i$":I
    .local v8, "i$":I
    :goto_2
    if-ge v8, v13, :cond_6

    aget-object v18, v3, v8

    .line 918
    .local v18, "state":Landroid/net/NetworkState;
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v20

    if-eqz v20, :cond_5

    .line 919
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/NetworkInfo;->getType()I

    move-result v20

    invoke-static/range {v20 .. v20}, Landroid/net/ConnectivityManager;->isNetworkTypeMobile(I)Z

    move-result v12

    .line 920
    .local v12, "isMobile":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/net/NetworkIdentity;->buildNetworkIdentity(Landroid/content/Context;Landroid/net/NetworkState;)Landroid/net/NetworkIdentity;

    move-result-object v10

    .line 921
    .local v10, "ident":Landroid/net/NetworkIdentity;
    const-string v20, "NetworkStats"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "NetworkIdentity: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v4

    .line 925
    .local v4, "baseIface":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 926
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Landroid/util/ArrayMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v4}, Lcom/android/server/net/NetworkStatsService;->findOrCreateNetworkIdentitySet(Landroid/util/ArrayMap;Ljava/lang/Object;)Lcom/android/server/net/NetworkIdentitySet;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Lcom/android/server/net/NetworkIdentitySet;->add(Ljava/lang/Object;)Z

    .line 927
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mActiveUidIfaces:Landroid/util/ArrayMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v4}, Lcom/android/server/net/NetworkStatsService;->findOrCreateNetworkIdentitySet(Landroid/util/ArrayMap;Ljava/lang/Object;)Lcom/android/server/net/NetworkIdentitySet;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Lcom/android/server/net/NetworkIdentitySet;->add(Ljava/lang/Object;)Z

    .line 928
    if-eqz v12, :cond_2

    .line 929
    invoke-virtual {v14, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 937
    :cond_2
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/LinkProperties;->getStackedLinks()Ljava/util/List;

    move-result-object v17

    .line 938
    .local v17, "stackedLinks":Ljava/util/List;, "Ljava/util/List<Landroid/net/LinkProperties;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .end local v8    # "i$":I
    .local v7, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/net/LinkProperties;

    .line 939
    .local v16, "stackedLink":Landroid/net/LinkProperties;
    invoke-virtual/range {v16 .. v16}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v15

    .line 940
    .local v15, "stackedIface":Ljava/lang/String;
    if-eqz v15, :cond_3

    .line 941
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mActiveUidIfaces:Landroid/util/ArrayMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v15}, Lcom/android/server/net/NetworkStatsService;->findOrCreateNetworkIdentitySet(Landroid/util/ArrayMap;Ljava/lang/Object;)Lcom/android/server/net/NetworkIdentitySet;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Lcom/android/server/net/NetworkIdentitySet;->add(Ljava/lang/Object;)Z

    .line 942
    if-eqz v12, :cond_3

    .line 943
    invoke-virtual {v14, v15}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 905
    .end local v2    # "activeLink":Landroid/net/LinkProperties;
    .end local v3    # "arr$":[Landroid/net/NetworkState;
    .end local v4    # "baseIface":Ljava/lang/String;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v10    # "ident":Landroid/net/NetworkIdentity;
    .end local v12    # "isMobile":Z
    .end local v13    # "len$":I
    .end local v14    # "mobileIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v15    # "stackedIface":Ljava/lang/String;
    .end local v16    # "stackedLink":Landroid/net/LinkProperties;
    .end local v17    # "stackedLinks":Ljava/util/List;, "Ljava/util/List<Landroid/net/LinkProperties;>;"
    .end local v18    # "state":Landroid/net/NetworkState;
    .end local v19    # "states":[Landroid/net/NetworkState;
    :catch_0
    move-exception v5

    .line 907
    .local v5, "e":Landroid/os/RemoteException;
    goto/16 :goto_0

    .line 910
    .end local v5    # "e":Landroid/os/RemoteException;
    .restart local v2    # "activeLink":Landroid/net/LinkProperties;
    .restart local v19    # "states":[Landroid/net/NetworkState;
    :cond_4
    const/16 v20, 0x0

    goto/16 :goto_1

    .line 917
    .restart local v3    # "arr$":[Landroid/net/NetworkState;
    .restart local v13    # "len$":I
    .restart local v14    # "mobileIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v18    # "state":Landroid/net/NetworkState;
    :cond_5
    add-int/lit8 v7, v8, 0x1

    .local v7, "i$":I
    move v8, v7

    .end local v7    # "i$":I
    .restart local v8    # "i$":I
    goto/16 :goto_2

    .line 950
    .end local v18    # "state":Landroid/net/NetworkState;
    :cond_6
    const/4 v6, 0x0

    .end local v8    # "i$":I
    .local v6, "i":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Landroid/util/ArrayMap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/util/ArrayMap;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v6, v0, :cond_8

    .line 951
    const-string v21, "NetworkStats"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "iface:"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Landroid/util/ArrayMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Landroid/util/ArrayMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/net/NetworkIdentitySet;

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/net/NetworkIdentitySet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/NetworkIdentity;

    .line 953
    .local v9, "id":Landroid/net/NetworkIdentity;
    const-string v20, "NetworkStats"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "ident:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 950
    .end local v9    # "id":Landroid/net/NetworkIdentity;
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 959
    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_8
    invoke-virtual {v14}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7    # "i$":Ljava/util/Iterator;
    :cond_9
    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 960
    .local v11, "iface":Ljava/lang/String;
    if-eqz v11, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mMobileIfaces:[Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v11}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_9

    .line 961
    const-class v20, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mMobileIfaces:[Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v11}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/net/NetworkStatsService;->mMobileIfaces:[Ljava/lang/String;

    goto :goto_6
.end method

.method private updatePersistThresholds()V
    .locals 4

    .prologue
    .line 757
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsService;->mPersistThreshold:J

    invoke-interface {v1, v2, v3}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getDevPersistBytes(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/server/net/NetworkStatsRecorder;->setPersistThreshold(J)V

    .line 758
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsService;->mPersistThreshold:J

    invoke-interface {v1, v2, v3}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getXtPersistBytes(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/server/net/NetworkStatsRecorder;->setPersistThreshold(J)V

    .line 759
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsService;->mPersistThreshold:J

    invoke-interface {v1, v2, v3}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getUidPersistBytes(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/server/net/NetworkStatsRecorder;->setPersistThreshold(J)V

    .line 760
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsService;->mPersistThreshold:J

    invoke-interface {v1, v2, v3}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getUidTagPersistBytes(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/server/net/NetworkStatsRecorder;->setPersistThreshold(J)V

    .line 761
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsService;->mPersistThreshold:J

    invoke-interface {v0, v2, v3}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getGlobalAlertBytes(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsService;->mGlobalAlertBytes:J

    .line 762
    return-void
.end method


# virtual methods
.method public advisePersistThreshold(J)V
    .locals 9
    .param p1, "thresholdBytes"    # J

    .prologue
    .line 722
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_NETWORK_ACCOUNTING"

    const-string v2, "NetworkStats"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->assertBandwidthControlEnabled()V

    .line 726
    const-wide/32 v2, 0x20000

    const-wide/32 v4, 0x200000

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Landroid/util/MathUtils;->constrain(JJJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsService;->mPersistThreshold:J

    .line 728
    const-string v0, "NetworkStats"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "advisePersistThreshold() given "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", clamped to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsService;->mPersistThreshold:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v0}, Landroid/util/TrustedTime;->hasCache()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/server/net/NetworkStatsService;->USE_TRUESTED_TIME:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v0}, Landroid/util/TrustedTime;->currentTimeMillis()J

    move-result-wide v6

    .line 736
    .local v6, "currentTime":J
    :goto_0
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 737
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/net/NetworkStatsService;->mSystemReady:Z

    if-nez v0, :cond_1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 749
    :goto_1
    return-void

    .line 734
    .end local v6    # "currentTime":J
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    goto :goto_0

    .line 739
    .restart local v6    # "currentTime":J
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->updatePersistThresholds()V

    .line 741
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v0, v6, v7}, Lcom/android/server/net/NetworkStatsRecorder;->maybePersistLocked(J)V

    .line 742
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v0, v6, v7}, Lcom/android/server/net/NetworkStatsRecorder;->maybePersistLocked(J)V

    .line 743
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v0, v6, v7}, Lcom/android/server/net/NetworkStatsRecorder;->maybePersistLocked(J)V

    .line 744
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v0, v6, v7}, Lcom/android/server/net/NetworkStatsRecorder;->maybePersistLocked(J)V

    .line 745
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 748
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->registerGlobalAlert()V

    goto :goto_1

    .line 745
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public bindConnectivityManager(Landroid/net/IConnectivityManager;)V
    .locals 1
    .param p1, "connManager"    # Landroid/net/IConnectivityManager;

    .prologue
    .line 296
    const-string v0, "missing IConnectivityManager"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/IConnectivityManager;

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mConnManager:Landroid/net/IConnectivityManager;

    .line 297
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 23
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "rawWriter"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1171
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.DUMP"

    const-string v22, "NetworkStats"

    move-object/from16 v0, v22

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1173
    const-wide/32 v12, 0x5265c00

    .line 1174
    .local v12, "duration":J
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 1175
    .local v9, "argSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v10, p3

    .local v10, "arr$":[Ljava/lang/String;
    array-length v0, v10

    move/from16 v19, v0

    .local v19, "len$":I
    const/16 v16, 0x0

    .local v16, "i$":I
    :goto_0
    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_1

    aget-object v8, v10, v16

    .line 1176
    .local v8, "arg":Ljava/lang/String;
    invoke-virtual {v9, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1178
    const-string v2, "--duration="

    invoke-virtual {v8, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1180
    const/16 v2, 0xb

    :try_start_0
    invoke-virtual {v8, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v12

    .line 1175
    :cond_0
    :goto_1
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 1187
    .end local v8    # "arg":Ljava/lang/String;
    :cond_1
    const-string v2, "--poll"

    invoke-virtual {v9, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "poll"

    invoke-virtual {v9, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_2
    const/16 v20, 0x1

    .line 1188
    .local v20, "poll":Z
    :goto_2
    const-string v2, "--checkin"

    invoke-virtual {v9, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    .line 1189
    .local v11, "checkin":Z
    const-string v2, "--full"

    invoke-virtual {v9, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "full"

    invoke-virtual {v9, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_3
    const/4 v14, 0x1

    .line 1190
    .local v14, "fullHistory":Z
    :goto_3
    const-string v2, "--uid"

    invoke-virtual {v9, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "detail"

    invoke-virtual {v9, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_4
    const/16 v18, 0x1

    .line 1191
    .local v18, "includeUid":Z
    :goto_4
    const-string v2, "--tag"

    invoke-virtual {v9, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "detail"

    invoke-virtual {v9, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_5
    const/16 v17, 0x1

    .line 1193
    .local v17, "includeTag":Z
    :goto_5
    new-instance v21, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v2, "  "

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1195
    .local v21, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 1196
    if-eqz v20, :cond_a

    .line 1197
    const/16 v2, 0x103

    :try_start_1
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/net/NetworkStatsService;->performPollLocked(I)V

    .line 1198
    const-string v2, "Forced poll"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1199
    monitor-exit v22

    .line 1266
    :goto_6
    return-void

    .line 1187
    .end local v11    # "checkin":Z
    .end local v14    # "fullHistory":Z
    .end local v17    # "includeTag":Z
    .end local v18    # "includeUid":Z
    .end local v20    # "poll":Z
    .end local v21    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    :cond_6
    const/16 v20, 0x0

    goto :goto_2

    .line 1189
    .restart local v11    # "checkin":Z
    .restart local v20    # "poll":Z
    :cond_7
    const/4 v14, 0x0

    goto :goto_3

    .line 1190
    .restart local v14    # "fullHistory":Z
    :cond_8
    const/16 v18, 0x0

    goto :goto_4

    .line 1191
    .restart local v18    # "includeUid":Z
    :cond_9
    const/16 v17, 0x0

    goto :goto_5

    .line 1202
    .restart local v17    # "includeTag":Z
    .restart local v21    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    :cond_a
    if-eqz v11, :cond_d

    .line 1203
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1204
    .local v6, "end":J
    sub-long v4, v6, v12

    .line 1206
    .local v4, "start":J
    const-string v2, "v1,"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1207
    const-wide/16 v2, 0x3e8

    div-long v2, v4, v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(J)V

    const/16 v2, 0x2c

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(C)V

    .line 1208
    const-wide/16 v2, 0x3e8

    div-long v2, v6, v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(J)V

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1210
    const-string v2, "xt"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1211
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v3, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/net/NetworkStatsRecorder;->dumpCheckin(Ljava/io/PrintWriter;JJ)V

    .line 1213
    if-eqz v18, :cond_b

    .line 1214
    const-string v2, "uid"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1215
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v3, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/net/NetworkStatsRecorder;->dumpCheckin(Ljava/io/PrintWriter;JJ)V

    .line 1217
    :cond_b
    if-eqz v17, :cond_c

    .line 1218
    const-string v2, "tag"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1219
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v3, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/net/NetworkStatsRecorder;->dumpCheckin(Ljava/io/PrintWriter;JJ)V

    .line 1221
    :cond_c
    monitor-exit v22

    goto :goto_6

    .line 1265
    .end local v4    # "start":J
    .end local v6    # "end":J
    :catchall_0
    move-exception v2

    monitor-exit v22
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 1224
    :cond_d
    :try_start_2
    const-string v2, "Active interfaces:"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1225
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1226
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v15, v2, :cond_e

    .line 1227
    const-string v2, "iface"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Landroid/util/ArrayMap;

    invoke-virtual {v3, v15}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1228
    const-string v2, "ident"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Landroid/util/ArrayMap;

    invoke-virtual {v3, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1229
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1226
    add-int/lit8 v15, v15, 0x1

    goto :goto_7

    .line 1231
    :cond_e
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1233
    const-string v2, "Active UID interfaces:"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1234
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1235
    const/4 v15, 0x0

    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mActiveUidIfaces:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v15, v2, :cond_f

    .line 1236
    const-string v2, "iface"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/net/NetworkStatsService;->mActiveUidIfaces:Landroid/util/ArrayMap;

    invoke-virtual {v3, v15}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1237
    const-string v2, "ident"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/net/NetworkStatsService;->mActiveUidIfaces:Landroid/util/ArrayMap;

    invoke-virtual {v3, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1238
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1235
    add-int/lit8 v15, v15, 0x1

    goto :goto_8

    .line 1240
    :cond_f
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1242
    const-string v2, "Dev stats:"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1243
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1244
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0, v14}, Lcom/android/server/net/NetworkStatsRecorder;->dumpLocked(Lcom/android/internal/util/IndentingPrintWriter;Z)V

    .line 1245
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1247
    const-string v2, "Xt stats:"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1248
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1249
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0, v14}, Lcom/android/server/net/NetworkStatsRecorder;->dumpLocked(Lcom/android/internal/util/IndentingPrintWriter;Z)V

    .line 1250
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1252
    if-eqz v18, :cond_10

    .line 1253
    const-string v2, "UID stats:"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1254
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1255
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0, v14}, Lcom/android/server/net/NetworkStatsRecorder;->dumpLocked(Lcom/android/internal/util/IndentingPrintWriter;Z)V

    .line 1256
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1259
    :cond_10
    if-eqz v17, :cond_11

    .line 1260
    const-string v2, "UID tag stats:"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1261
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1262
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0, v14}, Lcom/android/server/net/NetworkStatsRecorder;->dumpLocked(Lcom/android/internal/util/IndentingPrintWriter;Z)V

    .line 1263
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1265
    :cond_11
    monitor-exit v22
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_6

    .line 1181
    .end local v11    # "checkin":Z
    .end local v14    # "fullHistory":Z
    .end local v15    # "i":I
    .end local v17    # "includeTag":Z
    .end local v18    # "includeUid":Z
    .end local v20    # "poll":Z
    .end local v21    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v8    # "arg":Ljava/lang/String;
    :catch_0
    move-exception v2

    goto/16 :goto_1
.end method

.method public forceUpdate()V
    .locals 5

    .prologue
    .line 709
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.READ_NETWORK_USAGE_HISTORY"

    const-string v4, "NetworkStats"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->assertBandwidthControlEnabled()V

    .line 712
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 714
    .local v0, "token":J
    const/4 v2, 0x3

    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/net/NetworkStatsService;->performPoll(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 716
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 718
    return-void

    .line 716
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public forceUpdateIfaces()V
    .locals 5

    .prologue
    .line 696
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.READ_NETWORK_USAGE_HISTORY"

    const-string v4, "NetworkStats"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->assertBandwidthControlEnabled()V

    .line 699
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 701
    .local v0, "token":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->updateIfaces()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 703
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 705
    return-void

    .line 703
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getDataLayerSnapshotForUid(I)Landroid/net/NetworkStats;
    .locals 9
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 621
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    if-eq v6, p1, :cond_0

    .line 622
    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.ACCESS_NETWORK_STATE"

    const-string v8, "NetworkStats"

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    :cond_0
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->assertBandwidthControlEnabled()V

    .line 628
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 631
    .local v4, "token":J
    :try_start_0
    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v6, p1}, Landroid/os/INetworkManagementService;->getNetworkStatsUidDetail(I)Landroid/net/NetworkStats;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 633
    .local v3, "networkLayer":Landroid/net/NetworkStats;
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 637
    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mUidOperations:Landroid/net/NetworkStats;

    invoke-virtual {v3, v6}, Landroid/net/NetworkStats;->spliceOperationsFrom(Landroid/net/NetworkStats;)V

    .line 639
    new-instance v0, Landroid/net/NetworkStats;

    invoke-virtual {v3}, Landroid/net/NetworkStats;->getElapsedRealtime()J

    move-result-wide v6

    invoke-virtual {v3}, Landroid/net/NetworkStats;->size()I

    move-result v8

    invoke-direct {v0, v6, v7, v8}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 642
    .local v0, "dataLayer":Landroid/net/NetworkStats;
    const/4 v1, 0x0

    .line 643
    .local v1, "entry":Landroid/net/NetworkStats$Entry;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v3}, Landroid/net/NetworkStats;->size()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 644
    invoke-virtual {v3, v2, v1}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v1

    .line 645
    sget-object v6, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    iput-object v6, v1, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 646
    invoke-virtual {v0, v1}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 643
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 633
    .end local v0    # "dataLayer":Landroid/net/NetworkStats;
    .end local v1    # "entry":Landroid/net/NetworkStats$Entry;
    .end local v2    # "i":I
    .end local v3    # "networkLayer":Landroid/net/NetworkStats;
    :catchall_0
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .line 649
    .restart local v0    # "dataLayer":Landroid/net/NetworkStats;
    .restart local v1    # "entry":Landroid/net/NetworkStats$Entry;
    .restart local v2    # "i":I
    .restart local v3    # "networkLayer":Landroid/net/NetworkStats;
    :cond_1
    return-object v0
.end method

.method public getMobileIfaces()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 654
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mMobileIfaces:[Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkTotalBytes(Landroid/net/NetworkTemplate;JJ)J
    .locals 4
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "start"    # J
    .param p4, "end"    # J

    .prologue
    .line 614
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_NETWORK_USAGE_HISTORY"

    const-string v2, "NetworkStats"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->assertBandwidthControlEnabled()V

    .line 616
    invoke-direct/range {p0 .. p5}, Lcom/android/server/net/NetworkStatsService;->internalGetSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkStats;->getTotalBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method public incrementOperationCount(III)V
    .locals 19
    .param p1, "uid"    # I
    .param p2, "tag"    # I
    .param p3, "operationCount"    # I

    .prologue
    .line 659
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    move/from16 v0, p1

    if-eq v2, v0, :cond_0

    .line 660
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.MODIFY_NETWORK_ACCOUNTING"

    const-string v4, "NetworkStats"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    :cond_0
    if-gez p3, :cond_1

    .line 664
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "operation count can only be incremented"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 666
    :cond_1
    if-nez p2, :cond_2

    .line 667
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "operation count must have specific tag"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 670
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 671
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mActiveUidCounterSet:Landroid/util/SparseIntArray;

    const/4 v3, 0x0

    move/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v6

    .line 672
    .local v6, "set":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/net/NetworkStatsService;->mUidOperations:Landroid/net/NetworkStats;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkStatsService;->mActiveIface:Ljava/lang/String;

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    move/from16 v0, p3

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move/from16 v5, p1

    move/from16 v7, p2

    invoke-virtual/range {v3 .. v17}, Landroid/net/NetworkStats;->combineValues(Ljava/lang/String;IIIJJJJJ)Landroid/net/NetworkStats;

    .line 674
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/net/NetworkStatsService;->mUidOperations:Landroid/net/NetworkStats;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkStatsService;->mActiveIface:Ljava/lang/String;

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    move/from16 v0, p3

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move/from16 v5, p1

    invoke-virtual/range {v3 .. v17}, Landroid/net/NetworkStats;->combineValues(Ljava/lang/String;IIIJJJJJ)Landroid/net/NetworkStats;

    .line 676
    monitor-exit v18

    .line 677
    return-void

    .line 676
    .end local v6    # "set":I
    :catchall_0
    move-exception v2

    monitor-exit v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public openSession()Landroid/net/INetworkStatsSession;
    .locals 3

    .prologue
    .line 475
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_NETWORK_USAGE_HISTORY"

    const-string v2, "NetworkStats"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->assertBandwidthControlEnabled()V

    .line 481
    new-instance v0, Lcom/android/server/net/NetworkStatsService$1;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkStatsService$1;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    return-object v0
.end method

.method public setUidForeground(IZ)V
    .locals 6
    .param p1, "uid"    # I
    .param p2, "uidForeground"    # Z

    .prologue
    const/4 v1, 0x0

    .line 681
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.MODIFY_NETWORK_ACCOUNTING"

    const-string v4, "NetworkStats"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 684
    if-eqz p2, :cond_0

    const/4 v1, 0x1

    .line 685
    .local v1, "set":I
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mActiveUidCounterSet:Landroid/util/SparseIntArray;

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 686
    .local v0, "oldSet":I
    if-eq v0, v1, :cond_1

    .line 687
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mActiveUidCounterSet:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 688
    const-string v2, "NetworkStats"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setKernelCounterSet uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " set="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    invoke-static {p1, v1}, Lcom/android/server/NetworkManagementSocketTagger;->setKernelCounterSet(II)V

    .line 691
    :cond_1
    monitor-exit v3

    .line 692
    return-void

    .line 691
    .end local v0    # "oldSet":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setUseTrustedTime(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 1440
    sput-boolean p1, Lcom/android/server/net/NetworkStatsService;->USE_TRUESTED_TIME:Z

    .line 1441
    return-void
.end method

.method public systemReady()V
    .locals 11

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v8, 0x0

    .line 300
    iput-boolean v9, p0, Lcom/android/server/net/NetworkStatsService;->mSystemReady:Z

    .line 302
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->isBandwidthControlEnabled()Z

    move-result v6

    if-nez v6, :cond_0

    .line 303
    const-string v6, "NetworkStats"

    const-string v7, "bandwidth controls disabled, unable to track stats"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :goto_0
    return-void

    .line 308
    :cond_0
    const-string v6, "dev"

    iget-object v7, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    invoke-interface {v7}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getDevConfig()Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;

    move-result-object v7

    invoke-direct {p0, v6, v7, v8}, Lcom/android/server/net/NetworkStatsService;->buildRecorder(Ljava/lang/String;Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;Z)Lcom/android/server/net/NetworkStatsRecorder;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    .line 309
    const-string v6, "xt"

    iget-object v7, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    invoke-interface {v7}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getXtConfig()Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;

    move-result-object v7

    invoke-direct {p0, v6, v7, v8}, Lcom/android/server/net/NetworkStatsService;->buildRecorder(Ljava/lang/String;Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;Z)Lcom/android/server/net/NetworkStatsRecorder;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    .line 310
    const-string v6, "uid"

    iget-object v7, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    invoke-interface {v7}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getUidConfig()Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;

    move-result-object v7

    invoke-direct {p0, v6, v7, v8}, Lcom/android/server/net/NetworkStatsService;->buildRecorder(Ljava/lang/String;Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;Z)Lcom/android/server/net/NetworkStatsRecorder;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    .line 311
    const-string v6, "uid_tag"

    iget-object v7, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    invoke-interface {v7}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getUidTagConfig()Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;

    move-result-object v7

    invoke-direct {p0, v6, v7, v9}, Lcom/android/server/net/NetworkStatsService;->buildRecorder(Ljava/lang/String;Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;Z)Lcom/android/server/net/NetworkStatsRecorder;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    .line 313
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->updatePersistThresholds()V

    .line 315
    iget-object v7, p0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v7

    .line 317
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->maybeUpgradeLegacyStatsLocked()V

    .line 321
    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v6}, Lcom/android/server/net/NetworkStatsRecorder;->getOrLoadCompleteLocked()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mXtStatsCached:Lcom/android/server/net/NetworkStatsCollection;

    .line 324
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->bootstrapStatsLocked()V

    .line 325
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    new-instance v4, Landroid/content/IntentFilter;

    const-string v6, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v4, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 329
    .local v4, "tetherFilter":Landroid/content/IntentFilter;
    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/net/NetworkStatsService;->mTetherReceiver:Landroid/content/BroadcastReceiver;

    iget-object v8, p0, Lcom/android/server/net/NetworkStatsService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v7, v4, v10, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 332
    new-instance v1, Landroid/content/IntentFilter;

    const-string v6, "com.android.server.action.NETWORK_STATS_POLL"

    invoke-direct {v1, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 333
    .local v1, "pollFilter":Landroid/content/IntentFilter;
    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/net/NetworkStatsService;->mPollReceiver:Landroid/content/BroadcastReceiver;

    const-string v8, "android.permission.READ_NETWORK_USAGE_HISTORY"

    iget-object v9, p0, Lcom/android/server/net/NetworkStatsService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v7, v1, v8, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 336
    new-instance v2, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.UID_REMOVED"

    invoke-direct {v2, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 337
    .local v2, "removedFilter":Landroid/content/IntentFilter;
    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/net/NetworkStatsService;->mRemovedReceiver:Landroid/content/BroadcastReceiver;

    iget-object v8, p0, Lcom/android/server/net/NetworkStatsService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v7, v2, v10, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 340
    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.USER_REMOVED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 341
    .local v5, "userFilter":Landroid/content/IntentFilter;
    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/net/NetworkStatsService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    iget-object v8, p0, Lcom/android/server/net/NetworkStatsService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v7, v5, v10, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 344
    new-instance v3, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v3, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 346
    .local v3, "shutdownFilter":Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 347
    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/net/NetworkStatsService;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v7, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 350
    new-instance v0, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.IGNORE_DATA_USAGE_ALERT"

    invoke-direct {v0, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 351
    .local v0, "ignoreAlertFilter":Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.IGNORE_DATA_USAGE_ALERT"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 352
    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/net/NetworkStatsService;->mIgnoreAlertReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v7, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 355
    :try_start_1
    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    iget-object v7, p0, Lcom/android/server/net/NetworkStatsService;->mAlertObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v6, v7}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 360
    :goto_1
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->registerPollAlarmLocked()V

    .line 361
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->registerGlobalAlert()V

    goto/16 :goto_0

    .line 325
    .end local v0    # "ignoreAlertFilter":Landroid/content/IntentFilter;
    .end local v1    # "pollFilter":Landroid/content/IntentFilter;
    .end local v2    # "removedFilter":Landroid/content/IntentFilter;
    .end local v3    # "shutdownFilter":Landroid/content/IntentFilter;
    .end local v4    # "tetherFilter":Landroid/content/IntentFilter;
    .end local v5    # "userFilter":Landroid/content/IntentFilter;
    :catchall_0
    move-exception v6

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 356
    .restart local v0    # "ignoreAlertFilter":Landroid/content/IntentFilter;
    .restart local v1    # "pollFilter":Landroid/content/IntentFilter;
    .restart local v2    # "removedFilter":Landroid/content/IntentFilter;
    .restart local v3    # "shutdownFilter":Landroid/content/IntentFilter;
    .restart local v4    # "tetherFilter":Landroid/content/IntentFilter;
    .restart local v5    # "userFilter":Landroid/content/IntentFilter;
    :catch_0
    move-exception v6

    goto :goto_1
.end method
