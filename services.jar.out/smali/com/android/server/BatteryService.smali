.class public final Lcom/android/server/BatteryService;
.super Lcom/android/server/SystemService;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/BatteryService$LocalService;,
        Lcom/android/server/BatteryService$FlymeInjector;,
        Lcom/android/server/BatteryService$BinderService;,
        Lcom/android/server/BatteryService$BatteryListener;,
        Lcom/android/server/BatteryService$Led;
    }
.end annotation


# static fields
.field private static final BATTERY_PLUGGED_NONE:I = 0x0

.field private static final BATTERY_SCALE:I = 0x64

.field private static final DEBUG:Z = false

.field private static final DUMPSYS_ARGS:[Ljava/lang/String;

.field private static final DUMPSYS_DATA_PATH:Ljava/lang/String; = "/data/system/"

.field private static final DUMP_MAX_LENGTH:I = 0x6000

.field private static final GLOVE_PATH:Ljava/lang/String; = "sys/lenovo_tp_gestures/tpd_glove_status"

.field private static final IPO_POWER_OFF:Ljava/lang/String; = "android.intent.action.ACTION_SHUTDOWN_IPO"

.field private static final IPO_POWER_ON:Ljava/lang/String; = "android.intent.action.ACTION_BOOT_IPO"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private LowLevelFlag:Z

.field private ipo_led_off:Z

.field private ipo_led_on:Z

.field private mBatteryLevelCritical:Z

.field private mBatteryLevelLow:Z

.field private mBatteryProps:Landroid/os/BatteryProperties;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mBootCompleted:Z

.field private final mContext:Landroid/content/Context;

.field private mCriticalBatteryLevel:I

.field private mDischargeStartLevel:I

.field private mDischargeStartTime:J

.field private mGloveModeClosed:Z

.field private mGloveModeEnabled:Z

.field private final mHandler:Landroid/os/Handler;

.field private mIPOBoot:Z

.field private mIPOShutdown:Z

.field private mIPOed:Z

.field private mInvalidCharger:I

.field private final mInvalidChargerObserver:Landroid/os/UEventObserver;

.field private mLastBatteryHealth:I

.field private mLastBatteryLevel:I

.field private mLastBatteryLevelCritical:Z

.field private mLastBatteryLevel_smb:I

.field private mLastBatteryPresent:Z

.field private mLastBatteryPresent_smb:Z

.field private final mLastBatteryProps:Landroid/os/BatteryProperties;

.field private mLastBatteryStatus:I

.field private mLastBatteryStatus_smb:I

.field private mLastBatteryTemperature:I

.field private mLastBatteryVoltage:I

.field private mLastInvalidCharger:I

.field private mLastPlugType:I

.field private mLed:Lcom/android/server/BatteryService$Led;

.field private final mLock:Ljava/lang/Object;

.field private mLowBatteryCloseWarningLevel:I

.field private mLowBatteryWarningLevel:I

.field private mPlugType:I

.field private mSentLowBatteryBroadcast:Z

.field private mShutdownBatteryTemperature:I

.field private mUpdatesStopped:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 103
    const-class v0, Lcom/android/server/BatteryService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    .line 114
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "--checkin"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "--unplugged"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/BatteryService;->DUMPSYS_ARGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 180
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 125
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    .line 128
    new-instance v0, Landroid/os/BatteryProperties;

    invoke-direct {v0}, Landroid/os/BatteryProperties;-><init>()V

    iput-object v0, p0, Lcom/android/server/BatteryService;->mLastBatteryProps:Landroid/os/BatteryProperties;

    .line 149
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    .line 160
    iput-boolean v1, p0, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    .line 162
    iput-boolean v1, p0, Lcom/android/server/BatteryService;->mIPOShutdown:Z

    .line 163
    iput-boolean v1, p0, Lcom/android/server/BatteryService;->mIPOed:Z

    .line 164
    iput-boolean v1, p0, Lcom/android/server/BatteryService;->mIPOBoot:Z

    .line 167
    iput-boolean v1, p0, Lcom/android/server/BatteryService;->ipo_led_on:Z

    .line 168
    iput-boolean v1, p0, Lcom/android/server/BatteryService;->ipo_led_off:Z

    .line 169
    iput-boolean v1, p0, Lcom/android/server/BatteryService;->LowLevelFlag:Z

    .line 171
    iput-boolean v1, p0, Lcom/android/server/BatteryService;->mBootCompleted:Z

    .line 174
    iput-boolean v1, p0, Lcom/android/server/BatteryService;->mGloveModeClosed:Z

    .line 175
    iput-boolean v1, p0, Lcom/android/server/BatteryService;->mGloveModeEnabled:Z

    .line 846
    new-instance v0, Lcom/android/server/BatteryService$11;

    invoke-direct {v0, p0}, Lcom/android/server/BatteryService$11;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v0, p0, Lcom/android/server/BatteryService;->mInvalidChargerObserver:Landroid/os/UEventObserver;

    .line 182
    iput-object p1, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    .line 183
    new-instance v0, Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    .line 184
    new-instance v1, Lcom/android/server/BatteryService$Led;

    const-class v0, Lcom/android/server/lights/LightsManager;

    invoke-virtual {p0, v0}, Lcom/android/server/BatteryService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/lights/LightsManager;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/server/BatteryService$Led;-><init>(Lcom/android/server/BatteryService;Landroid/content/Context;Lcom/android/server/lights/LightsManager;)V

    iput-object v1, p0, Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;

    .line 185
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/BatteryService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 187
    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, #android:integer@config_criticalBatteryWarningLevel#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService;->mCriticalBatteryLevel:I

    .line 189
    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, #android:integer@config_lowBatteryWarningLevel#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    .line 191
    iget v0, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    iget-object v1, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, #android:integer@config_lowBatteryCloseWarningBump#t

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/BatteryService;->mLowBatteryCloseWarningLevel:I

    .line 193
    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, #android:integer@config_shutdownBatteryTemperature#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService;->mShutdownBatteryTemperature:I

    .line 197
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/devices/virtual/switch/invalid_charger/state"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/android/server/BatteryService;->mInvalidChargerObserver:Landroid/os/UEventObserver;

    const-string v1, "DEVPATH=/devices/virtual/switch/invalid_charger"

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 201
    :cond_0

    invoke-static/range {p0 .. p0}, Lcom/android/server/BatteryService$FlymeInjector;->registerBootCompleted(Lcom/android/server/BatteryService;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/BatteryService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/server/BatteryService;->updateBatteryWarningLevelLocked()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/server/BatteryService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # Z

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/android/server/BatteryService;->mIPOShutdown:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/BatteryService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/BatteryService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    .line 102
    iget v0, p0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    return v0
.end method

.method static synthetic access$1302(Lcom/android/server/BatteryService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # I

    .prologue
    .line 102
    iput p1, p0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    return p1
.end method

.method static synthetic access$1402(Lcom/android/server/BatteryService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # Z

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/android/server/BatteryService;->ipo_led_on:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/server/BatteryService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->ipo_led_off:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/android/server/BatteryService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # Z

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/android/server/BatteryService;->ipo_led_off:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/server/BatteryService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->LowLevelFlag:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/BatteryService;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # Ljava/io/PrintWriter;
    .param p2, "x2"    # [Ljava/lang/String;

    .prologue
    .line 102
    invoke-direct {p0, p1, p2}, Lcom/android/server/BatteryService;->dumpInternal(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/BatteryService;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # I

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/server/BatteryService;->isPoweredLocked(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/BatteryService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    .line 102
    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/BatteryService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mIPOBoot:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/BatteryService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/BatteryService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # Z

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/android/server/BatteryService;->mIPOBoot:Z

    return p1
.end method

.method static synthetic access$302(Lcom/android/server/BatteryService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # I

    .prologue
    .line 102
    iput p1, p0, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/BatteryService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    .line 102
    iget v0, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/BatteryService;)Landroid/os/BatteryProperties;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/BatteryService;Landroid/os/BatteryProperties;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # Landroid/os/BatteryProperties;

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/server/BatteryService;->update(Landroid/os/BatteryProperties;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/BatteryService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method private dumpInternal(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 11
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 767
    iget-object v8, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 768
    if-eqz p2, :cond_0

    :try_start_0
    array-length v9, p2

    if-eqz v9, :cond_0

    const-string v9, "-a"

    const/4 v10, 0x0

    aget-object v10, p2, v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 769
    :cond_0
    const-string v6, "Current Battery Service state:"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 770
    iget-boolean v6, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    if-eqz v6, :cond_1

    .line 771
    const-string v6, "  (UPDATES STOPPED -- use \'reset\' to restart)"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 773
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  AC powered: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v7, v7, Landroid/os/BatteryProperties;->chargerAcOnline:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 774
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  USB powered: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v7, v7, Landroid/os/BatteryProperties;->chargerUsbOnline:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 775
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  Wireless powered: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v7, v7, Landroid/os/BatteryProperties;->chargerWirelessOnline:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 776
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  status: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v7, v7, Landroid/os/BatteryProperties;->batteryStatus:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 777
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  status: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v7, v7, Landroid/os/BatteryProperties;->batteryStatus_smb:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 778
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  health: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v7, v7, Landroid/os/BatteryProperties;->batteryHealth:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 779
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  present: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v7, v7, Landroid/os/BatteryProperties;->batteryPresent:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 780
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  present: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v7, v7, Landroid/os/BatteryProperties;->batteryPresent_smb:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 781
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  level: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v7, v7, Landroid/os/BatteryProperties;->batteryLevel:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 782
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  level: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v7, v7, Landroid/os/BatteryProperties;->batteryLevel_smb:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 783
    const-string v6, "  scale: 100"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 784
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  voltage: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v7, v7, Landroid/os/BatteryProperties;->batteryVoltage:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 785
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  temperature: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v7, v7, Landroid/os/BatteryProperties;->batteryTemperature:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 786
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  technology: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-object v7, v7, Landroid/os/BatteryProperties;->batteryTechnology:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 843
    :cond_2
    :goto_0
    monitor-exit v8

    .line 844
    return-void

    .line 787
    :cond_3
    array-length v9, p2

    const/4 v10, 0x3

    if-ne v9, v10, :cond_10

    const-string v9, "set"

    const/4 v10, 0x0

    aget-object v10, p2, v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 788
    const/4 v9, 0x1

    aget-object v1, p2, v9

    .line 789
    .local v1, "key":Ljava/lang/String;
    const/4 v9, 0x2

    aget-object v5, p2, v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 791
    .local v5, "value":Ljava/lang/String;
    :try_start_1
    iget-boolean v9, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    if-nez v9, :cond_4

    .line 792
    iget-object v9, p0, Lcom/android/server/BatteryService;->mLastBatteryProps:Landroid/os/BatteryProperties;

    iget-object v10, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    invoke-virtual {v9, v10}, Landroid/os/BatteryProperties;->set(Landroid/os/BatteryProperties;)V

    .line 794
    :cond_4
    const/4 v4, 0x1

    .line 795
    .local v4, "update":Z
    const-string v9, "ac"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 796
    iget-object v9, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_5

    :goto_1
    iput-boolean v6, v9, Landroid/os/BatteryProperties;->chargerAcOnline:Z

    .line 815
    :goto_2
    if-eqz v4, :cond_2

    .line 816
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    .line 818
    .local v2, "ident":J
    const/4 v6, 0x1

    :try_start_2
    iput-boolean v6, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    .line 819
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/android/server/BatteryService;->processValuesLocked(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 821
    :try_start_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 824
    .end local v2    # "ident":J
    .end local v4    # "update":Z
    :catch_0
    move-exception v0

    .line 825
    .local v0, "ex":Ljava/lang/NumberFormatException;
    :try_start_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad value: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 843
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    .end local v1    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v6

    .restart local v1    # "key":Ljava/lang/String;
    .restart local v4    # "update":Z
    .restart local v5    # "value":Ljava/lang/String;
    :cond_5
    move v6, v7

    .line 796
    goto :goto_1

    .line 797
    :cond_6
    :try_start_5
    const-string v9, "usb"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 798
    iget-object v9, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_7

    :goto_3
    iput-boolean v6, v9, Landroid/os/BatteryProperties;->chargerUsbOnline:Z

    goto :goto_2

    :cond_7
    move v6, v7

    goto :goto_3

    .line 799
    :cond_8
    const-string v9, "wireless"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 800
    iget-object v9, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_9

    :goto_4
    iput-boolean v6, v9, Landroid/os/BatteryProperties;->chargerWirelessOnline:Z

    goto :goto_2

    :cond_9
    move v6, v7

    goto :goto_4

    .line 801
    :cond_a
    const-string v6, "status"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 802
    iget-object v6, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Landroid/os/BatteryProperties;->batteryStatus:I

    goto :goto_2

    .line 803
    :cond_b
    const-string v6, "status_smb"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 804
    iget-object v6, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Landroid/os/BatteryProperties;->batteryStatus_smb:I

    goto :goto_2

    .line 805
    :cond_c
    const-string v6, "level"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 806
    iget-object v6, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Landroid/os/BatteryProperties;->batteryLevel:I

    goto/16 :goto_2

    .line 807
    :cond_d
    const-string v6, "level_smb"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 808
    iget-object v6, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Landroid/os/BatteryProperties;->batteryLevel_smb:I

    goto/16 :goto_2

    .line 809
    :cond_e
    const-string v6, "invalid"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 810
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    goto/16 :goto_2

    .line 812
    :cond_f
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown set option: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 813
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 821
    .restart local v2    # "ident":J
    :catchall_1
    move-exception v6

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 827
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "ident":J
    .end local v4    # "update":Z
    .end local v5    # "value":Ljava/lang/String;
    :cond_10
    :try_start_6
    array-length v7, p2

    if-ne v7, v6, :cond_12

    const-string v6, "reset"

    const/4 v7, 0x0

    aget-object v7, p2, v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 828
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-wide v2

    .line 830
    .restart local v2    # "ident":J
    :try_start_7
    iget-boolean v6, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    if-eqz v6, :cond_11

    .line 831
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    .line 832
    iget-object v6, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-object v7, p0, Lcom/android/server/BatteryService;->mLastBatteryProps:Landroid/os/BatteryProperties;

    invoke-virtual {v6, v7}, Landroid/os/BatteryProperties;->set(Landroid/os/BatteryProperties;)V

    .line 833
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/android/server/BatteryService;->processValuesLocked(Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 836
    :cond_11
    :try_start_8
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    :catchall_2
    move-exception v6

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .line 839
    .end local v2    # "ident":J
    :cond_12
    const-string v6, "Dump current battery state, or:"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 840
    const-string v6, "  set [ac|usb|wireless|status|level|invalid] <value>"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 841
    const-string v6, "  reset"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0
.end method

.method private getIconLocked(I)I
    .locals 4
    .param p1, "level"    # I

    .prologue
    const v0, #android:drawable@stat_sys_battery_charge#t

    const v1, #android:drawable@stat_sys_battery#t

    .line 749
    iget-object v2, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v2, v2, Landroid/os/BatteryProperties;->batteryStatus:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 762
    :cond_0
    :goto_0
    return v0

    .line 751
    :cond_1
    iget-object v2, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v2, v2, Landroid/os/BatteryProperties;->batteryStatus:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    move v0, v1

    .line 752
    goto :goto_0

    .line 753
    :cond_2
    iget-object v2, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v2, v2, Landroid/os/BatteryProperties;->batteryStatus:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v2, v2, Landroid/os/BatteryProperties;->batteryStatus:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_5

    .line 755
    :cond_3
    const/4 v2, 0x7

    invoke-direct {p0, v2}, Lcom/android/server/BatteryService;->isPoweredLocked(I)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v2, v2, Landroid/os/BatteryProperties;->batteryLevel:I

    const/16 v3, 0x64

    if-ge v2, v3, :cond_0

    :cond_4
    move v0, v1

    .line 759
    goto :goto_0

    .line 762
    :cond_5
    const v0, #android:drawable@stat_sys_battery_unknown#t

    goto :goto_0
.end method

.method private isPoweredLocked(I)Z
    .locals 2
    .param p1, "plugTypeSet"    # I

    .prologue
    const/4 v0, 0x1

    .line 281
    iget-object v1, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v1, v1, Landroid/os/BatteryProperties;->batteryStatus:I

    if-ne v1, v0, :cond_1

    .line 293
    :cond_0
    :goto_0
    return v0

    .line 284
    :cond_1
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v1, v1, Landroid/os/BatteryProperties;->chargerAcOnline:Z

    if-nez v1, :cond_0

    .line 287
    :cond_2
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v1, v1, Landroid/os/BatteryProperties;->chargerUsbOnline:Z

    if-nez v1, :cond_0

    .line 290
    :cond_3
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v1, v1, Landroid/os/BatteryProperties;->chargerWirelessOnline:Z

    if-nez v1, :cond_0

    .line 293
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private logBatteryStatsLocked()V
    .locals 11

    .prologue
    .line 683
    const-string v7, "batterystats"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 684
    .local v0, "batteryInfoService":Landroid/os/IBinder;
    if-nez v0, :cond_1

    .line 718
    :cond_0
    :goto_0
    return-void

    .line 686
    :cond_1
    iget-object v7, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    const-string v8, "dropbox"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/DropBoxManager;

    .line 687
    .local v1, "db":Landroid/os/DropBoxManager;
    if-eqz v1, :cond_0

    const-string v7, "BATTERY_DISCHARGE_INFO"

    invoke-virtual {v1, v7}, Landroid/os/DropBoxManager;->isTagEnabled(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 689
    const/4 v2, 0x0

    .line 690
    .local v2, "dumpFile":Ljava/io/File;
    const/4 v4, 0x0

    .line 693
    .local v4, "dumpStream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string v7, "/data/system/batterystats.dump"

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 694
    .end local v2    # "dumpFile":Ljava/io/File;
    .local v3, "dumpFile":Ljava/io/File;
    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 695
    .end local v4    # "dumpStream":Ljava/io/FileOutputStream;
    .local v5, "dumpStream":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v7

    sget-object v8, Lcom/android/server/BatteryService;->DUMPSYS_ARGS:[Ljava/lang/String;

    invoke-interface {v0, v7, v8}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 696
    invoke-static {v5}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 699
    const-string v7, "BATTERY_DISCHARGE_INFO"

    const/4 v8, 0x2

    invoke-virtual {v1, v7, v3, v8}, Landroid/os/DropBoxManager;->addFile(Ljava/lang/String;Ljava/io/File;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 706
    if-eqz v5, :cond_2

    .line 708
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 713
    :cond_2
    :goto_1
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v7

    if-nez v7, :cond_7

    .line 714
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "failed to delete temporary dumpsys file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    .end local v5    # "dumpStream":Ljava/io/FileOutputStream;
    .restart local v4    # "dumpStream":Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3    # "dumpFile":Ljava/io/File;
    .restart local v2    # "dumpFile":Ljava/io/File;
    goto :goto_0

    .line 709
    .end local v2    # "dumpFile":Ljava/io/File;
    .end local v4    # "dumpStream":Ljava/io/FileOutputStream;
    .restart local v3    # "dumpFile":Ljava/io/File;
    .restart local v5    # "dumpStream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v6

    .line 710
    .local v6, "e":Ljava/io/IOException;
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v8, "failed to close dumpsys output stream"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 700
    .end local v3    # "dumpFile":Ljava/io/File;
    .end local v5    # "dumpStream":Ljava/io/FileOutputStream;
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v2    # "dumpFile":Ljava/io/File;
    .restart local v4    # "dumpStream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v6

    .line 701
    .local v6, "e":Landroid/os/RemoteException;
    :goto_2
    :try_start_4
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v8, "failed to dump battery service"

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 706
    if-eqz v4, :cond_3

    .line 708
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 713
    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_3
    :goto_3
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v7

    if-nez v7, :cond_0

    .line 714
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "failed to delete temporary dumpsys file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 709
    .restart local v6    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v6

    .line 710
    .local v6, "e":Ljava/io/IOException;
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v8, "failed to close dumpsys output stream"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 702
    .end local v6    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v6

    .line 703
    .restart local v6    # "e":Ljava/io/IOException;
    :goto_4
    :try_start_6
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v8, "failed to write dumpsys file"

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 706
    if-eqz v4, :cond_4

    .line 708
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 713
    :cond_4
    :goto_5
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v7

    if-nez v7, :cond_0

    .line 714
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "failed to delete temporary dumpsys file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 709
    :catch_4
    move-exception v6

    .line 710
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v8, "failed to close dumpsys output stream"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 706
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_6
    if-eqz v4, :cond_5

    .line 708
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 713
    :cond_5
    :goto_7
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v8

    if-nez v8, :cond_6

    .line 714
    sget-object v8, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "failed to delete temporary dumpsys file: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    throw v7

    .line 709
    :catch_5
    move-exception v6

    .line 710
    .restart local v6    # "e":Ljava/io/IOException;
    sget-object v8, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v9, "failed to close dumpsys output stream"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 706
    .end local v2    # "dumpFile":Ljava/io/File;
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v3    # "dumpFile":Ljava/io/File;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3    # "dumpFile":Ljava/io/File;
    .restart local v2    # "dumpFile":Ljava/io/File;
    goto :goto_6

    .end local v2    # "dumpFile":Ljava/io/File;
    .end local v4    # "dumpStream":Ljava/io/FileOutputStream;
    .restart local v3    # "dumpFile":Ljava/io/File;
    .restart local v5    # "dumpStream":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v7

    move-object v4, v5

    .end local v5    # "dumpStream":Ljava/io/FileOutputStream;
    .restart local v4    # "dumpStream":Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3    # "dumpFile":Ljava/io/File;
    .restart local v2    # "dumpFile":Ljava/io/File;
    goto :goto_6

    .line 702
    .end local v2    # "dumpFile":Ljava/io/File;
    .restart local v3    # "dumpFile":Ljava/io/File;
    :catch_6
    move-exception v6

    move-object v2, v3

    .end local v3    # "dumpFile":Ljava/io/File;
    .restart local v2    # "dumpFile":Ljava/io/File;
    goto :goto_4

    .end local v2    # "dumpFile":Ljava/io/File;
    .end local v4    # "dumpStream":Ljava/io/FileOutputStream;
    .restart local v3    # "dumpFile":Ljava/io/File;
    .restart local v5    # "dumpStream":Ljava/io/FileOutputStream;
    :catch_7
    move-exception v6

    move-object v4, v5

    .end local v5    # "dumpStream":Ljava/io/FileOutputStream;
    .restart local v4    # "dumpStream":Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3    # "dumpFile":Ljava/io/File;
    .restart local v2    # "dumpFile":Ljava/io/File;
    goto :goto_4

    .line 700
    .end local v2    # "dumpFile":Ljava/io/File;
    .restart local v3    # "dumpFile":Ljava/io/File;
    :catch_8
    move-exception v6

    move-object v2, v3

    .end local v3    # "dumpFile":Ljava/io/File;
    .restart local v2    # "dumpFile":Ljava/io/File;
    goto/16 :goto_2

    .end local v2    # "dumpFile":Ljava/io/File;
    .end local v4    # "dumpStream":Ljava/io/FileOutputStream;
    .restart local v3    # "dumpFile":Ljava/io/File;
    .restart local v5    # "dumpStream":Ljava/io/FileOutputStream;
    :catch_9
    move-exception v6

    move-object v4, v5

    .end local v5    # "dumpStream":Ljava/io/FileOutputStream;
    .restart local v4    # "dumpStream":Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3    # "dumpFile":Ljava/io/File;
    .restart local v2    # "dumpFile":Ljava/io/File;
    goto/16 :goto_2

    .end local v2    # "dumpFile":Ljava/io/File;
    .end local v4    # "dumpStream":Ljava/io/FileOutputStream;
    .restart local v3    # "dumpFile":Ljava/io/File;
    .restart local v5    # "dumpStream":Ljava/io/FileOutputStream;
    :cond_7
    move-object v4, v5

    .end local v5    # "dumpStream":Ljava/io/FileOutputStream;
    .restart local v4    # "dumpStream":Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3    # "dumpFile":Ljava/io/File;
    .restart local v2    # "dumpFile":Ljava/io/File;
    goto/16 :goto_0
.end method

.method private logOutlierLocked(J)V
    .locals 11
    .param p1, "duration"    # J

    .prologue
    .line 721
    iget-object v7, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 722
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v7, "battery_discharge_threshold"

    invoke-static {v0, v7}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 724
    .local v2, "dischargeThresholdString":Ljava/lang/String;
    const-string v7, "battery_discharge_duration_threshold"

    invoke-static {v0, v7}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 727
    .local v3, "durationThresholdString":Ljava/lang/String;
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 729
    :try_start_0
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 730
    .local v4, "durationThreshold":J
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 731
    .local v1, "dischargeThreshold":I
    cmp-long v7, p1, v4

    if-gtz v7, :cond_0

    iget v7, p0, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    iget-object v8, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v8, v8, Landroid/os/BatteryProperties;->batteryLevel:I

    sub-int/2addr v7, v8

    if-lt v7, v1, :cond_0

    .line 734
    invoke-direct {p0}, Lcom/android/server/BatteryService;->logBatteryStatsLocked()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 746
    .end local v1    # "dischargeThreshold":I
    .end local v4    # "durationThreshold":J
    :cond_0
    :goto_0
    return-void

    .line 740
    :catch_0
    move-exception v6

    .line 741
    .local v6, "e":Ljava/lang/NumberFormatException;
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid DischargeThresholds GService string: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " or "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private processValuesLocked(Z)V
    .locals 10
    .param p1, "force"    # Z

    .prologue
    .line 370
    const/4 v7, 0x0

    .line 371
    .local v7, "logOutlier":Z
    const-wide/16 v8, 0x0

    .line 373
    .local v8, "dischargeDuration":J
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryLevel:I

    iget v1, p0, Lcom/android/server/BatteryService;->mCriticalBatteryLevel:I

    if-gt v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mBatteryLevelCritical:Z

    .line 374
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v0, v0, Landroid/os/BatteryProperties;->chargerAcOnline:Z

    if-eqz v0, :cond_f

    .line 375
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    .line 385
    :goto_1
    const-string v0, "ro.mtk_diso_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v0, v0, Landroid/os/BatteryProperties;->chargerAcOnline:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v0, v0, Landroid/os/BatteryProperties;->chargerUsbOnline:Z

    if-eqz v0, :cond_0

    .line 387
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    .line 407
    :cond_0
    iget v0, p0, Lcom/android/server/BatteryService;->mLastBatteryVoltage:I

    iget-object v1, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v1, v1, Landroid/os/BatteryProperties;->batteryVoltage:I

    if-eq v0, v1, :cond_1

    .line 408
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBatteryVoltage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v2, v2, Landroid/os/BatteryProperties;->batteryVoltage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", batteryLevel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v2, v2, Landroid/os/BatteryProperties;->batteryLevel_smb:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/android/server/BatteryService$FlymeInjector;->onBatteryLow(Lcom/android/server/BatteryService;)V

    iget-object v0, p0, Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;

    invoke-virtual {v0}, Lcom/android/server/BatteryService$Led;->updateLightsLocked()V

    .line 415
    :try_start_0
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v1, v1, Landroid/os/BatteryProperties;->batteryStatus:I

    iget-object v2, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v2, v2, Landroid/os/BatteryProperties;->batteryHealth:I

    iget v3, p0, Lcom/android/server/BatteryService;->mPlugType:I

    iget-object v4, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v4, v4, Landroid/os/BatteryProperties;->batteryLevel:I

    iget-object v5, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v5, v5, Landroid/os/BatteryProperties;->batteryTemperature:I

    iget-object v6, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v6, v6, Landroid/os/BatteryProperties;->batteryVoltage:I

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/app/IBatteryStats;->setBatteryState(IIIIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    :goto_2
    invoke-direct {p0}, Lcom/android/server/BatteryService;->shutdownIfNoPowerLocked()V

    .line 423
    invoke-direct {p0}, Lcom/android/server/BatteryService;->shutdownIfOverTempLocked()V

    .line 425
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryStatus:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastBatteryStatus:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryStatus_smb:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastBatteryStatus_smb:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryHealth:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastBatteryHealth:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v0, v0, Landroid/os/BatteryProperties;->batteryPresent:Z

    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mLastBatteryPresent:Z

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v0, v0, Landroid/os/BatteryProperties;->batteryPresent_smb:Z

    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mLastBatteryPresent_smb:Z

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryLevel:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryLevel_smb:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastBatteryLevel_smb:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryVoltage:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastBatteryVoltage:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryTemperature:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastBatteryTemperature:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastInvalidCharger:I

    if-eq v0, v1, :cond_d

    .line 437
    :cond_2
    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-eq v0, v1, :cond_3

    .line 438
    iget v0, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-nez v0, :cond_12

    .line 443
    iget-wide v0, p0, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    iget-object v1, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v1, v1, Landroid/os/BatteryProperties;->batteryLevel:I

    if-eq v0, v1, :cond_3

    .line 444
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    sub-long v8, v0, v2

    .line 445
    const/4 v7, 0x1

    .line 446
    const/16 v0, 0xaaa

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v3, v3, Landroid/os/BatteryProperties;->batteryLevel:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 449
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    .line 457
    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryStatus:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastBatteryStatus:I

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryHealth:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastBatteryHealth:I

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v0, v0, Landroid/os/BatteryProperties;->batteryPresent:Z

    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mLastBatteryPresent:Z

    if-ne v0, v1, :cond_4

    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-eq v0, v1, :cond_5

    .line 461
    :cond_4
    const/16 v1, 0xaa3

    const/4 v0, 0x5

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v3, v3, Landroid/os/BatteryProperties;->batteryStatus:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x1

    iget-object v3, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v3, v3, Landroid/os/BatteryProperties;->batteryHealth:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v0, v0, Landroid/os/BatteryProperties;->batteryPresent:Z

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    :goto_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x3

    iget v3, p0, Lcom/android/server/BatteryService;->mPlugType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x4

    iget-object v3, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-object v3, v3, Landroid/os/BatteryProperties;->batteryTechnology:Ljava/lang/String;

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 465
    :cond_5
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryLevel:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    if-eq v0, v1, :cond_6

    .line 468
    const/16 v0, 0xaa2

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v3, v3, Landroid/os/BatteryProperties;->batteryLevel:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v3, v3, Landroid/os/BatteryProperties;->batteryVoltage:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v3, v3, Landroid/os/BatteryProperties;->batteryTemperature:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 471
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mBatteryLevelCritical:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mLastBatteryLevelCritical:Z

    if-nez v0, :cond_7

    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    if-nez v0, :cond_7

    .line 475
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    sub-long v8, v0, v2

    .line 476
    const/4 v7, 0x1

    .line 479
    :cond_7
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    if-nez v0, :cond_14

    .line 481
    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryLevel:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    if-gt v0, v1, :cond_8

    .line 483
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    .line 498
    :cond_8
    :goto_5
    invoke-direct {p0}, Lcom/android/server/BatteryService;->sendIntentLocked()V

    .line 503
    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    if-eqz v0, :cond_17

    iget v0, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-nez v0, :cond_17

    .line 504
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/BatteryService$5;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$5;-><init>(Lcom/android/server/BatteryService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 524
    :cond_9
    :goto_6
    invoke-direct {p0}, Lcom/android/server/BatteryService;->shouldSendBatteryLowLocked()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 525
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    .line 526
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/BatteryService$7;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$7;-><init>(Lcom/android/server/BatteryService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 546
    :cond_a
    :goto_7
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryStatus:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastBatteryStatus:I

    if-eq v0, v1, :cond_b

    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryStatus:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_b

    .line 548
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/BatteryService$9;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$9;-><init>(Lcom/android/server/BatteryService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 566
    :cond_b
    if-eqz v7, :cond_c

    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-eqz v0, :cond_c

    .line 567
    invoke-direct {p0, v8, v9}, Lcom/android/server/BatteryService;->logOutlierLocked(J)V

    .line 570
    :cond_c
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryStatus:I

    iput v0, p0, Lcom/android/server/BatteryService;->mLastBatteryStatus:I

    .line 571
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryStatus_smb:I

    iput v0, p0, Lcom/android/server/BatteryService;->mLastBatteryStatus_smb:I

    .line 572
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryHealth:I

    iput v0, p0, Lcom/android/server/BatteryService;->mLastBatteryHealth:I

    .line 573
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v0, v0, Landroid/os/BatteryProperties;->batteryPresent:Z

    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mLastBatteryPresent:Z

    .line 574
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v0, v0, Landroid/os/BatteryProperties;->batteryPresent_smb:Z

    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mLastBatteryPresent_smb:Z

    .line 575
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryLevel:I

    iput v0, p0, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    .line 576
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryLevel_smb:I

    iput v0, p0, Lcom/android/server/BatteryService;->mLastBatteryLevel_smb:I

    .line 577
    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    iput v0, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    .line 578
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryVoltage:I

    iput v0, p0, Lcom/android/server/BatteryService;->mLastBatteryVoltage:I

    .line 579
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryTemperature:I

    iput v0, p0, Lcom/android/server/BatteryService;->mLastBatteryTemperature:I

    .line 580
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mBatteryLevelCritical:Z

    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mLastBatteryLevelCritical:Z

    .line 581
    iget v0, p0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    iput v0, p0, Lcom/android/server/BatteryService;->mLastInvalidCharger:I

    .line 583
    :cond_d
    return-void

    .line 373
    :cond_e
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 376
    :cond_f
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v0, v0, Landroid/os/BatteryProperties;->chargerUsbOnline:Z

    if-eqz v0, :cond_10

    .line 377
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    goto/16 :goto_1

    .line 378
    :cond_10
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v0, v0, Landroid/os/BatteryProperties;->chargerWirelessOnline:Z

    if-eqz v0, :cond_11

    .line 379
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    goto/16 :goto_1

    .line 381
    :cond_11
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    goto/16 :goto_1

    .line 451
    :cond_12
    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    if-nez v0, :cond_3

    .line 453
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    .line 454
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryLevel:I

    iput v0, p0, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    goto/16 :goto_3

    .line 461
    :cond_13
    const/4 v0, 0x0

    goto/16 :goto_4

    .line 487
    :cond_14
    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    if-eqz v0, :cond_15

    .line 488
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    goto/16 :goto_5

    .line 489
    :cond_15
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryLevel:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLowBatteryCloseWarningLevel:I

    if-lt v0, v1, :cond_16

    .line 490
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    goto/16 :goto_5

    .line 491
    :cond_16
    if-eqz p1, :cond_8

    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryLevel:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    if-lt v0, v1, :cond_8

    .line 494
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    goto/16 :goto_5

    .line 513
    :cond_17
    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    if-nez v0, :cond_9

    iget v0, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-eqz v0, :cond_9

    .line 514
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/BatteryService$6;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$6;-><init>(Lcom/android/server/BatteryService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_6

    .line 534
    :cond_18
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLowBatteryCloseWarningLevel:I

    if-lt v0, v1, :cond_a

    .line 535
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    .line 536
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/BatteryService$8;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$8;-><init>(Lcom/android/server/BatteryService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_7

    .line 418
    :catch_0
    move-exception v0

    goto/16 :goto_2
.end method

.method private sendIntentLocked()V
    .locals 6

    .prologue
    .line 615
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 616
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x60000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 619
    iget-object v3, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v3, v3, Landroid/os/BatteryProperties;->batteryLevel:I

    invoke-direct {p0, v3}, Lcom/android/server/BatteryService;->getIconLocked(I)I

    move-result v1

    .line 621
    .local v1, "icon":I
    const-string v3, "status"

    iget-object v4, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v4, v4, Landroid/os/BatteryProperties;->batteryStatus:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 622
    const-string v3, "status_2nd"

    iget-object v4, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v4, v4, Landroid/os/BatteryProperties;->batteryStatus_smb:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 623
    const-string v3, "health"

    iget-object v4, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v4, v4, Landroid/os/BatteryProperties;->batteryHealth:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 624
    const-string v3, "present"

    iget-object v4, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v4, v4, Landroid/os/BatteryProperties;->batteryPresent:Z

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 625
    const-string v3, "present_2nd"

    iget-object v4, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v4, v4, Landroid/os/BatteryProperties;->batteryPresent_smb:Z

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 626
    const-string v3, "level"

    iget-object v4, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v4, v4, Landroid/os/BatteryProperties;->batteryLevel:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 627
    const-string v3, "level_2nd"

    iget-object v4, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v4, v4, Landroid/os/BatteryProperties;->batteryLevel_smb:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 628
    const-string v3, "scale"

    const/16 v4, 0x64

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 629
    const-string v3, "icon-small"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 630
    const-string v3, "plugged"

    iget v4, p0, Lcom/android/server/BatteryService;->mPlugType:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 631
    const-string v3, "voltage"

    iget-object v4, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v4, v4, Landroid/os/BatteryProperties;->batteryVoltage:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 632
    const-string v3, "temperature"

    iget-object v4, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v4, v4, Landroid/os/BatteryProperties;->batteryTemperature:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 633
    const-string v3, "technology"

    iget-object v4, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-object v4, v4, Landroid/os/BatteryProperties;->batteryTechnology:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 634
    const-string v3, "invalid_charger"

    iget v4, p0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 651
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 653
    :try_start_0
    iget-object v3, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v3, v3, Landroid/os/BatteryProperties;->batteryStatus:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v3, v3, Landroid/os/BatteryProperties;->batteryStatus:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_2

    .line 655
    :cond_0
    iget-boolean v3, p0, Lcom/android/server/BatteryService;->mGloveModeClosed:Z

    if-nez v3, :cond_1

    .line 656
    const-string v3, "persist.sys.glove.mode"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    iget-object v3, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "glove_mode_alert_enabled"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 658
    const-string v3, "0"

    const-string v4, "sys/lenovo_tp_gestures/tpd_glove_status"

    invoke-virtual {p0, v3, v4}, Lcom/android/server/BatteryService;->writeSysFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/BatteryService;->mGloveModeClosed:Z

    .line 660
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/BatteryService;->mGloveModeEnabled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 674
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/BatteryService$10;

    invoke-direct {v4, p0, v2}, Lcom/android/server/BatteryService$10;-><init>(Lcom/android/server/BatteryService;Landroid/content/Intent;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 680
    return-void

    .line 663
    :cond_2
    :try_start_1
    iget-boolean v3, p0, Lcom/android/server/BatteryService;->mGloveModeEnabled:Z

    if-nez v3, :cond_1

    .line 664
    const-string v3, "persist.sys.glove.mode"

    const-string v4, "1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/BatteryService;->mGloveModeEnabled:Z

    .line 666
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/BatteryService;->mGloveModeClosed:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 669
    :catch_0
    move-exception v0

    .line 670
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v4, "error in glove: "

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private shouldSendBatteryLowLocked()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 297
    iget v4, p0, Lcom/android/server/BatteryService;->mPlugType:I

    if-eqz v4, :cond_1

    move v1, v2

    .line 298
    .local v1, "plugged":Z
    :goto_0
    iget v4, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-eqz v4, :cond_2

    move v0, v2

    .line 306
    .local v0, "oldPlugged":Z
    :goto_1
    if-nez v1, :cond_3

    iget-object v4, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v4, v4, Landroid/os/BatteryProperties;->batteryStatus:I

    if-eq v4, v2, :cond_3

    iget-object v4, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v4, v4, Landroid/os/BatteryProperties;->batteryLevel:I

    iget v5, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    if-gt v4, v5, :cond_3

    if-nez v0, :cond_0

    iget v4, p0, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    iget v5, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    if-le v4, v5, :cond_3

    :cond_0
    :goto_2
    return v2

    .end local v0    # "oldPlugged":Z
    .end local v1    # "plugged":Z
    :cond_1
    move v1, v3

    .line 297
    goto :goto_0

    .restart local v1    # "plugged":Z
    :cond_2
    move v0, v3

    .line 298
    goto :goto_1

    .restart local v0    # "oldPlugged":Z
    :cond_3
    move v2, v3

    .line 306
    goto :goto_2
.end method

.method private shutdownIfNoPowerLocked()V
    .locals 2

    .prologue
    invoke-static/range {p0 .. p0}, Lcom/android/server/BatteryService$FlymeInjector;->shutdownIfNoPowerLocked(Lcom/android/server/BatteryService;)Z

    move-result v0

    if-eqz v0, :cond_flyme_0

    return-void

    :cond_flyme_0

    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryLevel:I

    if-nez v0, :cond_0

    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/android/server/BatteryService;->isPoweredLocked(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static/range {p0 .. p0}, Lcom/android/server/BatteryService$FlymeInjector;->writeMessageToFileIfNoPowerLocked(Lcom/android/server/BatteryService;)V

    iget-object v0, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/BatteryService$3;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$3;-><init>(Lcom/android/server/BatteryService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private shutdownIfOverTempLocked()V
    .locals 2

    .prologue
    invoke-static {}, Lcom/android/server/BatteryService$FlymeInjector;->shutdownIfOverTempLocked()Z

    move-result v0

    if-eqz v0, :cond_flyme_0

    return-void

    :cond_flyme_0
    
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryTemperature:I

    iget v1, p0, Lcom/android/server/BatteryService;->mShutdownBatteryTemperature:I

    if-le v0, v1, :cond_0

    invoke-static/range {p0 .. p0}, Lcom/android/server/BatteryService$FlymeInjector;->writeMessageToFileIfOverTempLocked(Lcom/android/server/BatteryService;)V

    iget-object v0, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/BatteryService$4;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$4;-><init>(Lcom/android/server/BatteryService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private update(Landroid/os/BatteryProperties;)V
    .locals 3
    .param p1, "props"    # Landroid/os/BatteryProperties;

    .prologue
    iget-object v1, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    if-nez v0, :cond_2

    iput-object p1, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    const-string v0, "ro.mtk_ipo_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mIPOShutdown:Z

    if-eqz v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mBootCompleted:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/BatteryService;->processValuesLocked(Z)V

    :cond_1
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/server/BatteryService;->mLastBatteryProps:Landroid/os/BatteryProperties;

    invoke-virtual {v0, p1}, Landroid/os/BatteryProperties;->set(Landroid/os/BatteryProperties;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private updateBatteryWarningLevelLocked()V
    .locals 5

    .prologue
    iget-object v2, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .local v1, "resolver":Landroid/content/ContentResolver;
    iget-object v2, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, #android:integer@config_lowBatteryWarningLevel#t

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .local v0, "defWarnLevel":I
    const-string v2, "low_power_trigger_level"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    iget v2, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    if-nez v2, :cond_0

    iput v0, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    :cond_0
    iget v2, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    iget v3, p0, Lcom/android/server/BatteryService;->mCriticalBatteryLevel:I

    if-ge v2, v3, :cond_1

    iget v2, p0, Lcom/android/server/BatteryService;->mCriticalBatteryLevel:I

    iput v2, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    :cond_1
    iget v2, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    iget-object v3, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, #android:integer@config_lowBatteryCloseWarningBump#t

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/BatteryService;->mLowBatteryCloseWarningLevel:I

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/BatteryService;->processValuesLocked(Z)V

    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 6
    .param p1, "phase"    # I

    .prologue
    const/16 v2, 0x226

    if-ne p1, v2, :cond_0

    iget-object v3, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/android/server/BatteryService;->mBootCompleted:Z

    new-instance v0, Lcom/android/server/BatteryService$2;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v2}, Lcom/android/server/BatteryService$2;-><init>(Lcom/android/server/BatteryService;Landroid/os/Handler;)V

    .local v0, "obs":Landroid/database/ContentObserver;
    iget-object v2, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string v2, "low_power_trigger_level"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-virtual {v1, v2, v4, v0, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-direct {p0}, Lcom/android/server/BatteryService;->updateBatteryWarningLevelLocked()V

    invoke-static {}, Lcom/android/server/BatteryService$FlymeInjector;->onBootPhase()V

    monitor-exit v3

    .end local v0    # "obs":Landroid/database/ContentObserver;
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    :cond_0
    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public onStart()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const-string v3, "batteryproperties"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/IBatteryPropertiesRegistrar$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IBatteryPropertiesRegistrar;

    move-result-object v1

    .local v1, "batteryPropertiesRegistrar":Landroid/os/IBatteryPropertiesRegistrar;
    :try_start_0
    new-instance v3, Lcom/android/server/BatteryService$BatteryListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/server/BatteryService$BatteryListener;-><init>(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService$1;)V

    invoke-interface {v1, v3}, Landroid/os/IBatteryPropertiesRegistrar;->registerListener(Landroid/os/IBatteryPropertiesListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v3, "ro.mtk_ipo_support"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .local v2, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.ACTION_BOOT_IPO"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/BatteryService$1;

    invoke-direct {v4, p0}, Lcom/android/server/BatteryService$1;-><init>(Lcom/android/server/BatteryService;)V

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .end local v2    # "filter":Landroid/content/IntentFilter;
    :cond_0
    const-string v3, "battery"

    new-instance v4, Lcom/android/server/BatteryService$BinderService;

    invoke-direct {v4, p0, v5}, Lcom/android/server/BatteryService$BinderService;-><init>(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService$1;)V

    invoke-virtual {p0, v3, v4}, Lcom/android/server/BatteryService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-class v3, Landroid/os/BatteryManagerInternal;

    new-instance v4, Lcom/android/server/BatteryService$LocalService;

    invoke-direct {v4, p0, v5}, Lcom/android/server/BatteryService$LocalService;-><init>(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService$1;)V

    invoke-virtual {p0, v3, v4}, Lcom/android/server/BatteryService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method writeSysFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "values"    # Ljava/lang/String;
    .param p2, "filePath"    # Ljava/lang/String;

    .prologue
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v4, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Write Sys File,FilePath: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Values: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v1, "file":Ljava/io/File;
    const/4 v2, 0x0

    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_3

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_0

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_0

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v2, :cond_0

    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_3
    if-eqz v2, :cond_2

    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :cond_2
    :goto_4
    throw v4

    :catch_5
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_6
    move-exception v0

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_7
    move-exception v0

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :cond_3
    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_0
.end method

.method flymeGetFieldBatteryProps()Landroid/os/BatteryProperties;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    return-object v0
.end method

.method flymeGetFieldContext()Landroid/content/Context;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method flymeGetFieldCriticalBatteryLevel()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/BatteryService;->mCriticalBatteryLevel:I

    return v0
.end method

.method flymeGetFieldHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method flymeGetFieldPlugType()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    return v0
.end method

.method flymeInvokeMethodUpdate(Landroid/os/BatteryProperties;)V
    .locals 0
    .param p1, "props"    # Landroid/os/BatteryProperties;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/BatteryService;->update(Landroid/os/BatteryProperties;)V

    return-void
.end method
