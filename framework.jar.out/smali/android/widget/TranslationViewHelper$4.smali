.class Landroid/widget/TranslationViewHelper$4;
.super Ljava/lang/Object;
.source "TranslationViewHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TranslationViewHelper;->showTranslateError(II)V
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
    .line 818
    iput-object p1, p0, Landroid/widget/TranslationViewHelper$4;->this$0:Landroid/widget/TranslationViewHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 822
    iget-object v0, p0, Landroid/widget/TranslationViewHelper$4;->this$0:Landroid/widget/TranslationViewHelper;

    iget-object v1, p0, Landroid/widget/TranslationViewHelper$4;->this$0:Landroid/widget/TranslationViewHelper;

    # getter for: Landroid/widget/TranslationViewHelper;->mPendingX:I
    invoke-static {v1}, Landroid/widget/TranslationViewHelper;->access$1200(Landroid/widget/TranslationViewHelper;)I

    move-result v1

    iget-object v2, p0, Landroid/widget/TranslationViewHelper$4;->this$0:Landroid/widget/TranslationViewHelper;

    # getter for: Landroid/widget/TranslationViewHelper;->mPendingY:I
    invoke-static {v2}, Landroid/widget/TranslationViewHelper;->access$1300(Landroid/widget/TranslationViewHelper;)I

    move-result v2

    # invokes: Landroid/widget/TranslationViewHelper;->showTranslatePending(II)V
    invoke-static {v0, v1, v2}, Landroid/widget/TranslationViewHelper;->access$1400(Landroid/widget/TranslationViewHelper;II)V

    .line 823
    iget-object v0, p0, Landroid/widget/TranslationViewHelper$4;->this$0:Landroid/widget/TranslationViewHelper;

    # invokes: Landroid/widget/TranslationViewHelper;->startTranslationQuery()V
    invoke-static {v0}, Landroid/widget/TranslationViewHelper;->access$700(Landroid/widget/TranslationViewHelper;)V

    .line 824
    return-void
.end method
