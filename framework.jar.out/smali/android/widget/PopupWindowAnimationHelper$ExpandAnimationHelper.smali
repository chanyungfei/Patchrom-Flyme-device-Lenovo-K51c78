.class final Landroid/widget/PopupWindowAnimationHelper$ExpandAnimationHelper;
.super Landroid/widget/PopupWindowAnimationHelper$BasicAnimationHelper;
.source "PopupWindowAnimationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/PopupWindowAnimationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ExpandAnimationHelper"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/PopupWindowAnimationHelper;


# direct methods
.method private constructor <init>(Landroid/widget/PopupWindowAnimationHelper;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Landroid/widget/PopupWindowAnimationHelper$ExpandAnimationHelper;->this$0:Landroid/widget/PopupWindowAnimationHelper;

    invoke-direct {p0, p1}, Landroid/widget/PopupWindowAnimationHelper$BasicAnimationHelper;-><init>(Landroid/widget/PopupWindowAnimationHelper;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/PopupWindowAnimationHelper;Landroid/widget/PopupWindowAnimationHelper$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/PopupWindowAnimationHelper;
    .param p2, "x1"    # Landroid/widget/PopupWindowAnimationHelper$1;

    .prologue
    .line 174
    invoke-direct {p0, p1}, Landroid/widget/PopupWindowAnimationHelper$ExpandAnimationHelper;-><init>(Landroid/widget/PopupWindowAnimationHelper;)V

    return-void
.end method

.method static synthetic access$400(Landroid/widget/PopupWindowAnimationHelper$ExpandAnimationHelper;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/PopupWindowAnimationHelper$ExpandAnimationHelper;

    .prologue
    .line 174
    invoke-direct {p0}, Landroid/widget/PopupWindowAnimationHelper$ExpandAnimationHelper;->onAnimationEnd()V

    return-void
.end method

.method private onAnimationEnd()V
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Landroid/widget/PopupWindowAnimationHelper$ExpandAnimationHelper;->this$0:Landroid/widget/PopupWindowAnimationHelper;

    # getter for: Landroid/widget/PopupWindowAnimationHelper;->mAnimationView:Landroid/view/View;
    invoke-static {v0}, Landroid/widget/PopupWindowAnimationHelper;->access$200(Landroid/widget/PopupWindowAnimationHelper;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 236
    invoke-virtual {p0}, Landroid/widget/PopupWindowAnimationHelper$ExpandAnimationHelper;->onAfterAnimationEnd()V

    .line 237
    return-void
.end method


# virtual methods
.method protected setupAnimation()V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Landroid/widget/PopupWindowAnimationHelper$ExpandAnimationHelper;->this$0:Landroid/widget/PopupWindowAnimationHelper;

    # getter for: Landroid/widget/PopupWindowAnimationHelper;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/widget/PopupWindowAnimationHelper;->access$300(Landroid/widget/PopupWindowAnimationHelper;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x9050003

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    check-cast v0, Landroid/view/animation/TranslateAnimation;

    iput-object v0, p0, Landroid/widget/PopupWindowAnimationHelper$ExpandAnimationHelper;->mAnimationFromTopToBottom:Landroid/view/animation/TranslateAnimation;

    .line 195
    iget-object v0, p0, Landroid/widget/PopupWindowAnimationHelper$ExpandAnimationHelper;->this$0:Landroid/widget/PopupWindowAnimationHelper;

    # getter for: Landroid/widget/PopupWindowAnimationHelper;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/widget/PopupWindowAnimationHelper;->access$300(Landroid/widget/PopupWindowAnimationHelper;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x9050002

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    check-cast v0, Landroid/view/animation/TranslateAnimation;

    iput-object v0, p0, Landroid/widget/PopupWindowAnimationHelper$ExpandAnimationHelper;->mAnimationFromBottomToTop:Landroid/view/animation/TranslateAnimation;

    .line 198
    iget-object v0, p0, Landroid/widget/PopupWindowAnimationHelper$ExpandAnimationHelper;->mAnimationFromTopToBottom:Landroid/view/animation/TranslateAnimation;

    new-instance v1, Landroid/widget/PopupWindowAnimationHelper$ExpandAnimationHelper$1;

    invoke-direct {v1, p0}, Landroid/widget/PopupWindowAnimationHelper$ExpandAnimationHelper$1;-><init>(Landroid/widget/PopupWindowAnimationHelper$ExpandAnimationHelper;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 213
    iget-object v0, p0, Landroid/widget/PopupWindowAnimationHelper$ExpandAnimationHelper;->mAnimationFromBottomToTop:Landroid/view/animation/TranslateAnimation;

    new-instance v1, Landroid/widget/PopupWindowAnimationHelper$ExpandAnimationHelper$2;

    invoke-direct {v1, p0}, Landroid/widget/PopupWindowAnimationHelper$ExpandAnimationHelper$2;-><init>(Landroid/widget/PopupWindowAnimationHelper$ExpandAnimationHelper;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 228
    return-void
.end method

.method public showAnimation(Z)V
    .locals 2
    .param p1, "isFromTopToBottom"    # Z

    .prologue
    .line 185
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindowAnimationHelper$ExpandAnimationHelper;->getAnimation(Z)Landroid/view/animation/Animation;

    move-result-object v0

    .line 187
    .local v0, "animation":Landroid/view/animation/Animation;
    iget-object v1, p0, Landroid/widget/PopupWindowAnimationHelper$ExpandAnimationHelper;->this$0:Landroid/widget/PopupWindowAnimationHelper;

    # getter for: Landroid/widget/PopupWindowAnimationHelper;->mAnimationView:Landroid/view/View;
    invoke-static {v1}, Landroid/widget/PopupWindowAnimationHelper;->access$200(Landroid/widget/PopupWindowAnimationHelper;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 188
    iget-object v1, p0, Landroid/widget/PopupWindowAnimationHelper$ExpandAnimationHelper;->this$0:Landroid/widget/PopupWindowAnimationHelper;

    # getter for: Landroid/widget/PopupWindowAnimationHelper;->mAnimationView:Landroid/view/View;
    invoke-static {v1}, Landroid/widget/PopupWindowAnimationHelper;->access$200(Landroid/widget/PopupWindowAnimationHelper;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 189
    return-void
.end method
