.class public Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;
.super Landroid/app/DialogFragment;
.source "AccountSettingsOptionMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmAutoSyncChangeFragment"
.end annotation


# static fields
.field private static final SAVE_ENABLING:Ljava/lang/String; = "enabling"


# instance fields
.field private isChecked:Z

.field private isWlan:Z

.field private mAutoSync:Z

.field private mEnabling:Z

.field private mHandler:Landroid/os/Handler;

.field private mProfileData:Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ProfileData;

.field private mUserHandle:Landroid/os/UserHandle;

.field private mWlanSync:Z

.field private mpre:Landroid/preference/Preference;


# direct methods
.method public constructor <init>(Landroid/os/UserHandle;Landroid/os/Handler;)V
    .locals 0
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 426
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 427
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;->mUserHandle:Landroid/os/UserHandle;

    .line 428
    iput-object p2, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;->mHandler:Landroid/os/Handler;

    .line 429
    return-void
.end method

.method static synthetic access$1000(Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;)Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ProfileData;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;

    .prologue
    .line 413
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;->mProfileData:Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ProfileData;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;

    .prologue
    .line 413
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;->mpre:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;

    .prologue
    .line 413
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;

    .prologue
    .line 413
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;->isWlan:Z

    return v0
.end method

.method static synthetic access$600(Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;

    .prologue
    .line 413
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;->isChecked:Z

    return v0
.end method

.method static synthetic access$802(Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 413
    iput-boolean p1, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;->mWlanSync:Z

    return p1
.end method

.method static synthetic access$900(Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;

    .prologue
    .line 413
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;->mAutoSync:Z

    return v0
.end method

.method static synthetic access$902(Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 413
    iput-boolean p1, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;->mAutoSync:Z

    return p1
.end method

.method private setComponentEnable(Landroid/content/Context;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enable"    # Z

    .prologue
    const/4 v3, 0x1

    .line 548
    new-instance v0, Landroid/content/ComponentName;

    const-class v2, Lcom/flyme/deviceoriginalsettings/accounts/NetWorkStateReceiver;

    invoke-direct {v0, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 550
    .local v0, "mNetWorkReceiver":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 551
    .local v1, "pm":Landroid/content/pm/PackageManager;
    if-eqz p2, :cond_0

    .line 552
    invoke-virtual {v1, v0, v3, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 560
    :goto_0
    return-void

    .line 556
    :cond_0
    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    goto :goto_0
.end method

.method public static show(Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;ZLandroid/os/UserHandle;Landroid/preference/Preference;Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ProfileData;ZZLandroid/os/Handler;)V
    .locals 3
    .param p0, "parent"    # Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;
    .param p1, "enabling"    # Z
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .param p3, "preference"    # Landroid/preference/Preference;
    .param p4, "profileData"    # Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ProfileData;
    .param p5, "isWlanSwitch"    # Z
    .param p6, "isChecked"    # Z
    .param p7, "handler"    # Landroid/os/Handler;

    .prologue
    .line 433
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 443
    :goto_0
    return-void

    .line 435
    :cond_0
    new-instance v0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;

    invoke-direct {v0, p2, p7}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;-><init>(Landroid/os/UserHandle;Landroid/os/Handler;)V

    .line 436
    .local v0, "dialog":Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;
    iput-boolean p1, v0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;->mEnabling:Z

    .line 437
    iput-object p3, v0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;->mpre:Landroid/preference/Preference;

    .line 438
    iput-boolean p5, v0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;->isWlan:Z

    .line 439
    iput-boolean p6, v0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;->isChecked:Z

    .line 440
    iput-object p4, v0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;->mProfileData:Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ProfileData;

    .line 441
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 442
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "confirmAutoSyncChange"

    invoke-virtual {v0, v1, v2}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 447
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 448
    .local v1, "context":Landroid/content/Context;
    if-eqz p1, :cond_0

    .line 449
    const-string v2, "enabling"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;->mEnabling:Z

    .line 452
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 453
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-boolean v2, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;->isChecked:Z

    if-nez v2, :cond_2

    .line 455
    iget-boolean v2, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;->isWlan:Z

    if-eqz v2, :cond_1

    .line 456
    const v2, 0x7f0c0b44

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 457
    const v2, 0x7f0c0b46

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 472
    :goto_0
    const v2, 0x104000a

    new-instance v3, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment$1;

    invoke-direct {v3, p0, v1}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment$1;-><init>(Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;Landroid/content/Context;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 502
    const/high16 v2, 0x1040000

    new-instance v3, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment$2;

    invoke-direct {v3, p0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment$2;-><init>(Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 509
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    .line 459
    :cond_1
    const v2, 0x7f0c0b43

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 460
    const v2, 0x7f0c0b45

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 463
    :cond_2
    iget-boolean v2, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;->isWlan:Z

    if-eqz v2, :cond_3

    .line 464
    const v2, 0x7f0c0b40

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 465
    const v2, 0x7f0c0b42

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 467
    :cond_3
    const v2, 0x7f0c0b3f

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 468
    const v2, 0x7f0c0b41

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 564
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 565
    const-string v0, "enabling"

    iget-boolean v1, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;->mEnabling:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 566
    return-void
.end method

.method protected setSyncResult(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 513
    const-string v3, "account_auto_sync"

    # invokes: Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->getDefaultValues(Landroid/content/Context;Ljava/lang/String;)Z
    invoke-static {p1, v3}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->access$1300(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;->mAutoSync:Z

    .line 514
    const-string v3, "account_wlan_sync"

    # invokes: Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->getDefaultValues(Landroid/content/Context;Ljava/lang/String;)Z
    invoke-static {p1, v3}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->access$1300(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;->mWlanSync:Z

    .line 516
    const-string v3, "AccountSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setSyncResult mAutoSync: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;->mAutoSync:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mWlanSync:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;->mWlanSync:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lenovo/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    iget-boolean v3, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;->mAutoSync:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;->mWlanSync:Z

    if-nez v3, :cond_0

    .line 519
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-static {v6, v3}, Landroid/content/ContentResolver;->setMasterSyncAutomaticallyAsUser(ZI)V

    .line 521
    const/4 v1, 0x0

    .line 543
    .local v1, "enableReceive":Z
    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;->setComponentEnable(Landroid/content/Context;Z)V

    .line 544
    return-void

    .line 522
    .end local v1    # "enableReceive":Z
    :cond_0
    iget-boolean v3, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;->mAutoSync:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;->mWlanSync:Z

    if-eqz v3, :cond_3

    .line 523
    const-string v3, "connectivity"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 525
    .local v0, "connectMgr":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 526
    .local v2, "info":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-eq v3, v6, :cond_2

    .line 528
    :cond_1
    const-string v3, "AccountSettings"

    const-string v4, "The current network is not WLAN"

    invoke-static {v3, v4}, Lcom/lenovo/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-static {v7, v3}, Landroid/content/ContentResolver;->setMasterSyncAutomaticallyAsUser(ZI)V

    .line 536
    :goto_1
    const/4 v1, 0x1

    .line 538
    .restart local v1    # "enableReceive":Z
    goto :goto_0

    .line 532
    .end local v1    # "enableReceive":Z
    :cond_2
    const-string v3, "AccountSettings"

    const-string v4, "The current network is WLAN"

    invoke-static {v3, v4}, Lcom/lenovo/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-static {v6, v3}, Landroid/content/ContentResolver;->setMasterSyncAutomaticallyAsUser(ZI)V

    goto :goto_1

    .line 539
    .end local v0    # "connectMgr":Landroid/net/ConnectivityManager;
    .end local v2    # "info":Landroid/net/NetworkInfo;
    :cond_3
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-static {v7, v3}, Landroid/content/ContentResolver;->setMasterSyncAutomaticallyAsUser(ZI)V

    .line 541
    const/4 v1, 0x0

    .restart local v1    # "enableReceive":Z
    goto :goto_0
.end method
