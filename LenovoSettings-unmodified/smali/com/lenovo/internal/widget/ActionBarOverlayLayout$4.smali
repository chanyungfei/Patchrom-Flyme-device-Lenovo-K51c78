.class Lcom/lenovo/internal/widget/ActionBarOverlayLayout$4;
.super Ljava/lang/Object;
.source "ActionBarOverlayLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/internal/widget/ActionBarOverlayLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;


# direct methods
.method constructor <init>(Lcom/lenovo/internal/widget/ActionBarOverlayLayout;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout$4;->this$0:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 139
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout$4;->this$0:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    # invokes: Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V
    invoke-static {v0}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->access$300(Lcom/lenovo/internal/widget/ActionBarOverlayLayout;)V

    .line 140
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout$4;->this$0:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout$4;->this$0:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    # getter for: Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/lenovo/internal/widget/ActionBarContainer;
    invoke-static {v1}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->access$500(Lcom/lenovo/internal/widget/ActionBarOverlayLayout;)Lcom/lenovo/internal/widget/ActionBarContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/internal/widget/ActionBarContainer;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout$4;->this$0:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    # getter for: Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/lenovo/internal/widget/ActionBarContainer;
    invoke-static {v2}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->access$500(Lcom/lenovo/internal/widget/ActionBarOverlayLayout;)Lcom/lenovo/internal/widget/ActionBarContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/internal/widget/ActionBarContainer;->getHeight()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout$4;->this$0:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    # getter for: Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mTopAnimatorListener:Landroid/animation/Animator$AnimatorListener;
    invoke-static {v2}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->access$400(Lcom/lenovo/internal/widget/ActionBarOverlayLayout;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    # setter for: Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mCurrentActionBarTopAnimator:Landroid/view/ViewPropertyAnimator;
    invoke-static {v0, v1}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->access$002(Lcom/lenovo/internal/widget/ActionBarOverlayLayout;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;

    .line 143
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout$4;->this$0:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    # getter for: Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/lenovo/internal/widget/ActionBarContainer;
    invoke-static {v0}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->access$600(Lcom/lenovo/internal/widget/ActionBarOverlayLayout;)Lcom/lenovo/internal/widget/ActionBarContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout$4;->this$0:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    # getter for: Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/lenovo/internal/widget/ActionBarContainer;
    invoke-static {v0}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->access$600(Lcom/lenovo/internal/widget/ActionBarOverlayLayout;)Lcom/lenovo/internal/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 144
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout$4;->this$0:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout$4;->this$0:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    # getter for: Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/lenovo/internal/widget/ActionBarContainer;
    invoke-static {v1}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->access$600(Lcom/lenovo/internal/widget/ActionBarOverlayLayout;)Lcom/lenovo/internal/widget/ActionBarContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/internal/widget/ActionBarContainer;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout$4;->this$0:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    # getter for: Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/lenovo/internal/widget/ActionBarContainer;
    invoke-static {v2}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->access$600(Lcom/lenovo/internal/widget/ActionBarOverlayLayout;)Lcom/lenovo/internal/widget/ActionBarContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/internal/widget/ActionBarContainer;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout$4;->this$0:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    # getter for: Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mBottomAnimatorListener:Landroid/animation/Animator$AnimatorListener;
    invoke-static {v2}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->access$700(Lcom/lenovo/internal/widget/ActionBarOverlayLayout;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    # setter for: Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mCurrentActionBarBottomAnimator:Landroid/view/ViewPropertyAnimator;
    invoke-static {v0, v1}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->access$202(Lcom/lenovo/internal/widget/ActionBarOverlayLayout;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;

    .line 148
    :cond_0
    return-void
.end method
