.class public Lcom/flyme/deviceoriginalsettings/MasterClear;
.super Landroid/app/Fragment;
.source "MasterClear.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/deviceoriginalsettings/MasterClear$ResetClickListener;
    }
.end annotation


# static fields
.field private static final CHOOSE_BACKUP_ITEM_REQUEST:I = 0x39

.field static final ERASE_CACHE_DELETE_DATA:Ljava/lang/String; = "erase_cache_delete_data"

.field static final ERASE_EXTERNAL_EXTRA:Ljava/lang/String; = "erase_sd"

.field private static final KEYGUARD_REQUEST:I = 0x37

.field private static final PIN_REQUEST:I = 0x38

.field private static final TAG:Ljava/lang/String; = "MasterClear"


# instance fields
.field private final MENU_RESET:I

.field private mCheckBackup:Landroid/widget/CheckBox;

.field private mCheckBackupContainer:Landroid/view/View;

.field private mCheckFormat:Landroid/widget/CheckBox;

.field private mCheckFormatContainer:Landroid/view/View;

.field private mContentView:Landroid/view/View;

.field private mExternalStorage:Landroid/widget/CheckBox;

.field private mExternalStorageContainer:Landroid/view/View;

.field private mInitiateButton:Landroid/widget/Button;

.field private final mInitiateListener:Landroid/view/View$OnClickListener;

.field private mPinConfirmed:Z

.field private mWipeCacheAndkeepSdcard:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 98
    const/4 v0, 0x0

    iput v0, p0, Lcom/flyme/deviceoriginalsettings/MasterClear;->MENU_RESET:I

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/MasterClear;->mWipeCacheAndkeepSdcard:Z

    .line 190
    new-instance v0, Lcom/flyme/deviceoriginalsettings/MasterClear$1;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/MasterClear$1;-><init>(Lcom/flyme/deviceoriginalsettings/MasterClear;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/MasterClear;->mInitiateListener:Landroid/view/View$OnClickListener;

    .line 559
    return-void
.end method

.method static synthetic access$002(Lcom/flyme/deviceoriginalsettings/MasterClear;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/MasterClear;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/flyme/deviceoriginalsettings/MasterClear;->mPinConfirmed:Z

    return p1
.end method

.method static synthetic access$100(Lcom/flyme/deviceoriginalsettings/MasterClear;)Z
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/MasterClear;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/MasterClear;->runRestrictionsChallenge()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/flyme/deviceoriginalsettings/MasterClear;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/MasterClear;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/MasterClear;->mCheckFormat:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$302(Lcom/flyme/deviceoriginalsettings/MasterClear;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/MasterClear;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/flyme/deviceoriginalsettings/MasterClear;->mWipeCacheAndkeepSdcard:Z

    return p1
.end method

.method static synthetic access$400(Lcom/flyme/deviceoriginalsettings/MasterClear;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/MasterClear;
    .param p1, "x1"    # I

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/MasterClear;->runKeyguardConfirmation(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/flyme/deviceoriginalsettings/MasterClear;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/MasterClear;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/MasterClear;->mCheckBackup:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$600(Lcom/flyme/deviceoriginalsettings/MasterClear;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/MasterClear;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/MasterClear;->getBackupActivityIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/flyme/deviceoriginalsettings/MasterClear;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/MasterClear;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/MasterClear;->showFinalConfirmation()V

    return-void
.end method

.method static synthetic access$800(Lcom/flyme/deviceoriginalsettings/MasterClear;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/MasterClear;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private canBackupToSdcard()Z
    .locals 10

    .prologue
    .line 391
    const/4 v1, 0x0

    .line 392
    .local v1, "can":Z
    const-string v8, "persist.fuse_sdcard"

    const-string v9, "true"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "true"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v3, 0x1

    .line 394
    .local v3, "isFuseOn":Z
    :goto_0
    if-eqz v3, :cond_2

    .line 395
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v5

    .line 396
    .local v5, "sm":Landroid/os/storage/StorageManager;
    invoke-virtual {v5}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v7

    .line 397
    .local v7, "volumes":[Landroid/os/storage/StorageVolume;
    move-object v0, v7

    .local v0, "arr$":[Landroid/os/storage/StorageVolume;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v4, :cond_3

    aget-object v6, v0, v2

    .line 398
    .local v6, "v":Landroid/os/storage/StorageVolume;
    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "mounted"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 400
    const/4 v1, 0x1

    .line 397
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 392
    .end local v0    # "arr$":[Landroid/os/storage/StorageVolume;
    .end local v2    # "i$":I
    .end local v3    # "isFuseOn":Z
    .end local v4    # "len$":I
    .end local v5    # "sm":Landroid/os/storage/StorageManager;
    .end local v6    # "v":Landroid/os/storage/StorageVolume;
    .end local v7    # "volumes":[Landroid/os/storage/StorageVolume;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 404
    .restart local v3    # "isFuseOn":Z
    :cond_2
    const/4 v1, 0x1

    .line 406
    :cond_3
    return v1
.end method

.method private establishInitialState()V
    .locals 13

    .prologue
    const v12, 0x7f0b00b1

    const/4 v7, 0x1

    const/16 v11, 0x8

    const/4 v8, 0x0

    .line 238
    iput-boolean v7, p0, Lcom/flyme/deviceoriginalsettings/MasterClear;->mWipeCacheAndkeepSdcard:Z

    .line 241
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/MasterClear;->mContentView:Landroid/view/View;

    const v9, 0x7f0b00b8

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/flyme/deviceoriginalsettings/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    .line 242
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/MasterClear;->mContentView:Landroid/view/View;

    const v9, 0x7f0b00b9

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    iput-object v6, p0, Lcom/flyme/deviceoriginalsettings/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;

    .line 251
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v3

    .line 252
    .local v3, "isExtStorageEmulated":Z
    if-nez v3, :cond_0

    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/MasterClear;->isExtStorageEncrypted()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 254
    :cond_0
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    .line 258
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;

    if-nez v3, :cond_4

    move v6, v7

    :goto_0
    invoke-virtual {v9, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 268
    :goto_1
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/MasterClear;->mContentView:Landroid/view/View;

    const v9, 0x7f0b00af

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/flyme/deviceoriginalsettings/MasterClear;->mCheckBackupContainer:Landroid/view/View;

    .line 270
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/MasterClear;->mContentView:Landroid/view/View;

    const v9, 0x7f0b00b2

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    iput-object v6, p0, Lcom/flyme/deviceoriginalsettings/MasterClear;->mCheckBackup:Landroid/widget/CheckBox;

    .line 272
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/MasterClear;->mCheckBackupContainer:Landroid/view/View;

    new-instance v9, Lcom/flyme/deviceoriginalsettings/MasterClear$3;

    invoke-direct {v9, p0}, Lcom/flyme/deviceoriginalsettings/MasterClear$3;-><init>(Lcom/flyme/deviceoriginalsettings/MasterClear;)V

    invoke-virtual {v6, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    const-string v6, "com.lenovo.BackupRestore.CHOOSE_BACKUP"

    invoke-virtual {p0, v6}, Lcom/flyme/deviceoriginalsettings/MasterClear;->findApplicationForAction(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 281
    const-string v6, "MasterClear"

    const-string v9, "Cloud server is not available!"

    invoke-static {v6, v9}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/MasterClear;->mCheckBackup:Landroid/widget/CheckBox;

    invoke-virtual {v6, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 283
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/MasterClear;->mCheckBackup:Landroid/widget/CheckBox;

    invoke-virtual {v6, v8}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 285
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/MasterClear;->mContentView:Landroid/view/View;

    const v9, 0x7f0b00b0

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 286
    .local v1, "backupTitle":Landroid/widget/TextView;
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 288
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/MasterClear;->mContentView:Landroid/view/View;

    invoke-virtual {v6, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 289
    .local v0, "backupSammary":Landroid/widget/TextView;
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 291
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/MasterClear;->mCheckBackupContainer:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 294
    .end local v0    # "backupSammary":Landroid/widget/TextView;
    .end local v1    # "backupTitle":Landroid/widget/TextView;
    :cond_1
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/MasterClear;->mContentView:Landroid/view/View;

    const v9, 0x7f0b00b4

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/flyme/deviceoriginalsettings/MasterClear;->mCheckFormatContainer:Landroid/view/View;

    .line 296
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/MasterClear;->mContentView:Landroid/view/View;

    const v9, 0x7f0b00b6

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    iput-object v6, p0, Lcom/flyme/deviceoriginalsettings/MasterClear;->mCheckFormat:Landroid/widget/CheckBox;

    .line 298
    invoke-static {}, Lcom/lenovo/settings/LenovoUtils;->isRowProject()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 299
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/MasterClear;->mCheckFormatContainer:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    .line 300
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/MasterClear;->mCheckFormat:Landroid/widget/CheckBox;

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 302
    :cond_2
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/MasterClear;->mCheckFormatContainer:Landroid/view/View;

    new-instance v9, Lcom/flyme/deviceoriginalsettings/MasterClear$4;

    invoke-direct {v9, p0}, Lcom/flyme/deviceoriginalsettings/MasterClear$4;-><init>(Lcom/flyme/deviceoriginalsettings/MasterClear;)V

    invoke-virtual {v6, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 312
    const-string v6, "MasterClear"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Build.VERSION.SDK_INT :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x16

    if-lt v6, v9, :cond_7

    .line 315
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    .line 316
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/MasterClear;->mCheckFormatContainer:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 317
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/MasterClear;->mCheckBackupContainer:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 318
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/MasterClear;->isDeviceEncrypted()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 319
    const-string v6, "MasterClear"

    const-string v9, "the device has been encrypted"

    invoke-static {v6, v9}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/MasterClear;->mCheckFormatContainer:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 321
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/MasterClear;->mCheckBackupContainer:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 322
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/MasterClear;->mCheckBackup:Landroid/widget/CheckBox;

    invoke-virtual {v6, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 323
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/MasterClear;->mCheckFormat:Landroid/widget/CheckBox;

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 342
    :goto_2
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/MasterClear;->mCheckBackup:Landroid/widget/CheckBox;

    new-instance v7, Lcom/flyme/deviceoriginalsettings/MasterClear$5;

    invoke-direct {v7, p0}, Lcom/flyme/deviceoriginalsettings/MasterClear$5;-><init>(Lcom/flyme/deviceoriginalsettings/MasterClear;)V

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 349
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/MasterClear;->mCheckFormat:Landroid/widget/CheckBox;

    new-instance v7, Lcom/flyme/deviceoriginalsettings/MasterClear$6;

    invoke-direct {v7, p0}, Lcom/flyme/deviceoriginalsettings/MasterClear$6;-><init>(Lcom/flyme/deviceoriginalsettings/MasterClear;)V

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 366
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/MasterClear;->canBackupToSdcard()Z

    move-result v6

    if-nez v6, :cond_3

    .line 367
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/MasterClear;->mContentView:Landroid/view/View;

    invoke-virtual {v6, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 369
    .local v2, "checkBackupText":Landroid/widget/TextView;
    const v6, 0x7f0c0165

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(I)V

    .line 373
    .end local v2    # "checkBackupText":Landroid/widget/TextView;
    :cond_3
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/MasterClear;->loadAccountList()V

    .line 374
    return-void

    :cond_4
    move v6, v8

    .line 258
    goto/16 :goto_0

    .line 260
    :cond_5
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    new-instance v9, Lcom/flyme/deviceoriginalsettings/MasterClear$2;

    invoke-direct {v9, p0}, Lcom/flyme/deviceoriginalsettings/MasterClear$2;-><init>(Lcom/flyme/deviceoriginalsettings/MasterClear;)V

    invoke-virtual {v6, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 325
    :cond_6
    const-string v6, "MasterClear"

    const-string v7, "the device is not encryped"

    invoke-static {v6, v7}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 329
    :cond_7
    const-string v6, "MasterClear"

    const-string v7, "back data hide"

    invoke-static {v6, v7}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    .line 331
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/MasterClear;->mCheckFormatContainer:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    .line 332
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/MasterClear;->mCheckBackupContainer:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    .line 333
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/MasterClear;->mCheckBackup:Landroid/widget/CheckBox;

    invoke-virtual {v6, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 334
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/MasterClear;->mContentView:Landroid/view/View;

    const v7, 0x7f0b00ae

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 335
    .local v4, "line1":Landroid/view/View;
    invoke-virtual {v4, v11}, Landroid/view/View;->setVisibility(I)V

    .line 336
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/MasterClear;->mContentView:Landroid/view/View;

    const v7, 0x7f0b00b3

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 337
    .local v5, "line2":Landroid/view/View;
    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method private getBackupActivityIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 410
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 411
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/lenovo/settings/LenovoUtils;->isRowProject()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 412
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/MasterClear;->canBackupToSdcard()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 413
    const-string v1, "com.lenovo.BackupRestore.CHOOSE_BACKUP"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 424
    :goto_0
    return-object v0

    .line 415
    :cond_0
    const-string v1, "com.lenovo.leos.cloud.sync.row.CLOUD_BACKUP"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 419
    :cond_1
    const-string v1, "com.lenovo.BackupRestore.CHOOSE_BACKUP"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private isDeviceEncrypted()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 377
    const-string v4, "mount"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 379
    .local v1, "mountService":Landroid/os/storage/IMountService;
    :try_start_0
    invoke-interface {v1}, Landroid/os/storage/IMountService;->getEncryptionState()I

    move-result v4

    if-eq v4, v3, :cond_0

    invoke-interface {v1}, Landroid/os/storage/IMountService;->getPasswordType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-eq v4, v3, :cond_0

    .line 387
    :goto_0
    return v3

    .line 379
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 381
    :catch_0
    move-exception v2

    .line 382
    .local v2, "re":Landroid/os/RemoteException;
    const-string v4, "MasterClear"

    const-string v5, "Error getting encryption state"

    invoke-static {v4, v5, v2}, Lcom/lenovo/xlog/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 383
    .end local v2    # "re":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 384
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v4, "MasterClear"

    const-string v5, "Illegal state exception"

    invoke-static {v4, v5}, Lcom/lenovo/xlog/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method private isExtStorageEncrypted()Z
    .locals 2

    .prologue
    .line 429
    const-string v1, "vold.decrypt"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 430
    .local v0, "state":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadAccountList()V
    .locals 28

    .prologue
    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f0b00ac

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 435
    .local v9, "accountsLabel":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f0b00ad

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    .line 436
    .local v12, "contents":Landroid/widget/LinearLayout;
    invoke-virtual {v12}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 438
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v13

    .line 440
    .local v13, "context":Landroid/content/Context;
    invoke-static {v13}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v23

    .line 441
    .local v23, "mgr":Landroid/accounts/AccountManager;
    invoke-virtual/range {v23 .. v23}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v8

    .line 442
    .local v8, "accounts":[Landroid/accounts/Account;
    array-length v6, v8

    .line 443
    .local v6, "N":I
    if-nez v6, :cond_0

    .line 444
    const/16 v24, 0x8

    move/from16 v0, v24

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    .line 445
    const/16 v24, 0x8

    move/from16 v0, v24

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 505
    :goto_0
    return-void

    .line 449
    :cond_0
    const-string v24, "layout_inflater"

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/view/LayoutInflater;

    .line 452
    .local v20, "inflater":Landroid/view/LayoutInflater;
    invoke-static {v13}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v15

    .line 453
    .local v15, "descs":[Landroid/accounts/AuthenticatorDescription;
    array-length v5, v15

    .line 455
    .local v5, "M":I
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_1
    move/from16 v0, v17

    if-ge v0, v6, :cond_5

    .line 456
    aget-object v7, v8, v17

    .line 457
    .local v7, "account":Landroid/accounts/Account;
    const/4 v14, 0x0

    .line 458
    .local v14, "desc":Landroid/accounts/AuthenticatorDescription;
    const/16 v21, 0x0

    .local v21, "j":I
    :goto_2
    move/from16 v0, v21

    if-ge v0, v5, :cond_1

    .line 459
    iget-object v0, v7, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v24, v0

    aget-object v25, v15, v21

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_2

    .line 460
    aget-object v14, v15, v21

    .line 464
    :cond_1
    if-nez v14, :cond_3

    .line 465
    const-string v24, "MasterClear"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "No descriptor for account name="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    iget-object v0, v7, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " type="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    iget-object v0, v7, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/lenovo/xlog/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    :goto_3
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 458
    :cond_2
    add-int/lit8 v21, v21, 0x1

    goto :goto_2

    .line 469
    :cond_3
    const/16 v18, 0x0

    .line 471
    .local v18, "icon":Landroid/graphics/drawable/Drawable;
    :try_start_0
    iget v0, v14, Landroid/accounts/AuthenticatorDescription;->iconId:I

    move/from16 v24, v0

    if-eqz v24, :cond_4

    .line 472
    iget-object v0, v14, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v13, v0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v10

    .line 473
    .local v10, "authContext":Landroid/content/Context;
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    iget v0, v14, Landroid/accounts/AuthenticatorDescription;->iconId:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v18

    .line 479
    .end local v10    # "authContext":Landroid/content/Context;
    :cond_4
    :goto_4
    const v24, 0x7f040067

    const/16 v25, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v12, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 481
    .local v11, "child":Landroid/widget/TextView;
    const/16 v24, 0x10

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 482
    iget-object v0, v7, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 485
    new-instance v19, Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 486
    .local v19, "imageView":Landroid/widget/ImageView;
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 487
    new-instance v24, Landroid/view/ViewGroup$LayoutParams;

    const/16 v25, 0x60

    const/16 v26, 0x60

    invoke-direct/range {v24 .. v26}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 488
    new-instance v22, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 491
    .local v22, "lp1":Landroid/widget/LinearLayout;
    const/16 v24, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 492
    const/16 v24, 0xc

    const/16 v25, 0xc

    const/16 v26, 0xc

    const/16 v27, 0xc

    move-object/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 493
    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 494
    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 499
    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_3

    .line 475
    .end local v11    # "child":Landroid/widget/TextView;
    .end local v19    # "imageView":Landroid/widget/ImageView;
    .end local v22    # "lp1":Landroid/widget/LinearLayout;
    :catch_0
    move-exception v16

    .line 476
    .local v16, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v24, "MasterClear"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "No icon for account type "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    iget-object v0, v14, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/lenovo/xlog/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 503
    .end local v7    # "account":Landroid/accounts/Account;
    .end local v14    # "desc":Landroid/accounts/AuthenticatorDescription;
    .end local v16    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v18    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v21    # "j":I
    :cond_5
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    .line 504
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 4
    .param p1, "request"    # I

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 113
    .local v0, "res":Landroid/content/res/Resources;
    new-instance v1, Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    const v2, 0x7f0c0781

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const v3, 0x7f0c0782

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method private runRestrictionsChallenge()Z
    .locals 2

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->hasRestrictionsChallenge()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.RESTRICTIONS_CHALLENGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x38

    invoke-virtual {p0, v0, v1}, Lcom/flyme/deviceoriginalsettings/MasterClear;->startActivityForResult(Landroid/content/Intent;I)V

    .line 123
    const/4 v0, 0x1

    .line 125
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showFinalConfirmation()V
    .locals 4

    .prologue
    .line 175
    const-string v1, "MasterClear"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mExternalStorage.isChecked="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v1, "MasterClear"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mWipeCacheAndkeepSdcard ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/flyme/deviceoriginalsettings/MasterClear;->mWipeCacheAndkeepSdcard:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 178
    .local v0, "preference":Landroid/preference/Preference;
    const-class v1, Lcom/flyme/deviceoriginalsettings/MasterClearConfirm;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 179
    const v1, 0x7f0c0785

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 180
    invoke-virtual {v0}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "erase_sd"

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 181
    invoke-virtual {v0}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "erase_cache_delete_data"

    iget-boolean v3, p0, Lcom/flyme/deviceoriginalsettings/MasterClear;->mWipeCacheAndkeepSdcard:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 182
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/flyme/deviceoriginalsettings/SettingsActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z

    .line 183
    return-void
.end method


# virtual methods
.method public findApplicationForAction(Ljava/lang/String;)Z
    .locals 5
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 598
    const/4 v1, 0x0

    .line 599
    .local v1, "result":Z
    if-nez p1, :cond_0

    .line 612
    :goto_0
    return v2

    .line 603
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 604
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-nez v2, :cond_1

    .line 605
    const/4 v1, 0x0

    .line 610
    :goto_1
    const-string v2, "MasterClear"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "find application for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",result : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    .line 612
    goto :goto_0

    .line 607
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v6, -0x1

    .line 130
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 131
    const-string v3, "MasterClear"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onActivityResult(), requestCode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " | resultCode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    packed-switch p1, :pswitch_data_0

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 135
    :pswitch_0
    if-ne p2, v6, :cond_0

    .line 136
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/flyme/deviceoriginalsettings/MasterClear;->mPinConfirmed:Z

    goto :goto_0

    .line 141
    :pswitch_1
    if-ne p2, v6, :cond_1

    .line 142
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/MasterClear;->showFinalConfirmation()V

    goto :goto_0

    .line 144
    :cond_1
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/MasterClear;->establishInitialState()V

    goto :goto_0

    .line 149
    :pswitch_2
    if-ne p2, v6, :cond_3

    .line 150
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/MasterClear;->mCheckBackup:Landroid/widget/CheckBox;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/MasterClear;->mCheckBackup:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 151
    const-string v3, "MasterClear"

    const-string v4, "keyguard"

    invoke-static {v3, v4}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/MasterClear;->getBackupActivityIntent()Landroid/content/Intent;

    move-result-object v2

    .line 156
    .local v2, "intent":Landroid/content/Intent;
    const/16 v0, 0x10

    .line 157
    .local v0, "ExitApplication":I
    :try_start_0
    const-string v3, "flag"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 158
    const/16 v3, 0x39

    invoke-virtual {p0, v2, v3}, Lcom/flyme/deviceoriginalsettings/MasterClear;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 159
    :catch_0
    move-exception v1

    .line 160
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 163
    .end local v0    # "ExitApplication":I
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_2
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/MasterClear;->showFinalConfirmation()V

    goto :goto_0

    .line 166
    :cond_3
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/MasterClear;->establishInitialState()V

    goto :goto_0

    .line 133
    nop

    :pswitch_data_0
    .packed-switch 0x37
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 544
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 546
    const-string v0, "MasterClear"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 548
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v3, 0x0

    .line 533
    const-string v1, "MasterClear"

    const-string v2, "onCreateOptionsMenu"

    invoke-static {v1, v2}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/MasterClear;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c077d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v3, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020070

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 537
    .local v0, "mi":Landroid/view/MenuItem;
    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 539
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 510
    const v0, 0x7f040066

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/MasterClear;->mContentView:Landroid/view/View;

    .line 512
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/MasterClear;->establishInitialState()V

    .line 513
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/MasterClear;->setHasOptionsMenu(Z)V

    .line 514
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/MasterClear;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 553
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/flyme/deviceoriginalsettings/MasterClear$ResetClickListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/flyme/deviceoriginalsettings/MasterClear$ResetClickListener;-><init>(Lcom/flyme/deviceoriginalsettings/MasterClear;Lcom/flyme/deviceoriginalsettings/MasterClear$1;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 555
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 519
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 522
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/MasterClear;->mPinConfirmed:Z

    if-eqz v0, :cond_0

    .line 523
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/MasterClear;->mPinConfirmed:Z

    .line 524
    const/16 v0, 0x37

    invoke-direct {p0, v0}, Lcom/flyme/deviceoriginalsettings/MasterClear;->runKeyguardConfirmation(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 525
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/MasterClear;->showFinalConfirmation()V

    .line 528
    :cond_0
    return-void
.end method
