.class Landroid/widget/TranslationViewHelper$6$1;
.super Ljava/lang/Object;
.source "TranslationViewHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TranslationViewHelper$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/TranslationViewHelper$6;


# direct methods
.method constructor <init>(Landroid/widget/TranslationViewHelper$6;)V
    .locals 0

    .prologue
    .line 971
    iput-object p1, p0, Landroid/widget/TranslationViewHelper$6$1;->this$1:Landroid/widget/TranslationViewHelper$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 975
    iget-object v0, p0, Landroid/widget/TranslationViewHelper$6$1;->this$1:Landroid/widget/TranslationViewHelper$6;

    iget-object v0, v0, Landroid/widget/TranslationViewHelper$6;->this$0:Landroid/widget/TranslationViewHelper;

    # getter for: Landroid/widget/TranslationViewHelper;->mTranslatePopupWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Landroid/widget/TranslationViewHelper;->access$1500(Landroid/widget/TranslationViewHelper;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TranslationViewHelper$6$1;->this$1:Landroid/widget/TranslationViewHelper$6;

    iget-object v0, v0, Landroid/widget/TranslationViewHelper$6;->this$0:Landroid/widget/TranslationViewHelper;

    # getter for: Landroid/widget/TranslationViewHelper;->mTranslatePopupWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Landroid/widget/TranslationViewHelper;->access$1500(Landroid/widget/TranslationViewHelper;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 976
    iget-object v0, p0, Landroid/widget/TranslationViewHelper$6$1;->this$1:Landroid/widget/TranslationViewHelper$6;

    iget-object v0, v0, Landroid/widget/TranslationViewHelper$6;->this$0:Landroid/widget/TranslationViewHelper;

    # invokes: Landroid/widget/TranslationViewHelper;->showTranslateResult()V
    invoke-static {v0}, Landroid/widget/TranslationViewHelper;->access$1900(Landroid/widget/TranslationViewHelper;)V

    .line 978
    :cond_0
    return-void
.end method
