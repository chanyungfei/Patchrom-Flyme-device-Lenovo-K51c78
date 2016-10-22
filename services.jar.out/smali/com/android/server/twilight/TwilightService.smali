.class public final Lcom/android/server/twilight/TwilightService;
.super Lcom/android/server/SystemService;
.source "TwilightService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/twilight/TwilightService$LocationHandler;,
        Lcom/android/server/twilight/TwilightService$TwilightListenerRecord;
    }
.end annotation


# static fields
.field private static final ACTION_AUTO_FORCE_STOP:Ljava/lang/String; = "com.android.action.AUTO_FORCE_STOP"

.field private static final ACTION_START_NIGHT_WATCH:Ljava/lang/String; = "com.android.action.START_NIGHT_WATCH"

.field static final ACTION_UPDATE_TWILIGHT_STATE:Ljava/lang/String; = "com.android.server.action.UPDATE_TWILIGHT_STATE"

.field static final DEBUG:Z = false

.field private static final SCHEDULER_ALARM_DURATION:J = 0x1b7740L

.field private static final START_WATCH_HOUR:I = 0x1

.field private static final START_WATCH_MINUTE:I = 0x0

.field private static final STOP_WATCH_HOUR:I = 0x3

.field private static final STOP_WATCH_MINUTE:I = 0x0

.field static final TAG:Ljava/lang/String; = "TwilightService"


# instance fields
.field mAlarmManager:Landroid/app/AlarmManager;

.field private final mEmptyLocationListener:Landroid/location/LocationListener;

.field final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/twilight/TwilightService$TwilightListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field mLocationHandler:Lcom/android/server/twilight/TwilightService$LocationHandler;

.field private final mLocationListener:Landroid/location/LocationListener;

.field mLocationManager:Landroid/location/LocationManager;

.field final mLock:Ljava/lang/Object;

.field private final mNightWatchReceiver:Landroid/content/BroadcastReceiver;

.field private final mService:Lcom/android/server/twilight/TwilightManager;

.field mTwilightState:Lcom/android/server/twilight/TwilightState;

.field private final mUpdateLocationReceiver:Landroid/content/BroadcastReceiver;

.field private storeDataConnection:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/twilight/TwilightService;->mLock:Ljava/lang/Object;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/twilight/TwilightService;->mListeners:Ljava/util/ArrayList;

    .line 125
    new-instance v0, Lcom/android/server/twilight/TwilightService$1;

    invoke-direct {v0, p0}, Lcom/android/server/twilight/TwilightService$1;-><init>(Lcom/android/server/twilight/TwilightService;)V

    iput-object v0, p0, Lcom/android/server/twilight/TwilightService;->mService:Lcom/android/server/twilight/TwilightManager;

    .line 443
    new-instance v0, Lcom/android/server/twilight/TwilightService$2;

    invoke-direct {v0, p0}, Lcom/android/server/twilight/TwilightService$2;-><init>(Lcom/android/server/twilight/TwilightService;)V

    iput-object v0, p0, Lcom/android/server/twilight/TwilightService;->mUpdateLocationReceiver:Landroid/content/BroadcastReceiver;

    .line 465
    new-instance v0, Lcom/android/server/twilight/TwilightService$3;

    invoke-direct {v0, p0}, Lcom/android/server/twilight/TwilightService$3;-><init>(Lcom/android/server/twilight/TwilightService;)V

    iput-object v0, p0, Lcom/android/server/twilight/TwilightService;->mEmptyLocationListener:Landroid/location/LocationListener;

    .line 479
    new-instance v0, Lcom/android/server/twilight/TwilightService$4;

    invoke-direct {v0, p0}, Lcom/android/server/twilight/TwilightService$4;-><init>(Lcom/android/server/twilight/TwilightService;)V

    iput-object v0, p0, Lcom/android/server/twilight/TwilightService;->mLocationListener:Landroid/location/LocationListener;

    .line 502
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/twilight/TwilightService;->storeDataConnection:Z

    .line 595
    new-instance v0, Lcom/android/server/twilight/TwilightService$5;

    invoke-direct {v0, p0}, Lcom/android/server/twilight/TwilightService$5;-><init>(Lcom/android/server/twilight/TwilightService;)V

    iput-object v0, p0, Lcom/android/server/twilight/TwilightService;->mNightWatchReceiver:Landroid/content/BroadcastReceiver;

    .line 80
    return-void
.end method

.method static synthetic access$100(Landroid/location/Location;Landroid/location/Location;)Z
    .locals 1
    .param p0, "x0"    # Landroid/location/Location;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    .line 61
    invoke-static {p0, p1}, Lcom/android/server/twilight/TwilightService;->hasMoved(Landroid/location/Location;Landroid/location/Location;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/twilight/TwilightService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/twilight/TwilightService;

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/android/server/twilight/TwilightService;->storeDataConnection:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/server/twilight/TwilightService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/twilight/TwilightService;
    .param p1, "x1"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/android/server/twilight/TwilightService;->storeDataConnection:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/twilight/TwilightService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/twilight/TwilightService;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/server/twilight/TwilightService;->autoForceStopProcess()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/twilight/TwilightService;)Landroid/location/LocationListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/twilight/TwilightService;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mEmptyLocationListener:Landroid/location/LocationListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/twilight/TwilightService;)Landroid/location/LocationListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/twilight/TwilightService;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mLocationListener:Landroid/location/LocationListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/twilight/TwilightService;Lcom/android/server/twilight/TwilightState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/twilight/TwilightService;
    .param p1, "x1"    # Lcom/android/server/twilight/TwilightState;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/server/twilight/TwilightService;->setTwilightState(Lcom/android/server/twilight/TwilightState;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/twilight/TwilightService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/twilight/TwilightService;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/server/twilight/TwilightService;->updateAlarmNightWatch()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/twilight/TwilightService;JII)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/twilight/TwilightService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # I

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/twilight/TwilightService;->isTimePassed(JII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/twilight/TwilightService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/twilight/TwilightService;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/server/twilight/TwilightService;->stopNightWatch()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/twilight/TwilightService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/twilight/TwilightService;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/server/twilight/TwilightService;->cancelAlarmStopProcess()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/twilight/TwilightService;J)V
    .locals 1
    .param p0, "x0"    # Lcom/android/server/twilight/TwilightService;
    .param p1, "x1"    # J

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/server/twilight/TwilightService;->setAlarmStopProcess(J)V

    return-void
.end method

.method private autoForceStopProcess()V
    .locals 6

    .prologue
    .line 525
    invoke-virtual {p0}, Lcom/android/server/twilight/TwilightService;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "power"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 527
    .local v3, "powerManager":Landroid/os/PowerManager;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 528
    :cond_0
    const-string v4, "TwilightService"

    const-string v5, "Skip ForceStop Process screen on"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    :goto_0
    return-void

    .line 531
    :cond_1
    const-string v4, "TwilightService"

    const-string v5, "ForceStop Process start"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    const/4 v4, 0x1

    const-string v5, "ForceStopProcess"

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    .line 534
    .local v1, "forceStopWakeLock":Landroid/os/PowerManager$WakeLock;
    const-wide/16 v4, 0x2710

    invoke-virtual {v1, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 536
    invoke-direct {p0}, Lcom/android/server/twilight/TwilightService;->disconnectNetWork()V

    .line 538
    invoke-virtual {p0}, Lcom/android/server/twilight/TwilightService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/lenovo/memoryclean/MemoryCleanApi;->newInstance(Landroid/content/Context;)Lcom/lenovo/memoryclean/MemoryCleanApi;

    move-result-object v0

    .line 539
    .local v0, "api":Lcom/lenovo/memoryclean/MemoryCleanApi;
    invoke-virtual {v0}, Lcom/lenovo/memoryclean/MemoryCleanApi;->init()V

    .line 543
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 544
    .local v2, "ignoreListSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v4, "com.lenovo.lenovofingerprintsettings"

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 545
    const-string v4, "com.lenovo.launcher"

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 546
    const-string v4, "com.lenovo.factorymode"

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 547
    const-string v4, "com.validation"

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 549
    invoke-virtual {v0, v2}, Lcom/lenovo/memoryclean/MemoryCleanApi;->cleanMemory(Ljava/util/HashSet;)Ljava/util/List;

    .line 552
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 553
    const-string v4, "TwilightService"

    const-string v5, "ForceStop Process end"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private cancelAlarmStopProcess()V
    .locals 5

    .prologue
    .line 651
    const-string v2, "TwilightService"

    const-string v3, "cancelAlarmStopProcess"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.action.AUTO_FORCE_STOP"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 653
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/server/twilight/TwilightService;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/high16 v4, 0x10000000

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 655
    .local v1, "sender":Landroid/app/PendingIntent;
    iget-object v2, p0, Lcom/android/server/twilight/TwilightService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v2, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 656
    return-void
.end method

.method private disconnectNetWork()V
    .locals 4

    .prologue
    .line 506
    invoke-virtual {p0}, Lcom/android/server/twilight/TwilightService;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 508
    .local v1, "wifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v2

    const/16 v3, 0xb

    if-eq v2, v3, :cond_2

    .line 509
    :cond_0
    const-string v2, "TwilightService"

    const-string v3, "WifiAP enable not disconnect network"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    :cond_1
    :goto_0
    return-void

    .line 512
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/twilight/TwilightService;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 514
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_1

    .line 515
    iget-boolean v2, p0, Lcom/android/server/twilight/TwilightService;->storeDataConnection:Z

    if-nez v2, :cond_1

    .line 516
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/twilight/TwilightService;->storeDataConnection:Z

    .line 517
    iget-boolean v2, p0, Lcom/android/server/twilight/TwilightService;->storeDataConnection:Z

    if-eqz v2, :cond_1

    .line 518
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->disableDataConnectivity()Z

    .line 519
    const-string v2, "TwilightService"

    const-string v3, "disableDataConnectivity"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static hasMoved(Landroid/location/Location;Landroid/location/Location;)Z
    .locals 8
    .param p0, "from"    # Landroid/location/Location;
    .param p1, "to"    # Landroid/location/Location;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 174
    if-nez p1, :cond_1

    .line 195
    :cond_0
    :goto_0
    return v3

    .line 178
    :cond_1
    if-nez p0, :cond_2

    move v3, v2

    .line 179
    goto :goto_0

    .line 183
    :cond_2
    invoke-virtual {p1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v4

    invoke-virtual {p0}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    .line 188
    invoke-virtual {p0, p1}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v0

    .line 191
    .local v0, "distance":F
    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v5

    add-float v1, v4, v5

    .line 195
    .local v1, "totalAccuracy":F
    cmpl-float v4, v0, v1

    if-ltz v4, :cond_3

    :goto_1
    move v3, v2

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_1
.end method

.method private isTimePassed(JII)Z
    .locals 5
    .param p1, "currentTime"    # J
    .param p3, "hour"    # I
    .param p4, "minute"    # I

    .prologue
    .line 558
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 559
    .local v0, "alarmCalendar":Ljava/util/Calendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 560
    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 561
    .local v1, "nowHour":I
    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 562
    .local v2, "nowMinute":I
    if-lt p3, v1, :cond_0

    if-ne p3, v1, :cond_1

    if-gt p4, v2, :cond_1

    .line 564
    :cond_0
    const/4 v3, 0x1

    .line 566
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private setAlarmStopProcess(J)V
    .locals 7
    .param p1, "timeMillisSeconds"    # J

    .prologue
    const/4 v5, 0x0

    .line 659
    const-string v2, "TwilightService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setAlarmStopProcess:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.action.AUTO_FORCE_STOP"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 661
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/server/twilight/TwilightService;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x10000000

    invoke-static {v2, v5, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 663
    .local v1, "sender":Landroid/app/PendingIntent;
    iget-object v2, p0, Lcom/android/server/twilight/TwilightService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v2, v5, p1, p2, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 664
    return-void
.end method

.method private setTwilightState(Lcom/android/server/twilight/TwilightState;)V
    .locals 4
    .param p1, "state"    # Lcom/android/server/twilight/TwilightState;

    .prologue
    .line 156
    iget-object v3, p0, Lcom/android/server/twilight/TwilightService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 157
    :try_start_0
    iget-object v2, p0, Lcom/android/server/twilight/TwilightService;->mTwilightState:Lcom/android/server/twilight/TwilightState;

    invoke-static {v2, p1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 162
    iput-object p1, p0, Lcom/android/server/twilight/TwilightService;->mTwilightState:Lcom/android/server/twilight/TwilightState;

    .line 164
    iget-object v2, p0, Lcom/android/server/twilight/TwilightService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 165
    .local v1, "listenerLen":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 166
    iget-object v2, p0, Lcom/android/server/twilight/TwilightService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/twilight/TwilightService$TwilightListenerRecord;

    invoke-virtual {v2}, Lcom/android/server/twilight/TwilightService$TwilightListenerRecord;->postUpdate()V

    .line 165
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 169
    .end local v0    # "i":I
    .end local v1    # "listenerLen":I
    :cond_0
    monitor-exit v3

    .line 170
    return-void

    .line 169
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private startNightWatch()V
    .locals 6

    .prologue
    .line 640
    const-string v1, "TwilightService"

    const-string v2, "startNightWatch"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 642
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 643
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 644
    const-string v1, "com.android.action.AUTO_FORCE_STOP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 645
    invoke-virtual {p0}, Lcom/android/server/twilight/TwilightService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/twilight/TwilightService;->mNightWatchReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 646
    invoke-direct {p0}, Lcom/android/server/twilight/TwilightService;->cancelAlarmStopProcess()V

    .line 647
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x1b7740

    add-long/2addr v2, v4

    invoke-direct {p0, v2, v3}, Lcom/android/server/twilight/TwilightService;->setAlarmStopProcess(J)V

    .line 648
    return-void
.end method

.method private stopNightWatch()V
    .locals 3

    .prologue
    .line 627
    const-string v1, "TwilightService"

    const-string v2, "stopNightWatch"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    invoke-virtual {p0}, Lcom/android/server/twilight/TwilightService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/twilight/TwilightService;->mNightWatchReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 629
    iget-boolean v1, p0, Lcom/android/server/twilight/TwilightService;->storeDataConnection:Z

    if-eqz v1, :cond_0

    .line 630
    invoke-virtual {p0}, Lcom/android/server/twilight/TwilightService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 632
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    if-nez v0, :cond_1

    .line 637
    .end local v0    # "tm":Landroid/telephony/TelephonyManager;
    :cond_0
    :goto_0
    return-void

    .line 633
    .restart local v0    # "tm":Landroid/telephony/TelephonyManager;
    :cond_1
    const-string v1, "TwilightService"

    const-string v2, "stopNightWatch enableDataConnectivity"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/twilight/TwilightService;->storeDataConnection:Z

    .line 635
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->enableDataConnectivity()Z

    goto :goto_0
.end method

.method private updateAlarmNightWatch()V
    .locals 11

    .prologue
    const/4 v8, 0x1

    const/4 v10, 0x0

    .line 570
    const-string v5, "persist.perf.nightwatch"

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_0

    .line 593
    :goto_0
    return-void

    .line 573
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 574
    .local v0, "alarmCalendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 575
    .local v2, "currentTime":J
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 576
    invoke-direct {p0, v2, v3, v8, v10}, Lcom/android/server/twilight/TwilightService;->isTimePassed(JII)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 577
    const/4 v5, 0x6

    invoke-virtual {v0, v5, v8}, Ljava/util/Calendar;->add(II)V

    .line 578
    const/4 v5, 0x3

    invoke-direct {p0, v2, v3, v5, v10}, Lcom/android/server/twilight/TwilightService;->isTimePassed(JII)Z

    move-result v5

    if-nez v5, :cond_1

    .line 579
    invoke-direct {p0}, Lcom/android/server/twilight/TwilightService;->startNightWatch()V

    .line 582
    :cond_1
    const/16 v5, 0xb

    invoke-virtual {v0, v5, v8}, Ljava/util/Calendar;->set(II)V

    .line 583
    const/16 v5, 0xc

    invoke-virtual {v0, v5, v10}, Ljava/util/Calendar;->set(II)V

    .line 584
    const/16 v5, 0xd

    invoke-virtual {v0, v5, v10}, Ljava/util/Calendar;->set(II)V

    .line 585
    const/16 v5, 0xe

    invoke-virtual {v0, v5, v10}, Ljava/util/Calendar;->set(II)V

    .line 587
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    .line 588
    .local v6, "timeMillisSeconds":J
    const-string v5, "TwilightService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateAlarmNightWatch:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.android.action.START_NIGHT_WATCH"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 590
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/server/twilight/TwilightService;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v8, 0x8000000

    invoke-static {v5, v10, v1, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 592
    .local v4, "sender":Landroid/app/PendingIntent;
    iget-object v5, p0, Lcom/android/server/twilight/TwilightService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v5, v10, v6, v7, v4}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method


# virtual methods
.method public onStart()V
    .locals 3

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/android/server/twilight/TwilightService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/android/server/twilight/TwilightService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 85
    invoke-virtual {p0}, Lcom/android/server/twilight/TwilightService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "location"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    iput-object v1, p0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    .line 87
    new-instance v1, Lcom/android/server/twilight/TwilightService$LocationHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/twilight/TwilightService$LocationHandler;-><init>(Lcom/android/server/twilight/TwilightService;Lcom/android/server/twilight/TwilightService$1;)V

    iput-object v1, p0, Lcom/android/server/twilight/TwilightService;->mLocationHandler:Lcom/android/server/twilight/TwilightService$LocationHandler;

    .line 89
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 90
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 92
    const-string v1, "com.android.server.action.UPDATE_TWILIGHT_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 95
    const-string v1, "com.android.action.START_NIGHT_WATCH"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Lcom/android/server/twilight/TwilightService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/twilight/TwilightService;->mUpdateLocationReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 99
    const-class v1, Lcom/android/server/twilight/TwilightManager;

    iget-object v2, p0, Lcom/android/server/twilight/TwilightService;->mService:Lcom/android/server/twilight/TwilightManager;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/twilight/TwilightService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 102
    invoke-direct {p0}, Lcom/android/server/twilight/TwilightService;->updateAlarmNightWatch()V

    .line 103
    return-void
.end method
