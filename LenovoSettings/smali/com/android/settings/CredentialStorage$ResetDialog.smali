.class Lcom/flyme/deviceoriginalsettings/CredentialStorage$ResetDialog;
.super Ljava/lang/Object;
.source "CredentialStorage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/CredentialStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResetDialog"
.end annotation


# instance fields
.field private mResetConfirmed:Z

.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/CredentialStorage;


# direct methods
.method private constructor <init>(Lcom/flyme/deviceoriginalsettings/CredentialStorage;)V
    .locals 3

    .prologue
    .line 366
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/CredentialStorage$ResetDialog;->this$0:Lcom/flyme/deviceoriginalsettings/CredentialStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 369
    # getter for: Lcom/flyme/deviceoriginalsettings/CredentialStorage;->sResetDialog:Landroid/app/AlertDialog;
    invoke-static {p1}, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->access$200(Lcom/flyme/deviceoriginalsettings/CredentialStorage;)Landroid/app/AlertDialog;

    move-result-object v1

    if-nez v1, :cond_0

    .line 370
    new-instance v1, Landroid/app/AlertDialog$Builder;

    const/4 v2, 0x5

    invoke-direct {v1, p1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v2, 0x1040014

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0a61

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 377
    .local v0, "dialog":Landroid/app/AlertDialog;
    # setter for: Lcom/flyme/deviceoriginalsettings/CredentialStorage;->sResetDialog:Landroid/app/AlertDialog;
    invoke-static {p1, v0}, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->access$202(Lcom/flyme/deviceoriginalsettings/CredentialStorage;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 378
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 379
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 382
    .end local v0    # "dialog":Landroid/app/AlertDialog;
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/flyme/deviceoriginalsettings/CredentialStorage;Lcom/flyme/deviceoriginalsettings/CredentialStorage$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/flyme/deviceoriginalsettings/CredentialStorage;
    .param p2, "x1"    # Lcom/flyme/deviceoriginalsettings/CredentialStorage$1;

    .prologue
    .line 361
    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/CredentialStorage$ResetDialog;-><init>(Lcom/flyme/deviceoriginalsettings/CredentialStorage;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    .line 385
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/CredentialStorage$ResetDialog;->mResetConfirmed:Z

    .line 386
    return-void

    .line 385
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 390
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/CredentialStorage$ResetDialog;->this$0:Lcom/flyme/deviceoriginalsettings/CredentialStorage;

    # setter for: Lcom/flyme/deviceoriginalsettings/CredentialStorage;->sResetDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v5}, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->access$202(Lcom/flyme/deviceoriginalsettings/CredentialStorage;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 391
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/CredentialStorage$ResetDialog;->mResetConfirmed:Z

    if-eqz v0, :cond_0

    .line 392
    iput-boolean v2, p0, Lcom/flyme/deviceoriginalsettings/CredentialStorage$ResetDialog;->mResetConfirmed:Z

    .line 393
    new-instance v0, Lcom/flyme/deviceoriginalsettings/CredentialStorage$ResetKeyStoreAndKeyChain;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/CredentialStorage$ResetDialog;->this$0:Lcom/flyme/deviceoriginalsettings/CredentialStorage;

    invoke-direct {v0, v1, v5}, Lcom/flyme/deviceoriginalsettings/CredentialStorage$ResetKeyStoreAndKeyChain;-><init>(Lcom/flyme/deviceoriginalsettings/CredentialStorage;Lcom/flyme/deviceoriginalsettings/CredentialStorage$1;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/CredentialStorage$ResetKeyStoreAndKeyChain;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 395
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/CredentialStorage$ResetDialog;->this$0:Lcom/flyme/deviceoriginalsettings/CredentialStorage;

    const v1, 0x7f0c0a55

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/CredentialStorage$ResetDialog;->this$0:Lcom/flyme/deviceoriginalsettings/CredentialStorage;

    invoke-virtual {v2}, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0c0197

    const-class v4, Lcom/flyme/deviceoriginalsettings/SecuritySettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    move-object v6, v5

    move-object v7, v5

    invoke-static/range {v0 .. v7}, Lcom/lenovo/settings/recentsettings/RecentSettingsApi;->addChangValueAction(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    :goto_0
    return-void

    .line 407
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnSettings;->isBack:Z

    .line 410
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/CredentialStorage$ResetDialog;->this$0:Lcom/flyme/deviceoriginalsettings/CredentialStorage;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->finish()V

    goto :goto_0
.end method
