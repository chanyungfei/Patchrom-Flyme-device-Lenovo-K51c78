.class Lcom/lenovo/settings/widget/LenovoPullChoiceListView$2;
.super Ljava/lang/Object;
.source "LenovoPullChoiceListView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->recoveryToBack(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/settings/widget/LenovoPullChoiceListView;


# direct methods
.method constructor <init>(Lcom/lenovo/settings/widget/LenovoPullChoiceListView;)V
    .locals 0

    .prologue
    .line 466
    iput-object p1, p0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView$2;->this$0:Lcom/lenovo/settings/widget/LenovoPullChoiceListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 489
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 478
    iget-object v0, p0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView$2;->this$0:Lcom/lenovo/settings/widget/LenovoPullChoiceListView;

    # getter for: Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mState:I
    invoke-static {v0}, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->access$300(Lcom/lenovo/settings/widget/LenovoPullChoiceListView;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 479
    iget-object v0, p0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView$2;->this$0:Lcom/lenovo/settings/widget/LenovoPullChoiceListView;

    # invokes: Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->onRefresh()V
    invoke-static {v0}, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->access$400(Lcom/lenovo/settings/widget/LenovoPullChoiceListView;)V

    .line 484
    :goto_0
    iget-object v0, p0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView$2;->this$0:Lcom/lenovo/settings/widget/LenovoPullChoiceListView;

    # getter for: Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mHeadTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->access$100(Lcom/lenovo/settings/widget/LenovoPullChoiceListView;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 485
    return-void

    .line 481
    :cond_0
    iget-object v0, p0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView$2;->this$0:Lcom/lenovo/settings/widget/LenovoPullChoiceListView;

    const/4 v1, 0x3

    # setter for: Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mState:I
    invoke-static {v0, v1}, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->access$302(Lcom/lenovo/settings/widget/LenovoPullChoiceListView;I)I

    .line 482
    iget-object v0, p0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView$2;->this$0:Lcom/lenovo/settings/widget/LenovoPullChoiceListView;

    # invokes: Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->changeHeaderViewByState()V
    invoke-static {v0}, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->access$500(Lcom/lenovo/settings/widget/LenovoPullChoiceListView;)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 474
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 470
    return-void
.end method
