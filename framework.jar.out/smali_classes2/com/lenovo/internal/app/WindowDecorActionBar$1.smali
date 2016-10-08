.class Lcom/lenovo/internal/app/WindowDecorActionBar$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "WindowDecorActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/internal/app/WindowDecorActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/internal/app/WindowDecorActionBar;


# direct methods
.method constructor <init>(Lcom/lenovo/internal/app/WindowDecorActionBar;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$1;->this$0:Lcom/lenovo/internal/app/WindowDecorActionBar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 155
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$1;->this$0:Lcom/lenovo/internal/app/WindowDecorActionBar;

    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar;->mContentAnimations:Z
    invoke-static {v0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->access$000(Lcom/lenovo/internal/app/WindowDecorActionBar;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$1;->this$0:Lcom/lenovo/internal/app/WindowDecorActionBar;

    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar;->mContentView:Landroid/view/View;
    invoke-static {v0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->access$100(Lcom/lenovo/internal/app/WindowDecorActionBar;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$1;->this$0:Lcom/lenovo/internal/app/WindowDecorActionBar;

    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar;->mContentView:Landroid/view/View;
    invoke-static {v0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->access$100(Lcom/lenovo/internal/app/WindowDecorActionBar;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 157
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$1;->this$0:Lcom/lenovo/internal/app/WindowDecorActionBar;

    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar;->mContainerView:Lcom/lenovo/internal/widget/ActionBarContainer;
    invoke-static {v0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->access$200(Lcom/lenovo/internal/app/WindowDecorActionBar;)Lcom/lenovo/internal/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lenovo/internal/widget/ActionBarContainer;->setTranslationY(F)V

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$1;->this$0:Lcom/lenovo/internal/app/WindowDecorActionBar;

    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar;->mSplitView:Lcom/lenovo/internal/widget/ActionBarContainer;
    invoke-static {v0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->access$300(Lcom/lenovo/internal/app/WindowDecorActionBar;)Lcom/lenovo/internal/widget/ActionBarContainer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$1;->this$0:Lcom/lenovo/internal/app/WindowDecorActionBar;

    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar;->mContextDisplayMode:I
    invoke-static {v0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->access$400(Lcom/lenovo/internal/app/WindowDecorActionBar;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 164
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$1;->this$0:Lcom/lenovo/internal/app/WindowDecorActionBar;

    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar;->mSplitView:Lcom/lenovo/internal/widget/ActionBarContainer;
    invoke-static {v0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->access$300(Lcom/lenovo/internal/app/WindowDecorActionBar;)Lcom/lenovo/internal/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/lenovo/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$1;->this$0:Lcom/lenovo/internal/app/WindowDecorActionBar;

    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar;->mContainerView:Lcom/lenovo/internal/widget/ActionBarContainer;
    invoke-static {v0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->access$200(Lcom/lenovo/internal/app/WindowDecorActionBar;)Lcom/lenovo/internal/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/lenovo/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 167
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$1;->this$0:Lcom/lenovo/internal/app/WindowDecorActionBar;

    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar;->mContainerView:Lcom/lenovo/internal/widget/ActionBarContainer;
    invoke-static {v0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->access$200(Lcom/lenovo/internal/app/WindowDecorActionBar;)Lcom/lenovo/internal/widget/ActionBarContainer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/internal/widget/ActionBarContainer;->setTransitioning(Z)V

    .line 168
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$1;->this$0:Lcom/lenovo/internal/app/WindowDecorActionBar;

    const/4 v1, 0x0

    # setter for: Lcom/lenovo/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/animation/Animator;
    invoke-static {v0, v1}, Lcom/lenovo/internal/app/WindowDecorActionBar;->access$502(Lcom/lenovo/internal/app/WindowDecorActionBar;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 169
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$1;->this$0:Lcom/lenovo/internal/app/WindowDecorActionBar;

    invoke-virtual {v0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->completeDeferredDestroyActionMode()V

    .line 170
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$1;->this$0:Lcom/lenovo/internal/app/WindowDecorActionBar;

    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;
    invoke-static {v0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->access$600(Lcom/lenovo/internal/app/WindowDecorActionBar;)Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 176
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$1;->this$0:Lcom/lenovo/internal/app/WindowDecorActionBar;

    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;
    invoke-static {v0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->access$600(Lcom/lenovo/internal/app/WindowDecorActionBar;)Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/internal/widget/ViewUtils;->requestApplyInsets(Landroid/view/View;)V

    .line 178
    :cond_2
    return-void
.end method
