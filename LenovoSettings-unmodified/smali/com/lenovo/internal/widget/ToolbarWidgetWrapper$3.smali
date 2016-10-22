.class Lcom/lenovo/internal/widget/ToolbarWidgetWrapper$3;
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
.field final synthetic this$0:Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;


# direct methods
.method constructor <init>(Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;)V
    .locals 0

    .prologue
    .line 627
    iput-object p1, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper$3;->this$0:Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 630
    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper$3;->this$0:Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;

    # getter for: Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;
    invoke-static {v0}, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->access$000(Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;)Llenovo/widget/Toolbar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Llenovo/widget/Toolbar;->setVisibility(I)V

    .line 631
    return-void
.end method
