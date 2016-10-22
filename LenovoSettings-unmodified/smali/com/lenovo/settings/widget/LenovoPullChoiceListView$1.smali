.class Lcom/lenovo/settings/widget/LenovoPullChoiceListView$1;
.super Ljava/lang/Object;
.source "LenovoPullChoiceListView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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
    .line 446
    iput-object p1, p0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView$1;->this$0:Lcom/lenovo/settings/widget/LenovoPullChoiceListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 10
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    const/16 v5, 0x10

    const/high16 v9, 0x41000000    # 8.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f000000    # 0.5f

    .line 450
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 451
    .local v0, "currentHeight":I
    int-to-float v4, v0

    iget-object v7, p0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView$1;->this$0:Lcom/lenovo/settings/widget/LenovoPullChoiceListView;

    # getter for: Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mHeadContentHeight:I
    invoke-static {v7}, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->access$000(Lcom/lenovo/settings/widget/LenovoPullChoiceListView;)I

    move-result v7

    int-to-float v7, v7

    div-float v2, v4, v7

    .line 452
    .local v2, "fCurrentTextSizeScale":F
    mul-float v4, v2, v9

    add-float/2addr v4, v9

    float-to-int v3, v4

    .line 454
    .local v3, "nCurrentTextSize":I
    if-le v3, v5, :cond_0

    move v3, v5

    .line 456
    :cond_0
    iget-object v4, p0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView$1;->this$0:Lcom/lenovo/settings/widget/LenovoPullChoiceListView;

    # getter for: Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mHeadTextView:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->access$100(Lcom/lenovo/settings/widget/LenovoPullChoiceListView;)Landroid/widget/TextView;

    move-result-object v4

    const/4 v5, 0x2

    int-to-float v7, v3

    invoke-virtual {v4, v5, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 457
    iget-object v4, p0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView$1;->this$0:Lcom/lenovo/settings/widget/LenovoPullChoiceListView;

    # invokes: Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->setHeaderViewHeight(I)V
    invoke-static {v4, v0}, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->access$200(Lcom/lenovo/settings/widget/LenovoPullChoiceListView;I)V

    .line 458
    mul-float v4, v2, v8

    add-float v1, v8, v4

    .line 459
    .local v1, "fAlapha":F
    cmpl-float v4, v1, v6

    if-lez v4, :cond_1

    move v1, v6

    .line 460
    :cond_1
    const-string v4, "pudding"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "currentHeight:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "nCurrentTextSize:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "fAlapha:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    iget-object v4, p0, Lcom/lenovo/settings/widget/LenovoPullChoiceListView$1;->this$0:Lcom/lenovo/settings/widget/LenovoPullChoiceListView;

    # getter for: Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->mHeadTextView:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/lenovo/settings/widget/LenovoPullChoiceListView;->access$100(Lcom/lenovo/settings/widget/LenovoPullChoiceListView;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 463
    return-void
.end method
