.class final Landroid/widget/PopupWindowAnimationHelper$AdjustAnimationHelper;
.super Landroid/widget/PopupWindowAnimationHelper$BasicAnimationHelper;
.source "PopupWindowAnimationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/PopupWindowAnimationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AdjustAnimationHelper"
.end annotation


# static fields
.field private static final ANIMATION_DURATION:J = 0xc8L


# instance fields
.field final synthetic this$0:Landroid/widget/PopupWindowAnimationHelper;


# direct methods
.method private constructor <init>(Landroid/widget/PopupWindowAnimationHelper;)V
    .locals 0

    .prologue
    .line 322
    iput-object p1, p0, Landroid/widget/PopupWindowAnimationHelper$AdjustAnimationHelper;->this$0:Landroid/widget/PopupWindowAnimationHelper;

    invoke-direct {p0, p1}, Landroid/widget/PopupWindowAnimationHelper$BasicAnimationHelper;-><init>(Landroid/widget/PopupWindowAnimationHelper;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/PopupWindowAnimationHelper;Landroid/widget/PopupWindowAnimationHelper$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/PopupWindowAnimationHelper;
    .param p2, "x1"    # Landroid/widget/PopupWindowAnimationHelper$1;

    .prologue
    .line 322
    invoke-direct {p0, p1}, Landroid/widget/PopupWindowAnimationHelper$AdjustAnimationHelper;-><init>(Landroid/widget/PopupWindowAnimationHelper;)V

    return-void
.end method


# virtual methods
.method protected setupAnimation()V
    .locals 0

    .prologue
    .line 365
    return-void
.end method

.method public showAnimation(Z)V
    .locals 2
    .param p1, "isFromTopToBottom"    # Z

    .prologue
    .line 335
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindowAnimationHelper$AdjustAnimationHelper;->getAnimation(Z)Landroid/view/animation/Animation;

    move-result-object v0

    .line 337
    .local v0, "animation":Landroid/view/animation/Animation;
    iget-object v1, p0, Landroid/widget/PopupWindowAnimationHelper$AdjustAnimationHelper;->this$0:Landroid/widget/PopupWindowAnimationHelper;

    # getter for: Landroid/widget/PopupWindowAnimationHelper;->mAnimationView:Landroid/view/View;
    invoke-static {v1}, Landroid/widget/PopupWindowAnimationHelper;->access$200(Landroid/widget/PopupWindowAnimationHelper;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 338
    iget-object v1, p0, Landroid/widget/PopupWindowAnimationHelper$AdjustAnimationHelper;->this$0:Landroid/widget/PopupWindowAnimationHelper;

    # getter for: Landroid/widget/PopupWindowAnimationHelper;->mAnimationView:Landroid/view/View;
    invoke-static {v1}, Landroid/widget/PopupWindowAnimationHelper;->access$200(Landroid/widget/PopupWindowAnimationHelper;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 339
    return-void
.end method
