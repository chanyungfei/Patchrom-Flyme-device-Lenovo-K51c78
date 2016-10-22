.class Landroid/widget/TranslationViewHelper$5$1;
.super Ljava/lang/Object;
.source "TranslationViewHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TranslationViewHelper$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/TranslationViewHelper$5;


# direct methods
.method constructor <init>(Landroid/widget/TranslationViewHelper$5;)V
    .locals 0

    .prologue
    .line 947
    iput-object p1, p0, Landroid/widget/TranslationViewHelper$5$1;->this$1:Landroid/widget/TranslationViewHelper$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 951
    iget-object v0, p0, Landroid/widget/TranslationViewHelper$5$1;->this$1:Landroid/widget/TranslationViewHelper$5;

    iget-object v0, v0, Landroid/widget/TranslationViewHelper$5;->this$0:Landroid/widget/TranslationViewHelper;

    # getter for: Landroid/widget/TranslationViewHelper;->mTranslatePopupWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Landroid/widget/TranslationViewHelper;->access$1500(Landroid/widget/TranslationViewHelper;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TranslationViewHelper$5$1;->this$1:Landroid/widget/TranslationViewHelper$5;

    iget-object v0, v0, Landroid/widget/TranslationViewHelper$5;->this$0:Landroid/widget/TranslationViewHelper;

    # getter for: Landroid/widget/TranslationViewHelper;->mTranslatePopupWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Landroid/widget/TranslationViewHelper;->access$1500(Landroid/widget/TranslationViewHelper;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 952
    iget-object v0, p0, Landroid/widget/TranslationViewHelper$5$1;->this$1:Landroid/widget/TranslationViewHelper$5;

    iget-object v0, v0, Landroid/widget/TranslationViewHelper$5;->this$0:Landroid/widget/TranslationViewHelper;

    iget-object v1, p0, Landroid/widget/TranslationViewHelper$5$1;->this$1:Landroid/widget/TranslationViewHelper$5;

    iget-object v1, v1, Landroid/widget/TranslationViewHelper$5;->this$0:Landroid/widget/TranslationViewHelper;

    # getter for: Landroid/widget/TranslationViewHelper;->mErrorX:I
    invoke-static {v1}, Landroid/widget/TranslationViewHelper;->access$1600(Landroid/widget/TranslationViewHelper;)I

    move-result v1

    iget-object v2, p0, Landroid/widget/TranslationViewHelper$5$1;->this$1:Landroid/widget/TranslationViewHelper$5;

    iget-object v2, v2, Landroid/widget/TranslationViewHelper$5;->this$0:Landroid/widget/TranslationViewHelper;

    # getter for: Landroid/widget/TranslationViewHelper;->mErrorY:I
    invoke-static {v2}, Landroid/widget/TranslationViewHelper;->access$1700(Landroid/widget/TranslationViewHelper;)I

    move-result v2

    # invokes: Landroid/widget/TranslationViewHelper;->showTranslateError(II)V
    invoke-static {v0, v1, v2}, Landroid/widget/TranslationViewHelper;->access$1800(Landroid/widget/TranslationViewHelper;II)V

    .line 954
    :cond_0
    return-void
.end method
