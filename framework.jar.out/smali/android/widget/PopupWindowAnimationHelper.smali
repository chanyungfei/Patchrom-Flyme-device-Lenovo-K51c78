.class public Landroid/widget/PopupWindowAnimationHelper;
.super Ljava/lang/Object;
.source "PopupWindowAnimationHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/PopupWindowAnimationHelper$1;,
        Landroid/widget/PopupWindowAnimationHelper$AnimationProcessListener;,
        Landroid/widget/PopupWindowAnimationHelper$BasicAnimationHelper;,
        Landroid/widget/PopupWindowAnimationHelper$AdjustAnimationHelper;,
        Landroid/widget/PopupWindowAnimationHelper$ShrinkAnimationHelper;,
        Landroid/widget/PopupWindowAnimationHelper$ExpandAnimationHelper;
    }
.end annotation


# instance fields
.field private mAdjust:Landroid/widget/PopupWindowAnimationHelper$AdjustAnimationHelper;

.field private mAnimationView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mExpand:Landroid/widget/PopupWindowAnimationHelper$ExpandAnimationHelper;

.field private mShrink:Landroid/widget/PopupWindowAnimationHelper$ShrinkAnimationHelper;

.field private mWholeLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/LinearLayout;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wholeLayout"    # Landroid/widget/LinearLayout;
    .param p3, "animationViewId"    # I

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Landroid/widget/PopupWindowAnimationHelper;->mContext:Landroid/content/Context;

    .line 64
    iput-object p2, p0, Landroid/widget/PopupWindowAnimationHelper;->mWholeLayout:Landroid/widget/LinearLayout;

    .line 65
    iget-object v0, p0, Landroid/widget/PopupWindowAnimationHelper;->mWholeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/PopupWindowAnimationHelper;->mAnimationView:Landroid/view/View;

    .line 66
    return-void
.end method

.method static synthetic access$200(Landroid/widget/PopupWindowAnimationHelper;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Landroid/widget/PopupWindowAnimationHelper;

    .prologue
    .line 23
    iget-object v0, p0, Landroid/widget/PopupWindowAnimationHelper;->mAnimationView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Landroid/widget/PopupWindowAnimationHelper;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/widget/PopupWindowAnimationHelper;

    .prologue
    .line 23
    iget-object v0, p0, Landroid/widget/PopupWindowAnimationHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public showAdjust(Z)V
    .locals 2
    .param p1, "isFromTopToBottom"    # Z

    .prologue
    .line 118
    iget-object v0, p0, Landroid/widget/PopupWindowAnimationHelper;->mAdjust:Landroid/widget/PopupWindowAnimationHelper$AdjustAnimationHelper;

    if-nez v0, :cond_0

    .line 119
    new-instance v0, Landroid/widget/PopupWindowAnimationHelper$AdjustAnimationHelper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/PopupWindowAnimationHelper$AdjustAnimationHelper;-><init>(Landroid/widget/PopupWindowAnimationHelper;Landroid/widget/PopupWindowAnimationHelper$1;)V

    iput-object v0, p0, Landroid/widget/PopupWindowAnimationHelper;->mAdjust:Landroid/widget/PopupWindowAnimationHelper$AdjustAnimationHelper;

    .line 122
    :cond_0
    iget-object v0, p0, Landroid/widget/PopupWindowAnimationHelper;->mAdjust:Landroid/widget/PopupWindowAnimationHelper$AdjustAnimationHelper;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindowAnimationHelper$AdjustAnimationHelper;->showAnimation(Z)V

    .line 123
    return-void
.end method

.method public showAdjust(ZLandroid/widget/PopupWindowAnimationHelper$AnimationProcessListener;)V
    .locals 2
    .param p1, "isFromTopToBottom"    # Z
    .param p2, "listener"    # Landroid/widget/PopupWindowAnimationHelper$AnimationProcessListener;

    .prologue
    .line 160
    iget-object v0, p0, Landroid/widget/PopupWindowAnimationHelper;->mAdjust:Landroid/widget/PopupWindowAnimationHelper$AdjustAnimationHelper;

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Landroid/widget/PopupWindowAnimationHelper$AdjustAnimationHelper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/PopupWindowAnimationHelper$AdjustAnimationHelper;-><init>(Landroid/widget/PopupWindowAnimationHelper;Landroid/widget/PopupWindowAnimationHelper$1;)V

    iput-object v0, p0, Landroid/widget/PopupWindowAnimationHelper;->mAdjust:Landroid/widget/PopupWindowAnimationHelper$AdjustAnimationHelper;

    .line 164
    :cond_0
    iget-object v0, p0, Landroid/widget/PopupWindowAnimationHelper;->mAdjust:Landroid/widget/PopupWindowAnimationHelper$AdjustAnimationHelper;

    invoke-virtual {v0, p1, p2}, Landroid/widget/PopupWindowAnimationHelper$AdjustAnimationHelper;->showAnimation(ZLandroid/widget/PopupWindowAnimationHelper$AnimationProcessListener;)V

    .line 165
    return-void
.end method

.method public showExpand(Z)V
    .locals 2
    .param p1, "isFromTopToBottom"    # Z

    .prologue
    .line 90
    iget-object v0, p0, Landroid/widget/PopupWindowAnimationHelper;->mExpand:Landroid/widget/PopupWindowAnimationHelper$ExpandAnimationHelper;

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Landroid/widget/PopupWindowAnimationHelper$ExpandAnimationHelper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/PopupWindowAnimationHelper$ExpandAnimationHelper;-><init>(Landroid/widget/PopupWindowAnimationHelper;Landroid/widget/PopupWindowAnimationHelper$1;)V

    iput-object v0, p0, Landroid/widget/PopupWindowAnimationHelper;->mExpand:Landroid/widget/PopupWindowAnimationHelper$ExpandAnimationHelper;

    .line 94
    :cond_0
    iget-object v0, p0, Landroid/widget/PopupWindowAnimationHelper;->mExpand:Landroid/widget/PopupWindowAnimationHelper$ExpandAnimationHelper;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindowAnimationHelper$ExpandAnimationHelper;->showAnimation(Z)V

    .line 95
    return-void
.end method

.method public showExpand(ZLandroid/widget/PopupWindowAnimationHelper$AnimationProcessListener;)V
    .locals 2
    .param p1, "isFromTopToBottom"    # Z
    .param p2, "listener"    # Landroid/widget/PopupWindowAnimationHelper$AnimationProcessListener;

    .prologue
    .line 132
    iget-object v0, p0, Landroid/widget/PopupWindowAnimationHelper;->mExpand:Landroid/widget/PopupWindowAnimationHelper$ExpandAnimationHelper;

    if-nez v0, :cond_0

    .line 133
    new-instance v0, Landroid/widget/PopupWindowAnimationHelper$ExpandAnimationHelper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/PopupWindowAnimationHelper$ExpandAnimationHelper;-><init>(Landroid/widget/PopupWindowAnimationHelper;Landroid/widget/PopupWindowAnimationHelper$1;)V

    iput-object v0, p0, Landroid/widget/PopupWindowAnimationHelper;->mExpand:Landroid/widget/PopupWindowAnimationHelper$ExpandAnimationHelper;

    .line 136
    :cond_0
    iget-object v0, p0, Landroid/widget/PopupWindowAnimationHelper;->mExpand:Landroid/widget/PopupWindowAnimationHelper$ExpandAnimationHelper;

    invoke-virtual {v0, p1, p2}, Landroid/widget/PopupWindowAnimationHelper$ExpandAnimationHelper;->showAnimation(ZLandroid/widget/PopupWindowAnimationHelper$AnimationProcessListener;)V

    .line 137
    return-void
.end method

.method public showShrink(Z)V
    .locals 1
    .param p1, "isFromTopToBottom"    # Z

    .prologue
    .line 104
    iget-object v0, p0, Landroid/widget/PopupWindowAnimationHelper;->mShrink:Landroid/widget/PopupWindowAnimationHelper$ShrinkAnimationHelper;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Landroid/widget/PopupWindowAnimationHelper$ShrinkAnimationHelper;

    invoke-direct {v0, p0}, Landroid/widget/PopupWindowAnimationHelper$ShrinkAnimationHelper;-><init>(Landroid/widget/PopupWindowAnimationHelper;)V

    iput-object v0, p0, Landroid/widget/PopupWindowAnimationHelper;->mShrink:Landroid/widget/PopupWindowAnimationHelper$ShrinkAnimationHelper;

    .line 108
    :cond_0
    iget-object v0, p0, Landroid/widget/PopupWindowAnimationHelper;->mShrink:Landroid/widget/PopupWindowAnimationHelper$ShrinkAnimationHelper;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindowAnimationHelper$ShrinkAnimationHelper;->showAnimation(Z)V

    .line 109
    return-void
.end method

.method public showShrink(ZLandroid/widget/PopupWindowAnimationHelper$AnimationProcessListener;)V
    .locals 1
    .param p1, "isFromTopToBottom"    # Z
    .param p2, "listener"    # Landroid/widget/PopupWindowAnimationHelper$AnimationProcessListener;

    .prologue
    .line 146
    iget-object v0, p0, Landroid/widget/PopupWindowAnimationHelper;->mShrink:Landroid/widget/PopupWindowAnimationHelper$ShrinkAnimationHelper;

    if-nez v0, :cond_0

    .line 147
    new-instance v0, Landroid/widget/PopupWindowAnimationHelper$ShrinkAnimationHelper;

    invoke-direct {v0, p0}, Landroid/widget/PopupWindowAnimationHelper$ShrinkAnimationHelper;-><init>(Landroid/widget/PopupWindowAnimationHelper;)V

    iput-object v0, p0, Landroid/widget/PopupWindowAnimationHelper;->mShrink:Landroid/widget/PopupWindowAnimationHelper$ShrinkAnimationHelper;

    .line 150
    :cond_0
    iget-object v0, p0, Landroid/widget/PopupWindowAnimationHelper;->mShrink:Landroid/widget/PopupWindowAnimationHelper$ShrinkAnimationHelper;

    invoke-virtual {v0, p1, p2}, Landroid/widget/PopupWindowAnimationHelper$ShrinkAnimationHelper;->showAnimation(ZLandroid/widget/PopupWindowAnimationHelper$AnimationProcessListener;)V

    .line 151
    return-void
.end method

.method public updateAnimationViews(Landroid/widget/LinearLayout;I)V
    .locals 1
    .param p1, "wholeLayout"    # Landroid/widget/LinearLayout;
    .param p2, "animationViewId"    # I

    .prologue
    .line 79
    iput-object p1, p0, Landroid/widget/PopupWindowAnimationHelper;->mWholeLayout:Landroid/widget/LinearLayout;

    .line 80
    iget-object v0, p0, Landroid/widget/PopupWindowAnimationHelper;->mWholeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/PopupWindowAnimationHelper;->mAnimationView:Landroid/view/View;

    .line 81
    return-void
.end method
