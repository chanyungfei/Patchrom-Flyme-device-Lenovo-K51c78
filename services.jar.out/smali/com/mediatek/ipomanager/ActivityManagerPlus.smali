.class public final Lcom/mediatek/ipomanager/ActivityManagerPlus;
.super Ljava/lang/Object;
.source "ActivityManagerPlus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ipomanager/ActivityManagerPlus$IIPOActivityManagerServiceInterface;,
        Lcom/mediatek/ipomanager/ActivityManagerPlus$BootEndIntentReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivityManagerPlus"

.field public static final mAccurateSvcRestartList:[Ljava/lang/String;

.field static final mInHouseAppWhiteList:[Ljava/lang/String;

.field static final mThirdPartyAppWhiteList:[Ljava/lang/String;

.field private static sInstance:Lcom/mediatek/ipomanager/ActivityManagerPlus;


# instance fields
.field private mAlarmBoot:Z

.field final mBoostDownloadingAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field final mHandler:Landroid/os/Handler;

.field final mHandlerThread:Landroid/os/HandlerThread;

.field private mHasInHouseWL:Z

.field private mHasThirdPartyWL:Z

.field private mOomAdjEnabled:Z

.field private mService:Lcom/mediatek/ipomanager/ActivityManagerPlus$IIPOActivityManagerServiceInterface;

.field private mThirdParyAppWinner:Ljava/lang/String;

.field private mThirdParyAppWinnerTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 74
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/ipomanager/ActivityManagerPlus;->sInstance:Lcom/mediatek/ipomanager/ActivityManagerPlus;

    .line 131
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.aol.mobile.aim"

    aput-object v1, v0, v3

    const-string v1, "com.facebook.katana"

    aput-object v1, v0, v4

    const-string v1, "cn.com.fetion7"

    aput-object v1, v0, v5

    const-string v1, "com.fring"

    aput-object v1, v0, v6

    const-string v1, "android.process.hiyahoo"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "android.process.msn.service"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.nimbuzz"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "mobi.qiss.plurq"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.tencent.qq"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.renren.mobile.android"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.sina.weibo"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.skype.raider"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.twitter.android"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "com.kaixin001.activity"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "com.ebuddy.android"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "com.google.android.talk"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/ipomanager/ActivityManagerPlus;->mThirdPartyAppWhiteList:[Ljava/lang/String;

    .line 154
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.android.music"

    aput-object v1, v0, v3

    const-string v1, "android.process.media"

    aput-object v1, v0, v4

    const-string v1, "com.mediatek.FMRadio:remote"

    aput-object v1, v0, v5

    const-string v1, "com.mediatek.apst.target"

    aput-object v1, v0, v6

    const-string v1, "android.process.acore"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "com.android.mms"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/ipomanager/ActivityManagerPlus;->mInHouseAppWhiteList:[Ljava/lang/String;

    .line 164
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.android.calendar/.widget.CalendarAppWidgetService"

    aput-object v1, v0, v3

    const-string v1, "com.android.contacts/.util.EmptyService"

    aput-object v1, v0, v4

    const-string v1, "com.android.deskclock/com.android.alarmclock.DigitalAppWidgetService"

    aput-object v1, v0, v5

    const-string v1, "com.android.gallery3d/.gadget.WidgetService"

    aput-object v1, v0, v6

    const-string v1, "com.android.inputmethod.latin/.LatinIME"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "com.android.mms/.widget.MmsWidgetService"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.mediatek.appwidget.weather/.UpdateService"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/ipomanager/ActivityManagerPlus;->mAccurateSvcRestartList:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/mediatek/ipomanager/ActivityManagerPlus$IIPOActivityManagerServiceInterface;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/mediatek/ipomanager/ActivityManagerPlus$IIPOActivityManagerServiceInterface;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AMPlus"

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mediatek/ipomanager/ActivityManagerPlus;->mHandlerThread:Landroid/os/HandlerThread;

    .line 80
    iput-object v5, p0, Lcom/mediatek/ipomanager/ActivityManagerPlus;->mService:Lcom/mediatek/ipomanager/ActivityManagerPlus$IIPOActivityManagerServiceInterface;

    .line 89
    iput-boolean v3, p0, Lcom/mediatek/ipomanager/ActivityManagerPlus;->mOomAdjEnabled:Z

    .line 94
    iput-boolean v3, p0, Lcom/mediatek/ipomanager/ActivityManagerPlus;->mHasInHouseWL:Z

    .line 99
    iput-boolean v3, p0, Lcom/mediatek/ipomanager/ActivityManagerPlus;->mHasThirdPartyWL:Z

    .line 104
    iput-object v5, p0, Lcom/mediatek/ipomanager/ActivityManagerPlus;->mThirdParyAppWinner:Ljava/lang/String;

    .line 109
    iput-boolean v3, p0, Lcom/mediatek/ipomanager/ActivityManagerPlus;->mAlarmBoot:Z

    .line 114
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/ipomanager/ActivityManagerPlus;->mThirdParyAppWinnerTime:J

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ipomanager/ActivityManagerPlus;->mBoostDownloadingAppList:Ljava/util/ArrayList;

    .line 190
    const-string v0, "ActivityManagerPlus"

    const-string v1, "start ActivityManagerPlus"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iput-object p1, p0, Lcom/mediatek/ipomanager/ActivityManagerPlus;->mContext:Landroid/content/Context;

    .line 193
    iput-object p2, p0, Lcom/mediatek/ipomanager/ActivityManagerPlus;->mService:Lcom/mediatek/ipomanager/ActivityManagerPlus$IIPOActivityManagerServiceInterface;

    .line 194
    iput-boolean v4, p0, Lcom/mediatek/ipomanager/ActivityManagerPlus;->mHasThirdPartyWL:Z

    .line 195
    iput-boolean v4, p0, Lcom/mediatek/ipomanager/ActivityManagerPlus;->mHasInHouseWL:Z

    .line 196
    iput-boolean v4, p0, Lcom/mediatek/ipomanager/ActivityManagerPlus;->mOomAdjEnabled:Z

    .line 197
    const-string v0, "ActivityManagerPlus"

    const-string v1, "support wl!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v0, p0, Lcom/mediatek/ipomanager/ActivityManagerPlus;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 199
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/mediatek/ipomanager/ActivityManagerPlus;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mediatek/ipomanager/ActivityManagerPlus;->mHandler:Landroid/os/Handler;

    .line 201
    invoke-virtual {p0}, Lcom/mediatek/ipomanager/ActivityManagerPlus;->startHandler()V

    .line 202
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/ipomanager/ActivityManagerPlus;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ipomanager/ActivityManagerPlus;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/mediatek/ipomanager/ActivityManagerPlus;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 70
    invoke-static {}, Lcom/mediatek/ipomanager/ActivityManagerPlus;->isAlarmBoot()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/mediatek/ipomanager/ActivityManagerPlus;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ipomanager/ActivityManagerPlus;

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/mediatek/ipomanager/ActivityManagerPlus;->mAlarmBoot:Z

    return v0
.end method

.method static synthetic access$202(Lcom/mediatek/ipomanager/ActivityManagerPlus;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ipomanager/ActivityManagerPlus;
    .param p1, "x1"    # Z

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/mediatek/ipomanager/ActivityManagerPlus;->mAlarmBoot:Z

    return p1
.end method

.method static synthetic access$300(Lcom/mediatek/ipomanager/ActivityManagerPlus;)Lcom/mediatek/ipomanager/ActivityManagerPlus$IIPOActivityManagerServiceInterface;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ipomanager/ActivityManagerPlus;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/mediatek/ipomanager/ActivityManagerPlus;->mService:Lcom/mediatek/ipomanager/ActivityManagerPlus$IIPOActivityManagerServiceInterface;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;Lcom/mediatek/ipomanager/ActivityManagerPlus$IIPOActivityManagerServiceInterface;)Lcom/mediatek/ipomanager/ActivityManagerPlus;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "service"    # Lcom/mediatek/ipomanager/ActivityManagerPlus$IIPOActivityManagerServiceInterface;

    .prologue
    .line 183
    sget-object v0, Lcom/mediatek/ipomanager/ActivityManagerPlus;->sInstance:Lcom/mediatek/ipomanager/ActivityManagerPlus;

    if-nez v0, :cond_0

    .line 184
    new-instance v0, Lcom/mediatek/ipomanager/ActivityManagerPlus;

    invoke-direct {v0, p0, p1}, Lcom/mediatek/ipomanager/ActivityManagerPlus;-><init>(Landroid/content/Context;Lcom/mediatek/ipomanager/ActivityManagerPlus$IIPOActivityManagerServiceInterface;)V

    sput-object v0, Lcom/mediatek/ipomanager/ActivityManagerPlus;->sInstance:Lcom/mediatek/ipomanager/ActivityManagerPlus;

    .line 186
    :cond_0
    sget-object v0, Lcom/mediatek/ipomanager/ActivityManagerPlus;->sInstance:Lcom/mediatek/ipomanager/ActivityManagerPlus;

    return-object v0
.end method

.method private static isAlarmBoot()Z
    .locals 3

    .prologue
    .line 488
    const-string v2, "sys.boot.reason"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 489
    .local v0, "bootReason":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 491
    .local v1, "ret":Z
    :goto_0
    return v1

    .line 489
    .end local v1    # "ret":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private parseStringIntoArrary(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 4
    .param p1, "split"    # Ljava/lang/String;
    .param p2, "strings"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 406
    .local p3, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 407
    .local v2, "str":[Ljava/lang/String;
    array-length v1, v2

    .line 408
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 409
    aget-object v3, v2, v0

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 411
    :cond_0
    return-void
.end method


# virtual methods
.method public filterReceiver(Landroid/content/Intent;Ljava/util/List;I)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 446
    .local p2, "resolveList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-static {}, Lcom/mediatek/common/mom/MobileManagerUtils;->isSupported()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 447
    const-string v3, "mobile"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 448
    .local v0, "binder":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/mediatek/common/mom/IMobileManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/mom/IMobileManagerService;

    move-result-object v2

    .line 450
    .local v2, "moms":Lcom/mediatek/common/mom/IMobileManagerService;
    if-eqz v2, :cond_0

    .line 451
    :try_start_0
    invoke-interface {v2, p1, p2, p3}, Lcom/mediatek/common/mom/IMobileManagerService;->filterReceiver(Landroid/content/Intent;Ljava/util/List;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 458
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v2    # "moms":Lcom/mediatek/common/mom/IMobileManagerService;
    :cond_0
    :goto_0
    return-void

    .line 453
    .restart local v0    # "binder":Landroid/os/IBinder;
    .restart local v2    # "moms":Lcom/mediatek/common/mom/IMobileManagerService;
    :catch_0
    move-exception v1

    .line 455
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "ActivityManagerPlus"

    const-string v4, "filterReceiver() failed"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public monitorBootReceiver(ZLjava/lang/String;)V
    .locals 5
    .param p1, "start"    # Z
    .param p2, "cause"    # Ljava/lang/String;

    .prologue
    .line 468
    invoke-static {}, Lcom/mediatek/common/mom/MobileManagerUtils;->isSupported()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 469
    const-string v3, "mobile"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 470
    .local v0, "binder":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/mediatek/common/mom/IMobileManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/mom/IMobileManagerService;

    move-result-object v2

    .line 472
    .local v2, "moms":Lcom/mediatek/common/mom/IMobileManagerService;
    if-eqz v2, :cond_0

    .line 473
    if-eqz p1, :cond_1

    .line 474
    :try_start_0
    invoke-interface {v2, p2}, Lcom/mediatek/common/mom/IMobileManagerService;->startMonitorBootReceiver(Ljava/lang/String;)V

    .line 484
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v2    # "moms":Lcom/mediatek/common/mom/IMobileManagerService;
    :cond_0
    :goto_0
    return-void

    .line 476
    .restart local v0    # "binder":Landroid/os/IBinder;
    .restart local v2    # "moms":Lcom/mediatek/common/mom/IMobileManagerService;
    :cond_1
    invoke-interface {v2, p2}, Lcom/mediatek/common/mom/IMobileManagerService;->stopMonitorBootReceiver(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 479
    :catch_0
    move-exception v1

    .line 481
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "ActivityManagerPlus"

    const-string v4, "monitorBootReceiver() failed"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method final startHandler()V
    .locals 3

    .prologue
    .line 205
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 206
    .local v0, "itFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BOOST_DOWNLOADING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 207
    const-string v1, "android.intent.action.ACTION_BOOT_IPO"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 208
    const-string v1, "android.intent.action.ACTION_PREBOOT_IPO"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 209
    const-string v1, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 210
    const-string v1, "android.intent.action.black.mode"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 211
    const-string v1, "android.intent.action.normal.boot"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 212
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 215
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 217
    const-string v1, "ActivityManagerPlus"

    const-string v2, "startHandler!"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v1, p0, Lcom/mediatek/ipomanager/ActivityManagerPlus;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/mediatek/ipomanager/ActivityManagerPlus$1;

    invoke-direct {v2, p0}, Lcom/mediatek/ipomanager/ActivityManagerPlus$1;-><init>(Lcom/mediatek/ipomanager/ActivityManagerPlus;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 403
    return-void
.end method
