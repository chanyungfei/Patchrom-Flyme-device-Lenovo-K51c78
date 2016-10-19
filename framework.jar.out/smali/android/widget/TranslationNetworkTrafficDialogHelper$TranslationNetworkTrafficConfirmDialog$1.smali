.class Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog$1;
.super Ljava/lang/Object;
.source "TranslationNetworkTrafficDialogHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog;->getNetworkTrafficWarningDialog()Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog;


# direct methods
.method constructor <init>(Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog$1;->this$1:Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v1, 0x1

    .line 135
    iget-object v2, p0, Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog$1;->this$1:Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog;

    iget-object v2, v2, Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog;->this$0:Landroid/widget/TranslationNetworkTrafficDialogHelper;

    # getter for: Landroid/widget/TranslationNetworkTrafficDialogHelper;->isConfirmAlwaysUseNetworkTraffic:Z
    invoke-static {v2}, Landroid/widget/TranslationNetworkTrafficDialogHelper;->access$300(Landroid/widget/TranslationNetworkTrafficDialogHelper;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0x1000

    .line 136
    .local v0, "confirmState":I
    :goto_0
    iget-object v2, p0, Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog$1;->this$1:Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog;

    iget-object v2, v2, Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog;->this$0:Landroid/widget/TranslationNetworkTrafficDialogHelper;

    # getter for: Landroid/widget/TranslationNetworkTrafficDialogHelper;->mTranslationServiceHelper:Landroid/widget/TranslationViewHelper$TranslationServiceHelper;
    invoke-static {v2}, Landroid/widget/TranslationNetworkTrafficDialogHelper;->access$400(Landroid/widget/TranslationNetworkTrafficDialogHelper;)Landroid/widget/TranslationViewHelper$TranslationServiceHelper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TranslationViewHelper$TranslationServiceHelper;->isServiceConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 137
    iget-object v2, p0, Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog$1;->this$1:Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog;

    iget-object v2, v2, Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog;->this$0:Landroid/widget/TranslationNetworkTrafficDialogHelper;

    # getter for: Landroid/widget/TranslationNetworkTrafficDialogHelper;->mTranslationServiceHelper:Landroid/widget/TranslationViewHelper$TranslationServiceHelper;
    invoke-static {v2}, Landroid/widget/TranslationNetworkTrafficDialogHelper;->access$400(Landroid/widget/TranslationNetworkTrafficDialogHelper;)Landroid/widget/TranslationViewHelper$TranslationServiceHelper;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TranslationViewHelper$TranslationServiceHelper;->setNetworkTrafficWarningConfirmState(I)V

    .line 139
    :cond_0
    iget-object v2, p0, Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog$1;->this$1:Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog;

    # setter for: Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog;->isPositiveButtonClickedWhenDismiss:Z
    invoke-static {v2, v1}, Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog;->access$502(Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog;Z)Z

    .line 140
    iget-object v1, p0, Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog$1;->this$1:Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog;

    invoke-virtual {v1}, Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog;->dismiss()V

    .line 141
    return-void

    .end local v0    # "confirmState":I
    :cond_1
    move v0, v1

    .line 135
    goto :goto_0
.end method
