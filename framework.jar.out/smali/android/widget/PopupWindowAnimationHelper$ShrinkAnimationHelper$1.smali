.class Landroid/widget/PopupWindowAnimationHelper$ShrinkAnimationHelper$1;
.super Ljava/lang/Object;
.source "PopupWindowAnimationHelper.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/PopupWindowAnimationHelper$ShrinkAnimationHelper;->setupAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/PopupWindowAnimationHelper$ShrinkAnimationHelper;


# direct methods
.method constructor <init>(Landroid/widget/PopupWindowAnimationHelper$ShrinkAnimationHelper;)V
    .locals 0

    .prologue
    .line 270
    iput-object p1, p0, Landroid/widget/PopupWindowAnimationHelper$ShrinkAnimationHelper$1;->this$1:Landroid/widget/PopupWindowAnimationHelper$ShrinkAnimationHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 282
    iget-object v0, p0, Landroid/widget/PopupWindowAnimationHelper$ShrinkAnimationHelper$1;->this$1:Landroid/widget/PopupWindowAnimationHelper$ShrinkAnimationHelper;

    # invokes: Landroid/widget/PopupWindowAnimationHelper$ShrinkAnimationHelper;->onAnimationEnd()V
    invoke-static {v0}, Landroid/widget/PopupWindowAnimationHelper$ShrinkAnimationHelper;->access$500(Landroid/widget/PopupWindowAnimationHelper$ShrinkAnimationHelper;)V

    .line 283
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 278
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 274
    return-void
.end method
