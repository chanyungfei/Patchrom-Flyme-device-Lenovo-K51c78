.class public Lcom/android/internal/os/storage/ExternalStorageFormatter;
.super Landroid/app/Service;
.source "ExternalStorageFormatter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# static fields
.field public static final COMPONENT_NAME:Landroid/content/ComponentName;

.field public static final EXTRA_ALWAYS_RESET:Ljava/lang/String; = "always_reset"

.field public static final FORMAT_AND_FACTORY_RESET:Ljava/lang/String; = "com.android.internal.os.storage.FORMAT_AND_FACTORY_RESET"

.field public static final FORMAT_ONLY:Ljava/lang/String; = "com.android.internal.os.storage.FORMAT_ONLY"

.field private static final PROP_2SDCARD_SWAP:Ljava/lang/String; = "ro.mtk_2sdcard_swap"

.field private static final PROP_UNMOUNTING:Ljava/lang/String; = "sys.sd.unmounting"

.field static final TAG:Ljava/lang/String; = "ExternalStorageFormatter"


# instance fields
.field private mAlwaysReset:Z

.field private mEmulated:Z

.field private mFactoryReset:Z

.field private mFormatDone:Z

.field private mHandler:Landroid/os/Handler;

.field private mMountService:Landroid/os/storage/IMountService;

.field private mPath:Ljava/lang/String;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mReason:Ljava/lang/String;

.field private mStorageDescription:Ljava/lang/String;

.field mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mStorageRemovable:Z

.field private mStorageVolume:Landroid/os/storage/StorageVolume;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 45
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "android"

    const-class v2, Lcom/android/internal/os/storage/ExternalStorageFormatter;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 49
    iput-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mMountService:Landroid/os/storage/IMountService;

    .line 51
    iput-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 55
    iput-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 57
    iput-boolean v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFactoryReset:Z

    .line 58
    iput-boolean v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mAlwaysReset:Z

    .line 59
    iput-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mReason:Ljava/lang/String;

    .line 61
    invoke-static {}, Landroid/os/Environment;->getLegacyExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mPath:Ljava/lang/String;

    .line 62
    iput-boolean v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageRemovable:Z

    .line 63
    iput-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageDescription:Ljava/lang/String;

    .line 64
    iput-boolean v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatDone:Z

    .line 65
    iput-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mHandler:Landroid/os/Handler;

    .line 66
    iput-boolean v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mEmulated:Z

    .line 72
    new-instance v0, Lcom/android/internal/os/storage/ExternalStorageFormatter$1;

    invoke-direct {v0, p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter$1;-><init>(Lcom/android/internal/os/storage/ExternalStorageFormatter;)V

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageListener:Landroid/os/storage/StorageEventListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/os/storage/ExternalStorageFormatter;

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatDone:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/internal/os/storage/ExternalStorageFormatter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/os/storage/ExternalStorageFormatter;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatDone:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/os/storage/ExternalStorageFormatter;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/os/storage/ExternalStorageFormatter;

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFactoryReset:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/os/storage/ExternalStorageFormatter;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mReason:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/os/storage/ExternalStorageFormatter;

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mAlwaysReset:Z

    return v0
.end method

.method private peplaceStorageName(I)Ljava/lang/String;
    .locals 5
    .param p1, "stringId"    # I

    .prologue
    .line 380
    invoke-virtual {p0, p1}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 381
    .local v0, "rawString":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageDescription:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 392
    .end local v0    # "rawString":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 385
    .restart local v0    # "rawString":Ljava/lang/String;
    :cond_0
    const v3, 0x10405aa

    invoke-virtual {p0, v3}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 386
    .local v1, "sdCardString":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageDescription:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 387
    .local v2, "str":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 388
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 389
    const-string/jumbo v3, "sd"

    const-string v4, "SD"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 390
    invoke-virtual {p0, p1}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageDescription:Ljava/lang/String;

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    :cond_1
    move-object v0, v2

    .line 392
    goto :goto_0
.end method


# virtual methods
.method fail(I)V
    .locals 3
    .param p1, "msg"    # I

    .prologue
    .line 229
    invoke-direct {p0, p1}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->peplaceStorageName(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 230
    iget-boolean v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mAlwaysReset:Z

    if-eqz v1, :cond_0

    .line 231
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 232
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 233
    const-string v1, "android.intent.extra.REASON"

    iget-object v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mReason:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    invoke-virtual {p0, v0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->sendBroadcast(Landroid/content/Intent;)V

    .line 236
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->stopSelf()V

    .line 237
    return-void
.end method

.method getMountService()Landroid/os/storage/IMountService;
    .locals 3

    .prologue
    .line 368
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mMountService:Landroid/os/storage/IMountService;

    if-nez v1, :cond_0

    .line 369
    const-string/jumbo v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 370
    .local v0, "service":Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 371
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mMountService:Landroid/os/storage/IMountService;

    .line 376
    .end local v0    # "service":Landroid/os/IBinder;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mMountService:Landroid/os/storage/IMountService;

    return-object v1

    .line 373
    .restart local v0    # "service":Landroid/os/IBinder;
    :cond_1
    const-string v1, "ExternalStorageFormatter"

    const-string v2, "Can\'t get mount service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 186
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v1

    .line 192
    .local v1, "mountService":Landroid/os/storage/IMountService;
    iget-object v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/Environment;->getLegacyExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, "extStoragePath":Ljava/lang/String;
    :goto_0
    const-string v2, "ExternalStorageFormatter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCancel, extStoragePath= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    new-instance v2, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;-><init>(Lcom/android/internal/os/storage/ExternalStorageFormatter;Ljava/lang/String;Landroid/os/storage/IMountService;)V

    invoke-virtual {v2}, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->start()V

    .line 225
    invoke-virtual {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->stopSelf()V

    .line 226
    return-void

    .line 192
    .end local v0    # "extStoragePath":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 88
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 90
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_0

    .line 91
    const-string/jumbo v0, "storage"

    invoke-virtual {p0, v0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 92
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 95
    :cond_0
    const-string/jumbo v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "ExternalStorageFormatter"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 97
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 99
    new-instance v0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;

    invoke-direct {v0, p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;-><init>(Lcom/android/internal/os/storage/ExternalStorageFormatter;)V

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mHandler:Landroid/os/Handler;

    .line 104
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 181
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 182
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 12
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 108
    const-string v9, "com.android.internal.os.storage.FORMAT_AND_FACTORY_RESET"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 109
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFactoryReset:Z

    .line 111
    :cond_0
    const-string v9, "always_reset"

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 112
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mAlwaysReset:Z

    .line 115
    :cond_1
    const-string v9, "android.intent.extra.REASON"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mReason:Ljava/lang/String;

    .line 116
    const-string/jumbo v9, "storage_volume"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/os/storage/StorageVolume;

    iput-object v9, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    .line 121
    const/4 v4, 0x0

    .line 122
    .local v4, "sdExist":Z
    const-string/jumbo v9, "ro.mtk_2sdcard_swap"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "1"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    if-nez v9, :cond_2

    .line 123
    new-instance v6, Lcom/mediatek/storage/StorageManagerEx;

    invoke-direct {v6}, Lcom/mediatek/storage/StorageManagerEx;-><init>()V

    .line 124
    .local v6, "sm":Lcom/mediatek/storage/StorageManagerEx;
    invoke-static {}, Lcom/mediatek/storage/StorageManagerEx;->getSdSwapState()Z

    move-result v4

    .line 127
    .end local v6    # "sm":Lcom/mediatek/storage/StorageManagerEx;
    :cond_2
    iget-object v9, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v9}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v8

    .line 128
    .local v8, "volumes":[Landroid/os/storage/StorageVolume;
    const-string v3, "/storage/sdcard0"

    .line 129
    .local v3, "primaryPath":Ljava/lang/String;
    const-string v5, "/storage/sdcard1"

    .line 130
    .local v5, "secondaryPath":Ljava/lang/String;
    if-eqz v8, :cond_3

    .line 131
    const/4 v9, 0x0

    aget-object v9, v8, v9

    invoke-virtual {v9}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 132
    array-length v9, v8

    const/4 v10, 0x1

    if-le v9, v10, :cond_3

    .line 133
    const/4 v9, 0x1

    aget-object v9, v8, v9

    invoke-virtual {v9}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 136
    :cond_3
    const-string v9, "ExternalStorageFormatter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "primaryPath="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "  secondaryPath="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v9, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    if-nez v9, :cond_9

    if-nez v4, :cond_8

    .end local v3    # "primaryPath":Ljava/lang/String;
    :goto_0
    iput-object v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mPath:Ljava/lang/String;

    .line 141
    const-string v9, "ExternalStorageFormatter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mPath="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mPath:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    if-eqz v8, :cond_5

    .line 144
    move-object v0, v8

    .local v0, "arr$":[Landroid/os/storage/StorageVolume;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_5

    aget-object v7, v0, v1

    .line 145
    .local v7, "volume":Landroid/os/storage/StorageVolume;
    iget-object v9, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mPath:Ljava/lang/String;

    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 146
    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 147
    const-string v9, "ExternalStorageFormatter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mPath:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mPath:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " is emulated, do not format!"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mEmulated:Z

    .line 150
    :cond_4
    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageRemovable:Z

    .line 151
    invoke-virtual {v7, p0}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageDescription:Ljava/lang/String;

    .line 157
    .end local v0    # "arr$":[Landroid/os/storage/StorageVolume;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v7    # "volume":Landroid/os/storage/StorageVolume;
    :cond_5
    iget-object v9, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v9, :cond_7

    .line 158
    new-instance v9, Landroid/app/ProgressDialog;

    invoke-direct {v9, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 159
    iget-object v9, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 160
    iget-object v9, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 161
    iget-object v9, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v9}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/16 v10, 0x7d3

    invoke-virtual {v9, v10}, Landroid/view/Window;->setType(I)V

    .line 162
    iget-boolean v9, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mAlwaysReset:Z

    if-nez v9, :cond_6

    .line 163
    iget-object v9, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v9, p0}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 165
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->updateProgressState()V

    .line 166
    iget-object v9, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v9}, Landroid/app/ProgressDialog;->show()V

    .line 169
    :cond_7
    const/4 v9, 0x3

    return v9

    .restart local v3    # "primaryPath":Ljava/lang/String;
    :cond_8
    move-object v3, v5

    .line 138
    goto/16 :goto_0

    :cond_9
    iget-object v9, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v9}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 144
    .end local v3    # "primaryPath":Ljava/lang/String;
    .restart local v0    # "arr$":[Landroid/os/storage/StorageVolume;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    .restart local v7    # "volume":Landroid/os/storage/StorageVolume;
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1
.end method

.method public updateProgressDialog(I)V
    .locals 2
    .param p1, "msg"    # I

    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 357
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 358
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 359
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 360
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 361
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-direct {p0, p1}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->peplaceStorageName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 365
    return-void
.end method

.method updateProgressState()V
    .locals 7

    .prologue
    .line 240
    iget-boolean v4, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mEmulated:Z

    if-eqz v4, :cond_0

    .line 241
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->sendBroadcast(Landroid/content/Intent;)V

    .line 242
    invoke-virtual {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->stopSelf()V

    .line 353
    :goto_0
    return-void

    .line 245
    :cond_0
    iget-object v4, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v5, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 246
    .local v3, "status":Ljava/lang/String;
    const-string v4, "ExternalStorageFormatter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateProgressState path: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    const-string/jumbo v4, "mounted"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "mounted_ro"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 250
    :cond_1
    iget-object v4, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mPath:Ljava/lang/String;

    const-string v5, "/storage/usbotg"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 251
    const v4, 0x10406af

    invoke-virtual {p0, v4}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->updateProgressDialog(I)V

    .line 259
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v2

    .line 260
    .local v2, "mountService":Landroid/os/storage/IMountService;
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mPath:Ljava/lang/String;

    .line 263
    .local v1, "extStoragePath":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v4, "ro.mtk_2sdcard_swap"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 264
    const/4 v4, 0x1

    iget-boolean v5, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFactoryReset:Z

    invoke-interface {v2, v1, v4, v5}, Landroid/os/storage/IMountService;->unmountVolumeNotSwap(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 268
    :catch_0
    move-exception v0

    .line 269
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "ExternalStorageFormatter"

    const-string v5, "Failed talking with mount service"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 252
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "extStoragePath":Ljava/lang/String;
    .end local v2    # "mountService":Landroid/os/storage/IMountService;
    :cond_2
    iget-object v4, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mPath:Ljava/lang/String;

    const-string v5, "/storage/sdcard"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 253
    const v4, 0x10406b0

    invoke-virtual {p0, v4}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->updateProgressDialog(I)V

    goto :goto_1

    .line 255
    :cond_3
    const v4, 0x104056b

    invoke-virtual {p0, v4}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->updateProgressDialog(I)V

    goto :goto_1

    .line 266
    .restart local v1    # "extStoragePath":Ljava/lang/String;
    .restart local v2    # "mountService":Landroid/os/storage/IMountService;
    :cond_4
    const/4 v4, 0x1

    :try_start_1
    iget-boolean v5, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFactoryReset:Z

    invoke-interface {v2, v1, v4, v5}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;ZZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 271
    .end local v1    # "extStoragePath":Ljava/lang/String;
    .end local v2    # "mountService":Landroid/os/storage/IMountService;
    :cond_5
    const-string/jumbo v4, "nofs"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string/jumbo v4, "unmounted"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string/jumbo v4, "unmountable"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 275
    :cond_6
    iget-object v4, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mPath:Ljava/lang/String;

    const-string v5, "/storage/usbotg"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 276
    const v4, 0x10406b1

    invoke-virtual {p0, v4}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->updateProgressDialog(I)V

    .line 284
    :goto_2
    invoke-virtual {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v2

    .line 285
    .restart local v2    # "mountService":Landroid/os/storage/IMountService;
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mPath:Ljava/lang/String;

    .line 286
    .restart local v1    # "extStoragePath":Ljava/lang/String;
    if-eqz v2, :cond_9

    .line 287
    new-instance v4, Lcom/android/internal/os/storage/ExternalStorageFormatter$4;

    invoke-direct {v4, p0, v2, v1}, Lcom/android/internal/os/storage/ExternalStorageFormatter$4;-><init>(Lcom/android/internal/os/storage/ExternalStorageFormatter;Landroid/os/storage/IMountService;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/internal/os/storage/ExternalStorageFormatter$4;->start()V

    goto/16 :goto_0

    .line 277
    .end local v1    # "extStoragePath":Ljava/lang/String;
    .end local v2    # "mountService":Landroid/os/storage/IMountService;
    :cond_7
    iget-object v4, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mPath:Ljava/lang/String;

    const-string v5, "/storage/sdcard"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 278
    const v4, 0x10406b2

    invoke-virtual {p0, v4}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->updateProgressDialog(I)V

    goto :goto_2

    .line 280
    :cond_8
    const v4, 0x104056c

    invoke-virtual {p0, v4}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->updateProgressDialog(I)V

    goto :goto_2

    .line 338
    .restart local v1    # "extStoragePath":Ljava/lang/String;
    .restart local v2    # "mountService":Landroid/os/storage/IMountService;
    :cond_9
    const-string v4, "ExternalStorageFormatter"

    const-string v5, "Unable to locate IMountService"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 340
    .end local v1    # "extStoragePath":Ljava/lang/String;
    .end local v2    # "mountService":Landroid/os/storage/IMountService;
    :cond_a
    const-string v4, "bad_removal"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 341
    const v4, 0x104056e

    invoke-virtual {p0, v4}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->fail(I)V

    goto/16 :goto_0

    .line 342
    :cond_b
    const-string v4, "checking"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 343
    const v4, 0x104056f

    invoke-virtual {p0, v4}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->fail(I)V

    goto/16 :goto_0

    .line 344
    :cond_c
    const-string/jumbo v4, "removed"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 345
    const v4, 0x1040570

    invoke-virtual {p0, v4}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->fail(I)V

    goto/16 :goto_0

    .line 346
    :cond_d
    const-string/jumbo v4, "shared"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 347
    const v4, 0x1040571

    invoke-virtual {p0, v4}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->fail(I)V

    goto/16 :goto_0

    .line 349
    :cond_e
    const v4, 0x1040572

    invoke-virtual {p0, v4}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->fail(I)V

    .line 350
    const-string v4, "ExternalStorageFormatter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown storage state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    invoke-virtual {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->stopSelf()V

    goto/16 :goto_0
.end method
