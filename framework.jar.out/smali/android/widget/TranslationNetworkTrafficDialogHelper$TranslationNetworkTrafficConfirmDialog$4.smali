.class Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog$4;
.super Ljava/lang/Object;
.source "TranslationNetworkTrafficDialogHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog;->initDialogContentView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog;

.field final synthetic val$checkBox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog;Landroid/widget/CheckBox;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog$4;->this$1:Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog;

    iput-object p2, p0, Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog$4;->val$checkBox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 176
    iget-object v0, p0, Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog$4;->val$checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 177
    iget-object v0, p0, Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog$4;->this$1:Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog;

    iget-object v0, v0, Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog;->this$0:Landroid/widget/TranslationNetworkTrafficDialogHelper;

    # setter for: Landroid/widget/TranslationNetworkTrafficDialogHelper;->isConfirmAlwaysUseNetworkTraffic:Z
    invoke-static {v0, v1}, Landroid/widget/TranslationNetworkTrafficDialogHelper;->access$302(Landroid/widget/TranslationNetworkTrafficDialogHelper;Z)Z

    .line 178
    return-void
.end method
