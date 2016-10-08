.class public Lcom/lenovo/component/pulltorefresh/library/PullToRefreshGridView;
.super Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;
.source "PullToRefreshGridView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/component/pulltorefresh/library/PullToRefreshGridView$InternalGridViewSDK9;,
        Lcom/lenovo/component/pulltorefresh/library/PullToRefreshGridView$InternalGridView;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase",
        "<",
        "Landroid/widget/GridView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;-><init>(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;-><init>(Landroid/content/Context;Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$AnimationStyle;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;
    .param p3, "style"    # Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshAdapterViewBase;-><init>(Landroid/content/Context;Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$AnimationStyle;)V

    .line 45
    return-void
.end method


# virtual methods
.method protected bridge synthetic createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Landroid/util/AttributeSet;

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshGridView;->createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/GridView;

    move-result-object v0

    return-object v0
.end method

.method protected final createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/GridView;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 55
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_0

    .line 56
    new-instance v0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshGridView$InternalGridViewSDK9;

    invoke-direct {v0, p0, p1, p2}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshGridView$InternalGridViewSDK9;-><init>(Lcom/lenovo/component/pulltorefresh/library/PullToRefreshGridView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    .local v0, "gv":Landroid/widget/GridView;
    :goto_0
    const v1, 0x90c001a

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setId(I)V

    .line 63
    return-object v0

    .line 58
    .end local v0    # "gv":Landroid/widget/GridView;
    :cond_0
    new-instance v0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshGridView$InternalGridView;

    invoke-direct {v0, p0, p1, p2}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshGridView$InternalGridView;-><init>(Lcom/lenovo/component/pulltorefresh/library/PullToRefreshGridView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v0    # "gv":Landroid/widget/GridView;
    goto :goto_0
.end method

.method public final getPullToRefreshScrollDirection()Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Orientation;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Orientation;->VERTICAL:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Orientation;

    return-object v0
.end method
