.class public Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;
.super Ljava/lang/Object;
.source "StorageMeasurement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$FileInfo;,
        Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$ICallBack;,
        Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementHandler;,
        Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$StatsObserver;,
        Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementReceiver;,
        Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementDetails;,
        Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MediaStoreType;
    }
.end annotation


# static fields
.field public static final DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

.field private static final DEFAULT_CONTAINER_PACKAGE:Ljava/lang/String; = "com.android.defcontainer"

.field private static final LOCAL_LOGV:Z = true

.field static final LOGV:Z

.field private static final TAG:Ljava/lang/String; = "StorageMeasurement"

.field private static sInstances:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/storage/StorageVolume;",
            "Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;",
            ">;"
        }
    .end annotation
.end field

.field private static final sMeasureMediaStoreTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MediaStoreType;",
            ">;"
        }
    .end annotation
.end field

.field private static final sMeasureMediaTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAvailSize:J

.field mFileInfoForMisc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementHandler;

.field public mICallBack:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$ICallBack;

.field private mIsFuseOn:Z

.field private final mIsInternal:Z

.field private mIsPrimary:Z

.field private mOsSize:J

.field private volatile mReceiver:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalSize:J

.field private final mVolume:Landroid/os/storage/StorageVolume;

.field private mVolumeEmulate:Landroid/os/storage/StorageVolume;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 86
    const-string v0, "StorageMeasurement"

    invoke-static {v0, v6}, Lcom/lenovo/xlog/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->LOGV:Z

    .line 90
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.defcontainer"

    const-string v2, "com.android.defcontainer.DefaultContainerService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    .line 94
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    aput-object v1, v0, v5

    sget-object v1, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    aput-object v1, v0, v4

    sget-object v1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    aput-object v1, v0, v6

    sget-object v1, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    aput-object v1, v0, v7

    const/4 v1, 0x4

    sget-object v2, Landroid/os/Environment;->DIRECTORY_ALARMS:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Landroid/os/Environment;->DIRECTORY_NOTIFICATIONS:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/os/Environment;->DIRECTORY_PODCASTS:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Android"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->sMeasureMediaTypes:Ljava/util/Set;

    .line 107
    new-array v0, v7, [Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MediaStoreType;

    new-instance v1, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MediaStoreType;

    sget-object v2, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    new-array v3, v4, [I

    aput v4, v3, v5

    invoke-direct {v1, v2, v3}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MediaStoreType;-><init>(Ljava/lang/String;[I)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MediaStoreType;

    sget-object v2, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    new-array v3, v4, [I

    aput v7, v3, v5

    invoke-direct {v1, v2, v3}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MediaStoreType;-><init>(Ljava/lang/String;[I)V

    aput-object v1, v0, v4

    new-instance v1, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MediaStoreType;

    sget-object v2, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    new-array v3, v4, [I

    aput v6, v3, v5

    invoke-direct {v1, v2, v3}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MediaStoreType;-><init>(Ljava/lang/String;[I)V

    aput-object v1, v0, v6

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->sMeasureMediaStoreTypes:Ljava/util/Set;

    .line 115
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->sInstances:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/storage/StorageVolume;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "volume"    # Landroid/os/storage/StorageVolume;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    iput-object v9, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->mVolumeEmulate:Landroid/os/storage/StorageVolume;

    .line 207
    iput-boolean v7, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->mIsPrimary:Z

    .line 208
    iput-boolean v7, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->mIsFuseOn:Z

    .line 694
    iput-object v9, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->mICallBack:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$ICallBack;

    .line 225
    iput-object p2, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->mVolume:Landroid/os/storage/StorageVolume;

    .line 226
    if-nez p2, :cond_1

    :goto_0
    iput-boolean v7, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->mIsInternal:Z

    .line 230
    invoke-static {p1}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v4

    .line 231
    .local v4, "sm":Landroid/os/storage/StorageManager;
    invoke-static {v4}, Lcom/lenovo/settings/storage/StorageUtils;->isFuseOn(Landroid/os/storage/StorageManager;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->mIsFuseOn:Z

    .line 234
    iget-boolean v7, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->mIsFuseOn:Z

    if-eqz v7, :cond_4

    .line 235
    if-nez p2, :cond_3

    .line 237
    invoke-virtual {v4}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v6

    .line 238
    .local v6, "volumes":[Landroid/os/storage/StorageVolume;
    move-object v0, v6

    .local v0, "arr$":[Landroid/os/storage/StorageVolume;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v5, v0, v2

    .line 239
    .local v5, "v":Landroid/os/storage/StorageVolume;
    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 240
    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->isPrimary()Z

    move-result v7

    iput-boolean v7, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->mIsPrimary:Z

    .line 241
    iput-object v5, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->mVolumeEmulate:Landroid/os/storage/StorageVolume;

    .line 254
    .end local v0    # "arr$":[Landroid/os/storage/StorageVolume;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v5    # "v":Landroid/os/storage/StorageVolume;
    .end local v6    # "volumes":[Landroid/os/storage/StorageVolume;
    :cond_0
    :goto_2
    new-instance v1, Landroid/os/HandlerThread;

    const-string v7, "MemoryMeasurement"

    invoke-direct {v1, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 255
    .local v1, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 256
    new-instance v7, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementHandler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v7, p0, p1, v8}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementHandler;-><init>(Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v7, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->mHandler:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementHandler;

    .line 257
    return-void

    .end local v1    # "handlerThread":Landroid/os/HandlerThread;
    .end local v4    # "sm":Landroid/os/storage/StorageManager;
    :cond_1
    move v7, v8

    .line 226
    goto :goto_0

    .line 238
    .restart local v0    # "arr$":[Landroid/os/storage/StorageVolume;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v4    # "sm":Landroid/os/storage/StorageManager;
    .restart local v5    # "v":Landroid/os/storage/StorageVolume;
    .restart local v6    # "volumes":[Landroid/os/storage/StorageVolume;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 246
    .end local v0    # "arr$":[Landroid/os/storage/StorageVolume;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v5    # "v":Landroid/os/storage/StorageVolume;
    .end local v6    # "volumes":[Landroid/os/storage/StorageVolume;
    :cond_3
    invoke-virtual {p2}, Landroid/os/storage/StorageVolume;->isPrimary()Z

    move-result v7

    iput-boolean v7, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->mIsPrimary:Z

    goto :goto_2

    .line 249
    :cond_4
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Landroid/os/storage/StorageVolume;->isPrimary()Z

    move-result v8

    :cond_5
    iput-boolean v8, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->mIsPrimary:Z

    goto :goto_2
.end method

.method static synthetic access$000(Landroid/util/SparseLongArray;IJ)V
    .locals 0
    .param p0, "x0"    # Landroid/util/SparseLongArray;
    .param p1, "x1"    # I
    .param p2, "x2"    # J

    .prologue
    .line 82
    invoke-static {p0, p1, p2, p3}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->addValue(Landroid/util/SparseLongArray;IJ)V

    return-void
.end method

.method static synthetic access$1000(Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->sendInternalApproximateUpdate()V

    return-void
.end method

.method static synthetic access$1100(Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;)Z
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->mIsPrimary:Z

    return v0
.end method

.method static synthetic access$1200()Ljava/util/Set;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->sMeasureMediaTypes:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/internal/app/IMediaContainerService;
    .param p1, "x1"    # Ljava/io/File;

    .prologue
    .line 82
    invoke-static {p0, p1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->getDirectorySize(Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1400(Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J
    .locals 2
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;
    .param p1, "x1"    # Lcom/android/internal/app/IMediaContainerService;
    .param p2, "x2"    # Ljava/io/File;

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->measureMisc(Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1500(Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;)Landroid/os/storage/StorageVolume;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->mVolumeEmulate:Landroid/os/storage/StorageVolume;

    return-object v0
.end method

.method static synthetic access$1600()Ljava/util/Set;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->sMeasureMediaStoreTypes:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$300(Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementDetails;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;
    .param p1, "x1"    # Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementDetails;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->sendExactUpdate(Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementDetails;)V

    return-void
.end method

.method static synthetic access$400(Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;)Landroid/os/storage/StorageVolume;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->mVolume:Landroid/os/storage/StorageVolume;

    return-object v0
.end method

.method static synthetic access$500(Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;)Z
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->mIsFuseOn:Z

    return v0
.end method

.method static synthetic access$600(Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;)Z
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->mIsInternal:Z

    return v0
.end method

.method static synthetic access$700(Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;)J
    .locals 2
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;

    .prologue
    .line 82
    iget-wide v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->mTotalSize:J

    return-wide v0
.end method

.method static synthetic access$702(Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;J)J
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;
    .param p1, "x1"    # J

    .prologue
    .line 82
    iput-wide p1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->mTotalSize:J

    return-wide p1
.end method

.method static synthetic access$800(Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;)J
    .locals 2
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;

    .prologue
    .line 82
    iget-wide v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->mAvailSize:J

    return-wide v0
.end method

.method static synthetic access$802(Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;J)J
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;
    .param p1, "x1"    # J

    .prologue
    .line 82
    iput-wide p1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->mAvailSize:J

    return-wide p1
.end method

.method static synthetic access$900(Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;)J
    .locals 2
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;

    .prologue
    .line 82
    iget-wide v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->mOsSize:J

    return-wide v0
.end method

.method static synthetic access$902(Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;J)J
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;
    .param p1, "x1"    # J

    .prologue
    .line 82
    iput-wide p1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->mOsSize:J

    return-wide p1
.end method

.method private static addValue(Landroid/util/SparseLongArray;IJ)V
    .locals 2
    .param p0, "array"    # Landroid/util/SparseLongArray;
    .param p1, "key"    # I
    .param p2, "value"    # J

    .prologue
    .line 786
    invoke-virtual {p0, p1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v0

    add-long/2addr v0, p2

    invoke-virtual {p0, p1, v0, v1}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 787
    return-void
.end method

.method private static getDirectorySize(Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J
    .locals 6
    .param p0, "imcs"    # Lcom/android/internal/app/IMediaContainerService;
    .param p1, "path"    # Ljava/io/File;

    .prologue
    .line 684
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Lcom/android/internal/app/IMediaContainerService;->calculateDirectorySize(Ljava/lang/String;)J

    move-result-wide v2

    .line 685
    .local v2, "size":J
    const-string v1, "StorageMeasurement"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDirectorySize("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") returned "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 689
    .end local v2    # "size":J
    :goto_0
    return-wide v2

    .line 687
    :catch_0
    move-exception v0

    .line 688
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageMeasurement"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not read memory from default container service for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v0}, Lcom/lenovo/xlog/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 689
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;Landroid/os/storage/StorageVolume;)Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "volume"    # Landroid/os/storage/StorageVolume;

    .prologue
    .line 122
    sget-object v2, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->sInstances:Ljava/util/HashMap;

    monitor-enter v2

    .line 123
    :try_start_0
    sget-object v1, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->sInstances:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;

    .line 124
    .local v0, "value":Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;
    if-nez v0, :cond_0

    .line 125
    new-instance v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;

    .end local v0    # "value":Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;-><init>(Landroid/content/Context;Landroid/os/storage/StorageVolume;)V

    .line 126
    .restart local v0    # "value":Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;
    sget-object v1, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->sInstances:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    :cond_0
    monitor-exit v2

    return-object v0

    .line 129
    .end local v0    # "value":Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private measureMisc(Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J
    .locals 25
    .param p1, "imcs"    # Lcom/android/internal/app/IMediaContainerService;
    .param p2, "dir"    # Ljava/io/File;

    .prologue
    .line 706
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->mFileInfoForMisc:Ljava/util/List;

    .line 708
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v18

    .line 709
    .local v18, "files":[Ljava/io/File;
    if-nez v18, :cond_0

    const-wide/16 v22, 0x0

    .line 759
    :goto_0
    return-wide v22

    .line 712
    :cond_0
    const-wide/16 v6, 0x0

    .line 713
    .local v6, "counter":J
    const-wide/16 v22, 0x0

    .line 716
    .local v22, "miscSize":J
    const/16 v24, 0x0

    .line 718
    .local v24, "scannedCount":I
    move-object/from16 v14, v18

    .local v14, "arr$":[Ljava/io/File;
    array-length v0, v14

    move/from16 v20, v0

    .local v20, "len$":I
    const/16 v19, 0x0

    .local v19, "i$":I
    :goto_1
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_5

    aget-object v15, v14, v19

    .line 719
    .local v15, "file":Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 720
    .local v3, "path":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v21

    .line 721
    .local v21, "name":Ljava/lang/String;
    sget-object v2, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->sMeasureMediaTypes:Ljava/util/Set;

    move-object/from16 v0, v21

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 718
    :cond_1
    :goto_2
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 725
    :cond_2
    invoke-virtual {v15}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 726
    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 727
    .local v4, "fileSize":J
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->mFileInfoForMisc:Ljava/util/List;

    new-instance v2, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$FileInfo;

    const-wide/16 v12, 0x1

    add-long v16, v6, v12

    .end local v6    # "counter":J
    .local v16, "counter":J
    invoke-direct/range {v2 .. v7}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$FileInfo;-><init>(Ljava/lang/String;JJ)V

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 728
    add-long v22, v22, v4

    move-wide/from16 v6, v16

    .line 739
    .end local v4    # "fileSize":J
    .end local v16    # "counter":J
    .restart local v6    # "counter":J
    :cond_3
    :goto_3
    add-int/lit8 v24, v24, 0x1

    .line 740
    const/16 v2, 0xa

    move/from16 v0, v24

    if-ne v0, v2, :cond_1

    .line 741
    const/16 v24, 0x0

    .line 742
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->mICallBack:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$ICallBack;

    if-eqz v2, :cond_1

    .line 743
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->mICallBack:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$ICallBack;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->mFileInfoForMisc:Ljava/util/List;

    invoke-interface {v2, v8}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$ICallBack;->callBack(Ljava/util/List;)V

    goto :goto_2

    .line 729
    :cond_4
    invoke-virtual {v15}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 730
    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->getDirectorySize(Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J

    move-result-wide v10

    .line 731
    .local v10, "dirSize":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->mFileInfoForMisc:Ljava/util/List;

    new-instance v8, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$FileInfo;

    const-wide/16 v12, 0x1

    add-long v16, v6, v12

    .end local v6    # "counter":J
    .restart local v16    # "counter":J
    move-object v9, v3

    move-wide v12, v6

    invoke-direct/range {v8 .. v13}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$FileInfo;-><init>(Ljava/lang/String;JJ)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 732
    add-long v22, v22, v10

    move-wide/from16 v6, v16

    .end local v16    # "counter":J
    .restart local v6    # "counter":J
    goto :goto_3

    .line 751
    .end local v3    # "path":Ljava/lang/String;
    .end local v10    # "dirSize":J
    .end local v15    # "file":Ljava/io/File;
    .end local v21    # "name":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->mICallBack:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$ICallBack;

    if-eqz v2, :cond_6

    .line 752
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->mICallBack:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$ICallBack;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->mFileInfoForMisc:Ljava/util/List;

    invoke-interface {v2, v8}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$ICallBack;->callBack(Ljava/util/List;)V

    .line 757
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->mFileInfoForMisc:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto/16 :goto_0
.end method

.method private sendExactUpdate(Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementDetails;)V
    .locals 3
    .param p1, "details"    # Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementDetails;

    .prologue
    .line 289
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementReceiver;

    move-object v0, v1

    .line 290
    .local v0, "receiver":Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementReceiver;
    :goto_0
    if-nez v0, :cond_2

    .line 291
    sget-boolean v1, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->LOGV:Z

    if-eqz v1, :cond_0

    .line 292
    const-string v1, "StorageMeasurement"

    const-string v2, "measurements dropped because receiver is null! wasted effort"

    invoke-static {v1, v2}, Lcom/lenovo/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    :cond_0
    :goto_1
    return-void

    .line 289
    .end local v0    # "receiver":Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementReceiver;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 296
    .restart local v0    # "receiver":Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementReceiver;
    :cond_2
    invoke-interface {v0, p0, p1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementReceiver;->updateDetails(Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementDetails;)V

    goto :goto_1
.end method

.method private sendInternalApproximateUpdate()V
    .locals 8

    .prologue
    .line 280
    const-string v1, "StorageMeasurement"

    const-string v2, "sendInternalApproximateUpdate"

    invoke-static {v1, v2}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementReceiver;

    move-object v0, v1

    .line 282
    .local v0, "receiver":Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementReceiver;
    :goto_0
    if-nez v0, :cond_1

    .line 286
    :goto_1
    return-void

    .line 281
    .end local v0    # "receiver":Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementReceiver;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 285
    .restart local v0    # "receiver":Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementReceiver;
    :cond_1
    iget-wide v2, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->mTotalSize:J

    iget-wide v4, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->mAvailSize:J

    iget-wide v6, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->mOsSize:J

    move-object v1, p0

    invoke-interface/range {v0 .. v7}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementReceiver;->updateApproximate(Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;JJJ)V

    goto :goto_1
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    .line 270
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    .line 271
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->mHandler:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementHandler;->removeMessages(I)V

    .line 272
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->mHandler:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementHandler;->sendEmptyMessage(I)Z

    .line 273
    return-void
.end method

.method public invalidate()V
    .locals 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->mHandler:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementHandler;->sendEmptyMessage(I)Z

    .line 277
    return-void
.end method

.method public measure()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 264
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->mHandler:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementHandler;

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->mHandler:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementHandler;

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementHandler;->sendEmptyMessage(I)Z

    .line 267
    :cond_0
    return-void
.end method

.method public setCallBack(Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$ICallBack;)V
    .locals 0
    .param p1, "callback"    # Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$ICallBack;

    .prologue
    .line 697
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->mICallBack:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$ICallBack;

    .line 698
    return-void
.end method

.method public setReceiver(Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementReceiver;)V
    .locals 1
    .param p1, "receiver"    # Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementReceiver;

    .prologue
    .line 260
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    .line 261
    return-void
.end method
