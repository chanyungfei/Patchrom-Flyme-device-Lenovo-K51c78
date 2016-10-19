.class public Landroid/view/ViewPropertyAnimator;
.super Ljava/lang/Object;
.source "ViewPropertyAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewPropertyAnimator$AnimatorEventListener;,
        Landroid/view/ViewPropertyAnimator$NameValuesHolder;,
        Landroid/view/ViewPropertyAnimator$PropertyBundle;
    }
.end annotation


# static fields
.field static final ALPHA:I = 0x800

.field static final NONE:I = 0x0

.field static final ROTATION:I = 0x20

.field static final ROTATION_X:I = 0x40

.field static final ROTATION_Y:I = 0x80

.field static final SCALE_X:I = 0x8

.field static final SCALE_Y:I = 0x10

.field private static final TRANSFORM_MASK:I = 0x7ff

.field static final TRANSLATION_X:I = 0x1

.field static final TRANSLATION_Y:I = 0x2

.field static final TRANSLATION_Z:I = 0x4

.field static final X:I = 0x100

.field static final Y:I = 0x200

.field static final Z:I = 0x400


# instance fields
.field private mAnimationStarter:Ljava/lang/Runnable;

.field private mAnimatorCleanupMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/animation/Animator;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimatorEventListener:Landroid/view/ViewPropertyAnimator$AnimatorEventListener;

.field private mAnimatorMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/animation/Animator;",
            "Landroid/view/ViewPropertyAnimator$PropertyBundle;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimatorOnEndMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/animation/Animator;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimatorOnStartMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/animation/Animator;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimatorSetupMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/animation/Animator;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mDuration:J

.field private mDurationSet:Z

.field private mInterpolator:Landroid/animation/TimeInterpolator;

.field private mInterpolatorSet:Z

.field private mListener:Landroid/animation/Animator$AnimatorListener;

.field private mOldLayerType:I

.field mPendingAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/ViewPropertyAnimator$NameValuesHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingCleanupAction:Ljava/lang/Runnable;

.field private mPendingOnEndAction:Ljava/lang/Runnable;

.field private mPendingOnStartAction:Ljava/lang/Runnable;

.field private mPendingSetupAction:Ljava/lang/Runnable;

.field private mRTBackend:Landroid/view/ViewPropertyAnimatorRT;

.field private mStartDelay:J

.field private mStartDelaySet:Z

.field private mTempValueAnimator:Landroid/animation/ValueAnimator;

.field private mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field final mView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/ViewPropertyAnimator;->mOldLayerType:I

    .line 76
    iput-boolean v2, p0, Landroid/view/ViewPropertyAnimator;->mDurationSet:Z

    .line 83
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/ViewPropertyAnimator;->mStartDelay:J

    .line 89
    iput-boolean v2, p0, Landroid/view/ViewPropertyAnimator;->mStartDelaySet:Z

    .line 102
    iput-boolean v2, p0, Landroid/view/ViewPropertyAnimator;->mInterpolatorSet:Z

    .line 107
    iput-object v3, p0, Landroid/view/ViewPropertyAnimator;->mListener:Landroid/animation/Animator$AnimatorListener;

    .line 112
    iput-object v3, p0, Landroid/view/ViewPropertyAnimator;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 130
    new-instance v0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;

    invoke-direct {v0, p0, v3}, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;-><init>(Landroid/view/ViewPropertyAnimator;Landroid/view/ViewPropertyAnimator$1;)V

    iput-object v0, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorEventListener:Landroid/view/ViewPropertyAnimator$AnimatorEventListener;

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewPropertyAnimator;->mPendingAnimations:Ljava/util/ArrayList;

    .line 175
    new-instance v0, Landroid/view/ViewPropertyAnimator$1;

    invoke-direct {v0, p0}, Landroid/view/ViewPropertyAnimator$1;-><init>(Landroid/view/ViewPropertyAnimator;)V

    iput-object v0, p0, Landroid/view/ViewPropertyAnimator;->mAnimationStarter:Ljava/lang/Runnable;

    .line 231
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorMap:Ljava/util/HashMap;

    .line 262
    iput-object p1, p0, Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;

    .line 263
    invoke-virtual {p1}, Landroid/view/View;->ensureTransformationInfo()V

    .line 264
    return-void
.end method

.method static synthetic access$100(Landroid/view/ViewPropertyAnimator;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/ViewPropertyAnimator;

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/view/ViewPropertyAnimator;->startAnimation()V

    return-void
.end method

.method static synthetic access$1000(Landroid/view/ViewPropertyAnimator;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 1
    .param p0, "x0"    # Landroid/view/ViewPropertyAnimator;

    .prologue
    .line 54
    iget-object v0, p0, Landroid/view/ViewPropertyAnimator;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    return-object v0
.end method

.method static synthetic access$202(Landroid/view/ViewPropertyAnimator;I)I
    .locals 0
    .param p0, "x0"    # Landroid/view/ViewPropertyAnimator;
    .param p1, "x1"    # I

    .prologue
    .line 54
    iput p1, p0, Landroid/view/ViewPropertyAnimator;->mOldLayerType:I

    return p1
.end method

.method static synthetic access$300(Landroid/view/ViewPropertyAnimator;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Landroid/view/ViewPropertyAnimator;

    .prologue
    .line 54
    iget-object v0, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorSetupMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$400(Landroid/view/ViewPropertyAnimator;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Landroid/view/ViewPropertyAnimator;

    .prologue
    .line 54
    iget-object v0, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorOnStartMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500(Landroid/view/ViewPropertyAnimator;)Landroid/animation/Animator$AnimatorListener;
    .locals 1
    .param p0, "x0"    # Landroid/view/ViewPropertyAnimator;

    .prologue
    .line 54
    iget-object v0, p0, Landroid/view/ViewPropertyAnimator;->mListener:Landroid/animation/Animator$AnimatorListener;

    return-object v0
.end method

.method static synthetic access$600(Landroid/view/ViewPropertyAnimator;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Landroid/view/ViewPropertyAnimator;

    .prologue
    .line 54
    iget-object v0, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorOnEndMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$700(Landroid/view/ViewPropertyAnimator;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Landroid/view/ViewPropertyAnimator;

    .prologue
    .line 54
    iget-object v0, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorCleanupMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$800(Landroid/view/ViewPropertyAnimator;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Landroid/view/ViewPropertyAnimator;

    .prologue
    .line 54
    iget-object v0, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$900(Landroid/view/ViewPropertyAnimator;IF)V
    .locals 0
    .param p0, "x0"    # Landroid/view/ViewPropertyAnimator;
    .param p1, "x1"    # I
    .param p2, "x2"    # F

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setValue(IF)V

    return-void
.end method

.method private animateProperty(IF)V
    .locals 2
    .param p1, "constantName"    # I
    .param p2, "toValue"    # F

    .prologue
    .line 941
    invoke-direct {p0, p1}, Landroid/view/ViewPropertyAnimator;->getValue(I)F

    move-result v1

    .line 942
    .local v1, "fromValue":F
    sub-float v0, p2, v1

    .line 943
    .local v0, "deltaValue":F
    invoke-direct {p0, p1, v1, v0}, Landroid/view/ViewPropertyAnimator;->animatePropertyBy(IFF)V

    .line 944
    return-void
.end method

.method private animatePropertyBy(IF)V
    .locals 1
    .param p1, "constantName"    # I
    .param p2, "byValue"    # F

    .prologue
    .line 955
    invoke-direct {p0, p1}, Landroid/view/ViewPropertyAnimator;->getValue(I)F

    move-result v0

    .line 956
    .local v0, "fromValue":F
    invoke-direct {p0, p1, v0, p2}, Landroid/view/ViewPropertyAnimator;->animatePropertyBy(IFF)V

    .line 957
    return-void
.end method

.method private animatePropertyBy(IFF)V
    .locals 8
    .param p1, "constantName"    # I
    .param p2, "startValue"    # F
    .param p3, "byValue"    # F

    .prologue
    .line 969
    iget-object v6, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 970
    const/4 v1, 0x0

    .line 971
    .local v1, "animatorToCancel":Landroid/animation/Animator;
    iget-object v6, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 972
    .local v0, "animatorSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/animation/Animator;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/Animator;

    .line 973
    .local v5, "runningAnim":Landroid/animation/Animator;
    iget-object v6, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewPropertyAnimator$PropertyBundle;

    .line 974
    .local v2, "bundle":Landroid/view/ViewPropertyAnimator$PropertyBundle;
    invoke-virtual {v2, p1}, Landroid/view/ViewPropertyAnimator$PropertyBundle;->cancel(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 979
    iget v6, v2, Landroid/view/ViewPropertyAnimator$PropertyBundle;->mPropertyMask:I

    if-nez v6, :cond_0

    .line 981
    move-object v1, v5

    .line 986
    .end local v2    # "bundle":Landroid/view/ViewPropertyAnimator$PropertyBundle;
    .end local v5    # "runningAnim":Landroid/animation/Animator;
    :cond_1
    if-eqz v1, :cond_2

    .line 987
    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 991
    .end local v0    # "animatorSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/animation/Animator;>;"
    .end local v1    # "animatorToCancel":Landroid/animation/Animator;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_2
    new-instance v4, Landroid/view/ViewPropertyAnimator$NameValuesHolder;

    invoke-direct {v4, p1, p2, p3}, Landroid/view/ViewPropertyAnimator$NameValuesHolder;-><init>(IFF)V

    .line 992
    .local v4, "nameValuePair":Landroid/view/ViewPropertyAnimator$NameValuesHolder;
    iget-object v6, p0, Landroid/view/ViewPropertyAnimator;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 993
    iget-object v6, p0, Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;

    iget-object v7, p0, Landroid/view/ViewPropertyAnimator;->mAnimationStarter:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 994
    iget-object v6, p0, Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;

    iget-object v7, p0, Landroid/view/ViewPropertyAnimator;->mAnimationStarter:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 995
    return-void
.end method

.method private getValue(I)F
    .locals 3
    .param p1, "propertyConstant"    # I

    .prologue
    .line 1056
    iget-object v1, p0, Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;

    iget-object v0, v1, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    .line 1057
    .local v0, "node":Landroid/view/RenderNode;
    sparse-switch p1, :sswitch_data_0

    .line 1083
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 1059
    :sswitch_0
    invoke-virtual {v0}, Landroid/view/RenderNode;->getTranslationX()F

    move-result v1

    goto :goto_0

    .line 1061
    :sswitch_1
    invoke-virtual {v0}, Landroid/view/RenderNode;->getTranslationY()F

    move-result v1

    goto :goto_0

    .line 1063
    :sswitch_2
    invoke-virtual {v0}, Landroid/view/RenderNode;->getTranslationZ()F

    move-result v1

    goto :goto_0

    .line 1065
    :sswitch_3
    invoke-virtual {v0}, Landroid/view/RenderNode;->getRotation()F

    move-result v1

    goto :goto_0

    .line 1067
    :sswitch_4
    invoke-virtual {v0}, Landroid/view/RenderNode;->getRotationX()F

    move-result v1

    goto :goto_0

    .line 1069
    :sswitch_5
    invoke-virtual {v0}, Landroid/view/RenderNode;->getRotationY()F

    move-result v1

    goto :goto_0

    .line 1071
    :sswitch_6
    invoke-virtual {v0}, Landroid/view/RenderNode;->getScaleX()F

    move-result v1

    goto :goto_0

    .line 1073
    :sswitch_7
    invoke-virtual {v0}, Landroid/view/RenderNode;->getScaleY()F

    move-result v1

    goto :goto_0

    .line 1075
    :sswitch_8
    iget-object v1, p0, Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;

    iget v1, v1, Landroid/view/View;->mLeft:I

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/view/RenderNode;->getTranslationX()F

    move-result v2

    add-float/2addr v1, v2

    goto :goto_0

    .line 1077
    :sswitch_9
    iget-object v1, p0, Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;

    iget v1, v1, Landroid/view/View;->mTop:I

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/view/RenderNode;->getTranslationY()F

    move-result v2

    add-float/2addr v1, v2

    goto :goto_0

    .line 1079
    :sswitch_a
    invoke-virtual {v0}, Landroid/view/RenderNode;->getElevation()F

    move-result v1

    invoke-virtual {v0}, Landroid/view/RenderNode;->getTranslationZ()F

    move-result v2

    add-float/2addr v1, v2

    goto :goto_0

    .line 1081
    :sswitch_b
    iget-object v1, p0, Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;

    iget-object v1, v1, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v1, v1, Landroid/view/View$TransformationInfo;->mAlpha:F

    goto :goto_0

    .line 1057
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_6
        0x10 -> :sswitch_7
        0x20 -> :sswitch_3
        0x40 -> :sswitch_4
        0x80 -> :sswitch_5
        0x100 -> :sswitch_8
        0x200 -> :sswitch_9
        0x400 -> :sswitch_a
        0x800 -> :sswitch_b
    .end sparse-switch
.end method

.method private setValue(IF)V
    .locals 3
    .param p1, "propertyConstant"    # I
    .param p2, "value"    # F

    .prologue
    .line 1006
    iget-object v2, p0, Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;

    iget-object v0, v2, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 1007
    .local v0, "info":Landroid/view/View$TransformationInfo;
    iget-object v2, p0, Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;

    iget-object v1, v2, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    .line 1008
    .local v1, "renderNode":Landroid/view/RenderNode;
    sparse-switch p1, :sswitch_data_0

    .line 1047
    :goto_0
    return-void

    .line 1010
    :sswitch_0
    invoke-virtual {v1, p2}, Landroid/view/RenderNode;->setTranslationX(F)Z

    goto :goto_0

    .line 1013
    :sswitch_1
    invoke-virtual {v1, p2}, Landroid/view/RenderNode;->setTranslationY(F)Z

    goto :goto_0

    .line 1016
    :sswitch_2
    invoke-virtual {v1, p2}, Landroid/view/RenderNode;->setTranslationZ(F)Z

    goto :goto_0

    .line 1019
    :sswitch_3
    invoke-virtual {v1, p2}, Landroid/view/RenderNode;->setRotation(F)Z

    goto :goto_0

    .line 1022
    :sswitch_4
    invoke-virtual {v1, p2}, Landroid/view/RenderNode;->setRotationX(F)Z

    goto :goto_0

    .line 1025
    :sswitch_5
    invoke-virtual {v1, p2}, Landroid/view/RenderNode;->setRotationY(F)Z

    goto :goto_0

    .line 1028
    :sswitch_6
    invoke-virtual {v1, p2}, Landroid/view/RenderNode;->setScaleX(F)Z

    goto :goto_0

    .line 1031
    :sswitch_7
    invoke-virtual {v1, p2}, Landroid/view/RenderNode;->setScaleY(F)Z

    goto :goto_0

    .line 1034
    :sswitch_8
    iget-object v2, p0, Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;

    iget v2, v2, Landroid/view/View;->mLeft:I

    int-to-float v2, v2

    sub-float v2, p2, v2

    invoke-virtual {v1, v2}, Landroid/view/RenderNode;->setTranslationX(F)Z

    goto :goto_0

    .line 1037
    :sswitch_9
    iget-object v2, p0, Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;

    iget v2, v2, Landroid/view/View;->mTop:I

    int-to-float v2, v2

    sub-float v2, p2, v2

    invoke-virtual {v1, v2}, Landroid/view/RenderNode;->setTranslationY(F)Z

    goto :goto_0

    .line 1040
    :sswitch_a
    invoke-virtual {v1}, Landroid/view/RenderNode;->getElevation()F

    move-result v2

    sub-float v2, p2, v2

    invoke-virtual {v1, v2}, Landroid/view/RenderNode;->setTranslationZ(F)Z

    goto :goto_0

    .line 1043
    :sswitch_b
    iput p2, v0, Landroid/view/View$TransformationInfo;->mAlpha:F

    .line 1044
    invoke-virtual {v1, p2}, Landroid/view/RenderNode;->setAlpha(F)Z

    goto :goto_0

    .line 1008
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_6
        0x10 -> :sswitch_7
        0x20 -> :sswitch_3
        0x40 -> :sswitch_4
        0x80 -> :sswitch_5
        0x100 -> :sswitch_8
        0x200 -> :sswitch_9
        0x400 -> :sswitch_a
        0x800 -> :sswitch_b
    .end sparse-switch
.end method

.method private startAnimation()V
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 883
    iget-object v6, p0, Landroid/view/ViewPropertyAnimator;->mRTBackend:Landroid/view/ViewPropertyAnimatorRT;

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/view/ViewPropertyAnimator;->mRTBackend:Landroid/view/ViewPropertyAnimatorRT;

    invoke-virtual {v6, p0}, Landroid/view/ViewPropertyAnimatorRT;->startAnimation(Landroid/view/ViewPropertyAnimator;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 926
    :goto_0
    return-void

    .line 886
    :cond_0
    iget-object v6, p0, Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/view/View;->setHasTransientState(Z)V

    .line 887
    new-array v6, v7, [F

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    aput v8, v6, v7

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 888
    .local v0, "animator":Landroid/animation/ValueAnimator;
    iget-object v6, p0, Landroid/view/ViewPropertyAnimator;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 890
    .local v2, "nameValueList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/ViewPropertyAnimator$NameValuesHolder;>;"
    iget-object v6, p0, Landroid/view/ViewPropertyAnimator;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 891
    const/4 v5, 0x0

    .line 892
    .local v5, "propertyMask":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 893
    .local v4, "propertyCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v4, :cond_1

    .line 894
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewPropertyAnimator$NameValuesHolder;

    .line 895
    .local v3, "nameValuesHolder":Landroid/view/ViewPropertyAnimator$NameValuesHolder;
    iget v6, v3, Landroid/view/ViewPropertyAnimator$NameValuesHolder;->mNameConstant:I

    or-int/2addr v5, v6

    .line 893
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 897
    .end local v3    # "nameValuesHolder":Landroid/view/ViewPropertyAnimator$NameValuesHolder;
    :cond_1
    iget-object v6, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorMap:Ljava/util/HashMap;

    new-instance v7, Landroid/view/ViewPropertyAnimator$PropertyBundle;

    invoke-direct {v7, v5, v2}, Landroid/view/ViewPropertyAnimator$PropertyBundle;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual {v6, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 898
    iget-object v6, p0, Landroid/view/ViewPropertyAnimator;->mPendingSetupAction:Ljava/lang/Runnable;

    if-eqz v6, :cond_2

    .line 899
    iget-object v6, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorSetupMap:Ljava/util/HashMap;

    iget-object v7, p0, Landroid/view/ViewPropertyAnimator;->mPendingSetupAction:Ljava/lang/Runnable;

    invoke-virtual {v6, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 900
    iput-object v9, p0, Landroid/view/ViewPropertyAnimator;->mPendingSetupAction:Ljava/lang/Runnable;

    .line 902
    :cond_2
    iget-object v6, p0, Landroid/view/ViewPropertyAnimator;->mPendingCleanupAction:Ljava/lang/Runnable;

    if-eqz v6, :cond_3

    .line 903
    iget-object v6, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorCleanupMap:Ljava/util/HashMap;

    iget-object v7, p0, Landroid/view/ViewPropertyAnimator;->mPendingCleanupAction:Ljava/lang/Runnable;

    invoke-virtual {v6, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 904
    iput-object v9, p0, Landroid/view/ViewPropertyAnimator;->mPendingCleanupAction:Ljava/lang/Runnable;

    .line 906
    :cond_3
    iget-object v6, p0, Landroid/view/ViewPropertyAnimator;->mPendingOnStartAction:Ljava/lang/Runnable;

    if-eqz v6, :cond_4

    .line 907
    iget-object v6, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorOnStartMap:Ljava/util/HashMap;

    iget-object v7, p0, Landroid/view/ViewPropertyAnimator;->mPendingOnStartAction:Ljava/lang/Runnable;

    invoke-virtual {v6, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 908
    iput-object v9, p0, Landroid/view/ViewPropertyAnimator;->mPendingOnStartAction:Ljava/lang/Runnable;

    .line 910
    :cond_4
    iget-object v6, p0, Landroid/view/ViewPropertyAnimator;->mPendingOnEndAction:Ljava/lang/Runnable;

    if-eqz v6, :cond_5

    .line 911
    iget-object v6, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorOnEndMap:Ljava/util/HashMap;

    iget-object v7, p0, Landroid/view/ViewPropertyAnimator;->mPendingOnEndAction:Ljava/lang/Runnable;

    invoke-virtual {v6, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 912
    iput-object v9, p0, Landroid/view/ViewPropertyAnimator;->mPendingOnEndAction:Ljava/lang/Runnable;

    .line 914
    :cond_5
    iget-object v6, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorEventListener:Landroid/view/ViewPropertyAnimator$AnimatorEventListener;

    invoke-virtual {v0, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 915
    iget-object v6, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorEventListener:Landroid/view/ViewPropertyAnimator$AnimatorEventListener;

    invoke-virtual {v0, v6}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 916
    iget-boolean v6, p0, Landroid/view/ViewPropertyAnimator;->mStartDelaySet:Z

    if-eqz v6, :cond_6

    .line 917
    iget-wide v6, p0, Landroid/view/ViewPropertyAnimator;->mStartDelay:J

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 919
    :cond_6
    iget-boolean v6, p0, Landroid/view/ViewPropertyAnimator;->mDurationSet:Z

    if-eqz v6, :cond_7

    .line 920
    iget-wide v6, p0, Landroid/view/ViewPropertyAnimator;->mDuration:J

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 922
    :cond_7
    iget-boolean v6, p0, Landroid/view/ViewPropertyAnimator;->mInterpolatorSet:Z

    if-eqz v6, :cond_8

    .line 923
    iget-object v6, p0, Landroid/view/ViewPropertyAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 925
    :cond_8
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_0
.end method


# virtual methods
.method public alpha(F)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 745
    const/16 v0, 0x800

    invoke-direct {p0, v0, p1}, Landroid/view/ViewPropertyAnimator;->animateProperty(IF)V

    .line 746
    return-object p0
.end method

.method public alphaBy(F)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 758
    const/16 v0, 0x800

    invoke-direct {p0, v0, p1}, Landroid/view/ViewPropertyAnimator;->animatePropertyBy(IF)V

    .line 759
    return-object p0
.end method

.method public cancel()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 432
    iget-object v4, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 433
    iget-object v4, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 435
    .local v2, "mAnimatorMapCopy":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/animation/Animator;Landroid/view/ViewPropertyAnimator$PropertyBundle;>;"
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 436
    .local v0, "animatorSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/animation/Animator;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    .line 437
    .local v3, "runningAnim":Landroid/animation/Animator;
    invoke-virtual {v3}, Landroid/animation/Animator;->cancel()V

    goto :goto_0

    .line 440
    .end local v0    # "animatorSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/animation/Animator;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "mAnimatorMapCopy":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/animation/Animator;Landroid/view/ViewPropertyAnimator$PropertyBundle;>;"
    .end local v3    # "runningAnim":Landroid/animation/Animator;
    :cond_0
    iget-object v4, p0, Landroid/view/ViewPropertyAnimator;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 441
    iput-object v5, p0, Landroid/view/ViewPropertyAnimator;->mPendingSetupAction:Ljava/lang/Runnable;

    .line 442
    iput-object v5, p0, Landroid/view/ViewPropertyAnimator;->mPendingCleanupAction:Ljava/lang/Runnable;

    .line 443
    iput-object v5, p0, Landroid/view/ViewPropertyAnimator;->mPendingOnStartAction:Ljava/lang/Runnable;

    .line 444
    iput-object v5, p0, Landroid/view/ViewPropertyAnimator;->mPendingOnEndAction:Ljava/lang/Runnable;

    .line 445
    iget-object v4, p0, Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;

    iget-object v5, p0, Landroid/view/ViewPropertyAnimator;->mAnimationStarter:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 446
    iget-object v4, p0, Landroid/view/ViewPropertyAnimator;->mRTBackend:Landroid/view/ViewPropertyAnimatorRT;

    if-eqz v4, :cond_1

    .line 447
    iget-object v4, p0, Landroid/view/ViewPropertyAnimator;->mRTBackend:Landroid/view/ViewPropertyAnimatorRT;

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimatorRT;->cancelAll()V

    .line 449
    :cond_1
    return-void
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 293
    iget-boolean v0, p0, Landroid/view/ViewPropertyAnimator;->mDurationSet:Z

    if-eqz v0, :cond_0

    .line 294
    iget-wide v0, p0, Landroid/view/ViewPropertyAnimator;->mDuration:J

    .line 301
    :goto_0
    return-wide v0

    .line 298
    :cond_0
    iget-object v0, p0, Landroid/view/ViewPropertyAnimator;->mTempValueAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    .line 299
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Landroid/view/ViewPropertyAnimator;->mTempValueAnimator:Landroid/animation/ValueAnimator;

    .line 301
    :cond_1
    iget-object v0, p0, Landroid/view/ViewPropertyAnimator;->mTempValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getInterpolator()Landroid/animation/TimeInterpolator;
    .locals 1

    .prologue
    .line 362
    iget-boolean v0, p0, Landroid/view/ViewPropertyAnimator;->mInterpolatorSet:Z

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Landroid/view/ViewPropertyAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 370
    :goto_0
    return-object v0

    .line 367
    :cond_0
    iget-object v0, p0, Landroid/view/ViewPropertyAnimator;->mTempValueAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    .line 368
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Landroid/view/ViewPropertyAnimator;->mTempValueAnimator:Landroid/animation/ValueAnimator;

    .line 370
    :cond_1
    iget-object v0, p0, Landroid/view/ViewPropertyAnimator;->mTempValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    goto :goto_0
.end method

.method getListener()Landroid/animation/Animator$AnimatorListener;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Landroid/view/ViewPropertyAnimator;->mListener:Landroid/animation/Animator$AnimatorListener;

    return-object v0
.end method

.method public getStartDelay()J
    .locals 2

    .prologue
    .line 314
    iget-boolean v0, p0, Landroid/view/ViewPropertyAnimator;->mStartDelaySet:Z

    if-eqz v0, :cond_0

    .line 315
    iget-wide v0, p0, Landroid/view/ViewPropertyAnimator;->mStartDelay:J

    .line 319
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method getUpdateListener()Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Landroid/view/ViewPropertyAnimator;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    return-object v0
.end method

.method hasActions()Z
    .locals 1

    .prologue
    .line 871
    iget-object v0, p0, Landroid/view/ViewPropertyAnimator;->mPendingSetupAction:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewPropertyAnimator;->mPendingCleanupAction:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewPropertyAnimator;->mPendingOnStartAction:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewPropertyAnimator;->mPendingOnEndAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public rotation(F)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 538
    const/16 v0, 0x20

    invoke-direct {p0, v0, p1}, Landroid/view/ViewPropertyAnimator;->animateProperty(IF)V

    .line 539
    return-object p0
.end method

.method public rotationBy(F)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 551
    const/16 v0, 0x20

    invoke-direct {p0, v0, p1}, Landroid/view/ViewPropertyAnimator;->animatePropertyBy(IF)V

    .line 552
    return-object p0
.end method

.method public rotationX(F)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 564
    const/16 v0, 0x40

    invoke-direct {p0, v0, p1}, Landroid/view/ViewPropertyAnimator;->animateProperty(IF)V

    .line 565
    return-object p0
.end method

.method public rotationXBy(F)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 577
    const/16 v0, 0x40

    invoke-direct {p0, v0, p1}, Landroid/view/ViewPropertyAnimator;->animatePropertyBy(IF)V

    .line 578
    return-object p0
.end method

.method public rotationY(F)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 590
    const/16 v0, 0x80

    invoke-direct {p0, v0, p1}, Landroid/view/ViewPropertyAnimator;->animateProperty(IF)V

    .line 591
    return-object p0
.end method

.method public rotationYBy(F)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 603
    const/16 v0, 0x80

    invoke-direct {p0, v0, p1}, Landroid/view/ViewPropertyAnimator;->animatePropertyBy(IF)V

    .line 604
    return-object p0
.end method

.method public scaleX(F)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 693
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Landroid/view/ViewPropertyAnimator;->animateProperty(IF)V

    .line 694
    return-object p0
.end method

.method public scaleXBy(F)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 706
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Landroid/view/ViewPropertyAnimator;->animatePropertyBy(IF)V

    .line 707
    return-object p0
.end method

.method public scaleY(F)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 719
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Landroid/view/ViewPropertyAnimator;->animateProperty(IF)V

    .line 720
    return-object p0
.end method

.method public scaleYBy(F)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 732
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Landroid/view/ViewPropertyAnimator;->animatePropertyBy(IF)V

    .line 733
    return-object p0
.end method

.method public setDuration(J)Landroid/view/ViewPropertyAnimator;
    .locals 3
    .param p1, "duration"    # J

    .prologue
    .line 275
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 276
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Animators cannot have negative duration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 279
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewPropertyAnimator;->mDurationSet:Z

    .line 280
    iput-wide p1, p0, Landroid/view/ViewPropertyAnimator;->mDuration:J

    .line 281
    return-object p0
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .param p1, "interpolator"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 351
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewPropertyAnimator;->mInterpolatorSet:Z

    .line 352
    iput-object p1, p0, Landroid/view/ViewPropertyAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 353
    return-object p0
.end method

.method public setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;
    .locals 0
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 385
    iput-object p1, p0, Landroid/view/ViewPropertyAnimator;->mListener:Landroid/animation/Animator$AnimatorListener;

    .line 386
    return-object p0
.end method

.method public setStartDelay(J)Landroid/view/ViewPropertyAnimator;
    .locals 3
    .param p1, "startDelay"    # J

    .prologue
    .line 332
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 333
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Animators cannot have negative start delay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 336
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewPropertyAnimator;->mStartDelaySet:Z

    .line 337
    iput-wide p1, p0, Landroid/view/ViewPropertyAnimator;->mStartDelay:J

    .line 338
    return-object p0
.end method

.method public setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;
    .locals 0
    .param p1, "listener"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .prologue
    .line 408
    iput-object p1, p0, Landroid/view/ViewPropertyAnimator;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 409
    return-object p0
.end method

.method public start()V
    .locals 2

    .prologue
    .line 424
    iget-object v0, p0, Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;

    iget-object v1, p0, Landroid/view/ViewPropertyAnimator;->mAnimationStarter:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 425
    invoke-direct {p0}, Landroid/view/ViewPropertyAnimator;->startAnimation()V

    .line 426
    return-void
.end method

.method public translationX(F)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 616
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/view/ViewPropertyAnimator;->animateProperty(IF)V

    .line 617
    return-object p0
.end method

.method public translationXBy(F)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 629
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/view/ViewPropertyAnimator;->animatePropertyBy(IF)V

    .line 630
    return-object p0
.end method

.method public translationY(F)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 642
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/view/ViewPropertyAnimator;->animateProperty(IF)V

    .line 643
    return-object p0
.end method

.method public translationYBy(F)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 655
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/view/ViewPropertyAnimator;->animatePropertyBy(IF)V

    .line 656
    return-object p0
.end method

.method public translationZ(F)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 668
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Landroid/view/ViewPropertyAnimator;->animateProperty(IF)V

    .line 669
    return-object p0
.end method

.method public translationZBy(F)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 681
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Landroid/view/ViewPropertyAnimator;->animatePropertyBy(IF)V

    .line 682
    return-object p0
.end method

.method public withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 863
    iput-object p1, p0, Landroid/view/ViewPropertyAnimator;->mPendingOnEndAction:Ljava/lang/Runnable;

    .line 864
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorOnEndMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 865
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorOnEndMap:Ljava/util/HashMap;

    .line 867
    :cond_0
    return-object p0
.end method

.method public withLayer()Landroid/view/ViewPropertyAnimator;
    .locals 3

    .prologue
    .line 784
    new-instance v1, Landroid/view/ViewPropertyAnimator$2;

    invoke-direct {v1, p0}, Landroid/view/ViewPropertyAnimator$2;-><init>(Landroid/view/ViewPropertyAnimator;)V

    iput-object v1, p0, Landroid/view/ViewPropertyAnimator;->mPendingSetupAction:Ljava/lang/Runnable;

    .line 796
    iget v1, p0, Landroid/view/ViewPropertyAnimator;->mOldLayerType:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 797
    iget-object v1, p0, Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayerType()I

    move-result v0

    .line 798
    .local v0, "currentLayerType":I
    iput v0, p0, Landroid/view/ViewPropertyAnimator;->mOldLayerType:I

    .line 804
    :goto_0
    new-instance v1, Landroid/view/ViewPropertyAnimator$3;

    invoke-direct {v1, p0, v0}, Landroid/view/ViewPropertyAnimator$3;-><init>(Landroid/view/ViewPropertyAnimator;I)V

    iput-object v1, p0, Landroid/view/ViewPropertyAnimator;->mPendingCleanupAction:Ljava/lang/Runnable;

    .line 812
    iget-object v1, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorSetupMap:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 813
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorSetupMap:Ljava/util/HashMap;

    .line 815
    :cond_0
    iget-object v1, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorCleanupMap:Ljava/util/HashMap;

    if-nez v1, :cond_1

    .line 816
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorCleanupMap:Ljava/util/HashMap;

    .line 819
    :cond_1
    return-object p0

    .line 801
    .end local v0    # "currentLayerType":I
    :cond_2
    iget v0, p0, Landroid/view/ViewPropertyAnimator;->mOldLayerType:I

    .restart local v0    # "currentLayerType":I
    goto :goto_0
.end method

.method public withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 834
    iput-object p1, p0, Landroid/view/ViewPropertyAnimator;->mPendingOnStartAction:Ljava/lang/Runnable;

    .line 835
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorOnStartMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 836
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorOnStartMap:Ljava/util/HashMap;

    .line 838
    :cond_0
    return-object p0
.end method

.method public x(F)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 460
    const/16 v0, 0x100

    invoke-direct {p0, v0, p1}, Landroid/view/ViewPropertyAnimator;->animateProperty(IF)V

    .line 461
    return-object p0
.end method

.method public xBy(F)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 473
    const/16 v0, 0x100

    invoke-direct {p0, v0, p1}, Landroid/view/ViewPropertyAnimator;->animatePropertyBy(IF)V

    .line 474
    return-object p0
.end method

.method public y(F)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 486
    const/16 v0, 0x200

    invoke-direct {p0, v0, p1}, Landroid/view/ViewPropertyAnimator;->animateProperty(IF)V

    .line 487
    return-object p0
.end method

.method public yBy(F)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 499
    const/16 v0, 0x200

    invoke-direct {p0, v0, p1}, Landroid/view/ViewPropertyAnimator;->animatePropertyBy(IF)V

    .line 500
    return-object p0
.end method

.method public z(F)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 512
    const/16 v0, 0x400

    invoke-direct {p0, v0, p1}, Landroid/view/ViewPropertyAnimator;->animateProperty(IF)V

    .line 513
    return-object p0
.end method

.method public zBy(F)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 525
    const/16 v0, 0x400

    invoke-direct {p0, v0, p1}, Landroid/view/ViewPropertyAnimator;->animatePropertyBy(IF)V

    .line 526
    return-object p0
.end method
