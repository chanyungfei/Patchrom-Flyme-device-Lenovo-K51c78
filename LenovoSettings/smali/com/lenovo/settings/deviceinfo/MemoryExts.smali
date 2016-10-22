.class public Lcom/lenovo/settings/deviceinfo/MemoryExts;
.super Ljava/lang/Object;
.source "MemoryExts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/settings/deviceinfo/MemoryExts$SwapAlertFragment;
    }
.end annotation


# static fields
.field private static final ACTION_DYNAMIC_SD_SWAP:Ljava/lang/String; = "com.mediatek.SD_SWAP"

.field private static final APP_INSTALL_AUTO_ID:I = 0x0

.field private static final DLG_DEFAULT_WRITE_DISK_CHANGE_SD0_ASK:I = 0x4

.field private static final DLG_DEFAULT_WRITE_DISK_CHANGE_SD1_ASK:I = 0x5

.field private static final DLG_DEFAULT_WRITE_DISK_CHANGE_UNKNOWN:I = 0x6

.field private static final EXTERNAL_STORAGE_PATH:Ljava/lang/String; = "/storage/sdcard1"

.field private static final MEMORY_SD0_EMMC_MNT:Ljava/lang/String; = "/storage/sdcard0"

.field private static final MEMORY_SD0_EMMC_MNT_FLAG_ICS:Ljava/lang/String; = "/storage/sdcard0"

.field private static final MEMORY_SD1_EMMC_MNT:Ljava/lang/String; = "/storage/sdcard1"

.field private static final MEMORY_SD1_EMMC_MNT_FLAG_ICS:Ljava/lang/String; = "/storage/sdcard1"

.field private static final ORDER_PHONE_STORAGE:I = -0x3

.field private static final ORDER_SD_CARD:I = -0x2

.field private static final ORDER_USB_OTG:I = -0x1

.field private static final SD_INDEX:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MemorySettings"

.field private static final USB_CABLE_CONNECTED_STATE:Ljava/lang/String; = "CONNECTED"

.field private static final USB_STORAGE_PATH:Ljava/lang/String; = "/storage/usbotg"

.field private static sClickedMountPoint:Ljava/lang/String;


# instance fields
.field private defaultWriteDiskListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private installLocationListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private mActivity:Landroid/app/Activity;

.field private mApkInstallerEntrance:Landroid/preference/Preference;

.field private mCategories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;",
            ">;"
        }
    .end annotation
.end field

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDeafultWritePathPref:Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;

.field private mDefaultWriteDiskContainer:Landroid/preference/PreferenceCategory;

.field private mDefaultWritePath:Ljava/lang/String;

.field mDynSwapReceiver:Landroid/content/BroadcastReceiver;

.field private mInstallLocationContainer:Landroid/preference/ListPreference;

.field private mInstallLocationEnabled:Z

.field private mIsAppInstallerInstalled:Z

.field private mIsCategoryAdded:Z

.field private mIsRemovableVolume:Z

.field private mIsUnmountingUsb:Z

.field private mResources:Landroid/content/res/Resources;

.field private mRootContainer:Landroid/preference/PreferenceScreen;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mStorageVolumes:[Landroid/os/storage/StorageVolume;

.field private mStorageWritePathList:[Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;

.field private mWritePathAdded:[Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/preference/PreferenceScreen;Landroid/os/storage/StorageManager;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p3, "storageManager"    # Landroid/os/storage/StorageManager;

    .prologue
    const/4 v0, 0x0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-boolean v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mInstallLocationEnabled:Z

    .line 74
    iput-boolean v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mIsAppInstallerInstalled:Z

    .line 75
    iput-boolean v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mIsUnmountingUsb:Z

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mIsCategoryAdded:Z

    .line 133
    new-instance v0, Lcom/lenovo/settings/deviceinfo/MemoryExts$1;

    invoke-direct {v0, p0}, Lcom/lenovo/settings/deviceinfo/MemoryExts$1;-><init>(Lcom/lenovo/settings/deviceinfo/MemoryExts;)V

    iput-object v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->installLocationListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 334
    new-instance v0, Lcom/lenovo/settings/deviceinfo/MemoryExts$2;

    invoke-direct {v0, p0}, Lcom/lenovo/settings/deviceinfo/MemoryExts$2;-><init>(Lcom/lenovo/settings/deviceinfo/MemoryExts;)V

    iput-object v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->defaultWriteDiskListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 607
    new-instance v0, Lcom/lenovo/settings/deviceinfo/MemoryExts$7;

    invoke-direct {v0, p0}, Lcom/lenovo/settings/deviceinfo/MemoryExts$7;-><init>(Lcom/lenovo/settings/deviceinfo/MemoryExts;)V

    iput-object v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mDynSwapReceiver:Landroid/content/BroadcastReceiver;

    .line 109
    iput-object p1, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mActivity:Landroid/app/Activity;

    .line 110
    iget-object v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mContentResolver:Landroid/content/ContentResolver;

    .line 111
    iput-object p2, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mRootContainer:Landroid/preference/PreferenceScreen;

    .line 112
    iput-object p3, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 113
    iget-object v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mResources:Landroid/content/res/Resources;

    .line 114
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/settings/deviceinfo/MemoryExts;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/deviceinfo/MemoryExts;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/settings/deviceinfo/MemoryExts;)Landroid/preference/ListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/deviceinfo/MemoryExts;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mInstallLocationContainer:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/lenovo/settings/deviceinfo/MemoryExts;[Landroid/os/storage/StorageVolume;)[Landroid/os/storage/StorageVolume;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/deviceinfo/MemoryExts;
    .param p1, "x1"    # [Landroid/os/storage/StorageVolume;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/lenovo/settings/deviceinfo/MemoryExts;->filterInvalidVolumes([Landroid/os/storage/StorageVolume;)[Landroid/os/storage/StorageVolume;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/lenovo/settings/deviceinfo/MemoryExts;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/deviceinfo/MemoryExts;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mCategories:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/lenovo/settings/deviceinfo/MemoryExts;)[Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/deviceinfo/MemoryExts;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mStorageWritePathList:[Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/lenovo/settings/deviceinfo/MemoryExts;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/deviceinfo/MemoryExts;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/lenovo/settings/deviceinfo/MemoryExts;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/settings/deviceinfo/MemoryExts;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/lenovo/settings/deviceinfo/MemoryExts;->updateInstallLocation()V

    return-void
.end method

.method static synthetic access$200(Lcom/lenovo/settings/deviceinfo/MemoryExts;I)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/deviceinfo/MemoryExts;
    .param p1, "x1"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/lenovo/settings/deviceinfo/MemoryExts;->showDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/settings/deviceinfo/MemoryExts;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/settings/deviceinfo/MemoryExts;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/lenovo/settings/deviceinfo/MemoryExts;->updateDefaultWriteDisk()V

    return-void
.end method

.method static synthetic access$400(Lcom/lenovo/settings/deviceinfo/MemoryExts;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/settings/deviceinfo/MemoryExts;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/lenovo/settings/deviceinfo/MemoryExts;->setEmmcDefaultStorage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/lenovo/settings/deviceinfo/MemoryExts;Landroid/os/storage/IMountService;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/settings/deviceinfo/MemoryExts;
    .param p1, "x1"    # Landroid/os/storage/IMountService;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/lenovo/settings/deviceinfo/MemoryExts;->doMount(Landroid/os/storage/IMountService;)V

    return-void
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->sClickedMountPoint:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/lenovo/settings/deviceinfo/MemoryExts;)[Landroid/os/storage/StorageVolume;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/deviceinfo/MemoryExts;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    return-object v0
.end method

.method static synthetic access$802(Lcom/lenovo/settings/deviceinfo/MemoryExts;[Landroid/os/storage/StorageVolume;)[Landroid/os/storage/StorageVolume;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/settings/deviceinfo/MemoryExts;
    .param p1, "x1"    # [Landroid/os/storage/StorageVolume;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    return-object p1
.end method

.method static synthetic access$900(Lcom/lenovo/settings/deviceinfo/MemoryExts;)Landroid/os/storage/StorageManager;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/deviceinfo/MemoryExts;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mStorageManager:Landroid/os/storage/StorageManager;

    return-object v0
.end method

.method private doMount(Landroid/os/storage/IMountService;)V
    .locals 3
    .param p1, "mountService"    # Landroid/os/storage/IMountService;

    .prologue
    .line 565
    new-instance v0, Lcom/lenovo/settings/deviceinfo/MemoryExts$6;

    invoke-direct {v0, p0, p1}, Lcom/lenovo/settings/deviceinfo/MemoryExts$6;-><init>(Lcom/lenovo/settings/deviceinfo/MemoryExts;Landroid/os/storage/IMountService;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/settings/deviceinfo/MemoryExts$6;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 581
    return-void
.end method

.method private filterInvalidVolumes([Landroid/os/storage/StorageVolume;)[Landroid/os/storage/StorageVolume;
    .locals 7
    .param p1, "volumes"    # [Landroid/os/storage/StorageVolume;

    .prologue
    .line 488
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 489
    .local v2, "storageVolumes":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/StorageVolume;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_1

    .line 491
    :try_start_0
    const-string v3, "MemorySettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Volume : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p1, v1

    iget-object v6, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5, v6}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , path : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p1, v1

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , state : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mStorageManager:Landroid/os/storage/StorageManager;

    aget-object v6, p1, v1

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , emulated : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p1, v1

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 498
    :goto_1
    const-string v3, "not_present"

    iget-object v4, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mStorageManager:Landroid/os/storage/StorageManager;

    aget-object v5, p1, v1

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 499
    aget-object v3, p1, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 489
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 495
    :catch_0
    move-exception v0

    .line 496
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 502
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Landroid/os/storage/StorageVolume;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/os/storage/StorageVolume;

    return-object v3
.end method

.method private getAppInstallLocation()Ljava/lang/String;
    .locals 4

    .prologue
    .line 146
    iget-object v1, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "default_install_location"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 148
    .local v0, "selectedLocation":I
    const-string v1, "MemorySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "selectedLocation : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getEmmcDefaultStorage()Ljava/lang/String;
    .locals 4

    .prologue
    .line 673
    const-string v1, "persist.sys.emmc"

    const-string v2, "/storage/sdcard0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 674
    .local v0, "path":Ljava/lang/String;
    const-string v1, "MemorySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getEmmcDefaultStorage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    return-object v0
.end method

.method private initApkInstaller()V
    .locals 3

    .prologue
    .line 183
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mIsAppInstallerInstalled:Z

    .line 184
    iget-boolean v1, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mIsAppInstallerInstalled:Z

    if-eqz v1, :cond_0

    .line 185
    new-instance v1, Landroid/preference/Preference;

    iget-object v2, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mApkInstallerEntrance:Landroid/preference/Preference;

    .line 186
    iget-object v1, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mApkInstallerEntrance:Landroid/preference/Preference;

    const v2, 0x7f0c03dc

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(I)V

    .line 187
    iget-object v1, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mApkInstallerEntrance:Landroid/preference/Preference;

    const v2, 0x7f0c03dd

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 188
    iget-object v1, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mRootContainer:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mApkInstallerEntrance:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 190
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 191
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.mediatek.apkinstaller"

    const-string v2, "com.mediatek.apkinstaller.APKInstaller"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    const/high16 v1, 0x800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 194
    iget-object v1, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mApkInstallerEntrance:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 196
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private initDefaultWriteDisk()V
    .locals 18

    .prologue
    .line 221
    const-string v14, "MemorySettings"

    const-string v15, "initDefaultWriteDisk"

    invoke-static {v14, v15}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    new-instance v14, Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mActivity:Landroid/app/Activity;

    invoke-direct {v14, v15}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mDefaultWriteDiskContainer:Landroid/preference/PreferenceCategory;

    .line 223
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mDefaultWriteDiskContainer:Landroid/preference/PreferenceCategory;

    const v15, 0x7f0c0362

    invoke-virtual {v14, v15}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 225
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mRootContainer:Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mDefaultWriteDiskContainer:Landroid/preference/PreferenceCategory;

    invoke-virtual {v14, v15}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 228
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    .line 229
    .local v1, "availableVolumes":[Landroid/os/storage/StorageVolume;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 232
    .local v13, "writePathList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v14}, Landroid/os/storage/StorageManager;->getVolumePaths()[Ljava/lang/String;

    move-result-object v5

    .line 233
    .local v5, "mPathList":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v14}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v12

    .line 237
    .local v12, "volumes":[Landroid/os/storage/StorageVolume;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 238
    .local v6, "mVolumePathList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 240
    .local v9, "storageVolumes":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/StorageVolume;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v14, v5

    if-ge v3, v14, :cond_1

    .line 241
    const-string v14, "MemorySettings"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "VolumePath: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    aget-object v16, v12, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mActivity:Landroid/app/Activity;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " ,state is: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mStorageManager:Landroid/os/storage/StorageManager;

    move-object/from16 v16, v0

    aget-object v17, v5, v3

    invoke-virtual/range {v16 .. v17}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " ,emulated is: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    aget-object v16, v12, v3

    invoke-virtual/range {v16 .. v16}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", path is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    aget-object v16, v12, v3

    invoke-virtual/range {v16 .. v16}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const-string v14, "not_present"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mStorageManager:Landroid/os/storage/StorageManager;

    aget-object v16, v5, v3

    invoke-virtual/range {v15 .. v16}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 246
    const-string v14, "MemorySettings"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v16, v5, v3

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "  is present, so add it. "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    aget-object v14, v5, v3

    invoke-interface {v6, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    aget-object v14, v12, v3

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 251
    :cond_1
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v4

    .line 252
    .local v4, "length":I
    const-string v14, "MemorySettings"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "default path group length = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const/4 v3, 0x0

    :goto_1
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v14

    if-ge v3, v14, :cond_a

    .line 255
    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/storage/StorageVolume;

    .line 256
    .local v11, "volume":Landroid/os/storage/StorageVolume;
    new-instance v8, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mActivity:Landroid/app/Activity;

    invoke-direct {v8, v14}, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;-><init>(Landroid/content/Context;)V

    .line 257
    .local v8, "preference":Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v8, v14}, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->setKey(Ljava/lang/String;)V

    .line 259
    if-nez v3, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mResources:Landroid/content/res/Resources;

    const v15, 0x7f0c023e

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    .line 261
    .local v10, "title":Ljava/lang/CharSequence;
    :goto_2
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 262
    .local v7, "path":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/settings/deviceinfo/MemoryExts;->getEmmcDefaultStorage()Ljava/lang/String;

    move-result-object v2

    .line 263
    .local v2, "emmcPath":Ljava/lang/String;
    const-string v14, "MemorySettings"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "emmcPath="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const-string v14, "/storage/sdcard0"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 265
    const-string v14, "/storage/sdcard0"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 266
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mResources:Landroid/content/res/Resources;

    const v15, 0x7f0c023e

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    .line 272
    :goto_3
    const-string v14, "MemorySettings"

    const-string v15, "initDefaultWriteDisk equal "

    invoke-static {v14, v15}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "path":Ljava/lang/String;
    check-cast v7, Ljava/lang/String;

    .line 297
    .restart local v7    # "path":Ljava/lang/String;
    :goto_4
    const-string v14, "MemorySettings"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "title:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", path="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    invoke-virtual {v8, v10}, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 300
    invoke-virtual {v8, v7}, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->setPath(Ljava/lang/String;)V

    .line 301
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->defaultWriteDiskListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v8, v14}, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 303
    const-string v14, "/storage/usbotg"

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 304
    const-string v14, "MemorySettings"

    const-string v15, "This is OTG storage"

    invoke-static {v14, v15}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    const/4 v14, 0x0

    invoke-virtual {v8, v14}, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->setEnabled(Z)V

    .line 307
    :cond_2
    const-string v14, "/storage/sdcard1"

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/lenovo/settings/deviceinfo/MemoryExts;->isDeviceEncrypted()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 308
    const-string v14, "MemorySettings"

    const-string v15, "The device is encrypted."

    invoke-static {v14, v15}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    const/4 v14, 0x0

    invoke-virtual {v8, v14}, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->setEnabled(Z)V

    .line 312
    :cond_3
    invoke-interface {v13, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 259
    .end local v2    # "emmcPath":Ljava/lang/String;
    .end local v7    # "path":Ljava/lang/String;
    .end local v10    # "title":Ljava/lang/CharSequence;
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mResources:Landroid/content/res/Resources;

    const v15, 0x7f0c023f

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    goto/16 :goto_2

    .line 267
    .restart local v2    # "emmcPath":Ljava/lang/String;
    .restart local v7    # "path":Ljava/lang/String;
    .restart local v10    # "title":Ljava/lang/CharSequence;
    :cond_5
    const-string v14, "/storage/sdcard1"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 268
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mResources:Landroid/content/res/Resources;

    const v15, 0x7f0c023f

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    goto/16 :goto_3

    .line 270
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mResources:Landroid/content/res/Resources;

    const v15, 0x7f0c032b

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    goto/16 :goto_3

    .line 276
    :cond_7
    const-string v14, "MemorySettings"

    const-string v15, "initDefaultWriteDisk not equal "

    invoke-static {v14, v15}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const-string v14, "/storage/sdcard0"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 278
    move-object v7, v2

    .line 279
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mResources:Landroid/content/res/Resources;

    const v15, 0x7f0c023e

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    goto/16 :goto_4

    .line 284
    :cond_8
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 285
    const-string v7, "/storage/sdcard0"

    .line 286
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mResources:Landroid/content/res/Resources;

    const v15, 0x7f0c023f

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    goto/16 :goto_4

    .line 292
    :cond_9
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "path":Ljava/lang/String;
    check-cast v7, Ljava/lang/String;

    .line 293
    .restart local v7    # "path":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mResources:Landroid/content/res/Resources;

    const v15, 0x7f0c032b

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    goto/16 :goto_4

    .line 316
    .end local v2    # "emmcPath":Ljava/lang/String;
    .end local v7    # "path":Ljava/lang/String;
    .end local v8    # "preference":Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;
    .end local v10    # "title":Ljava/lang/CharSequence;
    .end local v11    # "volume":Landroid/os/storage/StorageVolume;
    :cond_a
    const/4 v14, 0x0

    new-array v14, v14, [Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;

    invoke-interface {v13, v14}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mStorageWritePathList:[Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;

    .line 317
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    new-array v14, v14, [Z

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mWritePathAdded:[Z

    .line 318
    return-void
.end method

.method private initInstallLocation()V
    .locals 4

    .prologue
    const v3, 0x7f0c086a

    const/4 v0, 0x0

    .line 117
    iget-object v1, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "set_install_location"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mInstallLocationEnabled:Z

    .line 119
    iget-boolean v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mInstallLocationEnabled:Z

    if-eqz v0, :cond_1

    .line 120
    new-instance v0, Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mInstallLocationContainer:Landroid/preference/ListPreference;

    .line 121
    iget-object v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mInstallLocationContainer:Landroid/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 122
    iget-object v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mInstallLocationContainer:Landroid/preference/ListPreference;

    const v1, 0x7f0c086b

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 123
    iget-object v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mInstallLocationContainer:Landroid/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    .line 124
    iget-object v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mInstallLocationContainer:Landroid/preference/ListPreference;

    const v1, 0x7f0e0030

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 125
    iget-object v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mInstallLocationContainer:Landroid/preference/ListPreference;

    const v1, 0x7f0e00a1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 126
    iget-object v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mInstallLocationContainer:Landroid/preference/ListPreference;

    invoke-direct {p0}, Lcom/lenovo/settings/deviceinfo/MemoryExts;->getAppInstallLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mInstallLocationContainer:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->installLocationListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 129
    iget-object v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mRootContainer:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mInstallLocationContainer:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 131
    :cond_1
    return-void
.end method

.method private isDeviceEncrypted()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 321
    const-string v4, "mount"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 323
    .local v1, "mountService":Landroid/os/storage/IMountService;
    :try_start_0
    invoke-interface {v1}, Landroid/os/storage/IMountService;->getEncryptionState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-eq v4, v3, :cond_0

    .line 331
    :goto_0
    return v3

    .line 323
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 325
    :catch_0
    move-exception v2

    .line 326
    .local v2, "re":Landroid/os/RemoteException;
    const-string v4, "MemorySettings"

    const-string v5, "Error getting encryption state"

    invoke-static {v4, v5, v2}, Lcom/lenovo/xlog/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 327
    .end local v2    # "re":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 328
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v4, "MemorySettings"

    const-string v5, "Illegal state exception"

    invoke-static {v4, v5}, Lcom/lenovo/xlog/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method private isPkgInstalled(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 212
    :try_start_0
    iget-object v3, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 213
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    const/4 v2, 0x1

    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    return v2

    .line 214
    :catch_0
    move-exception v0

    .line 215
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private setEmmcDefaultStorage(Ljava/lang/String;)V
    .locals 9
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 635
    const/4 v4, 0x0

    .line 636
    .local v4, "propPath":Ljava/lang/String;
    const-string v6, "MemorySettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setEmmcDefaultStorage:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    const-string v6, "/storage/sdcard0"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 638
    const-string v4, "/storage/sdcard0"

    .line 639
    const-string v6, "emmc"

    invoke-direct {p0, v6}, Lcom/lenovo/settings/deviceinfo/MemoryExts;->writeSwitchProperty(Ljava/lang/String;)V

    .line 647
    :goto_0
    const-string v6, "persist.sys.emmc"

    invoke-static {v6, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    const-string v6, "MemorySettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "set  persist.sys.emmc ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lenovo/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    iget-object v6, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v6, :cond_0

    .line 651
    const-string v6, "persist.sys.sd.defaultpath"

    const-string v7, "/storage/sdcard0"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    const-string v6, "MemorySettings"

    const-string v7, "set  persist.sys.sd.defaultpath =/storage/sdcard0"

    invoke-static {v6, v7}, Lcom/lenovo/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    :cond_0
    iget-object v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mStorageWritePathList:[Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;

    .local v0, "arr$":[Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_4

    aget-object v5, v0, v1

    .line 656
    .local v5, "volumeItemPreference":Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;
    invoke-virtual {v5}, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 657
    iput-object v5, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mDeafultWritePathPref:Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;

    .line 655
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 640
    .end local v0    # "arr$":[Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v5    # "volumeItemPreference":Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;
    :cond_2
    const-string v6, "/storage/sdcard1"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 641
    const-string v4, "/storage/sdcard1"

    .line 642
    const-string v6, "sdcard"

    invoke-direct {p0, v6}, Lcom/lenovo/settings/deviceinfo/MemoryExts;->writeSwitchProperty(Ljava/lang/String;)V

    goto :goto_0

    .line 644
    :cond_3
    const-string v4, "/storage/sdcard0"

    .line 645
    const-string v6, "emmc"

    invoke-direct {p0, v6}, Lcom/lenovo/settings/deviceinfo/MemoryExts;->writeSwitchProperty(Ljava/lang/String;)V

    goto :goto_0

    .line 661
    .restart local v0    # "arr$":[Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    :cond_4
    iget-object v6, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mDeafultWritePathPref:Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mDefaultWriteDiskContainer:Landroid/preference/PreferenceCategory;

    if-eqz v6, :cond_5

    .line 662
    iget-object v6, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mDefaultWriteDiskContainer:Landroid/preference/PreferenceCategory;

    invoke-virtual {v6}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v6

    const/4 v7, 0x1

    if-lt v6, v7, :cond_5

    .line 663
    iget-object v6, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mDefaultWriteDiskContainer:Landroid/preference/PreferenceCategory;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;

    iput-object v6, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mDeafultWritePathPref:Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;

    .line 664
    const-string v6, "/storage/sdcard0"

    iput-object v6, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mDefaultWritePath:Ljava/lang/String;

    .line 668
    :cond_5
    iget-object v6, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mActivity:Landroid/app/Activity;

    const-string v7, "power"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 669
    .local v3, "pm":Landroid/os/PowerManager;
    if-eqz v3, :cond_6

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 670
    :cond_6
    return-void
.end method

.method private showDialog(I)Landroid/app/Dialog;
    .locals 6
    .param p1, "id"    # I

    .prologue
    const v5, 0x7f0c0531

    const/4 v0, 0x0

    const v4, 0x7f0c0848

    const v3, 0x1040014

    .line 355
    const-string v1, "MemorySettings"

    const-string v2, "wht createdDialog"

    invoke-static {v1, v2}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    packed-switch p1, :pswitch_data_0

    .line 392
    :goto_0
    return-object v0

    .line 358
    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/lenovo/settings/deviceinfo/MemoryExts$3;

    invoke-direct {v2, p0}, Lcom/lenovo/settings/deviceinfo/MemoryExts$3;-><init>(Lcom/lenovo/settings/deviceinfo/MemoryExts;)V

    invoke-virtual {v1, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0240

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 370
    :pswitch_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/lenovo/settings/deviceinfo/MemoryExts$4;

    invoke-direct {v2, p0}, Lcom/lenovo/settings/deviceinfo/MemoryExts$4;-><init>(Lcom/lenovo/settings/deviceinfo/MemoryExts;)V

    invoke-virtual {v1, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0241

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 382
    :pswitch_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/lenovo/settings/deviceinfo/MemoryExts$5;

    invoke-direct {v1, p0}, Lcom/lenovo/settings/deviceinfo/MemoryExts$5;-><init>(Lcom/lenovo/settings/deviceinfo/MemoryExts;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0242

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 356
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateAPKInstaller()V
    .locals 10

    .prologue
    .line 199
    iget-boolean v7, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mIsAppInstallerInstalled:Z

    if-nez v7, :cond_0

    .line 208
    :goto_0
    return-void

    .line 200
    :cond_0
    const/4 v1, 0x0

    .line 201
    .local v1, "flag":Z
    iget-object v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mStorageWritePathList:[Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;

    .local v0, "arr$":[Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v4, v0, v2

    .line 202
    .local v4, "volumeItemPreference":Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;
    invoke-virtual {v4}, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 203
    .local v6, "writePath":Ljava/lang/String;
    iget-object v7, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v7, v6}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 204
    .local v5, "volumeState":Ljava/lang/String;
    const-string v7, "MemorySettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Path : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " state : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    if-nez v1, :cond_1

    const-string v7, "mounted"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 201
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 205
    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    .line 207
    .end local v4    # "volumeItemPreference":Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;
    .end local v5    # "volumeState":Ljava/lang/String;
    .end local v6    # "writePath":Ljava/lang/String;
    :cond_3
    iget-object v7, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mApkInstallerEntrance:Landroid/preference/Preference;

    invoke-virtual {v7, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private updateDefaultWriteDisk()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 398
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v8, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mStorageWritePathList:[Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;

    array-length v8, v8

    if-ge v1, v8, :cond_3

    .line 399
    iget-object v8, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mStorageWritePathList:[Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;

    aget-object v4, v8, v1

    .line 400
    .local v4, "volumeItemPreference":Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;
    invoke-virtual {v4}, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->getPath()Ljava/lang/String;

    move-result-object v7

    .line 401
    .local v7, "writePath":Ljava/lang/String;
    iget-object v8, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v8, v7}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 402
    .local v5, "volumeState":Ljava/lang/String;
    const-string v8, "MemorySettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateDefaultWriteDisk Path "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " volume state is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    const-string v8, "mounted"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 405
    const-string v8, "MemorySettings"

    const-string v9, "updateDefaultWriteDisk mount"

    invoke-static {v8, v9}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    iget-object v8, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mWritePathAdded:[Z

    aget-boolean v8, v8, v1

    if-nez v8, :cond_0

    .line 407
    const-string v8, "MemorySettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateDefaultWriteDisk addPreference "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    iget-object v8, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mDefaultWriteDiskContainer:Landroid/preference/PreferenceCategory;

    invoke-virtual {v8, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 409
    iget-object v8, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mWritePathAdded:[Z

    aput-boolean v12, v8, v1

    .line 398
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 412
    :cond_1
    const-string v8, "MemorySettings"

    const-string v9, "updateDefaultWriteDisk not mount"

    invoke-static {v8, v9}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    iget-object v8, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mWritePathAdded:[Z

    aget-boolean v8, v8, v1

    if-eqz v8, :cond_2

    .line 414
    const-string v8, "MemorySettings"

    const-string v9, "updateDefaultWriteDisk have add,it need to remove"

    invoke-static {v8, v9}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    invoke-virtual {v4, v11}, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->setChecked(Z)Z

    .line 416
    iget-object v8, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mDefaultWriteDiskContainer:Landroid/preference/PreferenceCategory;

    invoke-virtual {v8, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 417
    iget-object v8, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mWritePathAdded:[Z

    aput-boolean v11, v8, v1

    goto :goto_1

    .line 419
    :cond_2
    const-string v8, "MemorySettings"

    const-string v9, "updateDefaultWriteDisk have not add"

    invoke-static {v8, v9}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 426
    .end local v4    # "volumeItemPreference":Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;
    .end local v5    # "volumeState":Ljava/lang/String;
    .end local v7    # "writePath":Ljava/lang/String;
    :cond_3
    iget-object v8, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mDefaultWriteDiskContainer:Landroid/preference/PreferenceCategory;

    invoke-virtual {v8}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v6

    .line 427
    .local v6, "writeDiskNum":I
    iget-boolean v8, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mIsCategoryAdded:Z

    if-eqz v8, :cond_5

    if-nez v6, :cond_5

    .line 428
    iget-object v8, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mRootContainer:Landroid/preference/PreferenceScreen;

    iget-object v9, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mDefaultWriteDiskContainer:Landroid/preference/PreferenceCategory;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 429
    iput-boolean v11, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mIsCategoryAdded:Z

    .line 438
    :cond_4
    :goto_2
    invoke-direct {p0}, Lcom/lenovo/settings/deviceinfo/MemoryExts;->getEmmcDefaultStorage()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mDefaultWritePath:Ljava/lang/String;

    .line 439
    const-string v8, "MemorySettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Get default path : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mDefaultWritePath:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    iget-object v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mStorageWritePathList:[Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;

    .local v0, "arr$":[Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_3
    if-ge v2, v3, :cond_8

    aget-object v4, v0, v2

    .line 441
    .restart local v4    # "volumeItemPreference":Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;
    const-string v8, "MemorySettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "volumeItemPreference.getPath=-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    invoke-virtual {v4}, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->getPath()Ljava/lang/String;

    move-result-object v8

    const-string v9, "/storage/sdcard0"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 443
    invoke-virtual {v4, v12}, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->setChecked(Z)Z

    .line 444
    iput-object v4, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mDeafultWritePathPref:Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;

    .line 440
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 430
    .end local v0    # "arr$":[Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "volumeItemPreference":Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;
    :cond_5
    iget-object v8, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-static {v8}, Lcom/lenovo/settings/storage/StorageUtils;->isSupport_MULTI_STORAGE(Landroid/os/storage/StorageManager;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 431
    iget-object v8, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mRootContainer:Landroid/preference/PreferenceScreen;

    iget-object v9, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mDefaultWriteDiskContainer:Landroid/preference/PreferenceCategory;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 432
    iput-boolean v11, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mIsCategoryAdded:Z

    goto :goto_2

    .line 433
    :cond_6
    iget-boolean v8, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mIsCategoryAdded:Z

    if-nez v8, :cond_4

    if-lez v6, :cond_4

    .line 434
    iget-object v8, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mRootContainer:Landroid/preference/PreferenceScreen;

    iget-object v9, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mDefaultWriteDiskContainer:Landroid/preference/PreferenceCategory;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 435
    iput-boolean v12, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mIsCategoryAdded:Z

    goto :goto_2

    .line 446
    .restart local v0    # "arr$":[Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v4    # "volumeItemPreference":Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;
    :cond_7
    invoke-virtual {v4, v11}, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->setChecked(Z)Z

    goto :goto_4

    .line 449
    .end local v4    # "volumeItemPreference":Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;
    :cond_8
    return-void
.end method

.method private updateInstallLocation()V
    .locals 13

    .prologue
    const/4 v10, 0x1

    const/4 v1, 0x0

    .line 153
    iget-boolean v11, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mInstallLocationEnabled:Z

    if-nez v11, :cond_0

    .line 180
    :goto_0
    return-void

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mStorageWritePathList:[Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;

    .local v0, "arr$":[Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v7, v0, v3

    .line 156
    .local v7, "volumePreference":Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;
    invoke-virtual {v7}, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->getPath()Ljava/lang/String;

    move-result-object v9

    .line 157
    .local v9, "writePath":Ljava/lang/String;
    iget-object v11, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v11, v9}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 158
    .local v8, "volumeState":Ljava/lang/String;
    const-string v11, "shared"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 159
    iget-object v10, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mInstallLocationContainer:Landroid/preference/ListPreference;

    invoke-virtual {v10, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 160
    const-string v10, "MemorySettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Volume state is MEDIA_SHARED, path "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 155
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 165
    .end local v7    # "volumePreference":Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;
    .end local v8    # "volumeState":Ljava/lang/String;
    .end local v9    # "writePath":Ljava/lang/String;
    :cond_2
    const-string v5, ""

    .line 166
    .local v5, "primaryExternalStorage":Ljava/lang/String;
    iget-object v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    .local v0, "arr$":[Landroid/os/storage/StorageVolume;
    array-length v4, v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v4, :cond_3

    aget-object v6, v0, v3

    .line 167
    .local v6, "storageVolume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-static {}, Landroid/os/Environment;->getLegacyExternalStorageDirectory()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 169
    iget-object v11, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6, v11}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 173
    .end local v6    # "storageVolume":Landroid/os/storage/StorageVolume;
    :cond_3
    iget-object v11, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mInstallLocationContainer:Landroid/preference/ListPreference;

    invoke-virtual {v11}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 174
    .local v2, "entries":[Ljava/lang/CharSequence;
    aput-object v5, v2, v10

    .line 175
    iget-object v11, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mInstallLocationContainer:Landroid/preference/ListPreference;

    invoke-virtual {v11, v2}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 178
    invoke-static {}, Lcom/lenovo/settings/storage/StorageUtils;->isSupportMtk2SDCardSwap()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-static {}, Lcom/lenovo/settings/storage/StorageUtils;->isExSdcardInserted()Z

    move-result v11

    if-eqz v11, :cond_5

    :cond_4
    move v1, v10

    .line 179
    .local v1, "enable":Z
    :cond_5
    iget-object v10, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mInstallLocationContainer:Landroid/preference/ListPreference;

    invoke-virtual {v10, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_0

    .line 166
    .end local v1    # "enable":Z
    .end local v2    # "entries":[Ljava/lang/CharSequence;
    .restart local v6    # "storageVolume":Landroid/os/storage/StorageVolume;
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method private writeSwitchProperty(Ljava/lang/String;)V
    .locals 6
    .param p1, "mLable"    # Ljava/lang/String;

    .prologue
    .line 680
    const-string v3, "persist.sys.switch_storage"

    const-string v4, "none,0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 681
    .local v1, "propertyValue":Ljava/lang/String;
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 682
    .local v2, "split":[Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v0, v2, v3

    .line 683
    .local v0, "cid":Ljava/lang/String;
    const-string v3, "flyrea"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set the persist == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    const-string v3, "persist.sys.switch_storage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    const-string v3, "MemorySettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set persist.sys.switch_storage = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    return-void
.end method


# virtual methods
.method public getResourceId(II)I
    .locals 1
    .param p1, "usbResId"    # I
    .param p2, "resId"    # I

    .prologue
    .line 584
    iget-boolean v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mIsUnmountingUsb:Z

    if-eqz v0, :cond_0

    .end local p1    # "usbResId":I
    :goto_0
    return p1

    .restart local p1    # "usbResId":I
    :cond_0
    move p1, p2

    goto :goto_0
.end method

.method public getVolumeList()[Landroid/os/storage/StorageVolume;
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lenovo/settings/deviceinfo/MemoryExts;->filterInvalidVolumes([Landroid/os/storage/StorageVolume;)[Landroid/os/storage/StorageVolume;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    .line 484
    iget-object v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    return-object v0
.end method

.method public initMtkCategory()V
    .locals 0

    .prologue
    .line 452
    invoke-direct {p0}, Lcom/lenovo/settings/deviceinfo/MemoryExts;->initApkInstaller()V

    .line 453
    invoke-direct {p0}, Lcom/lenovo/settings/deviceinfo/MemoryExts;->initInstallLocation()V

    .line 454
    invoke-direct {p0}, Lcom/lenovo/settings/deviceinfo/MemoryExts;->initDefaultWriteDisk()V

    .line 455
    return-void
.end method

.method public isAddPhysicalCategory(Landroid/os/storage/StorageVolume;)Z
    .locals 6
    .param p1, "volume"    # Landroid/os/storage/StorageVolume;

    .prologue
    .line 507
    iget-object v3, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v2

    .line 509
    .local v2, "sm":Landroid/os/storage/StorageManager;
    invoke-static {v2}, Lcom/lenovo/settings/storage/StorageUtils;->isFuseOn(Landroid/os/storage/StorageManager;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/lenovo/settings/storage/StorageUtils;->isSupportMtk2SDCardSwap()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v3

    if-nez v3, :cond_3

    :cond_0
    const/4 v0, 0x1

    .line 512
    .local v0, "isCategory":Z
    :goto_0
    const-string v3, "MemorySettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isAddPhysicalCategory "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isEmulated: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/storage/sdcard1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 515
    invoke-static {}, Lcom/lenovo/settings/storage/StorageUtils;->isSupport_External_Storage()Z

    move-result v0

    .line 518
    :cond_1
    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lenovo/settings/storage/StorageUtils;->isOtgVolume(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 520
    iget-object v3, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 521
    .local v1, "otgState":Ljava/lang/String;
    const-string v3, "MemorySettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "otg volume path: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    const-string v3, "mounted"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 523
    const/4 v0, 0x0

    .line 526
    .end local v1    # "otgState":Ljava/lang/String;
    :cond_2
    const-string v3, "MemorySettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isAddPhysicalCategory "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    return v0

    .line 509
    .end local v0    # "isCategory":Z
    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public isInUMSState()Z
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 464
    iget-object v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mStorageWritePathList:[Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;

    .local v0, "arr$":[Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 466
    .local v4, "preference":Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;
    :try_start_0
    invoke-virtual {v4}, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 467
    .local v6, "writePath":Ljava/lang/String;
    const-string v8, "MemorySettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isInUMSState "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    iget-object v8, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v8, v6}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 469
    .local v5, "volumeState":Ljava/lang/String;
    const-string v8, "shared"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 470
    const-string v8, "MemorySettings"

    const-string v9, "Current is UMS state, remove the unmount dialog"

    invoke-static {v8, v9}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 471
    const/4 v7, 0x1

    .line 479
    .end local v4    # "preference":Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;
    .end local v5    # "volumeState":Ljava/lang/String;
    .end local v6    # "writePath":Ljava/lang/String;
    :cond_0
    :goto_1
    return v7

    .line 473
    .restart local v4    # "preference":Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;
    :catch_0
    move-exception v1

    .line 474
    .local v1, "e":Ljava/lang/Exception;
    const-string v8, "MemorySettings"

    const-string v9, "isInUMSState has Exception"

    invoke-static {v8, v9}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 464
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v5    # "volumeState":Ljava/lang/String;
    .restart local v6    # "writePath":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public mount(Landroid/os/storage/IMountService;)V
    .locals 3
    .param p1, "mountService"    # Landroid/os/storage/IMountService;

    .prologue
    .line 531
    invoke-static {}, Lcom/lenovo/settings/storage/StorageUtils;->isSupportMtk2SDCardSwap()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "/storage/sdcard1"

    sget-object v2, Lcom/lenovo/settings/deviceinfo/MemoryExts;->sClickedMountPoint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mIsRemovableVolume:Z

    if-eqz v1, :cond_0

    .line 534
    new-instance v0, Lcom/lenovo/settings/deviceinfo/MemoryExts$SwapAlertFragment;

    invoke-direct {v0, p0, p1}, Lcom/lenovo/settings/deviceinfo/MemoryExts$SwapAlertFragment;-><init>(Lcom/lenovo/settings/deviceinfo/MemoryExts;Landroid/os/storage/IMountService;)V

    .line 535
    .local v0, "dialog":Lcom/lenovo/settings/deviceinfo/MemoryExts$SwapAlertFragment;
    iget-object v1, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "SwapAlert"

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/settings/deviceinfo/MemoryExts$SwapAlertFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 539
    .end local v0    # "dialog":Lcom/lenovo/settings/deviceinfo/MemoryExts$SwapAlertFragment;
    :goto_0
    return-void

    .line 537
    :cond_0
    invoke-direct {p0, p1}, Lcom/lenovo/settings/deviceinfo/MemoryExts;->doMount(Landroid/os/storage/IMountService;)V

    goto :goto_0
.end method

.method public registerSdSwapReceiver(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 593
    .local p1, "categories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;>;"
    invoke-static {}, Lcom/lenovo/settings/storage/StorageUtils;->isSupportMtk2SDCardSwap()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 594
    iput-object p1, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mCategories:Ljava/util/ArrayList;

    .line 595
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 596
    .local v0, "mFilter":Landroid/content/IntentFilter;
    const-string v1, "com.mediatek.SD_SWAP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 597
    iget-object v1, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mDynSwapReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 599
    .end local v0    # "mFilter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public setVolumeParameter(Ljava/lang/String;Landroid/os/storage/StorageVolume;)V
    .locals 1
    .param p1, "mountPoint"    # Ljava/lang/String;
    .param p2, "volume"    # Landroid/os/storage/StorageVolume;

    .prologue
    .line 588
    sput-object p1, Lcom/lenovo/settings/deviceinfo/MemoryExts;->sClickedMountPoint:Ljava/lang/String;

    .line 589
    invoke-virtual {p2}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mIsRemovableVolume:Z

    .line 590
    return-void
.end method

.method public unRegisterSdSwapReceiver()V
    .locals 2

    .prologue
    .line 602
    invoke-static {}, Lcom/lenovo/settings/storage/StorageUtils;->isSupportMtk2SDCardSwap()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 603
    iget-object v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mDynSwapReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 605
    :cond_0
    return-void
.end method

.method public updateMtkCategory()V
    .locals 0

    .prologue
    .line 458
    invoke-direct {p0}, Lcom/lenovo/settings/deviceinfo/MemoryExts;->updateInstallLocation()V

    .line 459
    invoke-direct {p0}, Lcom/lenovo/settings/deviceinfo/MemoryExts;->updateAPKInstaller()V

    .line 460
    invoke-direct {p0}, Lcom/lenovo/settings/deviceinfo/MemoryExts;->updateDefaultWriteDisk()V

    .line 461
    return-void
.end method
