.class Lcom/lenovo/internal/widget/ToolbarWidgetWrapper$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ToolbarWidgetWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->animateToVisibility(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCanceled:Z

.field final synthetic this$0:Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;


# direct methods
.method constructor <init>(Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;)V
    .locals 1

    .prologue
    .line 611
    iput-object p1, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper$2;->this$0:Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 612
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper$2;->mCanceled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 622
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper$2;->mCanceled:Z

    .line 623
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 615
    iget-boolean v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper$2;->mCanceled:Z

    if-nez v0, :cond_0

    .line 616
    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper$2;->this$0:Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;

    # getter for: Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;
    invoke-static {v0}, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->access$000(Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;)Llenovo/widget/Toolbar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Llenovo/widget/Toolbar;->setVisibility(I)V

    .line 618
    :cond_0
    return-void
.end method
