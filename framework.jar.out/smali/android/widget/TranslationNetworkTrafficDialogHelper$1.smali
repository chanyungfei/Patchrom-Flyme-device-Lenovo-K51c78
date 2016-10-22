.class Landroid/widget/TranslationNetworkTrafficDialogHelper$1;
.super Ljava/lang/Object;
.source "TranslationNetworkTrafficDialogHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TranslationNetworkTrafficDialogHelper;->showNetworkTrafficDialog(Landroid/content/DialogInterface$OnDismissListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TranslationNetworkTrafficDialogHelper;

.field final synthetic val$listener:Landroid/content/DialogInterface$OnDismissListener;


# direct methods
.method constructor <init>(Landroid/widget/TranslationNetworkTrafficDialogHelper;Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Landroid/widget/TranslationNetworkTrafficDialogHelper$1;->this$0:Landroid/widget/TranslationNetworkTrafficDialogHelper;

    iput-object p2, p0, Landroid/widget/TranslationNetworkTrafficDialogHelper$1;->val$listener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 97
    iget-object v0, p0, Landroid/widget/TranslationNetworkTrafficDialogHelper$1;->this$0:Landroid/widget/TranslationNetworkTrafficDialogHelper;

    new-instance v1, Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog;

    iget-object v2, p0, Landroid/widget/TranslationNetworkTrafficDialogHelper$1;->this$0:Landroid/widget/TranslationNetworkTrafficDialogHelper;

    iget-object v3, p0, Landroid/widget/TranslationNetworkTrafficDialogHelper$1;->this$0:Landroid/widget/TranslationNetworkTrafficDialogHelper;

    # getter for: Landroid/widget/TranslationNetworkTrafficDialogHelper;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/widget/TranslationNetworkTrafficDialogHelper;->access$100(Landroid/widget/TranslationNetworkTrafficDialogHelper;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog;-><init>(Landroid/widget/TranslationNetworkTrafficDialogHelper;Landroid/content/Context;)V

    # setter for: Landroid/widget/TranslationNetworkTrafficDialogHelper;->mDialog:Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog;
    invoke-static {v0, v1}, Landroid/widget/TranslationNetworkTrafficDialogHelper;->access$002(Landroid/widget/TranslationNetworkTrafficDialogHelper;Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog;)Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog;

    .line 98
    iget-object v0, p0, Landroid/widget/TranslationNetworkTrafficDialogHelper$1;->this$0:Landroid/widget/TranslationNetworkTrafficDialogHelper;

    iget-object v1, p0, Landroid/widget/TranslationNetworkTrafficDialogHelper$1;->this$0:Landroid/widget/TranslationNetworkTrafficDialogHelper;

    # getter for: Landroid/widget/TranslationNetworkTrafficDialogHelper;->mDialog:Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog;
    invoke-static {v1}, Landroid/widget/TranslationNetworkTrafficDialogHelper;->access$000(Landroid/widget/TranslationNetworkTrafficDialogHelper;)Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog;->getNetworkTrafficWarningDialog()Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog;

    move-result-object v1

    # setter for: Landroid/widget/TranslationNetworkTrafficDialogHelper;->mDialog:Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog;
    invoke-static {v0, v1}, Landroid/widget/TranslationNetworkTrafficDialogHelper;->access$002(Landroid/widget/TranslationNetworkTrafficDialogHelper;Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog;)Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog;

    .line 99
    iget-object v0, p0, Landroid/widget/TranslationNetworkTrafficDialogHelper$1;->this$0:Landroid/widget/TranslationNetworkTrafficDialogHelper;

    # getter for: Landroid/widget/TranslationNetworkTrafficDialogHelper;->mDialog:Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog;
    invoke-static {v0}, Landroid/widget/TranslationNetworkTrafficDialogHelper;->access$000(Landroid/widget/TranslationNetworkTrafficDialogHelper;)Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog;->setCancelable(Z)V

    .line 100
    iget-object v0, p0, Landroid/widget/TranslationNetworkTrafficDialogHelper$1;->this$0:Landroid/widget/TranslationNetworkTrafficDialogHelper;

    # getter for: Landroid/widget/TranslationNetworkTrafficDialogHelper;->mDialog:Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog;
    invoke-static {v0}, Landroid/widget/TranslationNetworkTrafficDialogHelper;->access$000(Landroid/widget/TranslationNetworkTrafficDialogHelper;)Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog;->setCanceledOnTouchOutside(Z)V

    .line 101
    iget-object v0, p0, Landroid/widget/TranslationNetworkTrafficDialogHelper$1;->this$0:Landroid/widget/TranslationNetworkTrafficDialogHelper;

    # getter for: Landroid/widget/TranslationNetworkTrafficDialogHelper;->mDialog:Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog;
    invoke-static {v0}, Landroid/widget/TranslationNetworkTrafficDialogHelper;->access$000(Landroid/widget/TranslationNetworkTrafficDialogHelper;)Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/TranslationNetworkTrafficDialogHelper$1;->val$listener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 102
    iget-object v0, p0, Landroid/widget/TranslationNetworkTrafficDialogHelper$1;->this$0:Landroid/widget/TranslationNetworkTrafficDialogHelper;

    # getter for: Landroid/widget/TranslationNetworkTrafficDialogHelper;->mDialog:Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog;
    invoke-static {v0}, Landroid/widget/TranslationNetworkTrafficDialogHelper;->access$000(Landroid/widget/TranslationNetworkTrafficDialogHelper;)Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog;->show()V

    .line 103
    return-void
.end method
