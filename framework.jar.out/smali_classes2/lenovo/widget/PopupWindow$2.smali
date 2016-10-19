.class Llenovo/widget/PopupWindow$2;
.super Ljava/lang/Object;
.source "PopupWindow.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llenovo/widget/PopupWindow;->preparePopup(Landroid/view/WindowManager$LayoutParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llenovo/widget/PopupWindow;


# direct methods
.method constructor <init>(Llenovo/widget/PopupWindow;)V
    .locals 0

    .prologue
    .line 1016
    iput-object p1, p0, Llenovo/widget/PopupWindow$2;->this$0:Llenovo/widget/PopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1029
    iget-object v0, p0, Llenovo/widget/PopupWindow$2;->this$0:Llenovo/widget/PopupWindow;

    const/4 v1, 0x1

    iput-boolean v1, v0, Llenovo/widget/PopupWindow;->mAnimationEnterFinish:Z

    .line 1030
    iget-object v0, p0, Llenovo/widget/PopupWindow$2;->this$0:Llenovo/widget/PopupWindow;

    const/4 v1, 0x0

    iput-boolean v1, v0, Llenovo/widget/PopupWindow;->mAnimationDuing:Z

    .line 1031
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1025
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1020
    iget-object v0, p0, Llenovo/widget/PopupWindow$2;->this$0:Llenovo/widget/PopupWindow;

    const/4 v1, 0x1

    iput-boolean v1, v0, Llenovo/widget/PopupWindow;->mAnimationDuing:Z

    .line 1021
    return-void
.end method
