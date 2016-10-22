.class public Landroid/widget/AlphaLinearLayout;
.super Landroid/widget/LinearLayout;
.source "AlphaLinearLayout.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field private static final ANIMATION:Landroid/view/animation/Animation;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 60
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3e4ccccd    # 0.2f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    sput-object v0, Landroid/widget/AlphaLinearLayout;->ANIMATION:Landroid/view/animation/Animation;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 64
    invoke-direct {p0}, Landroid/widget/AlphaLinearLayout;->init()V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    invoke-direct {p0}, Landroid/widget/AlphaLinearLayout;->init()V

    .line 70
    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    .line 103
    sget-object v0, Landroid/widget/AlphaLinearLayout;->ANIMATION:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 104
    return-void
.end method


# virtual methods
.method public startAlpha(I)V
    .locals 1
    .param p1, "alph"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 83
    sget-object v0, Landroid/widget/AlphaLinearLayout;->ANIMATION:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Landroid/widget/AlphaLinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 84
    return-void
.end method
