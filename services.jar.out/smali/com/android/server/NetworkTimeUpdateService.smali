.class public Lcom/android/server/NetworkTimeUpdateService;
.super Ljava/lang/Object;
.source "NetworkTimeUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/NetworkTimeUpdateService$GpsTimeSyncObserver;,
        Lcom/android/server/NetworkTimeUpdateService$SettingsObserver;,
        Lcom/android/server/NetworkTimeUpdateService$MyHandler;
    }
.end annotation


# static fields
.field private static final ACTION_POLL:Ljava/lang/String; = "com.android.server.NetworkTimeUpdateService.action.POLL"

.field private static final BOOT_SYS_PROPERTY:Ljava/lang/String; = "persist.sys.first_time_boot"

.field private static final DBG:Z = true

.field private static final DECRYPT_STATE:Ljava/lang/String; = "trigger_restart_framework"

.field private static final EVENT_AUTO_TIME_CHANGED:I = 0x1

.field private static final EVENT_GPS_TIME_SYNC_CHANGED:I = 0x4

.field private static final EVENT_NETWORK_CHANGED:I = 0x3

.field private static final EVENT_POLL_NETWORK_TIME:I = 0x2

.field private static final ICS_BOOT_SYS_PROPERTY:Ljava/lang/String; = "persist.sys.boot.count"

.field private static final NOT_SET:J = -0x1L

.field private static POLL_REQUEST:I = 0x0

.field private static final SERVERLIST:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "NetworkTimeUpdateService"

.field private static mDefaultYear:I

.field private static mIsOverMobile:Z


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mConnectivityReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mDefaultServer:Ljava/lang/String;

.field private mGpsHandler:Landroid/os/Handler;

.field private mGpsThread:Landroid/os/HandlerThread;

.field private mGpsTimeSyncObserver:Lcom/android/server/NetworkTimeUpdateService$GpsTimeSyncObserver;

.field private mGpsTimerThread:Ljava/lang/Thread;

.field private mGpsToastHandler:Landroid/os/Handler;

.field private mHandler:Landroid/os/Handler;

.field private mIsGpsTimeSyncRunning:Z

.field private mLastNtpFetchTime:J

.field private mLocationListener:Landroid/location/LocationListener;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mNitzReceiver:Landroid/content/BroadcastReceiver;

.field private mNitzTimeSetTime:J

.field private mNitzZoneSetTime:J

.field private mNtpServers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingPollIntent:Landroid/app/PendingIntent;

.field private final mPollingIntervalMs:J

.field private final mPollingIntervalShorterMs:J

.field private mSettingsObserver:Lcom/android/server/NetworkTimeUpdateService$SettingsObserver;

.field private mTime:Landroid/util/TrustedTime;

.field private final mTimeErrorThresholdMs:I

.field private mTryAgainCounter:I

.field private final mTryAgainTimesMax:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 92
    const/16 v0, 0x7de

    sput v0, Lcom/android/server/NetworkTimeUpdateService;->mDefaultYear:I

    .line 93
    sput-boolean v2, Lcom/android/server/NetworkTimeUpdateService;->mIsOverMobile:Z

    .line 98
    sput v2, Lcom/android/server/NetworkTimeUpdateService;->POLL_REQUEST:I

    .line 136
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "hshh.org"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "2.android.pool.ntp.org"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "time-a.nist.gov"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/NetworkTimeUpdateService;->SERVERLIST:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-wide v6, p0, Lcom/android/server/NetworkTimeUpdateService;->mNitzTimeSetTime:J

    .line 103
    iput-wide v6, p0, Lcom/android/server/NetworkTimeUpdateService;->mNitzZoneSetTime:J

    .line 118
    iput-wide v6, p0, Lcom/android/server/NetworkTimeUpdateService;->mLastNtpFetchTime:J

    .line 134
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/NetworkTimeUpdateService;->mNtpServers:Ljava/util/ArrayList;

    .line 348
    new-instance v5, Lcom/android/server/NetworkTimeUpdateService$2;

    invoke-direct {v5, p0}, Lcom/android/server/NetworkTimeUpdateService$2;-><init>(Lcom/android/server/NetworkTimeUpdateService;)V

    iput-object v5, p0, Lcom/android/server/NetworkTimeUpdateService;->mNitzReceiver:Landroid/content/BroadcastReceiver;

    .line 364
    new-instance v5, Lcom/android/server/NetworkTimeUpdateService$3;

    invoke-direct {v5, p0}, Lcom/android/server/NetworkTimeUpdateService$3;-><init>(Lcom/android/server/NetworkTimeUpdateService;)V

    iput-object v5, p0, Lcom/android/server/NetworkTimeUpdateService;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    .line 433
    iput-boolean v8, p0, Lcom/android/server/NetworkTimeUpdateService;->mIsGpsTimeSyncRunning:Z

    .line 512
    new-instance v5, Lcom/android/server/NetworkTimeUpdateService$5;

    invoke-direct {v5, p0}, Lcom/android/server/NetworkTimeUpdateService$5;-><init>(Lcom/android/server/NetworkTimeUpdateService;)V

    iput-object v5, p0, Lcom/android/server/NetworkTimeUpdateService;->mGpsToastHandler:Landroid/os/Handler;

    .line 519
    new-instance v5, Lcom/android/server/NetworkTimeUpdateService$6;

    invoke-direct {v5, p0}, Lcom/android/server/NetworkTimeUpdateService$6;-><init>(Lcom/android/server/NetworkTimeUpdateService;)V

    iput-object v5, p0, Lcom/android/server/NetworkTimeUpdateService;->mLocationListener:Landroid/location/LocationListener;

    .line 143
    iput-object p1, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    .line 144
    invoke-static {p1}, Landroid/util/NtpTrustedTime;->getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/NetworkTimeUpdateService;->mTime:Landroid/util/TrustedTime;

    .line 145
    iget-object v5, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    const-string v6, "alarm"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AlarmManager;

    iput-object v5, p0, Lcom/android/server/NetworkTimeUpdateService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 146
    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.android.server.NetworkTimeUpdateService.action.POLL"

    const/4 v6, 0x0

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 147
    .local v3, "pollIntent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/server/NetworkTimeUpdateService;->POLL_REQUEST:I

    invoke-static {v5, v6, v3, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/NetworkTimeUpdateService;->mPendingPollIntent:Landroid/app/PendingIntent;

    .line 149
    iget-object v5, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e0067

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-long v6, v5

    iput-wide v6, p0, Lcom/android/server/NetworkTimeUpdateService;->mPollingIntervalMs:J

    .line 151
    iget-object v5, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e0068

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-long v6, v5

    iput-wide v6, p0, Lcom/android/server/NetworkTimeUpdateService;->mPollingIntervalShorterMs:J

    .line 153
    iget-object v5, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e0069

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/android/server/NetworkTimeUpdateService;->mTryAgainTimesMax:I

    .line 155
    iget-object v5, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e006a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/android/server/NetworkTimeUpdateService;->mTimeErrorThresholdMs:I

    .line 159
    iget-object v5, p0, Lcom/android/server/NetworkTimeUpdateService;->mTime:Landroid/util/TrustedTime;

    check-cast v5, Landroid/util/NtpTrustedTime;

    invoke-virtual {v5}, Landroid/util/NtpTrustedTime;->getServer()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/NetworkTimeUpdateService;->mDefaultServer:Ljava/lang/String;

    .line 160
    iget-object v5, p0, Lcom/android/server/NetworkTimeUpdateService;->mNtpServers:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/server/NetworkTimeUpdateService;->mDefaultServer:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    sget-object v0, Lcom/android/server/NetworkTimeUpdateService;->SERVERLIST:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 163
    .local v4, "str":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/NetworkTimeUpdateService;->mNtpServers:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 165
    .end local v4    # "str":Ljava/lang/String;
    :cond_0
    iput v8, p0, Lcom/android/server/NetworkTimeUpdateService;->mTryAgainCounter:I

    .line 166
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/NetworkTimeUpdateService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/NetworkTimeUpdateService;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/NetworkTimeUpdateService;)Ljava/lang/Thread;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/NetworkTimeUpdateService;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mGpsTimerThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/NetworkTimeUpdateService;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/NetworkTimeUpdateService;
    .param p1, "x1"    # J

    .prologue
    .line 75
    iput-wide p1, p0, Lcom/android/server/NetworkTimeUpdateService;->mNitzTimeSetTime:J

    return-wide p1
.end method

.method static synthetic access$202(Lcom/android/server/NetworkTimeUpdateService;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/NetworkTimeUpdateService;
    .param p1, "x1"    # J

    .prologue
    .line 75
    iput-wide p1, p0, Lcom/android/server/NetworkTimeUpdateService;->mNitzZoneSetTime:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/android/server/NetworkTimeUpdateService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/NetworkTimeUpdateService;
    .param p1, "x1"    # I

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/server/NetworkTimeUpdateService;->onPollNetworkTime(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/NetworkTimeUpdateService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/NetworkTimeUpdateService;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/server/NetworkTimeUpdateService;->getGpsTimeSyncState()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/NetworkTimeUpdateService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/NetworkTimeUpdateService;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mGpsToastHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/NetworkTimeUpdateService;)Landroid/location/LocationListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/NetworkTimeUpdateService;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mLocationListener:Landroid/location/LocationListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/NetworkTimeUpdateService;)Landroid/location/LocationManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/NetworkTimeUpdateService;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mLocationManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/server/NetworkTimeUpdateService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/NetworkTimeUpdateService;
    .param p1, "x1"    # Z

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/android/server/NetworkTimeUpdateService;->mIsGpsTimeSyncRunning:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/NetworkTimeUpdateService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/NetworkTimeUpdateService;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getGpsTimeSyncState()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 438
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "auto_time_gps"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    .line 440
    :cond_0
    :goto_0
    return v1

    .line 439
    :catch_0
    move-exception v0

    .line 440
    .local v0, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method private isAutomaticTimeRequested()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 343
    iget-object v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "auto_time"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private onPollNetworkTime(I)V
    .locals 12
    .param p1, "event"    # I

    .prologue
    .line 252
    const-string v3, "NetworkTimeUpdateService"

    const-string v8, "onPollNetworkTime start"

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-direct {p0}, Lcom/android/server/NetworkTimeUpdateService;->isAutomaticTimeRequested()Z

    move-result v3

    if-nez v3, :cond_0

    .line 325
    :goto_0
    return-void

    .line 255
    :cond_0
    const-string v3, "NetworkTimeUpdateService"

    const-string v8, "isAutomaticTimeRequested() = True"

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 259
    .local v6, "refTime":J
    const-string v3, "NetworkTimeUpdateService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mNitzTimeSetTime: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, Lcom/android/server/NetworkTimeUpdateService;->mNitzTimeSetTime:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",refTime: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-wide v8, p0, Lcom/android/server/NetworkTimeUpdateService;->mNitzTimeSetTime:J

    const-wide/16 v10, -0x1

    cmp-long v3, v8, v10

    if-eqz v3, :cond_1

    iget-wide v8, p0, Lcom/android/server/NetworkTimeUpdateService;->mNitzTimeSetTime:J

    sub-long v8, v6, v8

    iget-wide v10, p0, Lcom/android/server/NetworkTimeUpdateService;->mPollingIntervalMs:J

    cmp-long v3, v8, v10

    if-gez v3, :cond_1

    .line 261
    iget-wide v8, p0, Lcom/android/server/NetworkTimeUpdateService;->mPollingIntervalMs:J

    invoke-direct {p0, v8, v9}, Lcom/android/server/NetworkTimeUpdateService;->resetAlarm(J)V

    goto :goto_0

    .line 264
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 265
    .local v0, "currentTime":J
    const-string v3, "NetworkTimeUpdateService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "System time = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-wide v8, p0, Lcom/android/server/NetworkTimeUpdateService;->mLastNtpFetchTime:J

    const-wide/16 v10, -0x1

    cmp-long v3, v8, v10

    if-eqz v3, :cond_2

    iget-wide v8, p0, Lcom/android/server/NetworkTimeUpdateService;->mLastNtpFetchTime:J

    iget-wide v10, p0, Lcom/android/server/NetworkTimeUpdateService;->mPollingIntervalMs:J

    add-long/2addr v8, v10

    cmp-long v3, v6, v8

    if-gez v3, :cond_2

    const/4 v3, 0x1

    if-ne p1, v3, :cond_7

    .line 269
    :cond_2
    const-string v3, "NetworkTimeUpdateService"

    const-string v8, "Before Ntp fetch"

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object v3, p0, Lcom/android/server/NetworkTimeUpdateService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v3}, Landroid/util/TrustedTime;->getCacheAge()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/android/server/NetworkTimeUpdateService;->mPollingIntervalMs:J

    cmp-long v3, v8, v10

    if-ltz v3, :cond_3

    .line 275
    iget v3, p0, Lcom/android/server/NetworkTimeUpdateService;->mTryAgainCounter:I

    iget-object v8, p0, Lcom/android/server/NetworkTimeUpdateService;->mNtpServers:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    rem-int v2, v3, v8

    .line 276
    .local v2, "index":I
    const-string v8, "NetworkTimeUpdateService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mTryAgainCounter = "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v9, p0, Lcom/android/server/NetworkTimeUpdateService;->mTryAgainCounter:I

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, ";mNtpServers.size() = "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v9, p0, Lcom/android/server/NetworkTimeUpdateService;->mNtpServers:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, ";index = "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, ";mNtpServers = "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v3, p0, Lcom/android/server/NetworkTimeUpdateService;->mNtpServers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object v3, p0, Lcom/android/server/NetworkTimeUpdateService;->mTime:Landroid/util/TrustedTime;

    instance-of v3, v3, Landroid/util/NtpTrustedTime;

    if-eqz v3, :cond_8

    .line 279
    iget-object v3, p0, Lcom/android/server/NetworkTimeUpdateService;->mTime:Landroid/util/TrustedTime;

    check-cast v3, Landroid/util/NtpTrustedTime;

    iget-object v8, p0, Lcom/android/server/NetworkTimeUpdateService;->mNtpServers:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v3, v8}, Landroid/util/NtpTrustedTime;->setServer(Ljava/lang/String;)V

    .line 280
    iget-object v3, p0, Lcom/android/server/NetworkTimeUpdateService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v3}, Landroid/util/TrustedTime;->forceRefresh()Z

    .line 281
    iget-object v3, p0, Lcom/android/server/NetworkTimeUpdateService;->mTime:Landroid/util/TrustedTime;

    check-cast v3, Landroid/util/NtpTrustedTime;

    iget-object v8, p0, Lcom/android/server/NetworkTimeUpdateService;->mDefaultServer:Ljava/lang/String;

    invoke-virtual {v3, v8}, Landroid/util/NtpTrustedTime;->setServer(Ljava/lang/String;)V

    .line 290
    .end local v2    # "index":I
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/android/server/NetworkTimeUpdateService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v3}, Landroid/util/TrustedTime;->getCacheAge()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/android/server/NetworkTimeUpdateService;->mPollingIntervalMs:J

    cmp-long v3, v8, v10

    if-gez v3, :cond_a

    .line 291
    iget-object v3, p0, Lcom/android/server/NetworkTimeUpdateService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v3}, Landroid/util/TrustedTime;->currentTimeMillis()J

    move-result-wide v4

    .line 292
    .local v4, "ntp":J
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/NetworkTimeUpdateService;->mTryAgainCounter:I

    .line 295
    sub-long v8, v4, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    iget v3, p0, Lcom/android/server/NetworkTimeUpdateService;->mTimeErrorThresholdMs:I

    int-to-long v10, v3

    cmp-long v3, v8, v10

    if-gtz v3, :cond_4

    iget-wide v8, p0, Lcom/android/server/NetworkTimeUpdateService;->mLastNtpFetchTime:J

    const-wide/16 v10, -0x1

    cmp-long v3, v8, v10

    if-nez v3, :cond_9

    .line 298
    :cond_4
    iget-wide v8, p0, Lcom/android/server/NetworkTimeUpdateService;->mLastNtpFetchTime:J

    const-wide/16 v10, -0x1

    cmp-long v3, v8, v10

    if-nez v3, :cond_5

    sub-long v8, v4, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    iget v3, p0, Lcom/android/server/NetworkTimeUpdateService;->mTimeErrorThresholdMs:I

    int-to-long v10, v3

    cmp-long v3, v8, v10

    if-gtz v3, :cond_5

    .line 300
    const-string v3, "NetworkTimeUpdateService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "For initial setup, rtc = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_5
    const-string v3, "NetworkTimeUpdateService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Ntp time to be set = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    const-wide/16 v8, 0x3e8

    div-long v8, v4, v8

    const-wide/32 v10, 0x7fffffff

    cmp-long v3, v8, v10

    if-gez v3, :cond_6

    .line 305
    invoke-static {v4, v5}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 310
    :cond_6
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/NetworkTimeUpdateService;->mLastNtpFetchTime:J

    .line 324
    .end local v4    # "ntp":J
    :cond_7
    iget-wide v8, p0, Lcom/android/server/NetworkTimeUpdateService;->mPollingIntervalMs:J

    invoke-direct {p0, v8, v9}, Lcom/android/server/NetworkTimeUpdateService;->resetAlarm(J)V

    goto/16 :goto_0

    .line 285
    .restart local v2    # "index":I
    :cond_8
    iget-object v3, p0, Lcom/android/server/NetworkTimeUpdateService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v3}, Landroid/util/TrustedTime;->forceRefresh()Z

    goto/16 :goto_1

    .line 308
    .end local v2    # "index":I
    .restart local v4    # "ntp":J
    :cond_9
    const-string v3, "NetworkTimeUpdateService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Ntp time is close enough = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 313
    .end local v4    # "ntp":J
    :cond_a
    iget v3, p0, Lcom/android/server/NetworkTimeUpdateService;->mTryAgainCounter:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/NetworkTimeUpdateService;->mTryAgainCounter:I

    .line 314
    iget v3, p0, Lcom/android/server/NetworkTimeUpdateService;->mTryAgainTimesMax:I

    if-ltz v3, :cond_b

    iget v3, p0, Lcom/android/server/NetworkTimeUpdateService;->mTryAgainCounter:I

    iget v8, p0, Lcom/android/server/NetworkTimeUpdateService;->mTryAgainTimesMax:I

    if-gt v3, v8, :cond_c

    .line 315
    :cond_b
    iget-wide v8, p0, Lcom/android/server/NetworkTimeUpdateService;->mPollingIntervalShorterMs:J

    invoke-direct {p0, v8, v9}, Lcom/android/server/NetworkTimeUpdateService;->resetAlarm(J)V

    goto/16 :goto_0

    .line 318
    :cond_c
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/NetworkTimeUpdateService;->mTryAgainCounter:I

    .line 319
    iget-wide v8, p0, Lcom/android/server/NetworkTimeUpdateService;->mPollingIntervalMs:J

    invoke-direct {p0, v8, v9}, Lcom/android/server/NetworkTimeUpdateService;->resetAlarm(J)V

    goto/16 :goto_0
.end method

.method private registerForAlarms()V
    .locals 4

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/NetworkTimeUpdateService$1;

    invoke-direct {v1, p0}, Lcom/android/server/NetworkTimeUpdateService$1;-><init>(Lcom/android/server/NetworkTimeUpdateService;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.android.server.NetworkTimeUpdateService.action.POLL"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 243
    return-void
.end method

.method private registerForConnectivityIntents()V
    .locals 3

    .prologue
    .line 246
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 247
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 248
    iget-object v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/NetworkTimeUpdateService;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 249
    return-void
.end method

.method private registerForTelephonyIntents()V
    .locals 3

    .prologue
    .line 229
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 230
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.NETWORK_SET_TIME"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 231
    const-string v1, "android.intent.action.NETWORK_SET_TIMEZONE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 232
    iget-object v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/NetworkTimeUpdateService;->mNitzReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 233
    return-void
.end method

.method private resetAlarm(J)V
    .locals 7
    .param p1, "interval"    # J

    .prologue
    .line 333
    iget-object v4, p0, Lcom/android/server/NetworkTimeUpdateService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v5, p0, Lcom/android/server/NetworkTimeUpdateService;->mPendingPollIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v5}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 334
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 335
    .local v2, "now":J
    add-long v0, v2, p1

    .line 336
    .local v0, "next":J
    iget-object v4, p0, Lcom/android/server/NetworkTimeUpdateService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/android/server/NetworkTimeUpdateService;->mPendingPollIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v5, v0, v1, v6}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 337
    return-void
.end method


# virtual methods
.method public onGpsTimeChanged(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 468
    if-eqz p1, :cond_1

    .line 469
    const v0, 0x2bf20

    iget-object v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    const v2, 0x80500b1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/NetworkTimeUpdateService;->startUsingGpsWithTimeout(ILjava/lang/String;)V

    .line 476
    :cond_0
    :goto_0
    return-void

    .line 472
    :cond_1
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mGpsTimerThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mGpsTimerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method

.method public startUsingGpsWithTimeout(ILjava/lang/String;)V
    .locals 6
    .param p1, "milliseconds"    # I
    .param p2, "timeoutMsg"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 480
    iget-boolean v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mIsGpsTimeSyncRunning:Z

    if-ne v0, v1, :cond_0

    .line 481
    const-string v0, "NetworkTimeUpdateService"

    const-string v1, "WARNING: Gps Time Sync is already run"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    :goto_0
    return-void

    .line 484
    :cond_0
    iput-boolean v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mIsGpsTimeSyncRunning:Z

    .line 487
    const-string v0, "NetworkTimeUpdateService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start using GPS for GPS time sync timeout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " timeoutMsg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mLocationManager:Landroid/location/LocationManager;

    .line 489
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/NetworkTimeUpdateService;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 490
    new-instance v0, Lcom/android/server/NetworkTimeUpdateService$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/NetworkTimeUpdateService$4;-><init>(Lcom/android/server/NetworkTimeUpdateService;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mGpsTimerThread:Ljava/lang/Thread;

    .line 508
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mGpsTimerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public systemRunning()V
    .locals 13

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 170
    invoke-direct {p0}, Lcom/android/server/NetworkTimeUpdateService;->registerForTelephonyIntents()V

    .line 171
    invoke-direct {p0}, Lcom/android/server/NetworkTimeUpdateService;->registerForAlarms()V

    .line 172
    invoke-direct {p0}, Lcom/android/server/NetworkTimeUpdateService;->registerForConnectivityIntents()V

    .line 174
    new-instance v6, Landroid/os/HandlerThread;

    const-string v10, "NetworkTimeUpdateService"

    invoke-direct {v6, v10}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 175
    .local v6, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v6}, Landroid/os/HandlerThread;->start()V

    .line 176
    new-instance v10, Lcom/android/server/NetworkTimeUpdateService$MyHandler;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v11

    invoke-direct {v10, p0, v11}, Lcom/android/server/NetworkTimeUpdateService$MyHandler;-><init>(Lcom/android/server/NetworkTimeUpdateService;Landroid/os/Looper;)V

    iput-object v10, p0, Lcom/android/server/NetworkTimeUpdateService;->mHandler:Landroid/os/Handler;

    .line 178
    iget-object v10, p0, Lcom/android/server/NetworkTimeUpdateService;->mHandler:Landroid/os/Handler;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V

    .line 180
    new-instance v10, Lcom/android/server/NetworkTimeUpdateService$SettingsObserver;

    iget-object v11, p0, Lcom/android/server/NetworkTimeUpdateService;->mHandler:Landroid/os/Handler;

    invoke-direct {v10, v11, v8}, Lcom/android/server/NetworkTimeUpdateService$SettingsObserver;-><init>(Landroid/os/Handler;I)V

    iput-object v10, p0, Lcom/android/server/NetworkTimeUpdateService;->mSettingsObserver:Lcom/android/server/NetworkTimeUpdateService$SettingsObserver;

    .line 181
    iget-object v10, p0, Lcom/android/server/NetworkTimeUpdateService;->mSettingsObserver:Lcom/android/server/NetworkTimeUpdateService$SettingsObserver;

    iget-object v11, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v11}, Lcom/android/server/NetworkTimeUpdateService$SettingsObserver;->observe(Landroid/content/Context;)V

    .line 184
    const-string v10, "NetworkTimeUpdateService"

    const-string v11, "add GPS time sync handler and looper"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    new-instance v10, Landroid/os/HandlerThread;

    const-string v11, "NetworkTimeUpdateService"

    invoke-direct {v10, v11}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v10, p0, Lcom/android/server/NetworkTimeUpdateService;->mGpsThread:Landroid/os/HandlerThread;

    .line 186
    iget-object v10, p0, Lcom/android/server/NetworkTimeUpdateService;->mGpsThread:Landroid/os/HandlerThread;

    invoke-virtual {v10}, Landroid/os/HandlerThread;->start()V

    .line 187
    new-instance v10, Lcom/android/server/NetworkTimeUpdateService$MyHandler;

    iget-object v11, p0, Lcom/android/server/NetworkTimeUpdateService;->mGpsThread:Landroid/os/HandlerThread;

    invoke-virtual {v11}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v11

    invoke-direct {v10, p0, v11}, Lcom/android/server/NetworkTimeUpdateService$MyHandler;-><init>(Lcom/android/server/NetworkTimeUpdateService;Landroid/os/Looper;)V

    iput-object v10, p0, Lcom/android/server/NetworkTimeUpdateService;->mGpsHandler:Landroid/os/Handler;

    .line 189
    new-instance v10, Lcom/android/server/NetworkTimeUpdateService$GpsTimeSyncObserver;

    iget-object v11, p0, Lcom/android/server/NetworkTimeUpdateService;->mGpsHandler:Landroid/os/Handler;

    const/4 v12, 0x4

    invoke-direct {v10, v11, v12}, Lcom/android/server/NetworkTimeUpdateService$GpsTimeSyncObserver;-><init>(Landroid/os/Handler;I)V

    iput-object v10, p0, Lcom/android/server/NetworkTimeUpdateService;->mGpsTimeSyncObserver:Lcom/android/server/NetworkTimeUpdateService$GpsTimeSyncObserver;

    .line 190
    iget-object v10, p0, Lcom/android/server/NetworkTimeUpdateService;->mGpsTimeSyncObserver:Lcom/android/server/NetworkTimeUpdateService$GpsTimeSyncObserver;

    iget-object v11, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v11}, Lcom/android/server/NetworkTimeUpdateService$GpsTimeSyncObserver;->observe(Landroid/content/Context;)V

    .line 194
    const-string v10, "persist.sys.boot.count"

    const-string v11, ""

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 195
    .local v1, "icsString":Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v10, ""

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    move v4, v9

    .line 196
    .local v4, "isIcsVersion":Z
    :goto_0
    if-eqz v4, :cond_2

    .line 226
    :cond_0
    :goto_1
    return-void

    .end local v4    # "isIcsVersion":Z
    :cond_1
    move v4, v8

    .line 195
    goto :goto_0

    .line 200
    .restart local v4    # "isIcsVersion":Z
    :cond_2
    iget-object v10, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x80b0001

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    sput v10, Lcom/android/server/NetworkTimeUpdateService;->mDefaultYear:I

    .line 201
    iget-object v10, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const/high16 v11, 0x80c0000

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    sput-boolean v10, Lcom/android/server/NetworkTimeUpdateService;->mIsOverMobile:Z

    .line 203
    const-string v10, "persist.sys.first_time_boot"

    const-string v11, ""

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 204
    .local v5, "tempString":Ljava/lang/String;
    if-eqz v5, :cond_3

    const-string v10, ""

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    move v3, v8

    .line 205
    .local v3, "isFirstBoot":Z
    :goto_2
    if-eqz v3, :cond_0

    .line 206
    const-string v10, "ro.kernel.qemu"

    const-string v11, ""

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 207
    const-string v10, "1"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    move v2, v8

    .line 208
    .local v2, "isEmulator":Z
    :goto_3
    if-eqz v2, :cond_5

    .line 209
    const-string v8, "NetworkTimeUpdateService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isEmulator:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v2    # "isEmulator":Z
    .end local v3    # "isFirstBoot":Z
    :cond_3
    move v3, v9

    .line 204
    goto :goto_2

    .restart local v3    # "isFirstBoot":Z
    :cond_4
    move v2, v9

    .line 207
    goto :goto_3

    .line 213
    .restart local v2    # "isEmulator":Z
    :cond_5
    const-string v10, "vold.decrypt"

    const-string v11, ""

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 214
    .local v0, "decryptState":Ljava/lang/String;
    const-string v10, "NetworkTimeUpdateService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "decryptState:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    const-string v10, ""

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    const-string v10, "trigger_restart_framework"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 216
    :cond_6
    new-instance v7, Landroid/text/format/Time;

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 217
    .local v7, "today":Landroid/text/format/Time;
    invoke-virtual {v7}, Landroid/text/format/Time;->setToNow()V

    .line 218
    const-string v10, "NetworkTimeUpdateService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "First boot:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " with date:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    sget v10, Lcom/android/server/NetworkTimeUpdateService;->mDefaultYear:I

    invoke-virtual {v7, v8, v9, v10}, Landroid/text/format/Time;->set(III)V

    .line 220
    const-string v8, "NetworkTimeUpdateService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Set the year to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget v11, Lcom/android/server/NetworkTimeUpdateService;->mDefaultYear:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const-string v8, "persist.sys.first_time_boot"

    const-string v10, "false"

    invoke-static {v8, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-virtual {v7, v9}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v8

    invoke-static {v8, v9}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    goto/16 :goto_1
.end method
