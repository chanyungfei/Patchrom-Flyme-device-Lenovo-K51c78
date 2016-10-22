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
.field private mEnabling:Z

.field private mUserHandle:Landroid/os/UserHandle;

.field private mpre:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 323
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$500(Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;

    .prologue
    .line 323
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;->mEnabling:Z

    return v0
.end method

.method static synthetic access$600(Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;)Landroid/os/UserHandle;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;

    .prologue
    .line 323
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;->mUserHandle:Landroid/os/UserHandle;

    return-object v0
.end method

.method static synthetic access$700(Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;

    .prologue
    .line 323
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;->mpre:Landroid/preference/Preference;

    return-object v0
.end method

.method public static show(Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;ZLandroid/os/UserHandle;Landroid/preference/Preference;)V
    .locals 3
    .param p0, "parent"    # Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;
    .param p1, "enabling"    # Z
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .param p3, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 330
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 338
    :goto_0
    return-void

    .line 332
    :cond_0
    new-instance v0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;

    invoke-direct {v0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;-><init>()V

    .line 333
    .local v0, "dialog":Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;
    iput-boolean p1, v0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;->mEnabling:Z

    .line 334
    iput-object p2, v0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;->mUserHandle:Landroid/os/UserHandle;

    .line 335
    iput-object p3, v0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;->mpre:Landroid/preference/Preference;

    .line 336
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 337
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
    .line 342
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 343
    .local v1, "context":Landroid/content/Context;
    if-eqz p1, :cond_0

    .line 344
    const-string v2, "enabling"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;->mEnabling:Z

    .line 347
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 348
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-boolean v2, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;->mEnabling:Z

    if-nez v2, :cond_1

    .line 349
    const v2, 0x7f0c0b32

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 350
    const v2, 0x7f0c0b33

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 356
    :goto_0
    const v2, 0x104000a

    new-instance v3, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment$1;

    invoke-direct {v3, p0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment$1;-><init>(Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 366
    const/high16 v2, 0x1040000

    new-instance v3, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment$2;

    invoke-direct {v3, p0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment$2;-><init>(Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 376
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    .line 352
    :cond_1
    const v2, 0x7f0c0b30

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 353
    const v2, 0x7f0c0b31

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 381
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 382
    const-string v0, "enabling"

    iget-boolean v1, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;->mEnabling:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 383
    return-void
.end method
