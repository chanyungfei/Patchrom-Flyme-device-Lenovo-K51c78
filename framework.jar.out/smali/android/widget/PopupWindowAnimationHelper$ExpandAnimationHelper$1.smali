.class Landroid/widget/PopupWindowAnimationHelper$ExpandAnimationHelper$1;
.super Ljava/lang/Object;
.source "PopupWindowAnimationHelper.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/PopupWindowAnimationHelper$ExpandAnimationHelper;->setupAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/PopupWindowAnimationHelper$ExpandAnimationHelper;


# direct methods
.method constructor <init>(Landroid/widget/PopupWindowAnimationHelper$ExpandAnimationHelper;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Landroid/widget/PopupWindowAnimationHelper$ExpandAnimationHelper$1;->this$1:Landroid/widget/PopupWindowAnimationHelper$ExpandAnimationHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 210
    iget-object v0, p0, Landroid/widget/PopupWindowAnimationHelper$ExpandAnimationHelper$1;->this$1:Landroid/widget/PopupWindowAnimationHelper$ExpandAnimationHelper;

    # invokes: Landroid/widget/PopupWindowAnimationHelper$ExpandAnimationHelper;->onAnimationEnd()V
    invoke-static {v0}, Landroid/widget/PopupWindowAnimationHelper$ExpandAnimationHelper;->access$400(Landroid/widget/PopupWindowAnimationHelper$ExpandAnimationHelper;)V

    .line 211
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 206
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 202
    return-void
.end method
