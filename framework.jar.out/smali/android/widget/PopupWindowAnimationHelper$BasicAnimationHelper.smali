.class abstract Landroid/widget/PopupWindowAnimationHelper$BasicAnimationHelper;
.super Ljava/lang/Object;
.source "PopupWindowAnimationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/PopupWindowAnimationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "BasicAnimationHelper"
.end annotation


# instance fields
.field protected mAnimationFromBottomToTop:Landroid/view/animation/TranslateAnimation;

.field protected mAnimationFromTopToBottom:Landroid/view/animation/TranslateAnimation;

.field protected mAnimationProcessListener:Landroid/widget/PopupWindowAnimationHelper$AnimationProcessListener;

.field final synthetic this$0:Landroid/widget/PopupWindowAnimationHelper;


# direct methods
.method public constructor <init>(Landroid/widget/PopupWindowAnimationHelper;)V
    .locals 0

    .prologue
    .line 392
    iput-object p1, p0, Landroid/widget/PopupWindowAnimationHelper$BasicAnimationHelper;->this$0:Landroid/widget/PopupWindowAnimationHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 393
    invoke-virtual {p0}, Landroid/widget/PopupWindowAnimationHelper$BasicAnimationHelper;->setupAnimation()V

    .line 394
    return-void
.end method


# virtual methods
.method protected getAnimation(Z)Landroid/view/animation/Animation;
    .locals 1
    .param p1, "isFromTopToBottom"    # Z

    .prologue
    .line 446
    if-eqz p1, :cond_0

    .line 447
    iget-object v0, p0, Landroid/widget/PopupWindowAnimationHelper$BasicAnimationHelper;->mAnimationFromTopToBottom:Landroid/view/animation/TranslateAnimation;

    .line 452
    .local v0, "result":Landroid/view/animation/Animation;
    :goto_0
    return-object v0

    .line 449
    .end local v0    # "result":Landroid/view/animation/Animation;
    :cond_0
    iget-object v0, p0, Landroid/widget/PopupWindowAnimationHelper$BasicAnimationHelper;->mAnimationFromBottomToTop:Landroid/view/animation/TranslateAnimation;

    .restart local v0    # "result":Landroid/view/animation/Animation;
    goto :goto_0
.end method

.method protected onAfterAnimationEnd()V
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Landroid/widget/PopupWindowAnimationHelper$BasicAnimationHelper;->mAnimationProcessListener:Landroid/widget/PopupWindowAnimationHelper$AnimationProcessListener;

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Landroid/widget/PopupWindowAnimationHelper$BasicAnimationHelper;->mAnimationProcessListener:Landroid/widget/PopupWindowAnimationHelper$AnimationProcessListener;

    invoke-interface {v0}, Landroid/widget/PopupWindowAnimationHelper$AnimationProcessListener;->afterAnimationEnd()V

    .line 438
    :cond_0
    return-void
.end method

.method protected abstract setupAnimation()V
.end method

.method public abstract showAnimation(Z)V
.end method

.method public showAnimation(ZLandroid/widget/PopupWindowAnimationHelper$AnimationProcessListener;)V
    .locals 1
    .param p1, "isFromTopToBottom"    # Z
    .param p2, "animationProcessListener"    # Landroid/widget/PopupWindowAnimationHelper$AnimationProcessListener;

    .prologue
    .line 422
    iput-object p2, p0, Landroid/widget/PopupWindowAnimationHelper$BasicAnimationHelper;->mAnimationProcessListener:Landroid/widget/PopupWindowAnimationHelper$AnimationProcessListener;

    .line 424
    iget-object v0, p0, Landroid/widget/PopupWindowAnimationHelper$BasicAnimationHelper;->mAnimationProcessListener:Landroid/widget/PopupWindowAnimationHelper$AnimationProcessListener;

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Landroid/widget/PopupWindowAnimationHelper$BasicAnimationHelper;->mAnimationProcessListener:Landroid/widget/PopupWindowAnimationHelper$AnimationProcessListener;

    invoke-interface {v0}, Landroid/widget/PopupWindowAnimationHelper$AnimationProcessListener;->beforeAnimationStart()V

    .line 427
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindowAnimationHelper$BasicAnimationHelper;->showAnimation(Z)V

    .line 428
    return-void
.end method
