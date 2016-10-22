.class public Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory$ConfirmClearCacheFragment;
.super Landroid/app/DialogFragment;
.source "Memory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmClearCacheFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 578
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;)V
    .locals 4
    .param p0, "parent"    # Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;

    .prologue
    .line 580
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;->isAdded()Z

    move-result v2

    if-nez v2, :cond_0

    .line 590
    :goto_0
    return-void

    .line 582
    :cond_0
    :try_start_0
    new-instance v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory$ConfirmClearCacheFragment;

    invoke-direct {v0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory$ConfirmClearCacheFragment;-><init>()V

    .line 583
    .local v0, "dialog":Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory$ConfirmClearCacheFragment;
    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory$ConfirmClearCacheFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 584
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "confirmClearCache"

    invoke-virtual {v0, v2, v3}, Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory$ConfirmClearCacheFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 585
    .end local v0    # "dialog":Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory$ConfirmClearCacheFragment;
    :catch_0
    move-exception v1

    .line 586
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "MemorySettings"

    const-string v3, "show clear cache dialog has exception."

    invoke-static {v2, v3}, Lcom/lenovo/xlog/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 594
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory$ConfirmClearCacheFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 596
    .local v1, "context":Landroid/content/Context;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 597
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0c0745

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 598
    const v2, 0x7f0c0746

    invoke-virtual {p0, v2}, Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory$ConfirmClearCacheFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 600
    const v2, 0x104000a

    new-instance v3, Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory$ConfirmClearCacheFragment$1;

    invoke-direct {v3, p0, v1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory$ConfirmClearCacheFragment$1;-><init>(Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory$ConfirmClearCacheFragment;Landroid/content/Context;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 613
    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 615
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method
