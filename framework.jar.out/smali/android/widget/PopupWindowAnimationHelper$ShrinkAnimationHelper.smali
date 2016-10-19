.class public final Landroid/widget/PopupWindowAnimationHelper$ShrinkAnimationHelper;
.super Landroid/widget/PopupWindowAnimationHelper$BasicAnimationHelper;
.source "PopupWindowAnimationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/PopupWindowAnimationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ShrinkAnimationHelper"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/PopupWindowAnimationHelper;


# direct methods
.method public constructor <init>(Landroid/widget/PopupWindowAnimationHelper;)V
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Landroid/widget/PopupWindowAnimationHelper$ShrinkAnimationHelper;->this$0:Landroid/widget/PopupWindowAnimationHelper;

    invoke-direct {p0, p1}, Landroid/widget/PopupWindowAnimationHelper$BasicAnimationHelper;-><init>(Landroid/widget/PopupWindowAnimationHelper;)V

    return-void
.end method

.method static synthetic access$500(Landroid/widget/PopupWindowAnimationHelper$ShrinkAnimationHelper;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/PopupWindowAnimationHelper$ShrinkAnimationHelper;

    .prologue
    .line 247
    invoke-direct {p0}, Landroid/widget/PopupWindowAnimationHelper$ShrinkAnimationHelper;->onAnimationEnd()V

    return-void
.end method

.method private onAnimationEnd()V
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Landroid/widget/PopupWindowAnimationHelper$ShrinkAnimationHelper;->this$0:Landroid/widget/PopupWindowAnimationHelper;

    # getter for: Landroid/widget/PopupWindowAnimationHelper;->mAnimationView:Landroid/view/View;
    invoke-static {v0}, Landroid/widget/PopupWindowAnimationHelper;->access$200(Landroid/widget/PopupWindowAnimationHelper;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 310
    invoke-virtual {p0}, Landroid/widget/PopupWindowAnimationHelper$ShrinkAnimationHelper;->onAfterAnimationEnd()V

    .line 311
    return-void
.end method


# virtual methods
.method protected setupAnimation()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 263
    iget-object v0, p0, Landroid/widget/PopupWindowAnimationHelper$ShrinkAnimationHelper;->this$0:Landroid/widget/PopupWindowAnimationHelper;

    # getter for: Landroid/widget/PopupWindowAnimationHelper;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/widget/PopupWindowAnimationHelper;->access$300(Landroid/widget/PopupWindowAnimationHelper;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x9050005

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    check-cast v0, Landroid/view/animation/TranslateAnimation;

    iput-object v0, p0, Landroid/widget/PopupWindowAnimationHelper$ShrinkAnimationHelper;->mAnimationFromTopToBottom:Landroid/view/animation/TranslateAnimation;

    .line 265
    iget-object v0, p0, Landroid/widget/PopupWindowAnimationHelper$ShrinkAnimationHelper;->this$0:Landroid/widget/PopupWindowAnimationHelper;

    # getter for: Landroid/widget/PopupWindowAnimationHelper;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/widget/PopupWindowAnimationHelper;->access$300(Landroid/widget/PopupWindowAnimationHelper;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x9050004    # 1.60093E-33f

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    check-cast v0, Landroid/view/animation/TranslateAnimation;

    iput-object v0, p0, Landroid/widget/PopupWindowAnimationHelper$ShrinkAnimationHelper;->mAnimationFromBottomToTop:Landroid/view/animation/TranslateAnimation;

    .line 268
    iget-object v0, p0, Landroid/widget/PopupWindowAnimationHelper$ShrinkAnimationHelper;->mAnimationFromTopToBottom:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setFillEnabled(Z)V

    .line 269
    iget-object v0, p0, Landroid/widget/PopupWindowAnimationHelper$ShrinkAnimationHelper;->mAnimationFromTopToBottom:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 270
    iget-object v0, p0, Landroid/widget/PopupWindowAnimationHelper$ShrinkAnimationHelper;->mAnimationFromTopToBottom:Landroid/view/animation/TranslateAnimation;

    new-instance v1, Landroid/widget/PopupWindowAnimationHelper$ShrinkAnimationHelper$1;

    invoke-direct {v1, p0}, Landroid/widget/PopupWindowAnimationHelper$ShrinkAnimationHelper$1;-><init>(Landroid/widget/PopupWindowAnimationHelper$ShrinkAnimationHelper;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 285
    iget-object v0, p0, Landroid/widget/PopupWindowAnimationHelper$ShrinkAnimationHelper;->mAnimationFromBottomToTop:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setFillEnabled(Z)V

    .line 286
    iget-object v0, p0, Landroid/widget/PopupWindowAnimationHelper$ShrinkAnimationHelper;->mAnimationFromBottomToTop:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 287
    iget-object v0, p0, Landroid/widget/PopupWindowAnimationHelper$ShrinkAnimationHelper;->mAnimationFromBottomToTop:Landroid/view/animation/TranslateAnimation;

    new-instance v1, Landroid/widget/PopupWindowAnimationHelper$ShrinkAnimationHelper$2;

    invoke-direct {v1, p0}, Landroid/widget/PopupWindowAnimationHelper$ShrinkAnimationHelper$2;-><init>(Landroid/widget/PopupWindowAnimationHelper$ShrinkAnimationHelper;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 302
    return-void
.end method

.method public showAnimation(Z)V
    .locals 2
    .param p1, "isFromTopToBottom"    # Z

    .prologue
    .line 255
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindowAnimationHelper$ShrinkAnimationHelper;->getAnimation(Z)Landroid/view/animation/Animation;

    move-result-object v0

    .line 257
    .local v0, "animation":Landroid/view/animation/Animation;
    iget-object v1, p0, Landroid/widget/PopupWindowAnimationHelper$ShrinkAnimationHelper;->this$0:Landroid/widget/PopupWindowAnimationHelper;

    # getter for: Landroid/widget/PopupWindowAnimationHelper;->mAnimationView:Landroid/view/View;
    invoke-static {v1}, Landroid/widget/PopupWindowAnimationHelper;->access$200(Landroid/widget/PopupWindowAnimationHelper;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 258
    iget-object v1, p0, Landroid/widget/PopupWindowAnimationHelper$ShrinkAnimationHelper;->this$0:Landroid/widget/PopupWindowAnimationHelper;

    # getter for: Landroid/widget/PopupWindowAnimationHelper;->mAnimationView:Landroid/view/View;
    invoke-static {v1}, Landroid/widget/PopupWindowAnimationHelper;->access$200(Landroid/widget/PopupWindowAnimationHelper;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 259
    return-void
.end method

.method public bridge synthetic showAnimation(ZLandroid/widget/PopupWindowAnimationHelper$AnimationProcessListener;)V
    .locals 0
    .param p1, "x0"    # Z
    .param p2, "x1"    # Landroid/widget/PopupWindowAnimationHelper$AnimationProcessListener;

    .prologue
    .line 247
    invoke-super {p0, p1, p2}, Landroid/widget/PopupWindowAnimationHelper$BasicAnimationHelper;->showAnimation(ZLandroid/widget/PopupWindowAnimationHelper$AnimationProcessListener;)V

    return-void
.end method
