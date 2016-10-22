.class public Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;
.super Landroid/app/DialogFragment;
.source "AccountSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 596
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$800(Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;

    .prologue
    .line 596
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;->mEnabling:Z

    return v0
.end method

.method static synthetic access$900(Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;)Landroid/os/UserHandle;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;

    .prologue
    .line 596
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;->mUserHandle:Landroid/os/UserHandle;

    return-object v0
.end method

.method public static show(Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;ZLandroid/os/UserHandle;)V
    .locals 3
    .param p0, "parent"    # Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;
    .param p1, "enabling"    # Z
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 602
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 609
    :goto_0
    return-void

    .line 604
    :cond_0
    new-instance v0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;

    invoke-direct {v0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;-><init>()V

    .line 605
    .local v0, "dialog":Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;
    iput-boolean p1, v0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;->mEnabling:Z

    .line 606
    iput-object p2, v0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;->mUserHandle:Landroid/os/UserHandle;

    .line 607
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 608
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "confirmAutoSyncChange"

    invoke-virtual {v0, v1, v2}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 613
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 614
    .local v1, "context":Landroid/content/Context;
    if-eqz p1, :cond_0

    .line 615
    const-string v2, "enabling"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;->mEnabling:Z

    .line 618
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 619
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-boolean v2, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;->mEnabling:Z

    if-nez v2, :cond_1

    .line 620
    const v2, 0x7f0c0b32

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 621
    const v2, 0x7f0c0b33

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 627
    :goto_0
    const v2, 0x104000a

    new-instance v3, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment$1;

    invoke-direct {v3, p0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment$1;-><init>(Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 634
    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 636
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    .line 623
    :cond_1
    const v2, 0x7f0c0b30

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 624
    const v2, 0x7f0c0b31

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 641
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 642
    const-string v0, "enabling"

    iget-boolean v1, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;->mEnabling:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 643
    return-void
.end method
