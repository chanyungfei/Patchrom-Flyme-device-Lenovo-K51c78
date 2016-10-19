.class Landroid/widget/TranslationViewHelper$3;
.super Ljava/lang/Object;
.source "TranslationViewHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TranslationViewHelper;->prepareTranslateResultView()V
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
    .line 784
    iput-object p1, p0, Landroid/widget/TranslationViewHelper$3;->this$0:Landroid/widget/TranslationViewHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 788
    iget-object v0, p0, Landroid/widget/TranslationViewHelper$3;->this$0:Landroid/widget/TranslationViewHelper;

    # getter for: Landroid/widget/TranslationViewHelper;->mTranslationServiceHelper:Landroid/widget/TranslationViewHelper$TranslationServiceHelper;
    invoke-static {v0}, Landroid/widget/TranslationViewHelper;->access$000(Landroid/widget/TranslationViewHelper;)Landroid/widget/TranslationViewHelper$TranslationServiceHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TranslationViewHelper$TranslationServiceHelper;->isServiceConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 790
    iget-object v0, p0, Landroid/widget/TranslationViewHelper$3;->this$0:Landroid/widget/TranslationViewHelper;

    # getter for: Landroid/widget/TranslationViewHelper;->mTranslationServiceHelper:Landroid/widget/TranslationViewHelper$TranslationServiceHelper;
    invoke-static {v0}, Landroid/widget/TranslationViewHelper;->access$000(Landroid/widget/TranslationViewHelper;)Landroid/widget/TranslationViewHelper$TranslationServiceHelper;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/TranslationViewHelper$3;->this$0:Landroid/widget/TranslationViewHelper;

    # getter for: Landroid/widget/TranslationViewHelper;->mWordToTranslate:Ljava/lang/String;
    invoke-static {v1}, Landroid/widget/TranslationViewHelper;->access$800(Landroid/widget/TranslationViewHelper;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TranslationViewHelper$TranslationServiceHelper;->startTranslationApp(Ljava/lang/String;)V

    .line 792
    :cond_0
    return-void
.end method
