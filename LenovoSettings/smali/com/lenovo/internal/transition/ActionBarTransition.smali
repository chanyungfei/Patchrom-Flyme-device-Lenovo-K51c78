.class public Lcom/lenovo/internal/transition/ActionBarTransition;
.super Ljava/lang/Object;
.source "ActionBarTransition.java"


# static fields
.field private static final TRANSITIONS_ENABLED:Z

.field private static final TRANSITION_DURATION:I = 0x78

.field private static final sTransition:Landroid/transition/Transition;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 34
    const/4 v2, 0x0

    sput-boolean v2, Lcom/lenovo/internal/transition/ActionBarTransition;->TRANSITIONS_ENABLED:Z

    .line 41
    sget-boolean v2, Lcom/lenovo/internal/transition/ActionBarTransition;->TRANSITIONS_ENABLED:Z

    if-eqz v2, :cond_0

    .line 44
    new-instance v0, Landroid/transition/TransitionSet;

    invoke-direct {v0}, Landroid/transition/TransitionSet;-><init>()V

    .line 45
    .local v0, "inner":Landroid/transition/TransitionSet;
    new-instance v2, Landroid/transition/ChangeBounds;

    invoke-direct {v2}, Landroid/transition/ChangeBounds;-><init>()V

    invoke-virtual {v0, v2}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 46
    new-instance v1, Landroid/transition/TransitionSet;

    invoke-direct {v1}, Landroid/transition/TransitionSet;-><init>()V

    .line 47
    .local v1, "tg":Landroid/transition/TransitionSet;
    new-instance v2, Landroid/transition/Fade;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Landroid/transition/Fade;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v2

    new-instance v3, Landroid/transition/Fade;

    invoke-direct {v3, v4}, Landroid/transition/Fade;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 49
    invoke-virtual {v1, v4}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    .line 50
    const-wide/16 v2, 0x78

    invoke-virtual {v1, v2, v3}, Landroid/transition/TransitionSet;->setDuration(J)Landroid/transition/TransitionSet;

    .line 51
    sput-object v1, Lcom/lenovo/internal/transition/ActionBarTransition;->sTransition:Landroid/transition/Transition;

    .line 55
    :goto_0
    return-void

    .line 53
    .end local v0    # "inner":Landroid/transition/TransitionSet;
    .end local v1    # "tg":Landroid/transition/TransitionSet;
    :cond_0
    const/4 v2, 0x0

    sput-object v2, Lcom/lenovo/internal/transition/ActionBarTransition;->sTransition:Landroid/transition/Transition;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static beginDelayedTransition(Landroid/view/ViewGroup;)V
    .locals 1
    .param p0, "sceneRoot"    # Landroid/view/ViewGroup;

    .prologue
    .line 58
    sget-boolean v0, Lcom/lenovo/internal/transition/ActionBarTransition;->TRANSITIONS_ENABLED:Z

    if-eqz v0, :cond_0

    .line 59
    sget-object v0, Lcom/lenovo/internal/transition/ActionBarTransition;->sTransition:Landroid/transition/Transition;

    invoke-static {p0, v0}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 61
    :cond_0
    return-void
.end method
