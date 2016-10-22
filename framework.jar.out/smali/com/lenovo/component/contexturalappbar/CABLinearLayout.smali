.class public Lcom/lenovo/component/contexturalappbar/CABLinearLayout;
.super Landroid/widget/LinearLayout;
.source "CABLinearLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/component/contexturalappbar/CABLinearLayout$LenovoLinearLayoutInterface;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CABLinearLayout"


# instance fields
.field private bIsCanClickChild:Z

.field private bIsCanDispatchTouch:Z

.field private mDownX:F

.field private mDownY:F

.field private mLenovoLinearLayoutInterface:Lcom/lenovo/component/contexturalappbar/CABLinearLayout$LenovoLinearLayoutInterface;

.field private mMoveX:F

.field private mMoveY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/component/contexturalappbar/CABLinearLayout;->bIsCanDispatchTouch:Z

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/component/contexturalappbar/CABLinearLayout;->bIsCanClickChild:Z

    .line 16
    iput v1, p0, Lcom/lenovo/component/contexturalappbar/CABLinearLayout;->mDownY:F

    .line 17
    iput v1, p0, Lcom/lenovo/component/contexturalappbar/CABLinearLayout;->mMoveY:F

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/component/contexturalappbar/CABLinearLayout;->bIsCanDispatchTouch:Z

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/component/contexturalappbar/CABLinearLayout;->bIsCanClickChild:Z

    .line 16
    iput v1, p0, Lcom/lenovo/component/contexturalappbar/CABLinearLayout;->mDownY:F

    .line 17
    iput v1, p0, Lcom/lenovo/component/contexturalappbar/CABLinearLayout;->mMoveY:F

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/component/contexturalappbar/CABLinearLayout;->bIsCanDispatchTouch:Z

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/component/contexturalappbar/CABLinearLayout;->bIsCanClickChild:Z

    .line 16
    iput v1, p0, Lcom/lenovo/component/contexturalappbar/CABLinearLayout;->mDownY:F

    .line 17
    iput v1, p0, Lcom/lenovo/component/contexturalappbar/CABLinearLayout;->mMoveY:F

    .line 40
    return-void
.end method

.method private spacing(FFFF)D
    .locals 4
    .param p1, "dx"    # F
    .param p2, "dy"    # F
    .param p3, "mx"    # F
    .param p4, "my"    # F

    .prologue
    .line 92
    sub-float v0, p1, p3

    .line 93
    .local v0, "x":F
    sub-float v1, p2, p4

    .line 94
    .local v1, "y":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    return-wide v2
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 108
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 109
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABLinearLayout;->mLenovoLinearLayoutInterface:Lcom/lenovo/component/contexturalappbar/CABLinearLayout$LenovoLinearLayoutInterface;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABLinearLayout;->mLenovoLinearLayoutInterface:Lcom/lenovo/component/contexturalappbar/CABLinearLayout$LenovoLinearLayoutInterface;

    invoke-interface {v0}, Lcom/lenovo/component/contexturalappbar/CABLinearLayout$LenovoLinearLayoutInterface;->onMeasureEnd()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 112
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 66
    iget-boolean v1, p0, Lcom/lenovo/component/contexturalappbar/CABLinearLayout;->bIsCanDispatchTouch:Z

    if-eqz v1, :cond_0

    .line 67
    iget-boolean v1, p0, Lcom/lenovo/component/contexturalappbar/CABLinearLayout;->bIsCanClickChild:Z

    if-eqz v1, :cond_0

    .line 68
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v0, v1, 0xff

    .line 69
    .local v0, "action":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/lenovo/component/contexturalappbar/CABLinearLayout;->mLenovoLinearLayoutInterface:Lcom/lenovo/component/contexturalappbar/CABLinearLayout$LenovoLinearLayoutInterface;

    if-eqz v1, :cond_1

    .line 71
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/lenovo/component/contexturalappbar/CABLinearLayout;->mMoveX:F

    .line 72
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/lenovo/component/contexturalappbar/CABLinearLayout;->mMoveY:F

    .line 74
    iget v1, p0, Lcom/lenovo/component/contexturalappbar/CABLinearLayout;->mDownX:F

    iget v2, p0, Lcom/lenovo/component/contexturalappbar/CABLinearLayout;->mDownY:F

    iget v3, p0, Lcom/lenovo/component/contexturalappbar/CABLinearLayout;->mMoveX:F

    iget v4, p0, Lcom/lenovo/component/contexturalappbar/CABLinearLayout;->mMoveY:F

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/lenovo/component/contexturalappbar/CABLinearLayout;->spacing(FFFF)D

    move-result-wide v2

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    cmpl-double v1, v2, v4

    if-lez v1, :cond_0

    .line 75
    iput-boolean v6, p0, Lcom/lenovo/component/contexturalappbar/CABLinearLayout;->bIsCanDispatchTouch:Z

    .line 77
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->setAction(I)V

    .line 78
    iget-object v1, p0, Lcom/lenovo/component/contexturalappbar/CABLinearLayout;->mLenovoLinearLayoutInterface:Lcom/lenovo/component/contexturalappbar/CABLinearLayout$LenovoLinearLayoutInterface;

    invoke-interface {v1, p1}, Lcom/lenovo/component/contexturalappbar/CABLinearLayout$LenovoLinearLayoutInterface;->onTouchEventEx(Landroid/view/MotionEvent;)V

    .line 88
    .end local v0    # "action":I
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 80
    .restart local v0    # "action":I
    :cond_1
    if-nez v0, :cond_0

    .line 81
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/lenovo/component/contexturalappbar/CABLinearLayout;->mDownX:F

    .line 82
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/lenovo/component/contexturalappbar/CABLinearLayout;->mDownY:F

    .line 83
    iput v2, p0, Lcom/lenovo/component/contexturalappbar/CABLinearLayout;->mMoveX:F

    .line 84
    iput v2, p0, Lcom/lenovo/component/contexturalappbar/CABLinearLayout;->mMoveY:F

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/lenovo/component/contexturalappbar/CABLinearLayout;->bIsCanDispatchTouch:Z

    if-nez v0, :cond_0

    .line 45
    const-string v0, "CABLinearLayout"

    const-string v1, "CABLinearLayout onInterceptTouchEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    const/4 v0, 0x1

    .line 49
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 99
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 100
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABLinearLayout;->mLenovoLinearLayoutInterface:Lcom/lenovo/component/contexturalappbar/CABLinearLayout$LenovoLinearLayoutInterface;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABLinearLayout;->mLenovoLinearLayoutInterface:Lcom/lenovo/component/contexturalappbar/CABLinearLayout$LenovoLinearLayoutInterface;

    invoke-interface {v0}, Lcom/lenovo/component/contexturalappbar/CABLinearLayout$LenovoLinearLayoutInterface;->onGetLayoutSie()V

    .line 103
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/lenovo/component/contexturalappbar/CABLinearLayout;->bIsCanDispatchTouch:Z

    if-nez v0, :cond_1

    .line 55
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABLinearLayout;->mLenovoLinearLayoutInterface:Lcom/lenovo/component/contexturalappbar/CABLinearLayout$LenovoLinearLayoutInterface;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABLinearLayout;->mLenovoLinearLayoutInterface:Lcom/lenovo/component/contexturalappbar/CABLinearLayout$LenovoLinearLayoutInterface;

    invoke-interface {v0, p1}, Lcom/lenovo/component/contexturalappbar/CABLinearLayout$LenovoLinearLayoutInterface;->onTouchEventEx(Landroid/view/MotionEvent;)V

    .line 58
    :cond_0
    const/4 v0, 0x1

    .line 61
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setCanClickChild(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 134
    iput-boolean p1, p0, Lcom/lenovo/component/contexturalappbar/CABLinearLayout;->bIsCanClickChild:Z

    .line 135
    return-void
.end method

.method public setCanDispatchTouch(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/lenovo/component/contexturalappbar/CABLinearLayout;->bIsCanDispatchTouch:Z

    .line 131
    return-void
.end method

.method public setEnabledEx(Z)V
    .locals 3
    .param p1, "b"    # Z

    .prologue
    .line 117
    invoke-virtual {p0, p1}, Lcom/lenovo/component/contexturalappbar/CABLinearLayout;->setEnabled(Z)V

    .line 119
    invoke-virtual {p0}, Lcom/lenovo/component/contexturalappbar/CABLinearLayout;->getChildCount()I

    move-result v1

    .line 120
    .local v1, "itemsSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 121
    invoke-virtual {p0, v0}, Lcom/lenovo/component/contexturalappbar/CABLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 123
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 124
    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 120
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 127
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public setOnLinearLayoutExInterface(Lcom/lenovo/component/contexturalappbar/CABLinearLayout$LenovoLinearLayoutInterface;)V
    .locals 0
    .param p1, "layoutInterface"    # Lcom/lenovo/component/contexturalappbar/CABLinearLayout$LenovoLinearLayoutInterface;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/lenovo/component/contexturalappbar/CABLinearLayout;->mLenovoLinearLayoutInterface:Lcom/lenovo/component/contexturalappbar/CABLinearLayout$LenovoLinearLayoutInterface;

    .line 139
    return-void
.end method
