.class Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog$3;
.super Ljava/lang/Object;
.source "TranslationNetworkTrafficDialogHelper.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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


# direct methods
.method constructor <init>(Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog$3;->this$1:Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 169
    iget-object v0, p0, Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog$3;->this$1:Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog;

    iget-object v0, v0, Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog;->this$0:Landroid/widget/TranslationNetworkTrafficDialogHelper;

    # setter for: Landroid/widget/TranslationNetworkTrafficDialogHelper;->isConfirmAlwaysUseNetworkTraffic:Z
    invoke-static {v0, p2}, Landroid/widget/TranslationNetworkTrafficDialogHelper;->access$302(Landroid/widget/TranslationNetworkTrafficDialogHelper;Z)Z

    .line 170
    return-void
.end method
