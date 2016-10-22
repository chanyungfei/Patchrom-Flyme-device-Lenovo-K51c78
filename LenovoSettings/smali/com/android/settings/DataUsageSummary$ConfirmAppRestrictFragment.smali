.class public Lcom/flyme/deviceoriginalsettings/DataUsageSummary$ConfirmAppRestrictFragment;
.super Landroid/app/DialogFragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmAppRestrictFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2206
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;)V
    .locals 3
    .param p0, "parent"    # Lcom/flyme/deviceoriginalsettings/DataUsageSummary;

    .prologue
    .line 2209
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2216
    :goto_0
    return-void

    .line 2213
    :cond_0
    new-instance v0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$ConfirmAppRestrictFragment;

    invoke-direct {v0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$ConfirmAppRestrictFragment;-><init>()V

    .line 2214
    .local v0, "dialog":Lcom/flyme/deviceoriginalsettings/DataUsageSummary$ConfirmAppRestrictFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$ConfirmAppRestrictFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 2215
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "confirmAppRestrict"

    invoke-virtual {v0, v1, v2}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$ConfirmAppRestrictFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 2220
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$ConfirmAppRestrictFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 2222
    .local v1, "context":Landroid/content/Context;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2223
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0c0b2d

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2224
    const v2, 0x7f0c0b2e

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2226
    const v2, 0x104000a

    new-instance v3, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$ConfirmAppRestrictFragment$1;

    invoke-direct {v3, p0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$ConfirmAppRestrictFragment$1;-><init>(Lcom/flyme/deviceoriginalsettings/DataUsageSummary$ConfirmAppRestrictFragment;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2236
    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2238
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method
