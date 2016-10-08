.class Lcom/lenovo/component/contexturalappbar/CABContentLayout$7;
.super Ljava/lang/Object;
.source "CABContentLayout.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/component/contexturalappbar/CABContentLayout;->showMoreAnimation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/component/contexturalappbar/CABContentLayout;


# direct methods
.method constructor <init>(Lcom/lenovo/component/contexturalappbar/CABContentLayout;)V
    .locals 0

    .prologue
    .line 515
    iput-object p1, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout$7;->this$0:Lcom/lenovo/component/contexturalappbar/CABContentLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 517
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout$7;->this$0:Lcom/lenovo/component/contexturalappbar/CABContentLayout;

    const/4 v1, 0x0

    # setter for: Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mIsAnimatoring:Z
    invoke-static {v0, v1}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->access$202(Lcom/lenovo/component/contexturalappbar/CABContentLayout;Z)Z

    .line 518
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 521
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout$7;->this$0:Lcom/lenovo/component/contexturalappbar/CABContentLayout;

    const/4 v1, 0x0

    # setter for: Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mIsAnimatoring:Z
    invoke-static {v0, v1}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->access$202(Lcom/lenovo/component/contexturalappbar/CABContentLayout;Z)Z

    .line 522
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 526
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 529
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout$7;->this$0:Lcom/lenovo/component/contexturalappbar/CABContentLayout;

    const/4 v1, 0x1

    # setter for: Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mIsAnimatoring:Z
    invoke-static {v0, v1}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->access$202(Lcom/lenovo/component/contexturalappbar/CABContentLayout;Z)Z

    .line 530
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout$7;->this$0:Lcom/lenovo/component/contexturalappbar/CABContentLayout;

    # getter for: Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mBottomCommonView:Lcom/lenovo/component/contexturalappbar/CABLinearLayout;
    invoke-static {v0}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->access$400(Lcom/lenovo/component/contexturalappbar/CABContentLayout;)Lcom/lenovo/component/contexturalappbar/CABLinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/lenovo/component/contexturalappbar/CABLinearLayout;->setVisibility(I)V

    .line 531
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout$7;->this$0:Lcom/lenovo/component/contexturalappbar/CABContentLayout;

    # getter for: Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mBottomMoreView:Landroid/widget/ScrollView;
    invoke-static {v0}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->access$500(Lcom/lenovo/component/contexturalappbar/CABContentLayout;)Landroid/widget/ScrollView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 532
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout$7;->this$0:Lcom/lenovo/component/contexturalappbar/CABContentLayout;

    # invokes: Lcom/lenovo/component/contexturalappbar/CABContentLayout;->imageRotation(I)V
    invoke-static {v0, v2}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->access$600(Lcom/lenovo/component/contexturalappbar/CABContentLayout;I)V

    .line 533
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout$7;->this$0:Lcom/lenovo/component/contexturalappbar/CABContentLayout;

    # invokes: Lcom/lenovo/component/contexturalappbar/CABContentLayout;->showMaskView()V
    invoke-static {v0}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->access$700(Lcom/lenovo/component/contexturalappbar/CABContentLayout;)V

    .line 534
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout$7;->this$0:Lcom/lenovo/component/contexturalappbar/CABContentLayout;

    # getter for: Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mDimView:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->access$800(Lcom/lenovo/component/contexturalappbar/CABContentLayout;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 535
    return-void
.end method
