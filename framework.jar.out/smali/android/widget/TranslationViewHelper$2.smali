.class Landroid/widget/TranslationViewHelper$2;
.super Ljava/lang/Object;
.source "TranslationViewHelper.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TranslationViewHelper;->prepareTranslatePopupWindow(Landroid/widget/PopupWindow;Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TranslationViewHelper;


# direct methods
.method constructor <init>(Landroid/widget/TranslationViewHelper;)V
    .locals 0

    .prologue
    .line 750
    iput-object p1, p0, Landroid/widget/TranslationViewHelper$2;->this$0:Landroid/widget/TranslationViewHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    .line 754
    iget-object v0, p0, Landroid/widget/TranslationViewHelper$2;->this$0:Landroid/widget/TranslationViewHelper;

    const/4 v1, 0x0

    # setter for: Landroid/widget/TranslationViewHelper;->isAllowNetworkTrafficThisTime:Z
    invoke-static {v0, v1}, Landroid/widget/TranslationViewHelper;->access$602(Landroid/widget/TranslationViewHelper;Z)Z

    .line 755
    iget-object v0, p0, Landroid/widget/TranslationViewHelper$2;->this$0:Landroid/widget/TranslationViewHelper;

    # getter for: Landroid/widget/TranslationViewHelper;->mTranslationServiceHelper:Landroid/widget/TranslationViewHelper$TranslationServiceHelper;
    invoke-static {v0}, Landroid/widget/TranslationViewHelper;->access$000(Landroid/widget/TranslationViewHelper;)Landroid/widget/TranslationViewHelper$TranslationServiceHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TranslationViewHelper$TranslationServiceHelper;->isServiceConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 756
    iget-object v0, p0, Landroid/widget/TranslationViewHelper$2;->this$0:Landroid/widget/TranslationViewHelper;

    # getter for: Landroid/widget/TranslationViewHelper;->mTranslationServiceHelper:Landroid/widget/TranslationViewHelper$TranslationServiceHelper;
    invoke-static {v0}, Landroid/widget/TranslationViewHelper;->access$000(Landroid/widget/TranslationViewHelper;)Landroid/widget/TranslationViewHelper$TranslationServiceHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TranslationViewHelper$TranslationServiceHelper;->disconnectService()V

    .line 759
    :cond_0
    iget-object v0, p0, Landroid/widget/TranslationViewHelper$2;->this$0:Landroid/widget/TranslationViewHelper;

    # getter for: Landroid/widget/TranslationViewHelper;->mDismissListenerOuter:Landroid/widget/PopupWindow$OnDismissListener;
    invoke-static {v0}, Landroid/widget/TranslationViewHelper;->access$1100(Landroid/widget/TranslationViewHelper;)Landroid/widget/PopupWindow$OnDismissListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 760
    iget-object v0, p0, Landroid/widget/TranslationViewHelper$2;->this$0:Landroid/widget/TranslationViewHelper;

    # getter for: Landroid/widget/TranslationViewHelper;->mDismissListenerOuter:Landroid/widget/PopupWindow$OnDismissListener;
    invoke-static {v0}, Landroid/widget/TranslationViewHelper;->access$1100(Landroid/widget/TranslationViewHelper;)Landroid/widget/PopupWindow$OnDismissListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    .line 762
    :cond_1
    return-void
.end method
