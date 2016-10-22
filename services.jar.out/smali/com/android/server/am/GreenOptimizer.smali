.class public Lcom/android/server/am/GreenOptimizer;
.super Ljava/lang/Object;
.source "GreenOptimizer.java"


# static fields
.field private static final ACTION_STOP_BG_SERVICES:Ljava/lang/String; = "com.lenovo.go.ACTION_STOP_SERVICES"

.field private static final CONTENT_URI:Landroid/net/Uri;

.field private static final DEBUG:Z = false

.field private static final DELAYED_MILLIS:I = 0x493e0

.field private static final MAX_KEEP_MILLIS:I = 0x6ddd00

.field private static final MSG_FINISH_RUNNING_SERVICES:I = 0x3

.field private static final MSG_FOREGROUND_ACTIVITIES_CHANGED:I = 0x0

.field private static final MSG_PACKAGE_ADDED:I = 0x4

.field private static final MSG_PROCESS_DIED:I = 0x1

.field private static final MSG_SCREEN_ON_CHANGED:I = 0x2

.field private static final MSG_STOP_PACKAGE:I = 0x7

.field private static final MSG_STOP_SERVICE:I = 0x5

.field private static final MSG_UNBLOCK_PACKAGE:I = 0x6

.field private static final TAG:Ljava/lang/String; = "GreenOptimizer"


# instance fields
.field private mAM:Landroid/app/ActivityManager;

.field private final mAMS:Lcom/android/server/am/ActivityManagerService;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAlarmReceiver:Landroid/content/BroadcastReceiver;

.field private mBCReceiver:Landroid/content/BroadcastReceiver;

.field private mBlacklist:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mEnable:Z

.field private mHandler:Landroid/os/Handler;

.field private mHandlerCallback:Landroid/os/Handler$Callback;

.field private mHomeReceiver:Landroid/content/BroadcastReceiver;

.field private mLock:Ljava/lang/Object;

.field private mNMService:Landroid/app/INotificationManager;

.field private volatile mNeedClean:Z

.field private mNotificationListener:Landroid/service/notification/INotificationListener;

.field private mObserver:Landroid/database/ContentObserver;

.field private mPI:Landroid/app/PendingIntent;

.field private mPM:Landroid/content/pm/PackageManager;

.field private mPackageReceiver:Landroid/content/BroadcastReceiver;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mProcessObserver:Landroid/app/IProcessObserver;

.field private mSCReceiver:Landroid/content/BroadcastReceiver;

.field private mScreenReceiver:Landroid/content/BroadcastReceiver;

.field private mToggleObserver:Landroid/database/ContentObserver;

.field private mUidForeground:Landroid/util/SparseBooleanArray;

.field private mUidPidForeground:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/SparseBooleanArray;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    const-string v0, "content://greenoptimize/blacklist"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/GreenOptimizer;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    const/4 v1, 0x0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/GreenOptimizer;->mBlacklist:Ljava/util/Map;

    .line 104
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/GreenOptimizer;->mLock:Ljava/lang/Object;

    .line 107
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/GreenOptimizer;->mUidForeground:Landroid/util/SparseBooleanArray;

    .line 108
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/GreenOptimizer;->mUidPidForeground:Landroid/util/SparseArray;

    .line 111
    iput-boolean v1, p0, Lcom/android/server/am/GreenOptimizer;->mNeedClean:Z

    .line 113
    iput-boolean v1, p0, Lcom/android/server/am/GreenOptimizer;->mEnable:Z

    .line 258
    new-instance v0, Lcom/android/server/am/GreenOptimizer$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/GreenOptimizer$1;-><init>(Lcom/android/server/am/GreenOptimizer;)V

    iput-object v0, p0, Lcom/android/server/am/GreenOptimizer;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    .line 267
    new-instance v0, Lcom/android/server/am/GreenOptimizer$2;

    invoke-direct {v0, p0}, Lcom/android/server/am/GreenOptimizer$2;-><init>(Lcom/android/server/am/GreenOptimizer;)V

    iput-object v0, p0, Lcom/android/server/am/GreenOptimizer;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    .line 277
    new-instance v0, Lcom/android/server/am/GreenOptimizer$3;

    invoke-direct {v0, p0}, Lcom/android/server/am/GreenOptimizer$3;-><init>(Lcom/android/server/am/GreenOptimizer;)V

    iput-object v0, p0, Lcom/android/server/am/GreenOptimizer;->mHomeReceiver:Landroid/content/BroadcastReceiver;

    .line 286
    new-instance v0, Lcom/android/server/am/GreenOptimizer$4;

    invoke-direct {v0, p0}, Lcom/android/server/am/GreenOptimizer$4;-><init>(Lcom/android/server/am/GreenOptimizer;)V

    iput-object v0, p0, Lcom/android/server/am/GreenOptimizer;->mAlarmReceiver:Landroid/content/BroadcastReceiver;

    .line 294
    new-instance v0, Lcom/android/server/am/GreenOptimizer$5;

    invoke-direct {v0, p0}, Lcom/android/server/am/GreenOptimizer$5;-><init>(Lcom/android/server/am/GreenOptimizer;)V

    iput-object v0, p0, Lcom/android/server/am/GreenOptimizer;->mBCReceiver:Landroid/content/BroadcastReceiver;

    .line 309
    new-instance v0, Lcom/android/server/am/GreenOptimizer$6;

    invoke-direct {v0, p0}, Lcom/android/server/am/GreenOptimizer$6;-><init>(Lcom/android/server/am/GreenOptimizer;)V

    iput-object v0, p0, Lcom/android/server/am/GreenOptimizer;->mSCReceiver:Landroid/content/BroadcastReceiver;

    .line 323
    new-instance v0, Lcom/android/server/am/GreenOptimizer$7;

    invoke-direct {v0, p0}, Lcom/android/server/am/GreenOptimizer$7;-><init>(Lcom/android/server/am/GreenOptimizer;)V

    iput-object v0, p0, Lcom/android/server/am/GreenOptimizer;->mProcessObserver:Landroid/app/IProcessObserver;

    .line 344
    new-instance v0, Lcom/android/server/am/GreenOptimizer$8;

    invoke-direct {v0, p0}, Lcom/android/server/am/GreenOptimizer$8;-><init>(Lcom/android/server/am/GreenOptimizer;)V

    iput-object v0, p0, Lcom/android/server/am/GreenOptimizer;->mHandlerCallback:Landroid/os/Handler$Callback;

    .line 484
    new-instance v0, Lcom/android/server/am/GreenOptimizer$9;

    invoke-direct {v0, p0}, Lcom/android/server/am/GreenOptimizer$9;-><init>(Lcom/android/server/am/GreenOptimizer;)V

    iput-object v0, p0, Lcom/android/server/am/GreenOptimizer;->mNotificationListener:Landroid/service/notification/INotificationListener;

    .line 536
    new-instance v0, Lcom/android/server/am/GreenOptimizer$10;

    iget-object v1, p0, Lcom/android/server/am/GreenOptimizer;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/GreenOptimizer$10;-><init>(Lcom/android/server/am/GreenOptimizer;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/am/GreenOptimizer;->mObserver:Landroid/database/ContentObserver;

    .line 542
    new-instance v0, Lcom/android/server/am/GreenOptimizer$11;

    iget-object v1, p0, Lcom/android/server/am/GreenOptimizer;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/GreenOptimizer$11;-><init>(Lcom/android/server/am/GreenOptimizer;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/am/GreenOptimizer;->mToggleObserver:Landroid/database/ContentObserver;

    .line 116
    iput-object p1, p0, Lcom/android/server/am/GreenOptimizer;->mContext:Landroid/content/Context;

    .line 117
    iput-object p2, p0, Lcom/android/server/am/GreenOptimizer;->mAMS:Lcom/android/server/am/ActivityManagerService;

    .line 118
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/GreenOptimizer;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/GreenOptimizer;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/server/am/GreenOptimizer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-static {p0}, Lcom/android/server/am/GreenOptimizer;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/am/GreenOptimizer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/GreenOptimizer;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/android/server/am/GreenOptimizer;->mNeedClean:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/server/am/GreenOptimizer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/GreenOptimizer;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/android/server/am/GreenOptimizer;->mNeedClean:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/am/GreenOptimizer;)Landroid/app/PendingIntent;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/GreenOptimizer;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/server/am/GreenOptimizer;->mPI:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/am/GreenOptimizer;)Landroid/app/AlarmManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/GreenOptimizer;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/server/am/GreenOptimizer;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/am/GreenOptimizer;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/GreenOptimizer;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/server/am/GreenOptimizer;->stopBackgroundServices()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/am/GreenOptimizer;)Landroid/app/ActivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/GreenOptimizer;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/server/am/GreenOptimizer;->mAM:Landroid/app/ActivityManager;

    return-object v0
.end method

.method static synthetic access$1500()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/android/server/am/GreenOptimizer;->CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-static {p0, p1}, Lcom/android/server/am/GreenOptimizer;->hasWidget(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Landroid/app/INotificationManager;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Landroid/app/INotificationManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-static {p0, p1}, Lcom/android/server/am/GreenOptimizer;->hasNotification(Landroid/app/INotificationManager;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/am/GreenOptimizer;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/GreenOptimizer;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/server/am/GreenOptimizer;->mBlacklist:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/am/GreenOptimizer;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/GreenOptimizer;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/server/am/GreenOptimizer;->isBlockedPackage(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/am/GreenOptimizer;)Landroid/app/INotificationManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/GreenOptimizer;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/server/am/GreenOptimizer;->mNMService:Landroid/app/INotificationManager;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/am/GreenOptimizer;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/GreenOptimizer;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/server/am/GreenOptimizer;->updateWhitelist()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/server/am/GreenOptimizer;Landroid/app/INotificationManager;)Landroid/app/INotificationManager;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/GreenOptimizer;
    .param p1, "x1"    # Landroid/app/INotificationManager;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/server/am/GreenOptimizer;->mNMService:Landroid/app/INotificationManager;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/am/GreenOptimizer;)Landroid/service/notification/INotificationListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/GreenOptimizer;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/server/am/GreenOptimizer;->mNotificationListener:Landroid/service/notification/INotificationListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/am/GreenOptimizer;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/GreenOptimizer;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/server/am/GreenOptimizer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/am/GreenOptimizer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/GreenOptimizer;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/android/server/am/GreenOptimizer;->mEnable:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/am/GreenOptimizer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/GreenOptimizer;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/android/server/am/GreenOptimizer;->mEnable:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/am/GreenOptimizer;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/GreenOptimizer;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/server/am/GreenOptimizer;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/am/GreenOptimizer;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/GreenOptimizer;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/server/am/GreenOptimizer;->mUidPidForeground:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/am/GreenOptimizer;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/GreenOptimizer;
    .param p1, "x1"    # I

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/server/am/GreenOptimizer;->computeUidForegroundLocked(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/am/GreenOptimizer;)Landroid/os/PowerManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/GreenOptimizer;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/server/am/GreenOptimizer;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method private computeUidForegroundLocked(I)V
    .locals 7
    .param p1, "uid"    # I

    .prologue
    .line 610
    iget-object v5, p0, Lcom/android/server/am/GreenOptimizer;->mUidPidForeground:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseBooleanArray;

    .line 613
    .local v2, "pidForeground":Landroid/util/SparseBooleanArray;
    const/4 v4, 0x0

    .line 614
    .local v4, "uidForeground":Z
    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    .line 615
    .local v3, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 616
    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 617
    const/4 v4, 0x1

    .line 622
    :cond_0
    iget-object v5, p0, Lcom/android/server/am/GreenOptimizer;->mUidForeground:Landroid/util/SparseBooleanArray;

    const/4 v6, 0x0

    invoke-virtual {v5, p1, v6}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    .line 623
    .local v1, "oldUidForeground":Z
    if-eq v1, v4, :cond_1

    .line 625
    iget-object v5, p0, Lcom/android/server/am/GreenOptimizer;->mUidForeground:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, p1, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 627
    :cond_1
    return-void

    .line 615
    .end local v1    # "oldUidForeground":Z
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static hasNotification(Landroid/app/INotificationManager;Ljava/lang/String;)Z
    .locals 8
    .param p0, "nm"    # Landroid/app/INotificationManager;
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 758
    :try_start_0
    const-string v6, "android"

    invoke-interface {p0, v6}, Landroid/app/INotificationManager;->getActiveNotifications(Ljava/lang/String;)[Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    .line 759
    .local v5, "sbns":[Landroid/service/notification/StatusBarNotification;
    move-object v0, v5

    .local v0, "arr$":[Landroid/service/notification/StatusBarNotification;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 760
    .local v4, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 761
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    .line 762
    .local v3, "n":Landroid/app/Notification;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "hasNotification pkg: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", notification: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/am/GreenOptimizer;->log(Ljava/lang/String;)V

    .line 763
    iget v6, v3, Landroid/app/Notification;->icon:I

    if-eqz v6, :cond_0

    .line 764
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "hasNotification return true "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/am/GreenOptimizer;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 765
    const/4 v6, 0x1

    .line 771
    .end local v0    # "arr$":[Landroid/service/notification/StatusBarNotification;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "n":Landroid/app/Notification;
    .end local v4    # "sbn":Landroid/service/notification/StatusBarNotification;
    .end local v5    # "sbns":[Landroid/service/notification/StatusBarNotification;
    :goto_1
    return v6

    .line 759
    .restart local v0    # "arr$":[Landroid/service/notification/StatusBarNotification;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    .restart local v4    # "sbn":Landroid/service/notification/StatusBarNotification;
    .restart local v5    # "sbns":[Landroid/service/notification/StatusBarNotification;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 769
    .end local v0    # "arr$":[Landroid/service/notification/StatusBarNotification;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v4    # "sbn":Landroid/service/notification/StatusBarNotification;
    .end local v5    # "sbns":[Landroid/service/notification/StatusBarNotification;
    :catch_0
    move-exception v6

    .line 770
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "hasNotification return false "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/am/GreenOptimizer;->log(Ljava/lang/String;)V

    .line 771
    const/4 v6, 0x0

    goto :goto_1
.end method

.method private static hasWidget(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 744
    :try_start_0
    const-string v2, "appwidget"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 745
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/appwidget/IAppWidgetService;

    move-result-object v1

    .line 746
    .local v1, "widgetService":Lcom/android/internal/appwidget/IAppWidgetService;
    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/android/internal/appwidget/IAppWidgetService;->hasWidgetFromGO(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 747
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasWidget return true "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/GreenOptimizer;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 748
    const/4 v2, 0x1

    .line 753
    .end local v0    # "b":Landroid/os/IBinder;
    .end local v1    # "widgetService":Lcom/android/internal/appwidget/IAppWidgetService;
    :goto_0
    return v2

    .line 750
    :catch_0
    move-exception v2

    .line 752
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasWidget return false "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/GreenOptimizer;->log(Ljava/lang/String;)V

    .line 753
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isBlockedPackage(Ljava/lang/String;)Z
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 567
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 568
    .local v0, "t":J
    iget-boolean v5, p0, Lcom/android/server/am/GreenOptimizer;->mEnable:Z

    if-nez v5, :cond_0

    .line 569
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isBlockedPackage feature off return false take: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/GreenOptimizer;->log(Ljava/lang/String;)V

    .line 583
    :goto_0
    return v3

    .line 577
    :cond_0
    iget-object v5, p0, Lcom/android/server/am/GreenOptimizer;->mBlacklist:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 578
    .local v2, "value":Ljava/lang/Integer;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v4, :cond_1

    .line 579
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isBlockedPackage return true take: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "ms"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/GreenOptimizer;->log(Ljava/lang/String;)V

    move v3, v4

    .line 580
    goto :goto_0

    .line 582
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isBlockedPackage return false take: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/GreenOptimizer;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isPackageForeground(Ljava/lang/String;)Z
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 636
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 637
    .local v2, "t":J
    iget-object v5, p0, Lcom/android/server/am/GreenOptimizer;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 639
    :try_start_0
    iget-object v6, p0, Lcom/android/server/am/GreenOptimizer;->mPM:Landroid/content/pm/PackageManager;

    const/4 v7, 0x0

    invoke-virtual {v6, p1, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 640
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    .line 641
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isPackageForeground take: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/am/GreenOptimizer;->log(Ljava/lang/String;)V

    .line 642
    iget-object v6, p0, Lcom/android/server/am/GreenOptimizer;->mUidForeground:Landroid/util/SparseBooleanArray;

    iget v7, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseBooleanArray;->get(IZ)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    :try_start_1
    monitor-exit v5

    .line 648
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :goto_0
    return v4

    .line 644
    :catch_0
    move-exception v1

    .line 645
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 647
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method private isSystemPackage(Ljava/lang/String;)Z
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 587
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 588
    .local v2, "t":J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isSystemPackage "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/am/GreenOptimizer;->log(Ljava/lang/String;)V

    .line 595
    iget-object v5, p0, Lcom/android/server/am/GreenOptimizer;->mPM:Landroid/content/pm/PackageManager;

    if-nez v5, :cond_0

    .line 606
    :goto_0
    return v1

    .line 599
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/GreenOptimizer;->mPM:Landroid/content/pm/PackageManager;

    const/4 v6, 0x0

    invoke-virtual {v5, p1, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 600
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_1

    iget v5, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_1

    .line 601
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isSystemPackage true take: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/am/GreenOptimizer;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 604
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 605
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isSystemPackage false take: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "ms"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/GreenOptimizer;->log(Ljava/lang/String;)V

    move v1, v4

    .line 606
    goto :goto_0
.end method

.method private isUidForeground(I)Z
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 630
    iget-object v1, p0, Lcom/android/server/am/GreenOptimizer;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 631
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/GreenOptimizer;->mUidForeground:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 632
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 0
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 778
    return-void
.end method

.method private stopBackgroundServices()V
    .locals 22

    .prologue
    .line 652
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 653
    .local v12, "t":J
    const/4 v5, 0x1

    .line 654
    .local v5, "completed":Z
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 656
    .local v8, "running":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/GreenOptimizer;->mAM:Landroid/app/ActivityManager;

    const/16 v16, 0x32

    invoke-virtual/range {v15 .. v16}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v11

    .line 657
    .local v11, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v11, :cond_0

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v4

    .line 658
    .local v4, "N":I
    :goto_0
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v4, :cond_5

    .line 659
    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 660
    .local v14, "ti":Landroid/app/ActivityManager$RunningTaskInfo;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "stopBackgroundServices task: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v14, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/android/server/am/GreenOptimizer;->log(Ljava/lang/String;)V

    .line 664
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/GreenOptimizer;->mBlacklist:Ljava/util/Map;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 665
    :try_start_0
    iget-object v15, v14, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v15}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/am/GreenOptimizer;->isBlockedPackage(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 666
    iget-object v15, v14, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v15}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/am/GreenOptimizer;->isPackageForeground(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 667
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "stopBackgroundServices foreground task "

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v14, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/android/server/am/GreenOptimizer;->log(Ljava/lang/String;)V

    .line 668
    monitor-exit v16

    .line 658
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 657
    .end local v4    # "N":I
    .end local v6    # "i":I
    .end local v14    # "ti":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 670
    .restart local v4    # "N":I
    .restart local v6    # "i":I
    .restart local v14    # "ti":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_1
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "stopBackgroundServices task: "

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v14, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, ", na: "

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v14, Landroid/app/ActivityManager$RunningTaskInfo;->numActivities:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, ", passed: "

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-wide v0, v14, Landroid/app/ActivityManager$RunningTaskInfo;->lastActiveTime:J

    move-wide/from16 v18, v0

    sub-long v18, v12, v18

    const-wide/32 v20, 0xea60

    div-long v18, v18, v20

    move-wide/from16 v0, v18

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, "mins"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/android/server/am/GreenOptimizer;->log(Ljava/lang/String;)V

    .line 672
    iget v15, v14, Landroid/app/ActivityManager$RunningTaskInfo;->numActivities:I

    const/16 v17, 0x1

    move/from16 v0, v17

    if-le v15, v0, :cond_3

    iget-wide v0, v14, Landroid/app/ActivityManager$RunningTaskInfo;->lastActiveTime:J

    move-wide/from16 v18, v0

    sub-long v18, v12, v18

    const-wide/32 v20, 0x6ddd00

    cmp-long v15, v18, v20

    if-gez v15, :cond_3

    .line 673
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/GreenOptimizer;->mHandler:Landroid/os/Handler;

    const/16 v17, 0x7

    const/16 v18, 0x0

    const/16 v19, 0x0

    iget-object v0, v14, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v20

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 675
    .local v7, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/GreenOptimizer;->mHandler:Landroid/os/Handler;

    const-wide/32 v18, 0x36ee80

    move-wide/from16 v0, v18

    invoke-virtual {v15, v7, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 676
    iget-object v15, v14, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v15}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v8, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 687
    .end local v7    # "msg":Landroid/os/Message;
    :cond_2
    :goto_3
    monitor-exit v16

    goto/16 :goto_2

    :catchall_0
    move-exception v15

    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v15

    .line 677
    :cond_3
    :try_start_1
    iget v15, v14, Landroid/app/ActivityManager$RunningTaskInfo;->numActivities:I

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v15, v0, :cond_4

    iget-wide v0, v14, Landroid/app/ActivityManager$RunningTaskInfo;->lastActiveTime:J

    move-wide/from16 v18, v0

    sub-long v18, v12, v18

    const-wide/32 v20, 0x36ee80

    cmp-long v15, v18, v20

    if-gez v15, :cond_4

    .line 678
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/GreenOptimizer;->mHandler:Landroid/os/Handler;

    const/16 v17, 0x7

    const/16 v18, 0x0

    const/16 v19, 0x0

    iget-object v0, v14, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v20

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 680
    .restart local v7    # "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/GreenOptimizer;->mHandler:Landroid/os/Handler;

    const-wide/32 v18, 0x1b7740

    move-wide/from16 v0, v18

    invoke-virtual {v15, v7, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 681
    iget-object v15, v14, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v15}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v8, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 683
    .end local v7    # "msg":Landroid/os/Message;
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/GreenOptimizer;->mHandler:Landroid/os/Handler;

    const/16 v17, 0x7

    const/16 v18, 0x0

    const/16 v19, 0x0

    iget-object v0, v14, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v20

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    invoke-virtual {v15}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 690
    .end local v14    # "ti":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/GreenOptimizer;->mAM:Landroid/app/ActivityManager;

    const/16 v16, 0x64

    invoke-virtual/range {v15 .. v16}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v9

    .line 691
    .local v9, "services":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    if-eqz v9, :cond_6

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v4

    .line 692
    :goto_4
    const/4 v6, 0x0

    :goto_5
    if-ge v6, v4, :cond_a

    .line 693
    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 694
    .local v10, "si":Landroid/app/ActivityManager$RunningServiceInfo;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "stopBackgroundServices service: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v10, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/android/server/am/GreenOptimizer;->log(Ljava/lang/String;)V

    .line 698
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/GreenOptimizer;->mBlacklist:Ljava/util/Map;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 699
    :try_start_2
    iget-object v15, v10, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v15}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/am/GreenOptimizer;->isBlockedPackage(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 700
    iget-object v15, v10, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v15}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/am/GreenOptimizer;->isPackageForeground(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 701
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "stopBackgroundServices ignore foreground "

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v10, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/android/server/am/GreenOptimizer;->log(Ljava/lang/String;)V

    .line 702
    const/4 v5, 0x0

    .line 703
    monitor-exit v16

    .line 692
    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 691
    .end local v10    # "si":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_6
    const/4 v4, 0x0

    goto :goto_4

    .line 705
    .restart local v10    # "si":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_7
    iget-object v15, v10, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v15}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v8, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 706
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "stopBackgroundServices ignore running "

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v10, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/android/server/am/GreenOptimizer;->log(Ljava/lang/String;)V

    .line 707
    const/4 v5, 0x0

    .line 708
    monitor-exit v16

    goto :goto_6

    .line 720
    :catchall_1
    move-exception v15

    monitor-exit v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v15

    .line 717
    :cond_8
    :try_start_3
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "stopBackgroundServices stop: "

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v10, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/android/server/am/GreenOptimizer;->log(Ljava/lang/String;)V

    .line 718
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/GreenOptimizer;->mHandler:Landroid/os/Handler;

    const/16 v17, 0x5

    const/16 v18, 0x0

    const/16 v19, 0x0

    iget-object v0, v10, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    move-object/from16 v20, v0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    invoke-virtual {v15}, Landroid/os/Message;->sendToTarget()V

    .line 720
    :cond_9
    monitor-exit v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_6

    .line 723
    .end local v10    # "si":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_a
    if-eqz v5, :cond_b

    .line 724
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/am/GreenOptimizer;->mNeedClean:Z

    .line 726
    :cond_b
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "stopBackgroundServices take: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v12

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "ms"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/android/server/am/GreenOptimizer;->log(Ljava/lang/String;)V

    .line 727
    return-void
.end method

.method private updateWhitelist()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 550
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 551
    .local v8, "t":J
    iget-object v0, p0, Lcom/android/server/am/GreenOptimizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/GreenOptimizer;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 552
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 553
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 554
    iget-object v1, p0, Lcom/android/server/am/GreenOptimizer;->mBlacklist:Ljava/util/Map;

    monitor-enter v1

    .line 555
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/GreenOptimizer;->mBlacklist:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 557
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/GreenOptimizer;->mBlacklist:Ljava/util/Map;

    const-string v2, "name"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 559
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 561
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 563
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateWhitelist take: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v8

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/GreenOptimizer;->log(Ljava/lang/String;)V

    .line 564
    return-void

    .line 559
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public checkService(Landroid/content/ComponentName;)Z
    .locals 7
    .param p1, "cn"    # Landroid/content/ComponentName;

    .prologue
    const/4 v6, 0x1

    .line 183
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 184
    .local v2, "t":J
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkService "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/GreenOptimizer;->log(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, "pn":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/am/GreenOptimizer;->mBlacklist:Ljava/util/Map;

    monitor-enter v4

    .line 190
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/am/GreenOptimizer;->isBlockedPackage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 203
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/GreenOptimizer;->mNeedClean:Z

    .line 205
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkService take: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "ms"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/GreenOptimizer;->log(Ljava/lang/String;)V

    .line 208
    return v6

    .line 205
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public filterReceivers(Ljava/lang/String;ILandroid/content/Intent;Ljava/util/List;)V
    .locals 11
    .param p1, "callerPackage"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "receivers"    # Ljava/util/List;

    .prologue
    .line 212
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 213
    .local v4, "t":J
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "filterReceivers "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/am/GreenOptimizer;->log(Ljava/lang/String;)V

    .line 214
    if-eqz p4, :cond_0

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 215
    :cond_0
    const-string v6, "filterReceivers receivers is empty!"

    invoke-static {v6}, Lcom/android/server/am/GreenOptimizer;->log(Ljava/lang/String;)V

    .line 256
    :goto_0
    return-void

    .line 219
    :cond_1
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    .line 220
    .local v0, "N":I
    iget-object v7, p0, Lcom/android/server/am/GreenOptimizer;->mBlacklist:Ljava/util/Map;

    monitor-enter v7

    .line 221
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_7

    .line 222
    :try_start_0
    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 226
    .local v2, "pn":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/server/am/GreenOptimizer;->isBlockedPackage(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 227
    const-string v6, "android.appwidget.action.APPWIDGET_ENABLED"

    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 229
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "filterReceivers ignore widget action: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/am/GreenOptimizer;->log(Ljava/lang/String;)V

    .line 230
    iget-object v6, p0, Lcom/android/server/am/GreenOptimizer;->mBlacklist:Ljava/util/Map;

    const/4 v8, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 233
    :cond_3
    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {p0, v6}, Lcom/android/server/am/GreenOptimizer;->isUidForeground(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 234
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "filterReceivers ignore foreground: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/am/GreenOptimizer;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 254
    .end local v2    # "pn":Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 237
    .restart local v2    # "pn":Ljava/lang/String;
    :cond_4
    :try_start_1
    invoke-direct {p0, p2}, Lcom/android/server/am/GreenOptimizer;->isUidForeground(I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 238
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "filterReceivers ignore foreground calling, orig: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", target: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/am/GreenOptimizer;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 241
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "filterReceivers remove: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/am/GreenOptimizer;->log(Ljava/lang/String;)V

    .line 242
    invoke-interface {p4, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 243
    add-int/lit8 v1, v1, -0x1

    .line 244
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 246
    :cond_6
    iget-object v6, p0, Lcom/android/server/am/GreenOptimizer;->mBlacklist:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 247
    .local v3, "value":Ljava/lang/Integer;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v8, 0x2

    if-ne v6, v8, :cond_2

    const-string v6, "android.appwidget.action.APPWIDGET_DISABLED"

    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 249
    iget-object v6, p0, Lcom/android/server/am/GreenOptimizer;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x6

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v6, v8, v9, v10, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 250
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "filterReceivers widget removed block again: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/am/GreenOptimizer;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 254
    .end local v2    # "pn":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Integer;
    :cond_7
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 255
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "filterReceivers take: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/am/GreenOptimizer;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public systemRunning()V
    .locals 13

    .prologue
    const/4 v9, 0x0

    const/4 v12, -0x1

    const/4 v8, 0x1

    .line 121
    iget-object v7, p0, Lcom/android/server/am/GreenOptimizer;->mContext:Landroid/content/Context;

    const-string v10, "power"

    invoke-virtual {v7, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/PowerManager;

    iput-object v7, p0, Lcom/android/server/am/GreenOptimizer;->mPowerManager:Landroid/os/PowerManager;

    .line 122
    iget-object v7, p0, Lcom/android/server/am/GreenOptimizer;->mContext:Landroid/content/Context;

    const-string v10, "activity"

    invoke-virtual {v7, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager;

    iput-object v7, p0, Lcom/android/server/am/GreenOptimizer;->mAM:Landroid/app/ActivityManager;

    .line 123
    iget-object v7, p0, Lcom/android/server/am/GreenOptimizer;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/am/GreenOptimizer;->mPM:Landroid/content/pm/PackageManager;

    .line 124
    iget-object v7, p0, Lcom/android/server/am/GreenOptimizer;->mContext:Landroid/content/Context;

    const-string v10, "alarm"

    invoke-virtual {v7, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AlarmManager;

    iput-object v7, p0, Lcom/android/server/am/GreenOptimizer;->mAlarmManager:Landroid/app/AlarmManager;

    .line 126
    new-instance v5, Landroid/os/HandlerThread;

    const-string v7, "GreenOptimizer"

    invoke-direct {v5, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 127
    .local v5, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v5}, Landroid/os/HandlerThread;->start()V

    .line 128
    new-instance v7, Landroid/os/Handler;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/am/GreenOptimizer;->mHandlerCallback:Landroid/os/Handler$Callback;

    invoke-direct {v7, v10, v11}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v7, p0, Lcom/android/server/am/GreenOptimizer;->mHandler:Landroid/os/Handler;

    .line 133
    iget-object v7, p0, Lcom/android/server/am/GreenOptimizer;->mAMS:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, p0, Lcom/android/server/am/GreenOptimizer;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-virtual {v7, v10}, Lcom/android/server/am/ActivityManagerService;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    .line 135
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 136
    .local v4, "screenFilter":Landroid/content/IntentFilter;
    const-string v7, "android.intent.action.SCREEN_ON"

    invoke-virtual {v4, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 137
    const-string v7, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v4, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    iget-object v7, p0, Lcom/android/server/am/GreenOptimizer;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/server/am/GreenOptimizer;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v7, v10, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 140
    iget-object v7, p0, Lcom/android/server/am/GreenOptimizer;->mContext:Landroid/content/Context;

    new-instance v10, Landroid/content/Intent;

    const-string v11, "com.lenovo.go.ACTION_STOP_SERVICES"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v11, 0x10000000

    invoke-static {v7, v9, v10, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/am/GreenOptimizer;->mPI:Landroid/app/PendingIntent;

    .line 146
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 147
    .local v0, "alarmFilter":Landroid/content/IntentFilter;
    const-string v7, "com.lenovo.go.ACTION_STOP_SERVICES"

    invoke-virtual {v0, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    iget-object v7, p0, Lcom/android/server/am/GreenOptimizer;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/server/am/GreenOptimizer;->mAlarmReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v7, v10, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 159
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 160
    .local v1, "bcFilter":Landroid/content/IntentFilter;
    const-string v7, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 161
    iget-object v7, p0, Lcom/android/server/am/GreenOptimizer;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/server/am/GreenOptimizer;->mBCReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v7, v10, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 163
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 164
    .local v3, "scFilter":Landroid/content/IntentFilter;
    const-string v7, "android.lenovo.SECRET_CODE"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 165
    iget-object v7, p0, Lcom/android/server/am/GreenOptimizer;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/server/am/GreenOptimizer;->mSCReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v7, v10, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 167
    iget-object v7, p0, Lcom/android/server/am/GreenOptimizer;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 170
    .local v2, "cr":Landroid/content/ContentResolver;
    const-string v7, "appbackground"

    invoke-static {v2, v7, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 171
    .local v6, "value":I
    if-ne v6, v12, :cond_0

    .line 172
    iput-boolean v8, p0, Lcom/android/server/am/GreenOptimizer;->mEnable:Z

    .line 173
    const-string v7, "appbackground"

    invoke-static {v2, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 179
    :goto_0
    invoke-direct {p0}, Lcom/android/server/am/GreenOptimizer;->updateWhitelist()V

    .line 180
    return-void

    .line 175
    :cond_0
    if-ne v6, v8, :cond_1

    move v7, v8

    :goto_1
    iput-boolean v7, p0, Lcom/android/server/am/GreenOptimizer;->mEnable:Z

    goto :goto_0

    :cond_1
    move v7, v9

    goto :goto_1
.end method
