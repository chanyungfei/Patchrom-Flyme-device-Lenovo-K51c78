.class Lcom/lenovo/internal/app/WindowDecorActionBar$2;
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
    .line 180
    iput-object p1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$2;->this$0:Lcom/lenovo/internal/app/WindowDecorActionBar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$2;->this$0:Lcom/lenovo/internal/app/WindowDecorActionBar;

    const/4 v1, 0x0

    # setter for: Lcom/lenovo/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/animation/Animator;
    invoke-static {v0, v1}, Lcom/lenovo/internal/app/WindowDecorActionBar;->access$502(Lcom/lenovo/internal/app/WindowDecorActionBar;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 184
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$2;->this$0:Lcom/lenovo/internal/app/WindowDecorActionBar;

    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar;->mContainerView:Lcom/lenovo/internal/widget/ActionBarContainer;
    invoke-static {v0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->access$200(Lcom/lenovo/internal/app/WindowDecorActionBar;)Lcom/lenovo/internal/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/internal/widget/ActionBarContainer;->requestLayout()V

    .line 185
    return-void
.end method
