.class public Lcom/android/settings/PrivacySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PrivacySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/lenovo/settings/search/Indexable;


# static fields
.field private static final AUTO_RESTORE:Ljava/lang/String; = "auto_restore"

.field private static final BACKUP_ACTION:Ljava/lang/String; = "com.lenovo.BackupRestore.CHOOSE_BACKUP"

.field private static final BACKUP_ACTIVITY_NAME:Ljava/lang/String; = "com.lenovo.BackupRestore.AllBackupActivity"

.field private static final BACKUP_APP_PACKAGE_NAME:Ljava/lang/String; = "com.lenovo.BackupRestore"

.field private static final BACKUP_CATEGORY:Ljava/lang/String; = "backup_category"

.field private static final BACKUP_DATA:Ljava/lang/String; = "backup_data"

.field private static final BACKUP_DEVICE_ACTION:Ljava/lang/String; = "com.lenovo.anyshare.action.CLONE_FM_BACKUP"

.field private static final BACKUP_RECOVERY_DATA:Ljava/lang/String; = "backup_recovery_data"

.field private static final CLOUD_SYNC_ACTION:Ljava/lang/String; = "com.lenovo.leos.cloud.sync.intent.action.MAIN"

.field private static final CONFIGURE_ACCOUNT:Ljava/lang/String; = "configure_account"

.field private static final DIALOG_ERASE_BACKUP:I = 0x2

.field private static final GSETTINGS_PROVIDER:Ljava/lang/String; = "com.google.settings"

.field private static final KEY_BACKUP_DATA_CLOUD:Ljava/lang/String; = "key_backup_data_cloud"

.field private static final KEY_BACKUP_DATA_DEVICE:Ljava/lang/String; = "key_backup_data_device"

.field private static final KEY_BACKUP_DATA_SDCARD:Ljava/lang/String; = "key_backup_data_sdcard"

.field private static final KEY_DEVICE_CATEGORY:Ljava/lang/String; = "device_category"

.field private static final KEY_RECOVERY_DATA_CLOUD:Ljava/lang/String; = "key_recovery_data_cloud"

.field private static final KEY_RECOVERY_DATA_DEVICE:Ljava/lang/String; = "key_recovery_data_device"

.field private static final KEY_RECOVERY_DATA_SDCARD:Ljava/lang/String; = "key_recovery_data_sdcard"

.field private static final KEY_RESET_HEADERS:Ljava/lang/String; = "key_reset_headers"

.field private static final LENOVO_BACKUP_ACTION_CLOUD_ROW:Ljava/lang/String; = "com.lenovo.leos.cloud.sync.row.CLOUD_BACKUP"

.field private static final LENOVO_RESTORE_ACTION_CLOUD_ROW:Ljava/lang/String; = "com.lenovo.leos.cloud.sync.row.CLOUD_RESTORE"

.field private static final LENOVO_SYNC_MAIN_ACTIVITY:Ljava/lang/String; = "com.lenovo.leos.cloud.sync.common.activity.SplashScreenActivity"

.field private static final LENOVO_SYNC_MAIN_COMPONENT:Ljava/lang/String; = "com.lenovo.leos.cloud.sync"

.field private static final RECOVERY_APP_PACKAGE_NAME:Ljava/lang/String; = "com.lenovo.BackupRestore"

.field private static final RECOVERY_DATA_ACTIVITY_NAME:Ljava/lang/String; = "com.lenovo.BackupRestore.BootActivity"

.field private static final RESTORE_ACTION:Ljava/lang/String; = "com.lenovo.BackupRestore.CHOOSE_RESTORE"

.field private static final RESTORE_DEVICE_ACTION:Ljava/lang/String; = "com.lenovo.anyshare.action.CLONE_FM_RESTORE"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/lenovo/settings/search/Indexable$SearchIndexProvider;

.field public static final TAG:Ljava/lang/String; = "PrivacySettings"


# instance fields
.field private checkBoxKey:Landroid/content/SharedPreferences;

.field private checkBoxKeyEditor:Landroid/content/SharedPreferences$Editor;

.field private mAutoRestore:Landroid/preference/CheckBoxPreference;

.field private mBackup:Landroid/preference/SwitchPreference;

.field private mBackupDataCloud:Landroid/preference/PreferenceScreen;

.field private mBackupDataDevice:Landroid/preference/PreferenceScreen;

.field private mBackupDataSdcard:Landroid/preference/PreferenceScreen;

.field private mBackupManager:Landroid/app/backup/IBackupManager;

.field private mBackupRecoveryData:Landroid/preference/SwitchPreference;

.field private mConfigure:Landroid/preference/PreferenceScreen;

.field private mConfirmDialog:Landroid/app/Dialog;

.field private mDialogType:I

.field private mGoTips:Landroid/widget/TextView;

.field private mRecoveryDataCloud:Landroid/preference/PreferenceScreen;

.field private mRecoveryDataDevice:Landroid/preference/PreferenceScreen;

.field private mRecoveryDataSdcard:Landroid/preference/PreferenceScreen;

.field private mResetHeaders:Landroid/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 586
    new-instance v0, Lcom/android/settings/PrivacySettings$4;

    invoke-direct {v0}, Lcom/android/settings/PrivacySettings$4;-><init>()V

    sput-object v0, Lcom/android/settings/PrivacySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/lenovo/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/PrivacySettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/PrivacySettings;
    .param p1, "x1"    # Z

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/settings/PrivacySettings;->setBackupEnabled(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/PrivacySettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/PrivacySettings;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/settings/PrivacySettings;->showEraseBackupDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/PrivacySettings;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/PrivacySettings;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->checkBoxKeyEditor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method private canBackupToSdcard()Z
    .locals 10

    .prologue
    .line 437
    const/4 v1, 0x0

    .line 438
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

    .line 440
    .local v3, "isFuseOn":Z
    :goto_0
    if-eqz v3, :cond_2

    .line 441
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v5

    .line 442
    .local v5, "sm":Landroid/os/storage/StorageManager;
    invoke-virtual {v5}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v7

    .line 443
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

    .line 444
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

    .line 446
    const/4 v1, 0x1

    .line 443
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 438
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

    .line 450
    .restart local v3    # "isFuseOn":Z
    :cond_2
    const/4 v1, 0x1

    .line 452
    :cond_3
    return v1
.end method

.method private isDeviceShareSupported(Ljava/lang/String;)Z
    .locals 6
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 571
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 572
    .local v2, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 573
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 574
    .local v0, "appInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 575
    const-string v3, "PrivacySettings"

    const-string v4, "isDeviceShareSupported, get SHAREit package, show Device menu"

    invoke-static {v3, v4}, Lcom/lenovo/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    const/4 v3, 0x1

    .line 579
    :goto_0
    return v3

    .line 578
    :cond_0
    const-string v4, "PrivacySettings"

    const-string v5, "isDeviceShareSupported, don\'t get SHAREit package, remove Device menu"

    invoke-static {v4, v5}, Lcom/lenovo/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isLenovoSyncAvailable()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 458
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 459
    .local v1, "pm":Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.lenovo.leos.cloud.sync.intent.action.MAIN"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 460
    .local v0, "intent":Landroid/content/Intent;
    const-string v4, "com.lenovo.leos.cloud.sync"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 461
    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 462
    .local v2, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz v2, :cond_0

    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v4, :cond_1

    .line 463
    :cond_0
    const-string v4, "PrivacySettings"

    const-string v5, "find no activity responding to action: com.lenovo.leos.cloud.sync.intent.action.MAIN"

    invoke-static {v4, v5}, Lcom/lenovo/xlog/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private setBackupEnabled(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 550
    iget-object v1, p0, Lcom/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    if-eqz v1, :cond_0

    .line 552
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v1, p1}, Landroid/app/backup/IBackupManager;->setBackupEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 559
    :cond_0
    iget-object v1, p0, Lcom/android/settings/PrivacySettings;->mBackup:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 560
    iget-object v1, p0, Lcom/android/settings/PrivacySettings;->mAutoRestore:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 561
    iget-object v1, p0, Lcom/android/settings/PrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, p1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 562
    :goto_0
    return-void

    .line 553
    :catch_0
    move-exception v0

    .line 554
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/android/settings/PrivacySettings;->mBackup:Landroid/preference/SwitchPreference;

    if-nez p1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 555
    iget-object v1, p0, Lcom/android/settings/PrivacySettings;->mAutoRestore:Landroid/preference/CheckBoxPreference;

    if-nez p1, :cond_2

    :goto_2
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    move v1, v3

    .line 554
    goto :goto_1

    :cond_2
    move v2, v3

    .line 555
    goto :goto_2
.end method

.method private setConfigureSummary(Ljava/lang/String;)V
    .locals 2
    .param p1, "summary"    # Ljava/lang/String;

    .prologue
    .line 516
    if-eqz p1, :cond_0

    .line 517
    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 521
    :goto_0
    return-void

    .line 519
    :cond_0
    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0c0a62

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0
.end method

.method private showEraseBackupDialog()V
    .locals 3

    .prologue
    .line 472
    iget-object v1, p0, Lcom/android/settings/PrivacySettings;->mBackup:Landroid/preference/SwitchPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 474
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/settings/PrivacySettings;->mDialogType:I

    .line 475
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0a6c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 477
    .local v0, "msg":Ljava/lang/CharSequence;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0a6b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/PrivacySettings;->mConfirmDialog:Landroid/app/Dialog;

    .line 483
    return-void
.end method

.method private updateConfigureSummary()V
    .locals 3

    .prologue
    .line 525
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v2}, Landroid/app/backup/IBackupManager;->getCurrentTransport()Ljava/lang/String;

    move-result-object v1

    .line 526
    .local v1, "transport":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v2, v1}, Landroid/app/backup/IBackupManager;->getDestinationString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 527
    .local v0, "summary":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/settings/PrivacySettings;->setConfigureSummary(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 531
    .end local v0    # "summary":Ljava/lang/String;
    .end local v1    # "transport":Ljava/lang/String;
    :goto_0
    return-void

    .line 528
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private updateToggles()V
    .locals 11

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 489
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 491
    .local v5, "res":Landroid/content/ContentResolver;
    const/4 v0, 0x0

    .line 492
    .local v0, "backupEnabled":Z
    const/4 v1, 0x0

    .line 493
    .local v1, "configIntent":Landroid/content/Intent;
    const/4 v2, 0x0

    .line 495
    .local v2, "configSummary":Ljava/lang/String;
    :try_start_0
    iget-object v7, p0, Lcom/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v7}, Landroid/app/backup/IBackupManager;->isBackupEnabled()Z

    move-result v0

    .line 496
    iget-object v7, p0, Lcom/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v7}, Landroid/app/backup/IBackupManager;->getCurrentTransport()Ljava/lang/String;

    move-result-object v6

    .line 497
    .local v6, "transport":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v7, v6}, Landroid/app/backup/IBackupManager;->getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 498
    iget-object v7, p0, Lcom/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v7, v6}, Landroid/app/backup/IBackupManager;->getDestinationString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 503
    .end local v6    # "transport":Ljava/lang/String;
    :goto_0
    iget-object v7, p0, Lcom/android/settings/PrivacySettings;->mBackup:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 505
    iget-object v10, p0, Lcom/android/settings/PrivacySettings;->mAutoRestore:Landroid/preference/CheckBoxPreference;

    const-string v7, "backup_auto_restore"

    invoke-static {v5, v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v8, :cond_0

    move v7, v8

    :goto_1
    invoke-virtual {v10, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 507
    iget-object v7, p0, Lcom/android/settings/PrivacySettings;->mAutoRestore:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 509
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    move v3, v8

    .line 510
    .local v3, "configureEnabled":Z
    :goto_2
    iget-object v7, p0, Lcom/android/settings/PrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 511
    iget-object v7, p0, Lcom/android/settings/PrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v1}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 512
    invoke-direct {p0, v2}, Lcom/android/settings/PrivacySettings;->setConfigureSummary(Ljava/lang/String;)V

    .line 513
    return-void

    .line 499
    .end local v3    # "configureEnabled":Z
    :catch_0
    move-exception v4

    .line 501
    .local v4, "e":Landroid/os/RemoteException;
    iget-object v7, p0, Lcom/android/settings/PrivacySettings;->mBackup:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, v9}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0

    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_0
    move v7, v9

    .line 505
    goto :goto_1

    :cond_1
    move v3, v9

    .line 509
    goto :goto_2
.end method


# virtual methods
.method public checkApplication(Ljava/lang/String;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 293
    const/4 v2, 0x0

    .line 294
    .local v2, "result":Z
    if-eqz p1, :cond_0

    const-string v3, ""

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 295
    :cond_0
    const/4 v3, 0x0

    .line 306
    :goto_0
    return v3

    .line 299
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x2000

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 301
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    const/4 v2, 0x1

    .line 305
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :goto_1
    const-string v3, "PrivacySettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "check application = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v2

    .line 306
    goto :goto_0

    .line 302
    :catch_0
    move-exception v0

    .line 303
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public findApplicationForAction(Ljava/lang/String;)Z
    .locals 5
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 275
    const/4 v1, 0x0

    .line 276
    .local v1, "result":Z
    if-nez p1, :cond_0

    .line 289
    :goto_0
    return v2

    .line 280
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 281
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-nez v2, :cond_1

    .line 282
    const/4 v1, 0x0

    .line 287
    :goto_1
    const-string v2, "PrivacySettings"

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

    .line 289
    goto :goto_0

    .line 284
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 566
    const v0, 0x7f0c0bc5

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x0

    .line 534
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 536
    iget v0, p0, Lcom/android/settings/PrivacySettings;->mDialogType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 537
    invoke-direct {p0, v2}, Lcom/android/settings/PrivacySettings;->setBackupEnabled(Z)V

    .line 538
    invoke-direct {p0}, Lcom/android/settings/PrivacySettings;->updateConfigureSummary()V

    .line 541
    :cond_0
    iput v2, p0, Lcom/android/settings/PrivacySettings;->mDialogType:I

    .line 542
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v1, 0x7f0c0a5c

    const/4 v3, 0x0

    .line 136
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 137
    const v0, 0x7f06002b

    invoke-virtual {p0, v0}, Lcom/android/settings/PrivacySettings;->addPreferencesFromResource(I)V

    .line 138
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    .line 140
    .local v11, "screen":Landroid/preference/PreferenceScreen;
    const-string v0, "backup"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    .line 143
    const-string v0, "backup_data"

    invoke-virtual {v11, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/PrivacySettings;->mBackup:Landroid/preference/SwitchPreference;

    .line 144
    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->mBackup:Landroid/preference/SwitchPreference;

    new-instance v2, Lcom/android/settings/PrivacySettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings/PrivacySettings$1;-><init>(Lcom/android/settings/PrivacySettings;)V

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 158
    const-string v0, "auto_restore"

    invoke-virtual {v11, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/PrivacySettings;->mAutoRestore:Landroid/preference/CheckBoxPreference;

    .line 159
    const-string v0, "configure_account"

    invoke-virtual {v11, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/PrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    .line 162
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "com.google.settings"

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 164
    const-string v0, "backup_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/PrivacySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 168
    :cond_0
    const-string v0, "key_backup_data_device"

    invoke-virtual {v11, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/PrivacySettings;->mBackupDataDevice:Landroid/preference/PreferenceScreen;

    .line 169
    const-string v0, "key_recovery_data_device"

    invoke-virtual {v11, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/PrivacySettings;->mRecoveryDataDevice:Landroid/preference/PreferenceScreen;

    .line 173
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "PrivacySettings"

    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/PrivacySettings;->checkBoxKey:Landroid/content/SharedPreferences;

    .line 174
    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->checkBoxKey:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/PrivacySettings;->checkBoxKeyEditor:Landroid/content/SharedPreferences$Editor;

    .line 176
    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->checkBoxKey:Landroid/content/SharedPreferences;

    const-string v2, "booleanCheckBox"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    .line 178
    .local v10, "checkBoxIsChecked":Ljava/lang/Boolean;
    const-string v0, "backup_recovery_data"

    invoke-virtual {v11, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/PrivacySettings;->mBackupRecoveryData:Landroid/preference/SwitchPreference;

    .line 179
    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->mBackupRecoveryData:Landroid/preference/SwitchPreference;

    new-instance v2, Lcom/android/settings/PrivacySettings$2;

    invoke-direct {v2, p0}, Lcom/android/settings/PrivacySettings$2;-><init>(Lcom/android/settings/PrivacySettings;)V

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 194
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 195
    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->mBackupRecoveryData:Landroid/preference/SwitchPreference;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 203
    :goto_0
    const-string v0, "key_backup_data_sdcard"

    invoke-virtual {v11, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/PrivacySettings;->mBackupDataSdcard:Landroid/preference/PreferenceScreen;

    .line 204
    const-string v0, "key_recovery_data_sdcard"

    invoke-virtual {v11, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/PrivacySettings;->mRecoveryDataSdcard:Landroid/preference/PreferenceScreen;

    .line 205
    const-string v0, "key_backup_data_cloud"

    invoke-virtual {v11, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/PrivacySettings;->mBackupDataCloud:Landroid/preference/PreferenceScreen;

    .line 206
    const-string v0, "key_recovery_data_cloud"

    invoke-virtual {v11, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/PrivacySettings;->mRecoveryDataCloud:Landroid/preference/PreferenceScreen;

    .line 209
    const-string v0, "backup_recovery_data_category"

    invoke-virtual {v11, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceCategory;

    .line 213
    .local v8, "category":Landroid/preference/PreferenceCategory;
    const-string v0, "com.lenovo.BackupRestore.CHOOSE_BACKUP"

    invoke-virtual {p0, v0}, Lcom/android/settings/PrivacySettings;->findApplicationForAction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 214
    invoke-static {}, Lcom/lenovo/settings/LenovoUtils;->isRowProject()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 215
    invoke-direct {p0}, Lcom/android/settings/PrivacySettings;->canBackupToSdcard()Z

    move-result v0

    if-nez v0, :cond_1

    .line 224
    const-string v0, "PrivacySettings"

    const-string v2, "no physical sdcard available, remove backup_to_sd preference"

    invoke-static {v0, v2}, Lcom/lenovo/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->mBackupDataSdcard:Landroid/preference/PreferenceScreen;

    invoke-virtual {v8, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 227
    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->mRecoveryDataSdcard:Landroid/preference/PreferenceScreen;

    invoke-virtual {v8, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 246
    :cond_1
    :goto_1
    const-string v0, "com.lenovo.anyshare.action.CLONE_FM_BACKUP"

    invoke-direct {p0, v0}, Lcom/android/settings/PrivacySettings;->isDeviceShareSupported(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 251
    const-string v0, "PrivacySettings"

    const-string v2, "OnCreate, SHAREit not available, remove device category"

    invoke-static {v0, v2}, Lcom/lenovo/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const-string v0, "device_category"

    invoke-virtual {v11, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceCategory;

    .line 254
    .local v9, "categoryDevice":Landroid/preference/PreferenceCategory;
    invoke-virtual {v11, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 259
    .end local v9    # "categoryDevice":Landroid/preference/PreferenceCategory;
    :cond_2
    invoke-virtual {v8}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_3

    .line 261
    invoke-virtual {v11, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 265
    :cond_3
    const-string v0, "key_reset_headers"

    invoke-virtual {v11, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/PrivacySettings;->mResetHeaders:Landroid/preference/PreferenceScreen;

    .line 267
    invoke-direct {p0}, Lcom/android/settings/PrivacySettings;->updateToggles()V

    .line 269
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-class v3, Lcom/android/settings/SubSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    move v3, v1

    invoke-static/range {v0 .. v7}, Lcom/lenovo/settings/recentsettings/RecentSettingsApi;->addShowInfoAction(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    return-void

    .line 198
    .end local v8    # "category":Landroid/preference/PreferenceCategory;
    :cond_4
    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->mBackupRecoveryData:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 230
    .restart local v8    # "category":Landroid/preference/PreferenceCategory;
    :cond_5
    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->mBackupDataCloud:Landroid/preference/PreferenceScreen;

    invoke-virtual {v8, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 231
    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->mRecoveryDataCloud:Landroid/preference/PreferenceScreen;

    invoke-virtual {v8, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 234
    :cond_6
    invoke-virtual {v11, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 236
    const-string v0, "com.lenovo.mbg.cloud.sync"

    invoke-virtual {p0, v0}, Lcom/android/settings/PrivacySettings;->checkApplication(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 237
    const-string v0, "PrivacySettings"

    const-string v2, "cloud server has been installed, but it has been frozed."

    invoke-static {v0, v2}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 239
    :cond_7
    const-string v0, "PrivacySettings"

    const-string v2, "cloud server has been unstalled."

    invoke-static {v0, v2}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v4, 0x1

    .line 330
    iget-object v5, p0, Lcom/android/settings/PrivacySettings;->mAutoRestore:Landroid/preference/CheckBoxPreference;

    if-ne p2, v5, :cond_2

    .line 331
    iget-object v5, p0, Lcom/android/settings/PrivacySettings;->mAutoRestore:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    .line 333
    .local v1, "curState":Z
    :try_start_0
    iget-object v5, p0, Lcom/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v5, v1}, Landroid/app/backup/IBackupManager;->setAutoRestore(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 432
    .end local v1    # "curState":Z
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v4

    :goto_1
    return v4

    .line 334
    .restart local v1    # "curState":Z
    :catch_0
    move-exception v2

    .line 335
    .local v2, "e":Landroid/os/RemoteException;
    iget-object v5, p0, Lcom/android/settings/PrivacySettings;->mAutoRestore:Landroid/preference/CheckBoxPreference;

    if-nez v1, :cond_1

    :goto_2
    invoke-virtual {v5, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_2

    .line 339
    .end local v1    # "curState":Z
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_2
    iget-object v5, p0, Lcom/android/settings/PrivacySettings;->mBackupDataSdcard:Landroid/preference/PreferenceScreen;

    if-ne p2, v5, :cond_3

    .line 340
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 341
    .local v3, "intent":Landroid/content/Intent;
    const-string v5, "com.lenovo.BackupRestore.CHOOSE_BACKUP"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 343
    :try_start_1
    invoke-virtual {p0, v3}, Lcom/android/settings/PrivacySettings;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 344
    :catch_1
    move-exception v2

    .line 345
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "PrivacySettings"

    const-string v6, "backup to sdcard, start activity fail"

    invoke-static {v5, v6, v2}, Lcom/lenovo/xlog/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 348
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_3
    iget-object v5, p0, Lcom/android/settings/PrivacySettings;->mRecoveryDataSdcard:Landroid/preference/PreferenceScreen;

    if-ne p2, v5, :cond_4

    .line 349
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 350
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string v5, "com.lenovo.BackupRestore.CHOOSE_RESTORE"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 352
    :try_start_2
    invoke-virtual {p0, v3}, Lcom/android/settings/PrivacySettings;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 353
    :catch_2
    move-exception v2

    .line 354
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v5, "PrivacySettings"

    const-string v6, "recovery from sdcard, start activity fail"

    invoke-static {v5, v6, v2}, Lcom/lenovo/xlog/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 357
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_4
    iget-object v5, p0, Lcom/android/settings/PrivacySettings;->mBackupDataCloud:Landroid/preference/PreferenceScreen;

    if-ne p2, v5, :cond_7

    .line 358
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 359
    .restart local v3    # "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/lenovo/settings/LenovoUtils;->isRowProject()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 360
    const-string v5, "com.lenovo.leos.cloud.sync.row.CLOUD_BACKUP"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 369
    :goto_3
    :try_start_3
    invoke-virtual {p0, v3}, Lcom/android/settings/PrivacySettings;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 370
    :catch_3
    move-exception v2

    .line 371
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v5, "PrivacySettings"

    const-string v6, "backup to cloud, start activity fail"

    invoke-static {v5, v6, v2}, Lcom/lenovo/xlog/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 361
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/PrivacySettings;->isLenovoSyncAvailable()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 362
    const-string v5, "com.lenovo.leos.cloud.sync.intent.action.MAIN"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    .line 364
    :cond_6
    new-instance v0, Landroid/content/ComponentName;

    const-string v5, "com.lenovo.leos.cloud.sync"

    const-string v6, "com.lenovo.leos.cloud.sync.common.activity.SplashScreenActivity"

    invoke-direct {v0, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    .local v0, "cn":Landroid/content/ComponentName;
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_3

    .line 374
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_7
    iget-object v5, p0, Lcom/android/settings/PrivacySettings;->mRecoveryDataCloud:Landroid/preference/PreferenceScreen;

    if-ne p2, v5, :cond_a

    .line 375
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 376
    .restart local v3    # "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/lenovo/settings/LenovoUtils;->isRowProject()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 377
    const-string v5, "com.lenovo.leos.cloud.sync.row.CLOUD_RESTORE"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 386
    :goto_4
    :try_start_4
    invoke-virtual {p0, v3}, Lcom/android/settings/PrivacySettings;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    .line 387
    :catch_4
    move-exception v2

    .line 388
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v5, "PrivacySettings"

    const-string v6, "recovery from cloud, start activity fail"

    invoke-static {v5, v6, v2}, Lcom/lenovo/xlog/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 378
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_8
    invoke-direct {p0}, Lcom/android/settings/PrivacySettings;->isLenovoSyncAvailable()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 379
    const-string v5, "com.lenovo.leos.cloud.sync.intent.action.MAIN"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_4

    .line 381
    :cond_9
    new-instance v0, Landroid/content/ComponentName;

    const-string v5, "com.lenovo.leos.cloud.sync"

    const-string v6, "com.lenovo.leos.cloud.sync.common.activity.SplashScreenActivity"

    invoke-direct {v0, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    .restart local v0    # "cn":Landroid/content/ComponentName;
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_4

    .line 393
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_a
    iget-object v5, p0, Lcom/android/settings/PrivacySettings;->mRecoveryDataDevice:Landroid/preference/PreferenceScreen;

    if-ne p2, v5, :cond_b

    .line 394
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 395
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string v5, "com.lenovo.anyshare.action.CLONE_FM_RESTORE"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 398
    :try_start_5
    invoke-virtual {p0, v3}, Lcom/android/settings/PrivacySettings;->startActivity(Landroid/content/Intent;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_0

    .line 399
    :catch_5
    move-exception v2

    .line 400
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v5, "PrivacySettings"

    const-string v6, "recovery from device, start SHAREit fail"

    invoke-static {v5, v6, v2}, Lcom/lenovo/xlog/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 404
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_b
    iget-object v5, p0, Lcom/android/settings/PrivacySettings;->mBackupDataDevice:Landroid/preference/PreferenceScreen;

    if-ne p2, v5, :cond_c

    .line 405
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 406
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string v5, "com.lenovo.anyshare.action.CLONE_FM_BACKUP"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 409
    :try_start_6
    invoke-virtual {p0, v3}, Lcom/android/settings/PrivacySettings;->startActivity(Landroid/content/Intent;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_0

    .line 410
    :catch_6
    move-exception v2

    .line 411
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v5, "PrivacySettings"

    const-string v6, "backup from device, start SHAREit fail"

    invoke-static {v5, v6, v2}, Lcom/lenovo/xlog/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 415
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_c
    iget-object v4, p0, Lcom/android/settings/PrivacySettings;->mResetHeaders:Landroid/preference/PreferenceScreen;

    if-ne p2, v4, :cond_0

    .line 416
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0c0442

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0c043f

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0c0443

    new-instance v6, Lcom/android/settings/PrivacySettings$3;

    invoke-direct {v6, p0}, Lcom/android/settings/PrivacySettings$3;-><init>(Lcom/android/settings/PrivacySettings;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v5, 0x1040000

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 311
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 314
    invoke-direct {p0}, Lcom/android/settings/PrivacySettings;->updateToggles()V

    .line 315
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->mConfirmDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->mConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->mConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 322
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/PrivacySettings;->mConfirmDialog:Landroid/app/Dialog;

    .line 323
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/PrivacySettings;->mDialogType:I

    .line 324
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 325
    return-void
.end method
