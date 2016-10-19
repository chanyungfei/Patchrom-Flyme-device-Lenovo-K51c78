.class Landroid/widget/TranslationViewHelper$1$1;
.super Ljava/lang/Object;
.source "TranslationViewHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TranslationViewHelper$1;->showNetworkTrafficWarning()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/TranslationViewHelper$1;


# direct methods
.method constructor <init>(Landroid/widget/TranslationViewHelper$1;)V
    .locals 0

    .prologue
    .line 475
    iput-object p1, p0, Landroid/widget/TranslationViewHelper$1$1;->this$1:Landroid/widget/TranslationViewHelper$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 479
    check-cast p1, Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog;

    .end local p1    # "dialog":Landroid/content/DialogInterface;
    invoke-virtual {p1}, Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog;->isPositiveButtonClicked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 481
    iget-object v0, p0, Landroid/widget/TranslationViewHelper$1$1;->this$1:Landroid/widget/TranslationViewHelper$1;

    iget-object v0, v0, Landroid/widget/TranslationViewHelper$1;->this$0:Landroid/widget/TranslationViewHelper;

    const/4 v1, 0x1

    # setter for: Landroid/widget/TranslationViewHelper;->isAllowNetworkTrafficThisTime:Z
    invoke-static {v0, v1}, Landroid/widget/TranslationViewHelper;->access$602(Landroid/widget/TranslationViewHelper;Z)Z

    .line 482
    iget-object v0, p0, Landroid/widget/TranslationViewHelper$1$1;->this$1:Landroid/widget/TranslationViewHelper$1;

    iget-object v0, v0, Landroid/widget/TranslationViewHelper$1;->this$0:Landroid/widget/TranslationViewHelper;

    # getter for: Landroid/widget/TranslationViewHelper;->mTranslationServiceHelper:Landroid/widget/TranslationViewHelper$TranslationServiceHelper;
    invoke-static {v0}, Landroid/widget/TranslationViewHelper;->access$000(Landroid/widget/TranslationViewHelper;)Landroid/widget/TranslationViewHelper$TranslationServiceHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TranslationViewHelper$TranslationServiceHelper;->isServiceConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Landroid/widget/TranslationViewHelper$1$1;->this$1:Landroid/widget/TranslationViewHelper$1;

    iget-object v0, v0, Landroid/widget/TranslationViewHelper$1;->this$0:Landroid/widget/TranslationViewHelper;

    # getter for: Landroid/widget/TranslationViewHelper;->mTranslationServiceHelper:Landroid/widget/TranslationViewHelper$TranslationServiceHelper;
    invoke-static {v0}, Landroid/widget/TranslationViewHelper;->access$000(Landroid/widget/TranslationViewHelper;)Landroid/widget/TranslationViewHelper$TranslationServiceHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TranslationViewHelper$TranslationServiceHelper;->getNetworkTrafficConfirmedStateFromRemoteService()V

    .line 485
    :cond_0
    iget-object v0, p0, Landroid/widget/TranslationViewHelper$1$1;->this$1:Landroid/widget/TranslationViewHelper$1;

    iget-object v0, v0, Landroid/widget/TranslationViewHelper$1;->this$0:Landroid/widget/TranslationViewHelper;

    # invokes: Landroid/widget/TranslationViewHelper;->startTranslationQuery()V
    invoke-static {v0}, Landroid/widget/TranslationViewHelper;->access$700(Landroid/widget/TranslationViewHelper;)V

    .line 490
    :goto_0
    return-void

    .line 487
    :cond_1
    iget-object v0, p0, Landroid/widget/TranslationViewHelper$1$1;->this$1:Landroid/widget/TranslationViewHelper$1;

    iget-object v0, v0, Landroid/widget/TranslationViewHelper$1;->this$0:Landroid/widget/TranslationViewHelper;

    const/4 v1, 0x0

    # setter for: Landroid/widget/TranslationViewHelper;->isAllowNetworkTrafficThisTime:Z
    invoke-static {v0, v1}, Landroid/widget/TranslationViewHelper;->access$602(Landroid/widget/TranslationViewHelper;Z)Z

    .line 488
    iget-object v0, p0, Landroid/widget/TranslationViewHelper$1$1;->this$1:Landroid/widget/TranslationViewHelper$1;

    iget-object v0, v0, Landroid/widget/TranslationViewHelper$1;->this$0:Landroid/widget/TranslationViewHelper;

    invoke-virtual {v0}, Landroid/widget/TranslationViewHelper;->dismissTranslatePopupWindow()V

    goto :goto_0
.end method
