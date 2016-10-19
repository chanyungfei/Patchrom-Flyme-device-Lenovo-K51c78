.class public Lcom/android/server/storage/DeviceStorageMonitorService;
.super Lcom/android/server/SystemService;
.source "DeviceStorageMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/storage/DeviceStorageMonitorService$CacheFileDeletedObserver;,
        Lcom/android/server/storage/DeviceStorageMonitorService$CachePackageDataObserver;
    }
.end annotation


# static fields
.field private static final CACHE_PATH:Ljava/io/File;

.field private static final CRITICAL_LOW_THRESHOLD_BYTES:I = 0x400000

.field private static final DATA_PATH:Ljava/io/File;

.field static final DEBUG:Z = false

.field private static final DEFAULT_CHECK_INTERVAL:J = 0x7530L

.field private static final DEFAULT_DISK_FREE_CHANGE_REPORTING_THRESHOLD:J = 0x200000L

.field private static final DEFAULT_FREE_STORAGE_LOG_INTERVAL_IN_MINUTES:I = 0x2d0

.field private static final DEFAULT_THRESHOLD_MAX_BYTES:I = 0xc800000

.field private static final DEFAULT_THRESHOLD_PERCENTAGE:I = 0xa

.field static final DEVICE_MEMORY_CRITICAL_LOW:I = 0x2

.field static final DEVICE_MEMORY_WHAT:I = 0x1

.field private static final EMAIL_CHECK_SIZE:I = 0x3200000

.field private static final EXCEPTION_LOW_THRESHOLD_BYTES:I = 0xa00000

.field private static final FULL_THRESHOLD_BYTES:I = 0x500000

.field private static final IPO_POWER_ON:Ljava/lang/String; = "android.intent.action.ACTION_BOOT_IPO"

.field private static final LOW_MEMORY_NOTIFICATION_ID:I = 0x1

.field private static final MONITOR_INTERVAL:I = 0x1

.field static final SERVICE:Ljava/lang/String; = "devicestoragemonitor"

.field private static final SYSTEM_PATH:Ljava/io/File;

.field static final TAG:Ljava/lang/String; = "DeviceStorageMonitorService"

.field private static final _FALSE:I = 0x0

.field private static final _TRUE:I = 0x1

.field static final localLOGV:Z


# instance fields
.field lse:Lcom/mediatek/common/lowstorage/ILowStorageExt;

.field private mCacheFileDeletedObserver:Lcom/android/server/storage/DeviceStorageMonitorService$CacheFileDeletedObserver;

.field private final mCacheFileStats:Landroid/os/StatFs;

.field private mCacheSize:J

.field private mCheckAppSize:Z

.field private mClearCacheObserver:Lcom/android/server/storage/DeviceStorageMonitorService$CachePackageDataObserver;

.field mClearSucceeded:Z

.field mClearingCache:Z

.field private mCodeSize:J

.field private mConfigChanged:Z

.field private final mDataFileStats:Landroid/os/StatFs;

.field private mDataSize:J

.field private mDialog:Landroid/app/AlertDialog;

.field private mFreeMem:J

.field private mFreeMemAfterLastCacheClear:J

.field private mGetSize:Z

.field private final mHandler:Landroid/os/Handler;

.field private mIPOBootup:Z

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mIsBootImageOnDisk:Z

.field private mLastCriticalLowLevel:I

.field private mLastReportedFreeMem:J

.field private mLastReportedFreeMemTime:J

.field private final mLocalService:Lcom/android/server/storage/DeviceStorageMonitorInternal;

.field mLowMemFlag:Z

.field private mMemCacheStartTrimThreshold:J

.field private mMemCacheTrimToThreshold:J

.field private mMemFullFlag:Z

.field private mMemFullThreshold:J

.field mMemLowThreshold:J

.field private mQueryDataFs:Landroid/os/StatFs;

.field private final mRemoteService:Landroid/os/IBinder;

.field private final mResolver:Landroid/content/ContentResolver;

.field final mStatsObserver:Landroid/content/pm/IPackageStatsObserver$Stub;

.field private final mStorageFullIntent:Landroid/content/Intent;

.field private final mStorageLowIntent:Landroid/content/Intent;

.field private final mStorageNotFullIntent:Landroid/content/Intent;

.field private final mStorageOkIntent:Landroid/content/Intent;

.field private mStrings:[Ljava/lang/String;

.field private final mSystemFileStats:Landroid/os/StatFs;

.field private mThreadStartTime:J

.field private final mTotalMemory:J

.field private mTotalSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 131
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/android/server/storage/DeviceStorageMonitorService;->DATA_PATH:Ljava/io/File;

    .line 132
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/android/server/storage/DeviceStorageMonitorService;->SYSTEM_PATH:Ljava/io/File;

    .line 133
    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/android/server/storage/DeviceStorageMonitorService;->CACHE_PATH:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/high16 v8, 0x4000000

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 507
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 122
    iput-boolean v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLowMemFlag:Z

    .line 123
    iput-boolean v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemFullFlag:Z

    .line 135
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mThreadStartTime:J

    .line 136
    iput-boolean v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mClearSucceeded:Z

    .line 162
    iput-object v5, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->lse:Lcom/mediatek/common/lowstorage/ILowStorageExt;

    .line 167
    iput-boolean v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mConfigChanged:Z

    .line 169
    iput-object v5, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mDialog:Landroid/app/AlertDialog;

    .line 170
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLastCriticalLowLevel:I

    .line 171
    iput-boolean v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mIPOBootup:Z

    .line 172
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mCheckAppSize:Z

    .line 174
    iput-wide v6, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mCacheSize:J

    .line 175
    iput-wide v6, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mCodeSize:J

    .line 176
    iput-wide v6, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mDataSize:J

    .line 177
    iput-wide v6, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mTotalSize:J

    .line 178
    iput-object v5, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStrings:[Ljava/lang/String;

    .line 179
    iput-boolean v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mGetSize:Z

    .line 191
    new-instance v1, Lcom/android/server/storage/DeviceStorageMonitorService$1;

    invoke-direct {v1, p0}, Lcom/android/server/storage/DeviceStorageMonitorService$1;-><init>(Lcom/android/server/storage/DeviceStorageMonitorService;)V

    iput-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    .line 461
    new-instance v1, Lcom/android/server/storage/DeviceStorageMonitorService$2;

    invoke-direct {v1, p0}, Lcom/android/server/storage/DeviceStorageMonitorService$2;-><init>(Lcom/android/server/storage/DeviceStorageMonitorService;)V

    iput-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStatsObserver:Landroid/content/pm/IPackageStatsObserver$Stub;

    .line 570
    new-instance v1, Lcom/android/server/storage/DeviceStorageMonitorService$3;

    invoke-direct {v1, p0}, Lcom/android/server/storage/DeviceStorageMonitorService$3;-><init>(Lcom/android/server/storage/DeviceStorageMonitorService;)V

    iput-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLocalService:Lcom/android/server/storage/DeviceStorageMonitorInternal;

    .line 607
    new-instance v1, Lcom/android/server/storage/DeviceStorageMonitorService$4;

    invoke-direct {v1, p0}, Lcom/android/server/storage/DeviceStorageMonitorService$4;-><init>(Lcom/android/server/storage/DeviceStorageMonitorService;)V

    iput-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mRemoteService:Landroid/os/IBinder;

    .line 772
    new-instance v1, Lcom/android/server/storage/DeviceStorageMonitorService$5;

    invoke-direct {v1, p0}, Lcom/android/server/storage/DeviceStorageMonitorService$5;-><init>(Lcom/android/server/storage/DeviceStorageMonitorService;)V

    iput-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 508
    iput-wide v6, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLastReportedFreeMemTime:J

    .line 509
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mResolver:Landroid/content/ContentResolver;

    .line 510
    invoke-static {}, Lcom/android/server/storage/DeviceStorageMonitorService;->isBootImageOnDisk()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mIsBootImageOnDisk:Z

    .line 512
    new-instance v1, Landroid/os/StatFs;

    sget-object v2, Lcom/android/server/storage/DeviceStorageMonitorService;->DATA_PATH:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mDataFileStats:Landroid/os/StatFs;

    .line 513
    new-instance v1, Landroid/os/StatFs;

    sget-object v2, Lcom/android/server/storage/DeviceStorageMonitorService;->SYSTEM_PATH:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mSystemFileStats:Landroid/os/StatFs;

    .line 514
    new-instance v1, Landroid/os/StatFs;

    sget-object v2, Lcom/android/server/storage/DeviceStorageMonitorService;->CACHE_PATH:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mCacheFileStats:Landroid/os/StatFs;

    .line 515
    new-instance v1, Landroid/os/StatFs;

    sget-object v2, Lcom/android/server/storage/DeviceStorageMonitorService;->DATA_PATH:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mQueryDataFs:Landroid/os/StatFs;

    .line 517
    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mDataFileStats:Landroid/os/StatFs;

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v1

    int-to-long v2, v1

    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mDataFileStats:Landroid/os/StatFs;

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v4, v1

    mul-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mTotalMemory:J

    .line 519
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStorageLowIntent:Landroid/content/Intent;

    .line 520
    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStorageLowIntent:Landroid/content/Intent;

    invoke-virtual {v1, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 521
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStorageOkIntent:Landroid/content/Intent;

    .line 522
    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStorageOkIntent:Landroid/content/Intent;

    invoke-virtual {v1, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 523
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DEVICE_STORAGE_FULL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStorageFullIntent:Landroid/content/Intent;

    .line 524
    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStorageFullIntent:Landroid/content/Intent;

    invoke-virtual {v1, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 525
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DEVICE_STORAGE_NOT_FULL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStorageNotFullIntent:Landroid/content/Intent;

    .line 526
    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStorageNotFullIntent:Landroid/content/Intent;

    invoke-virtual {v1, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 528
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 529
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTION_BOOT_IPO"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 530
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 531
    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 532
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/storage/DeviceStorageMonitorService;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/storage/DeviceStorageMonitorService;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/server/storage/DeviceStorageMonitorService;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/storage/DeviceStorageMonitorService;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/server/storage/DeviceStorageMonitorService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/storage/DeviceStorageMonitorService;

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mIPOBootup:Z

    return v0
.end method

.method static synthetic access$1000()Ljava/io/File;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcom/android/server/storage/DeviceStorageMonitorService;->DATA_PATH:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/storage/DeviceStorageMonitorService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/storage/DeviceStorageMonitorService;
    .param p1, "x1"    # Z

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mIPOBootup:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/storage/DeviceStorageMonitorService;)Landroid/os/StatFs;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/storage/DeviceStorageMonitorService;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mQueryDataFs:Landroid/os/StatFs;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/storage/DeviceStorageMonitorService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/storage/DeviceStorageMonitorService;

    .prologue
    .line 97
    iget-wide v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMem:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/android/server/storage/DeviceStorageMonitorService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/storage/DeviceStorageMonitorService;

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mConfigChanged:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/storage/DeviceStorageMonitorService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/storage/DeviceStorageMonitorService;
    .param p1, "x1"    # Z

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mConfigChanged:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/storage/DeviceStorageMonitorService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/storage/DeviceStorageMonitorService;

    .prologue
    .line 97
    iget-wide v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mTotalSize:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/android/server/storage/DeviceStorageMonitorService;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/storage/DeviceStorageMonitorService;
    .param p1, "x1"    # J

    .prologue
    .line 97
    iput-wide p1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mTotalSize:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/android/server/storage/DeviceStorageMonitorService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/storage/DeviceStorageMonitorService;

    .prologue
    .line 97
    iget-wide v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mCacheSize:J

    return-wide v0
.end method

.method static synthetic access$502(Lcom/android/server/storage/DeviceStorageMonitorService;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/storage/DeviceStorageMonitorService;
    .param p1, "x1"    # J

    .prologue
    .line 97
    iput-wide p1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mCacheSize:J

    return-wide p1
.end method

.method static synthetic access$600(Lcom/android/server/storage/DeviceStorageMonitorService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/storage/DeviceStorageMonitorService;

    .prologue
    .line 97
    iget-wide v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mCodeSize:J

    return-wide v0
.end method

.method static synthetic access$602(Lcom/android/server/storage/DeviceStorageMonitorService;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/storage/DeviceStorageMonitorService;
    .param p1, "x1"    # J

    .prologue
    .line 97
    iput-wide p1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mCodeSize:J

    return-wide p1
.end method

.method static synthetic access$700(Lcom/android/server/storage/DeviceStorageMonitorService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/storage/DeviceStorageMonitorService;

    .prologue
    .line 97
    iget-wide v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mDataSize:J

    return-wide v0
.end method

.method static synthetic access$702(Lcom/android/server/storage/DeviceStorageMonitorService;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/storage/DeviceStorageMonitorService;
    .param p1, "x1"    # J

    .prologue
    .line 97
    iput-wide p1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mDataSize:J

    return-wide p1
.end method

.method static synthetic access$802(Lcom/android/server/storage/DeviceStorageMonitorService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/storage/DeviceStorageMonitorService;
    .param p1, "x1"    # Z

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mGetSize:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/storage/DeviceStorageMonitorService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/storage/DeviceStorageMonitorService;

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mIsBootImageOnDisk:Z

    return v0
.end method

.method private cancelFullNotification()V
    .locals 3

    .prologue
    .line 754
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStorageFullIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->removeStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 755
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStorageNotFullIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 756
    return-void
.end method

.method private cancelNotification()V
    .locals 5

    .prologue
    .line 729
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 731
    .local v0, "context":Landroid/content/Context;
    const-string v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 735
    .local v1, "mNotificationMgr":Landroid/app/NotificationManager;
    const/4 v2, 0x0

    const/4 v3, 0x1

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 737
    iget-object v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStorageLowIntent:Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->removeStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 738
    iget-object v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStorageOkIntent:Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 739
    return-void
.end method

.method private clearCache()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 321
    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mClearCacheObserver:Lcom/android/server/storage/DeviceStorageMonitorService$CachePackageDataObserver;

    if-nez v1, :cond_0

    .line 323
    new-instance v1, Lcom/android/server/storage/DeviceStorageMonitorService$CachePackageDataObserver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/storage/DeviceStorageMonitorService$CachePackageDataObserver;-><init>(Lcom/android/server/storage/DeviceStorageMonitorService;Lcom/android/server/storage/DeviceStorageMonitorService$1;)V

    iput-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mClearCacheObserver:Lcom/android/server/storage/DeviceStorageMonitorService$CachePackageDataObserver;

    .line 325
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mClearingCache:Z

    .line 328
    :try_start_0
    const-string v1, "package"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemCacheTrimToThreshold:J

    iget-object v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mClearCacheObserver:Lcom/android/server/storage/DeviceStorageMonitorService$CachePackageDataObserver;

    invoke-interface {v1, v2, v3, v4}, Landroid/content/pm/IPackageManager;->freeStorageAndNotify(JLandroid/content/pm/IPackageDataObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    :goto_0
    return-void

    .line 330
    :catch_0
    move-exception v0

    .line 331
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "DeviceStorageMonitorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get handle for PackageManger Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iput-boolean v5, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mClearingCache:Z

    .line 333
    iput-boolean v5, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mClearSucceeded:Z

    goto :goto_0
.end method

.method private getMemThreshold()J
    .locals 8

    .prologue
    .line 488
    iget-object v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "sys_storage_threshold_percentage"

    const/16 v6, 0xa

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    int-to-long v2, v4

    .line 493
    .local v2, "value":J
    iget-wide v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mTotalMemory:J

    mul-long/2addr v4, v2

    const-wide/16 v6, 0x64

    div-long v2, v4, v6

    .line 494
    iget-object v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "sys_storage_threshold_max_bytes"

    const/high16 v6, 0xc800000

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    int-to-long v0, v4

    .line 499
    .local v0, "maxValue":J
    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    .end local v2    # "value":J
    :goto_0
    return-wide v2

    .restart local v2    # "value":J
    :cond_0
    move-wide v2, v0

    goto :goto_0
.end method

.method private static isBootImageOnDisk()Z
    .locals 5

    .prologue
    .line 535
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->getAllDexCodeInstructionSets()[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 536
    .local v2, "instructionSet":Ljava/lang/String;
    invoke-static {v2}, Ldalvik/system/VMRuntime;->isBootClassPathOnDisk(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 537
    const/4 v4, 0x0

    .line 540
    .end local v2    # "instructionSet":Ljava/lang/String;
    :goto_1
    return v4

    .line 535
    .restart local v2    # "instructionSet":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 540
    .end local v2    # "instructionSet":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x1

    goto :goto_1
.end method

.method private restatDataDir()V
    .locals 22

    .prologue
    .line 270
    :try_start_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mDataFileStats:Landroid/os/StatFs;

    sget-object v18, Lcom/android/server/storage/DeviceStorageMonitorService;->DATA_PATH:Ljava/io/File;

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    .line 271
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mDataFileStats:Landroid/os/StatFs;

    invoke-virtual {v7}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v7

    int-to-long v0, v7

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mDataFileStats:Landroid/os/StatFs;

    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockSize()I

    move-result v7

    int-to-long v0, v7

    move-wide/from16 v20, v0

    mul-long v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMem:J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    .line 277
    :goto_0
    const-string v7, "debug.freemem"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 278
    .local v6, "debugFreeMem":Ljava/lang/String;
    const-string v7, ""

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 279
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMem:J

    .line 282
    :cond_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mResolver:Landroid/content/ContentResolver;

    const-string v18, "sys_free_storage_log_interval"

    const-wide/16 v20, 0x2d0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-static {v7, v0, v1, v2}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v18

    const-wide/16 v20, 0x3c

    mul-long v18, v18, v20

    const-wide/16 v20, 0x3e8

    mul-long v10, v18, v20

    .line 286
    .local v10, "freeMemLogInterval":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 287
    .local v4, "currTime":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLastReportedFreeMemTime:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x0

    cmp-long v7, v18, v20

    if-eqz v7, :cond_1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLastReportedFreeMemTime:J

    move-wide/from16 v18, v0

    sub-long v18, v4, v18

    cmp-long v7, v18, v10

    if-ltz v7, :cond_2

    .line 289
    :cond_1
    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLastReportedFreeMemTime:J

    .line 290
    const-wide/16 v14, -0x1

    .local v14, "mFreeSystem":J
    const-wide/16 v12, -0x1

    .line 292
    .local v12, "mFreeCache":J
    :try_start_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mSystemFileStats:Landroid/os/StatFs;

    sget-object v18, Lcom/android/server/storage/DeviceStorageMonitorService;->SYSTEM_PATH:Ljava/io/File;

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    .line 293
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mSystemFileStats:Landroid/os/StatFs;

    invoke-virtual {v7}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v7

    int-to-long v0, v7

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mSystemFileStats:Landroid/os/StatFs;

    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v7

    int-to-long v0, v7

    move-wide/from16 v20, v0

    mul-long v14, v18, v20

    .line 299
    :goto_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mCacheFileStats:Landroid/os/StatFs;

    sget-object v18, Lcom/android/server/storage/DeviceStorageMonitorService;->CACHE_PATH:Ljava/io/File;

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    .line 300
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mCacheFileStats:Landroid/os/StatFs;

    invoke-virtual {v7}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v7

    int-to-long v0, v7

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mCacheFileStats:Landroid/os/StatFs;

    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v7

    int-to-long v0, v7

    move-wide/from16 v20, v0

    mul-long v12, v18, v20

    .line 305
    :goto_2
    const/16 v7, 0xaba

    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMem:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x2

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    invoke-static {v7, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 309
    .end local v12    # "mFreeCache":J
    .end local v14    # "mFreeSystem":J
    :cond_2
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mResolver:Landroid/content/ContentResolver;

    const-string v18, "disk_free_change_reporting_threshold"

    const-wide/32 v20, 0x200000

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-static {v7, v0, v1, v2}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v16

    .line 313
    .local v16, "threshold":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMem:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLastReportedFreeMem:J

    move-wide/from16 v20, v0

    sub-long v8, v18, v20

    .line 314
    .local v8, "delta":J
    cmp-long v7, v8, v16

    if-gtz v7, :cond_3

    move-wide/from16 v0, v16

    neg-long v0, v0

    move-wide/from16 v18, v0

    cmp-long v7, v8, v18

    if-gez v7, :cond_4

    .line 315
    :cond_3
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMem:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/storage/DeviceStorageMonitorService;->mLastReportedFreeMem:J

    .line 316
    const/16 v7, 0xab8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMem:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-static {v7, v0, v1}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 318
    :cond_4
    return-void

    .line 302
    .end local v8    # "delta":J
    .end local v16    # "threshold":J
    .restart local v12    # "mFreeCache":J
    .restart local v14    # "mFreeSystem":J
    :catch_0
    move-exception v7

    goto :goto_2

    .line 295
    :catch_1
    move-exception v7

    goto/16 :goto_1

    .line 273
    .end local v4    # "currTime":J
    .end local v6    # "debugFreeMem":Ljava/lang/String;
    .end local v10    # "freeMemLogInterval":J
    .end local v12    # "mFreeCache":J
    .end local v14    # "mFreeSystem":J
    :catch_2
    move-exception v7

    goto/16 :goto_0
.end method

.method private sendFullNotification()V
    .locals 3

    .prologue
    .line 746
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStorageFullIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 747
    return-void
.end method

.method private sendNotification()V
    .locals 14

    .prologue
    const/4 v4, 0x0

    const/4 v11, 0x1

    const/4 v1, 0x0

    .line 688
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 691
    .local v0, "context":Landroid/content/Context;
    const/16 v3, 0xab9

    iget-wide v12, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMem:J

    invoke-static {v3, v12, v13}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 693
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.INTERNAL_STORAGE_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 694
    .local v2, "lowMemIntent":Landroid/content/Intent;
    const-string v3, "memory"

    iget-wide v12, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMem:J

    invoke-virtual {v2, v3, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 695
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 696
    const-string v3, "notification"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationManager;

    .line 699
    .local v8, "mNotificationMgr":Landroid/app/NotificationManager;
    const v3, 0x805003b

    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    .line 701
    .local v10, "title":Ljava/lang/CharSequence;
    iget-boolean v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mIsBootImageOnDisk:Z

    if-eqz v3, :cond_0

    const v3, 0x1040472

    :goto_0
    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 704
    .local v6, "details":Ljava/lang/CharSequence;
    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move v3, v1

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v7

    .line 706
    .local v7, "intent":Landroid/app/PendingIntent;
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x108064b

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x1060059

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    new-instance v3, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v3}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v3, v6}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v1

    const-string v3, "sys"

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v9

    .line 719
    .local v9, "notification":Landroid/app/Notification;
    iget v1, v9, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x20

    iput v1, v9, Landroid/app/Notification;->flags:I

    .line 720
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v8, v4, v11, v9, v1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 722
    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStorageLowIntent:Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 723
    return-void

    .line 701
    .end local v6    # "details":Ljava/lang/CharSequence;
    .end local v7    # "intent":Landroid/app/PendingIntent;
    .end local v9    # "notification":Landroid/app/Notification;
    :cond_0
    const v3, 0x1040473

    goto :goto_0
.end method


# virtual methods
.method checkMemory(Z)V
    .locals 10
    .param p1, "checkCache"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 342
    iget-boolean v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mClearingCache:Z

    if-eqz v4, :cond_1

    .line 345
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mThreadStartTime:J

    sub-long v2, v4, v6

    .line 346
    .local v2, "diffTime":J
    const-wide/32 v4, 0x927c0

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    .line 347
    const-string v4, "DeviceStorageMonitorService"

    const-string v5, "Thread that clears cache file seems to run for ever"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    .end local v2    # "diffTime":J
    :cond_0
    :goto_0
    const-wide/16 v4, 0x7530

    invoke-virtual {p0, v9, v4, v5}, Lcom/android/server/storage/DeviceStorageMonitorService;->postCheckMemoryMsg(ZJ)V

    .line 458
    return-void

    .line 350
    :cond_1
    invoke-direct {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->restatDataDir()V

    .line 355
    iget-object v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->lse:Lcom/mediatek/common/lowstorage/ILowStorageExt;

    if-nez v4, :cond_2

    .line 356
    const-string v4, "com.mediatek.common.lowstorage.ILowStorageExt"

    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/common/lowstorage/ILowStorageExt;

    iput-object v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->lse:Lcom/mediatek/common/lowstorage/ILowStorageExt;

    .line 358
    iget-object v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->lse:Lcom/mediatek/common/lowstorage/ILowStorageExt;

    if-nez v4, :cond_9

    .line 359
    const-string v4, "DeviceStorageMonitorService"

    const-string v5, "Failed to create LowStorageExt instance."

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->lse:Lcom/mediatek/common/lowstorage/ILowStorageExt;

    if-eqz v4, :cond_3

    .line 366
    iget-object v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->lse:Lcom/mediatek/common/lowstorage/ILowStorageExt;

    iget-wide v6, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMem:J

    invoke-interface {v4, v6, v7}, Lcom/mediatek/common/lowstorage/ILowStorageExt;->checkStorage(J)V

    .line 370
    :cond_3
    iget-wide v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMem:J

    iget-wide v6, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemLowThreshold:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_b

    .line 372
    iget-boolean v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mCheckAppSize:Z

    if-eqz v4, :cond_4

    .line 373
    iput-boolean v8, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mCheckAppSize:Z

    .line 374
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 375
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const-string v4, "com.android.email"

    iget-object v5, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStatsObserver:Landroid/content/pm/IPackageStatsObserver$Stub;

    invoke-virtual {v1, v4, v5}, Landroid/content/pm/PackageManager;->getPackageSizeInfo(Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V

    .line 377
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :cond_4
    if-eqz p1, :cond_a

    .line 393
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mThreadStartTime:J

    .line 394
    iput-boolean v8, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mClearSucceeded:Z

    .line 395
    invoke-direct {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->clearCache()V

    .line 424
    :cond_5
    :goto_2
    iget-boolean v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLowMemFlag:Z

    if-nez v4, :cond_6

    iget-boolean v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mIsBootImageOnDisk:Z

    if-nez v4, :cond_6

    .line 425
    const-string v4, "DeviceStorageMonitorService"

    const-string v5, "No boot image on disk due to lack of space. Sending notification"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    invoke-direct {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->sendNotification()V

    .line 428
    :cond_6
    iget-wide v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMem:J

    iget-wide v6, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemFullThreshold:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_c

    .line 429
    const-string v4, "DeviceStorageMonitorService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Running on storage full,freeStorage="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMem:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    iget-boolean v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemFullFlag:Z

    if-nez v4, :cond_7

    .line 431
    invoke-direct {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->sendFullNotification()V

    .line 432
    iput-boolean v9, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemFullFlag:Z

    .line 442
    :cond_7
    :goto_3
    iget-wide v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMem:J

    const-wide/32 v6, 0x100000

    div-long/2addr v4, v6

    long-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v0, v4

    .line 443
    .local v0, "criticalLowLevel":I
    iget v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLastCriticalLowLevel:I

    if-ge v0, v4, :cond_8

    .line 444
    iget-wide v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMem:J

    iget v6, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLastCriticalLowLevel:I

    mul-int/lit16 v6, v6, 0x400

    mul-int/lit16 v6, v6, 0x400

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_8

    iget-boolean v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mGetSize:Z

    if-eqz v4, :cond_8

    .line 445
    iget-object v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 446
    const-string v4, "DeviceStorageMonitorService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Show warning dialog, critical level: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    iput v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLastCriticalLowLevel:I

    .line 450
    :cond_8
    iget v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLastCriticalLowLevel:I

    if-ge v4, v0, :cond_0

    .line 451
    const/4 v4, 0x4

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLastCriticalLowLevel:I

    goto/16 :goto_0

    .line 362
    .end local v0    # "criticalLowLevel":I
    :cond_9
    iget-object v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->lse:Lcom/mediatek/common/lowstorage/ILowStorageExt;

    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mTotalMemory:J

    invoke-interface {v4, v5, v6, v7}, Lcom/mediatek/common/lowstorage/ILowStorageExt;->init(Landroid/content/Context;J)V

    goto/16 :goto_1

    .line 402
    :cond_a
    iget-wide v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMem:J

    iput-wide v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMemAfterLastCacheClear:J

    .line 403
    iget-boolean v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLowMemFlag:Z

    if-nez v4, :cond_5

    .line 406
    const-string v4, "DeviceStorageMonitorService"

    const-string v5, "Running low on memory. Sending notification"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    invoke-direct {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->sendNotification()V

    .line 408
    iput-boolean v9, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLowMemFlag:Z

    goto/16 :goto_2

    .line 415
    :cond_b
    iget-wide v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMem:J

    iput-wide v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMemAfterLastCacheClear:J

    .line 416
    iget-boolean v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLowMemFlag:Z

    if-eqz v4, :cond_5

    .line 417
    iput-boolean v9, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mCheckAppSize:Z

    .line 418
    iput-boolean v8, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mGetSize:Z

    .line 419
    const-string v4, "DeviceStorageMonitorService"

    const-string v5, "Memory available. Cancelling notification"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    invoke-direct {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->cancelNotification()V

    .line 421
    iput-boolean v8, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLowMemFlag:Z

    goto/16 :goto_2

    .line 435
    :cond_c
    iget-boolean v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemFullFlag:Z

    if-eqz v4, :cond_7

    .line 436
    invoke-direct {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->cancelFullNotification()V

    .line 437
    iput-boolean v8, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemFullFlag:Z

    goto/16 :goto_3
.end method

.method dumpImpl(Ljava/io/PrintWriter;)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 624
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 649
    .local v0, "context":Landroid/content/Context;
    const-string v1, "Current DeviceStorageMonitor state:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 651
    const-string v1, "  mFreeMem="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMem:J

    invoke-static {v0, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 652
    const-string v1, " mTotalMemory="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 653
    iget-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mTotalMemory:J

    invoke-static {v0, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 655
    const-string v1, "  mFreeMemAfterLastCacheClear="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 656
    iget-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMemAfterLastCacheClear:J

    invoke-static {v0, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 658
    const-string v1, "  mLastReportedFreeMem="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 659
    iget-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLastReportedFreeMem:J

    invoke-static {v0, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 660
    const-string v1, " mLastReportedFreeMemTime="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 661
    iget-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLastReportedFreeMemTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 662
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 664
    const-string v1, "  mLowMemFlag="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLowMemFlag:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 665
    const-string v1, " mMemFullFlag="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemFullFlag:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 666
    const-string v1, " mIsBootImageOnDisk="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mIsBootImageOnDisk:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 668
    const-string v1, "  mClearSucceeded="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mClearSucceeded:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 669
    const-string v1, " mClearingCache="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mClearingCache:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 671
    const-string v1, "  mMemLowThreshold="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 672
    iget-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemLowThreshold:J

    invoke-static {v0, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 673
    const-string v1, " mMemFullThreshold="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 674
    iget-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemFullThreshold:J

    invoke-static {v0, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 676
    const-string v1, "  mMemCacheStartTrimThreshold="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 677
    iget-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemCacheStartTrimThreshold:J

    invoke-static {v0, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 678
    const-string v1, " mMemCacheTrimToThreshold="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 679
    iget-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemCacheTrimToThreshold:J

    invoke-static {v0, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 680
    return-void
.end method

.method public onStart()V
    .locals 6

    .prologue
    .line 554
    invoke-direct {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getMemThreshold()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemLowThreshold:J

    .line 555
    const-wide/32 v0, 0x500000

    iput-wide v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemFullThreshold:J

    .line 557
    iget-wide v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemLowThreshold:J

    const-wide/16 v2, 0x3

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemFullThreshold:J

    add-long/2addr v0, v2

    const-wide/16 v2, 0x4

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemCacheStartTrimThreshold:J

    .line 558
    iget-wide v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemLowThreshold:J

    iget-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemLowThreshold:J

    iget-wide v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemCacheStartTrimThreshold:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x2

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemCacheTrimToThreshold:J

    .line 560
    iget-wide v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mTotalMemory:J

    iput-wide v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMemAfterLastCacheClear:J

    .line 561
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/storage/DeviceStorageMonitorService;->checkMemory(Z)V

    .line 563
    new-instance v0, Lcom/android/server/storage/DeviceStorageMonitorService$CacheFileDeletedObserver;

    invoke-direct {v0}, Lcom/android/server/storage/DeviceStorageMonitorService$CacheFileDeletedObserver;-><init>()V

    iput-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mCacheFileDeletedObserver:Lcom/android/server/storage/DeviceStorageMonitorService$CacheFileDeletedObserver;

    .line 564
    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mCacheFileDeletedObserver:Lcom/android/server/storage/DeviceStorageMonitorService$CacheFileDeletedObserver;

    invoke-virtual {v0}, Lcom/android/server/storage/DeviceStorageMonitorService$CacheFileDeletedObserver;->startWatching()V

    .line 566
    const-string v0, "devicestoragemonitor"

    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mRemoteService:Landroid/os/IBinder;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/storage/DeviceStorageMonitorService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 567
    const-class v0, Lcom/android/server/storage/DeviceStorageMonitorInternal;

    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLocalService:Lcom/android/server/storage/DeviceStorageMonitorInternal;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/storage/DeviceStorageMonitorService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 568
    return-void
.end method

.method postCheckMemoryMsg(ZJ)V
    .locals 6
    .param p1, "clearCache"    # Z
    .param p2, "delay"    # J

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 476
    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 477
    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v4, v1, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v3, v0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 480
    return-void

    :cond_0
    move v0, v2

    .line 477
    goto :goto_0
.end method
