.class public Lcom/lenovo/component/contexturalappbar/CABContentLayout;
.super Landroid/widget/FrameLayout;
.source "CABContentLayout.java"


# instance fields
.field final MSG_SETSTATE:I

.field final STATE_IDLE:I

.field final STATE_MORE:I

.field final STATE_SHOW:I

.field private mAnimationListener:Landroid/animation/Animator$AnimatorListener;

.field private mBottomButtonCount:I

.field private mBottomButtonNum:I

.field private mBottomCommonView:Lcom/lenovo/component/contexturalappbar/CABLinearLayout;

.field private mBottomMoreView:Landroid/widget/ScrollView;

.field private mCommonButtonView:Landroid/widget/LinearLayout;

.field private mContentLayout:Landroid/widget/LinearLayout;

.field private mContentView:Landroid/view/View;

.field mContext:Landroid/content/Context;

.field private mDimView:Landroid/widget/LinearLayout;

.field private mHandler:Landroid/os/Handler;

.field private mIsAnimatoring:Z

.field private mIsContentViewFreeze:Z

.field private mIsScroll:Z

.field private mLayoutHeight:I

.field private mLayoutWidth:I

.field private mMaskLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mMaskView:Landroid/widget/LinearLayout;

.field private mMoreButtonView:Landroid/widget/LinearLayout;

.field private mMoreImage:Landroid/widget/ImageView;

.field private mOnlyTextMode:Z

.field private mShowMask:Z

.field private mState:I

.field private mValueAnimator:Landroid/animation/ValueAnimator;

.field mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 84
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 34
    iput v1, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->STATE_IDLE:I

    .line 35
    iput v2, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->STATE_SHOW:I

    .line 36
    const/4 v0, 0x2

    iput v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->STATE_MORE:I

    .line 37
    iput v1, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mState:I

    .line 41
    iput v2, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->MSG_SETSTATE:I

    .line 44
    iput-boolean v1, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mIsAnimatoring:Z

    .line 45
    iput-boolean v1, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mIsScroll:Z

    .line 46
    iput-boolean v1, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mIsContentViewFreeze:Z

    .line 60
    iput v1, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mBottomButtonNum:I

    .line 61
    iput v1, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mBottomButtonCount:I

    .line 65
    iput-boolean v1, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mShowMask:Z

    .line 67
    iput v1, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mLayoutWidth:I

    .line 68
    iput v1, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mLayoutHeight:I

    .line 70
    new-instance v0, Lcom/lenovo/component/contexturalappbar/CABContentLayout$1;

    invoke-direct {v0, p0}, Lcom/lenovo/component/contexturalappbar/CABContentLayout$1;-><init>(Lcom/lenovo/component/contexturalappbar/CABContentLayout;)V

    iput-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mHandler:Landroid/os/Handler;

    .line 467
    new-instance v0, Lcom/lenovo/component/contexturalappbar/CABContentLayout$5;

    invoke-direct {v0, p0}, Lcom/lenovo/component/contexturalappbar/CABContentLayout$5;-><init>(Lcom/lenovo/component/contexturalappbar/CABContentLayout;)V

    iput-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mAnimationListener:Landroid/animation/Animator$AnimatorListener;

    .line 85
    iput-object p1, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mContext:Landroid/content/Context;

    .line 86
    invoke-direct {p0}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->init()V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 90
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    iput v1, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->STATE_IDLE:I

    .line 35
    iput v2, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->STATE_SHOW:I

    .line 36
    const/4 v0, 0x2

    iput v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->STATE_MORE:I

    .line 37
    iput v1, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mState:I

    .line 41
    iput v2, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->MSG_SETSTATE:I

    .line 44
    iput-boolean v1, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mIsAnimatoring:Z

    .line 45
    iput-boolean v1, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mIsScroll:Z

    .line 46
    iput-boolean v1, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mIsContentViewFreeze:Z

    .line 60
    iput v1, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mBottomButtonNum:I

    .line 61
    iput v1, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mBottomButtonCount:I

    .line 65
    iput-boolean v1, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mShowMask:Z

    .line 67
    iput v1, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mLayoutWidth:I

    .line 68
    iput v1, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mLayoutHeight:I

    .line 70
    new-instance v0, Lcom/lenovo/component/contexturalappbar/CABContentLayout$1;

    invoke-direct {v0, p0}, Lcom/lenovo/component/contexturalappbar/CABContentLayout$1;-><init>(Lcom/lenovo/component/contexturalappbar/CABContentLayout;)V

    iput-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mHandler:Landroid/os/Handler;

    .line 467
    new-instance v0, Lcom/lenovo/component/contexturalappbar/CABContentLayout$5;

    invoke-direct {v0, p0}, Lcom/lenovo/component/contexturalappbar/CABContentLayout$5;-><init>(Lcom/lenovo/component/contexturalappbar/CABContentLayout;)V

    iput-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mAnimationListener:Landroid/animation/Animator$AnimatorListener;

    .line 91
    iput-object p1, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mContext:Landroid/content/Context;

    .line 92
    invoke-direct {p0}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->init()V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 96
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    iput v1, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->STATE_IDLE:I

    .line 35
    iput v2, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->STATE_SHOW:I

    .line 36
    const/4 v0, 0x2

    iput v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->STATE_MORE:I

    .line 37
    iput v1, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mState:I

    .line 41
    iput v2, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->MSG_SETSTATE:I

    .line 44
    iput-boolean v1, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mIsAnimatoring:Z

    .line 45
    iput-boolean v1, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mIsScroll:Z

    .line 46
    iput-boolean v1, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mIsContentViewFreeze:Z

    .line 60
    iput v1, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mBottomButtonNum:I

    .line 61
    iput v1, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mBottomButtonCount:I

    .line 65
    iput-boolean v1, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mShowMask:Z

    .line 67
    iput v1, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mLayoutWidth:I

    .line 68
    iput v1, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mLayoutHeight:I

    .line 70
    new-instance v0, Lcom/lenovo/component/contexturalappbar/CABContentLayout$1;

    invoke-direct {v0, p0}, Lcom/lenovo/component/contexturalappbar/CABContentLayout$1;-><init>(Lcom/lenovo/component/contexturalappbar/CABContentLayout;)V

    iput-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mHandler:Landroid/os/Handler;

    .line 467
    new-instance v0, Lcom/lenovo/component/contexturalappbar/CABContentLayout$5;

    invoke-direct {v0, p0}, Lcom/lenovo/component/contexturalappbar/CABContentLayout$5;-><init>(Lcom/lenovo/component/contexturalappbar/CABContentLayout;)V

    iput-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mAnimationListener:Landroid/animation/Animator$AnimatorListener;

    .line 97
    iput-object p1, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mContext:Landroid/content/Context;

    .line 98
    invoke-direct {p0}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->init()V

    .line 99
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/component/contexturalappbar/CABContentLayout;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/component/contexturalappbar/CABContentLayout;
    .param p1, "x1"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->setStateWithAnimation(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/lenovo/component/contexturalappbar/CABContentLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/component/contexturalappbar/CABContentLayout;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->getState()I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/lenovo/component/contexturalappbar/CABContentLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/component/contexturalappbar/CABContentLayout;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->hideMaskView()V

    return-void
.end method

.method static synthetic access$1100(Lcom/lenovo/component/contexturalappbar/CABContentLayout;Z)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/component/contexturalappbar/CABContentLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->getBottomBarHeight(Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/lenovo/component/contexturalappbar/CABContentLayout;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/component/contexturalappbar/CABContentLayout;
    .param p1, "x1"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->updateContentLayout(I)V

    return-void
.end method

.method static synthetic access$202(Lcom/lenovo/component/contexturalappbar/CABContentLayout;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/component/contexturalappbar/CABContentLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mIsAnimatoring:Z

    return p1
.end method

.method static synthetic access$300(Lcom/lenovo/component/contexturalappbar/CABContentLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/component/contexturalappbar/CABContentLayout;

    .prologue
    .line 30
    iget v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mState:I

    return v0
.end method

.method static synthetic access$400(Lcom/lenovo/component/contexturalappbar/CABContentLayout;)Lcom/lenovo/component/contexturalappbar/CABLinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/component/contexturalappbar/CABContentLayout;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mBottomCommonView:Lcom/lenovo/component/contexturalappbar/CABLinearLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lenovo/component/contexturalappbar/CABContentLayout;)Landroid/widget/ScrollView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/component/contexturalappbar/CABContentLayout;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mBottomMoreView:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lenovo/component/contexturalappbar/CABContentLayout;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/component/contexturalappbar/CABContentLayout;
    .param p1, "x1"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->imageRotation(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/lenovo/component/contexturalappbar/CABContentLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/component/contexturalappbar/CABContentLayout;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->showMaskView()V

    return-void
.end method

.method static synthetic access$800(Lcom/lenovo/component/contexturalappbar/CABContentLayout;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/component/contexturalappbar/CABContentLayout;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mDimView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$900(Lcom/lenovo/component/contexturalappbar/CABContentLayout;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/component/contexturalappbar/CABContentLayout;
    .param p1, "x1"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->updateDimView(I)V

    return-void
.end method

.method private addCommonButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 11
    .param p1, "textId"    # I
    .param p2, "imageId"    # I
    .param p3, "clickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 299
    iget-object v8, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x9040006

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 300
    .local v6, "view":Landroid/widget/LinearLayout;
    const v8, 0x90c0028

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/component/contexturalappbar/CABLinearLayout;

    .line 301
    .local v0, "button":Lcom/lenovo/component/contexturalappbar/CABLinearLayout;
    invoke-virtual {v0, p3}, Lcom/lenovo/component/contexturalappbar/CABLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    const v8, 0x90c0029

    invoke-virtual {v0, v8}, Lcom/lenovo/component/contexturalappbar/CABLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 303
    .local v2, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 304
    const v8, 0x90c002a

    invoke-virtual {v0, v8}, Lcom/lenovo/component/contexturalappbar/CABLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 305
    .local v5, "textView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 306
    .local v4, "text":Ljava/lang/String;
    invoke-direct {p0, v5, v4}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 307
    invoke-virtual {p0}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x9080006

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-virtual {p0}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x9080009

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    add-int v7, v8, v9

    .line 308
    .local v7, "width":I
    invoke-virtual {p0}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x9080007

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 309
    .local v1, "height":I
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v7, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 310
    .local v3, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v8, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mCommonButtonView:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v6, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 311
    return-object v0
.end method

.method private addCommonButton(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 10
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "imageId"    # I
    .param p3, "clickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 315
    iget-object v7, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x9040006

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 316
    .local v5, "view":Landroid/widget/LinearLayout;
    const v7, 0x90c0028

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/component/contexturalappbar/CABLinearLayout;

    .line 317
    .local v0, "button":Lcom/lenovo/component/contexturalappbar/CABLinearLayout;
    invoke-virtual {v0, p3}, Lcom/lenovo/component/contexturalappbar/CABLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    const v7, 0x90c0029

    invoke-virtual {v0, v7}, Lcom/lenovo/component/contexturalappbar/CABLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 319
    .local v2, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 320
    const v7, 0x90c002a

    invoke-virtual {v0, v7}, Lcom/lenovo/component/contexturalappbar/CABLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 321
    .local v4, "textView":Landroid/widget/TextView;
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v4, v7}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 322
    invoke-virtual {p0}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x9080006

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {p0}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x9080009

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    add-int v6, v7, v8

    .line 323
    .local v6, "width":I
    invoke-virtual {p0}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x9080007

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 324
    .local v1, "height":I
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v6, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 325
    .local v3, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v7, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mCommonButtonView:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 326
    return-object v0
.end method

.method private addCommonButton(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 10
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "image"    # Landroid/graphics/drawable/Drawable;
    .param p3, "clickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 330
    iget-object v7, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x9040006

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 331
    .local v5, "view":Landroid/widget/LinearLayout;
    const v7, 0x90c0028

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/component/contexturalappbar/CABLinearLayout;

    .line 332
    .local v0, "button":Lcom/lenovo/component/contexturalappbar/CABLinearLayout;
    invoke-virtual {v0, p3}, Lcom/lenovo/component/contexturalappbar/CABLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 333
    const v7, 0x90c0029

    invoke-virtual {v0, v7}, Lcom/lenovo/component/contexturalappbar/CABLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 334
    .local v2, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 335
    const v7, 0x90c002a

    invoke-virtual {v0, v7}, Lcom/lenovo/component/contexturalappbar/CABLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 336
    .local v4, "textView":Landroid/widget/TextView;
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v4, v7}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 337
    invoke-virtual {p0}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x9080006

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {p0}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x9080009

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    add-int v6, v7, v8

    .line 338
    .local v6, "width":I
    invoke-virtual {p0}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x9080007

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 339
    .local v1, "height":I
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v6, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 340
    .local v3, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v7, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mCommonButtonView:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 341
    return-object v0
.end method

.method private addMoreButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 6
    .param p1, "textId"    # I
    .param p2, "clickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 386
    iget-object v3, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x9040008

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 387
    .local v2, "view":Landroid/widget/LinearLayout;
    const v3, 0x90c002c

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 388
    .local v1, "textButton":Landroid/widget/TextView;
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(I)V

    .line 389
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 390
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-virtual {p0}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x9080010

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-direct {v0, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 391
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v3, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mMoreButtonView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 392
    return-object v1
.end method

.method private addMoreButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 6
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "clickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 396
    iget-object v3, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x9040008

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 397
    .local v2, "view":Landroid/widget/LinearLayout;
    const v3, 0x90c002c

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 398
    .local v1, "textButton":Landroid/widget/TextView;
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 399
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 400
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-virtual {p0}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x9080010

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-direct {v0, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 401
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v3, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mMoreButtonView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 402
    return-object v1
.end method

.method private addMoreButton()V
    .locals 9

    .prologue
    .line 345
    iget-object v6, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x9040006

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 346
    .local v4, "view":Landroid/widget/LinearLayout;
    const v6, 0x90c0028

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lenovo/component/contexturalappbar/CABLinearLayout;

    .line 347
    .local v2, "moreButton":Lcom/lenovo/component/contexturalappbar/CABLinearLayout;
    new-instance v6, Lcom/lenovo/component/contexturalappbar/CABContentLayout$2;

    invoke-direct {v6, p0}, Lcom/lenovo/component/contexturalappbar/CABContentLayout$2;-><init>(Lcom/lenovo/component/contexturalappbar/CABContentLayout;)V

    invoke-virtual {v2, v6}, Lcom/lenovo/component/contexturalappbar/CABLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 357
    const v6, 0x90c0029

    invoke-virtual {v2, v6}, Lcom/lenovo/component/contexturalappbar/CABLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mMoreImage:Landroid/widget/ImageView;

    .line 358
    iget-object v6, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mMoreImage:Landroid/widget/ImageView;

    const v7, 0x9020047

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 359
    const v6, 0x90c002a

    invoke-virtual {v2, v6}, Lcom/lenovo/component/contexturalappbar/CABLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 360
    .local v3, "textView":Landroid/widget/TextView;
    const v6, 0x9090009

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    .line 361
    invoke-virtual {p0}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x9080006

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {p0}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x9080009

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    add-int v5, v6, v7

    .line 362
    .local v5, "width":I
    invoke-virtual {p0}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x9080007

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 363
    .local v0, "height":I
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v5, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 364
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v6, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mCommonButtonView:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 365
    return-void
.end method

.method private addSpaceToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 834
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 835
    .local v3, "stringBuffer":Ljava/lang/StringBuffer;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 836
    .local v2, "length":I
    const-string v4, " "

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 837
    add-int/lit8 v4, v2, -0x5

    const-string v5, "\n"

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 850
    :goto_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 839
    :cond_0
    const-string v4, " "

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 840
    .local v0, "indexOf":I
    const-string v4, " "

    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 841
    .local v1, "lastIndexOf":I
    if-eq v0, v1, :cond_1

    add-int/lit8 v4, v0, 0x1

    if-ne v4, v1, :cond_2

    .line 842
    :cond_1
    add-int/lit8 v4, v1, 0x1

    const-string v5, "\n"

    invoke-virtual {v3, v0, v4, v5}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 844
    :cond_2
    sub-int v4, v2, v1

    add-int/lit8 v4, v4, -0x1

    if-lt v0, v4, :cond_3

    .line 845
    add-int/lit8 v4, v0, 0x1

    const-string v5, "\n"

    invoke-virtual {v3, v0, v4, v5}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 847
    :cond_3
    add-int/lit8 v4, v1, 0x1

    const-string v5, "\n"

    invoke-virtual {v3, v1, v4, v5}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private addTextButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 5
    .param p1, "textId"    # I
    .param p2, "clickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 368
    iget-object v2, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x904000a

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 369
    .local v1, "textButton":Landroid/widget/TextView;
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(I)V

    .line 370
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 371
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p0}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->getLayoutWidth()I

    move-result v2

    iget v3, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mBottomButtonNum:I

    div-int/2addr v2, v3

    const/4 v3, -0x1

    invoke-direct {v0, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 372
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mCommonButtonView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 373
    return-object v1
.end method

.method private addTextButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 5
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "clickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 377
    iget-object v2, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x904000a

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 378
    .local v1, "textButton":Landroid/widget/TextView;
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 379
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 380
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p0}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->getLayoutWidth()I

    move-result v2

    iget v3, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mBottomButtonNum:I

    div-int/2addr v2, v3

    const/4 v3, -0x1

    invoke-direct {v0, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 381
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mCommonButtonView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 382
    return-object v1
.end method

.method private commonAnimation(III)V
    .locals 4
    .param p1, "animatorBegin"    # I
    .param p2, "animatorEnd"    # I
    .param p3, "duration"    # I

    .prologue
    .line 498
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 499
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 500
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mValueAnimator:Landroid/animation/ValueAnimator;

    int-to-long v2, p3

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 501
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mValueAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 502
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/lenovo/component/contexturalappbar/CABContentLayout$6;

    invoke-direct {v1, p0}, Lcom/lenovo/component/contexturalappbar/CABContentLayout$6;-><init>(Lcom/lenovo/component/contexturalappbar/CABContentLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 508
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 509
    return-void
.end method

.method private getBottomBarHeight(Z)I
    .locals 2
    .param p1, "showMore"    # Z

    .prologue
    const v1, 0x9080005

    .line 692
    if-eqz p1, :cond_0

    .line 693
    invoke-virtual {p0}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-direct {p0}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->getScrollViewHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 695
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0
.end method

.method private getBottomBarOffset(Z)I
    .locals 2
    .param p1, "showMore"    # Z

    .prologue
    .line 688
    invoke-direct {p0}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->getLayoutHeight()I

    move-result v0

    invoke-direct {p0, p1}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->getBottomBarHeight(Z)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private getLayoutHeight()I
    .locals 1

    .prologue
    .line 713
    iget v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mLayoutHeight:I

    if-eqz v0, :cond_0

    .line 714
    iget v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mLayoutHeight:I

    .line 716
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method private getLayoutWidth()I
    .locals 1

    .prologue
    .line 706
    iget v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mLayoutWidth:I

    if-eqz v0, :cond_0

    .line 707
    iget v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mLayoutWidth:I

    .line 709
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    goto :goto_0
.end method

.method private getScrollViewHeight()I
    .locals 4

    .prologue
    const v3, 0x9080010

    .line 699
    iget-boolean v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mIsScroll:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mBottomButtonNum:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    .line 700
    const-wide/high16 v0, 0x4004000000000000L    # 2.5

    invoke-virtual {p0}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 702
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget v1, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mBottomButtonNum:I

    add-int/lit8 v1, v1, -0x3

    mul-int/2addr v0, v1

    goto :goto_0
.end method

.method private getState()I
    .locals 1

    .prologue
    .line 684
    iget v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mState:I

    return v0
.end method

.method private hideMaskView()V
    .locals 2

    .prologue
    .line 862
    iget-boolean v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mShowMask:Z

    if-nez v0, :cond_0

    .line 866
    :goto_0
    return-void

    .line 864
    :cond_0
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mMaskView:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 865
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mShowMask:Z

    goto :goto_0
.end method

.method private hideMoreAnimation(I)V
    .locals 4
    .param p1, "duration"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 548
    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-direct {p0, v3}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->getBottomBarOffset(Z)I

    move-result v1

    aput v1, v0, v2

    invoke-direct {p0, v2}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->getBottomBarOffset(Z)I

    move-result v1

    aput v1, v0, v3

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 549
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 550
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mValueAnimator:Landroid/animation/ValueAnimator;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 551
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/lenovo/component/contexturalappbar/CABContentLayout$9;

    invoke-direct {v1, p0}, Lcom/lenovo/component/contexturalappbar/CABContentLayout$9;-><init>(Lcom/lenovo/component/contexturalappbar/CABContentLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 573
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/lenovo/component/contexturalappbar/CABContentLayout$10;

    invoke-direct {v1, p0}, Lcom/lenovo/component/contexturalappbar/CABContentLayout$10;-><init>(Lcom/lenovo/component/contexturalappbar/CABContentLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 580
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 581
    return-void
.end method

.method private imageRotation(I)V
    .locals 12
    .param p1, "type"    # I

    .prologue
    const/high16 v2, 0x42b40000    # 90.0f

    const/4 v1, 0x0

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v3, 0x1

    .line 584
    iget-object v5, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mMoreImage:Landroid/widget/ImageView;

    if-nez v5, :cond_0

    .line 597
    :goto_0
    return-void

    .line 588
    :cond_0
    if-nez p1, :cond_1

    .line 589
    new-instance v0, Landroid/view/animation/RotateAnimation;

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 593
    .local v0, "animation":Landroid/view/animation/Animation;
    :goto_1
    const-wide/16 v4, 0x64

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 594
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 595
    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 596
    iget-object v1, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mMoreImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 591
    .end local v0    # "animation":Landroid/view/animation/Animation;
    :cond_1
    new-instance v0, Landroid/view/animation/RotateAnimation;

    move-object v5, v0

    move v6, v2

    move v7, v1

    move v8, v3

    move v9, v4

    move v10, v3

    move v11, v4

    invoke-direct/range {v5 .. v11}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .restart local v0    # "animation":Landroid/view/animation/Animation;
    goto :goto_1
.end method

.method private init()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 406
    iput v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mBottomButtonCount:I

    .line 407
    iput v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mBottomButtonNum:I

    .line 408
    iput-boolean v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mIsContentViewFreeze:Z

    .line 409
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mWindowManager:Landroid/view/WindowManager;

    .line 410
    invoke-direct {p0}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->initContentView()V

    .line 411
    invoke-direct {p0}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->initBottomView()V

    .line 412
    invoke-direct {p0}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->initMaskView()V

    .line 413
    return-void
.end method

.method private initBottomView()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, -0x2

    .line 433
    iget-object v2, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x9040009

    invoke-virtual {v2, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    iput-object v2, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mBottomMoreView:Landroid/widget/ScrollView;

    .line 434
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 435
    .local v1, "cmlp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mBottomMoreView:Landroid/widget/ScrollView;

    invoke-virtual {p0, v2, v1}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 436
    iget-object v2, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x9040007

    invoke-virtual {v2, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lenovo/component/contexturalappbar/CABLinearLayout;

    iput-object v2, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mBottomCommonView:Lcom/lenovo/component/contexturalappbar/CABLinearLayout;

    .line 437
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 438
    .local v0, "cclp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mBottomCommonView:Lcom/lenovo/component/contexturalappbar/CABLinearLayout;

    invoke-virtual {p0, v2, v0}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 439
    iget-object v2, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mBottomCommonView:Lcom/lenovo/component/contexturalappbar/CABLinearLayout;

    const v3, 0x90c002b

    invoke-virtual {v2, v3}, Lcom/lenovo/component/contexturalappbar/CABLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mCommonButtonView:Landroid/widget/LinearLayout;

    .line 440
    iget-object v2, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mBottomMoreView:Landroid/widget/ScrollView;

    const v3, 0x90c002d

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mMoreButtonView:Landroid/widget/LinearLayout;

    .line 441
    return-void
.end method

.method private initContentView()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 416
    iget-object v2, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x904000d

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mContentLayout:Landroid/widget/LinearLayout;

    .line 417
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 418
    .local v0, "cllp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mContentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2, v0}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 419
    iget-object v2, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x904000b

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mDimView:Landroid/widget/LinearLayout;

    .line 420
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v4, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 421
    .local v1, "dvlp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mDimView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2, v1}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 422
    iget-object v2, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mDimView:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/lenovo/component/contexturalappbar/CABContentLayout$3;

    invoke-direct {v3, p0}, Lcom/lenovo/component/contexturalappbar/CABContentLayout$3;-><init>(Lcom/lenovo/component/contexturalappbar/CABContentLayout;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 429
    iget-object v2, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mDimView:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 430
    return-void
.end method

.method private initMaskView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 444
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x904000e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mMaskView:Landroid/widget/LinearLayout;

    .line 445
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mMaskLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 446
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mMaskLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 447
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mMaskLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 448
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mMaskLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 449
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mMaskLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 450
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mMaskLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 451
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mMaskLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x31

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 452
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mMaskLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x1000028

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 455
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mMaskLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x3e8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 456
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mMaskLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const-string v1, "cabmask"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 457
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mMaskView:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/lenovo/component/contexturalappbar/CABContentLayout$4;

    invoke-direct {v1, p0}, Lcom/lenovo/component/contexturalappbar/CABContentLayout$4;-><init>(Lcom/lenovo/component/contexturalappbar/CABContentLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 464
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mMaskLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x90302e5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 465
    return-void
.end method

.method private setStateWithAnimation(I)V
    .locals 5
    .param p1, "state"    # I

    .prologue
    const/16 v4, 0x1f4

    const/16 v3, 0xc8

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 600
    iget-boolean v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mIsAnimatoring:Z

    if-eqz v0, :cond_0

    .line 644
    :goto_0
    return-void

    .line 604
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 643
    :goto_1
    iput p1, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mState:I

    goto :goto_0

    .line 606
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mBottomMoreView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 607
    iget v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mState:I

    packed-switch v0, :pswitch_data_1

    goto :goto_1

    .line 609
    :pswitch_1
    invoke-direct {p0, v1}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->updateContentLayout(I)V

    .line 610
    invoke-direct {p0, v1}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->getBottomBarOffset(Z)I

    move-result v0

    invoke-direct {p0}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->getLayoutHeight()I

    move-result v1

    invoke-direct {p0, v0, v1, v3}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->commonAnimation(III)V

    goto :goto_1

    .line 613
    :pswitch_2
    invoke-direct {p0, v1}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->updateContentLayout(I)V

    .line 614
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mBottomCommonView:Lcom/lenovo/component/contexturalappbar/CABLinearLayout;

    invoke-virtual {v0, v2}, Lcom/lenovo/component/contexturalappbar/CABLinearLayout;->setVisibility(I)V

    .line 615
    invoke-direct {p0}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->hideMaskView()V

    .line 616
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mDimView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 623
    :pswitch_3
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mBottomCommonView:Lcom/lenovo/component/contexturalappbar/CABLinearLayout;

    invoke-virtual {v0, v1}, Lcom/lenovo/component/contexturalappbar/CABLinearLayout;->setVisibility(I)V

    .line 624
    iget v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mState:I

    packed-switch v0, :pswitch_data_2

    :pswitch_4
    goto :goto_1

    .line 626
    :pswitch_5
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mBottomMoreView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 627
    invoke-direct {p0, v1}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->getBottomBarHeight(Z)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->updateContentLayout(I)V

    .line 628
    invoke-direct {p0}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->getLayoutHeight()I

    move-result v0

    invoke-direct {p0, v1}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->getBottomBarOffset(Z)I

    move-result v1

    invoke-direct {p0, v0, v1, v3}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->commonAnimation(III)V

    goto :goto_1

    .line 631
    :pswitch_6
    invoke-direct {p0, v4}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->hideMoreAnimation(I)V

    goto :goto_1

    .line 638
    :pswitch_7
    invoke-direct {p0, v4}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->showMoreAnimation(I)V

    goto :goto_1

    .line 604
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_7
    .end packed-switch

    .line 607
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 624
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method

.method private setStateWithoutAnimation(I)V
    .locals 5
    .param p1, "state"    # I

    .prologue
    const/4 v4, 0x1

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 647
    packed-switch p1, :pswitch_data_0

    .line 680
    :goto_0
    iput p1, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mState:I

    .line 681
    return-void

    .line 649
    :pswitch_0
    invoke-direct {p0, v2}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->updateContentLayout(I)V

    .line 650
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mBottomCommonView:Lcom/lenovo/component/contexturalappbar/CABLinearLayout;

    invoke-virtual {v0, v3}, Lcom/lenovo/component/contexturalappbar/CABLinearLayout;->setVisibility(I)V

    .line 651
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mBottomMoreView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 652
    invoke-direct {p0}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->hideMaskView()V

    .line 653
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mDimView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 656
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mBottomCommonView:Lcom/lenovo/component/contexturalappbar/CABLinearLayout;

    invoke-virtual {v0, v2}, Lcom/lenovo/component/contexturalappbar/CABLinearLayout;->setVisibility(I)V

    .line 657
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mBottomMoreView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 658
    invoke-direct {p0, v2}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->getBottomBarHeight(Z)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->updateContentLayout(I)V

    .line 659
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mBottomCommonView:Lcom/lenovo/component/contexturalappbar/CABLinearLayout;

    invoke-direct {p0, v2}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->getBottomBarOffset(Z)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/lenovo/component/contexturalappbar/CABLinearLayout;->setTranslationY(F)V

    .line 660
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mMoreImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 661
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mMoreImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 662
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->hideMaskView()V

    .line 663
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mDimView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 666
    :pswitch_2
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mBottomCommonView:Lcom/lenovo/component/contexturalappbar/CABLinearLayout;

    invoke-virtual {v0, v2}, Lcom/lenovo/component/contexturalappbar/CABLinearLayout;->setVisibility(I)V

    .line 667
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mBottomMoreView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 668
    invoke-direct {p0, v4}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->getBottomBarHeight(Z)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->updateContentLayout(I)V

    .line 669
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mBottomCommonView:Lcom/lenovo/component/contexturalappbar/CABLinearLayout;

    invoke-direct {p0, v2}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->getBottomBarOffset(Z)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/lenovo/component/contexturalappbar/CABLinearLayout;->setTranslationY(F)V

    .line 670
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mBottomMoreView:Landroid/widget/ScrollView;

    invoke-direct {p0, v4}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->getBottomBarOffset(Z)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setTranslationY(F)V

    .line 671
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mMoreImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 672
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mMoreImage:Landroid/widget/ImageView;

    const/high16 v1, 0x42b40000    # 90.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 673
    :cond_1
    invoke-direct {p0}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->showMaskView()V

    .line 674
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mDimView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 675
    invoke-direct {p0, v4}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->getBottomBarOffset(Z)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->updateDimView(I)V

    goto/16 :goto_0

    .line 647
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setText(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 9
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    const v8, 0x908000d

    const v7, 0x908000c

    const/4 v6, 0x0

    .line 815
    invoke-virtual {p0}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x9080006

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 816
    .local v0, "limitContactsLength":I
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 817
    .local v1, "paint":Landroid/graphics/Paint;
    invoke-virtual {p0}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 818
    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    float-to-int v2, v4

    .line 819
    .local v2, "textLength":I
    invoke-virtual {p0}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 820
    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    float-to-int v3, v4

    .line 821
    .local v3, "textLengthSmall":I
    if-lt v0, v2, :cond_0

    .line 822
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 823
    invoke-virtual {p0}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v6, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 830
    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 831
    return-void

    .line 825
    :cond_0
    const-string v4, "\n"

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    if-lt v0, v3, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x5

    if-le v4, v5, :cond_1

    .line 826
    invoke-direct {p0, p2}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->addSpaceToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 827
    :cond_1
    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 828
    invoke-virtual {p0}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v6, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0
.end method

.method private showMaskView()V
    .locals 3

    .prologue
    .line 854
    iget-boolean v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mShowMask:Z

    if-eqz v0, :cond_0

    .line 859
    :goto_0
    return-void

    .line 856
    :cond_0
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mMaskLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    invoke-direct {p0}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->getLayoutHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 857
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mMaskView:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mMaskLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 858
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mShowMask:Z

    goto :goto_0
.end method

.method private showMoreAnimation(I)V
    .locals 4
    .param p1, "duration"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 512
    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-direct {p0, v2}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->getBottomBarOffset(Z)I

    move-result v1

    aput v1, v0, v2

    invoke-direct {p0, v3}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->getBottomBarOffset(Z)I

    move-result v1

    aput v1, v0, v3

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 513
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 514
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mValueAnimator:Landroid/animation/ValueAnimator;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 515
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/lenovo/component/contexturalappbar/CABContentLayout$7;

    invoke-direct {v1, p0}, Lcom/lenovo/component/contexturalappbar/CABContentLayout$7;-><init>(Lcom/lenovo/component/contexturalappbar/CABContentLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 537
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/lenovo/component/contexturalappbar/CABContentLayout$8;

    invoke-direct {v1, p0}, Lcom/lenovo/component/contexturalappbar/CABContentLayout$8;-><init>(Lcom/lenovo/component/contexturalappbar/CABContentLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 544
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 545
    return-void
.end method

.method private updateContentLayout(I)V
    .locals 2
    .param p1, "height"    # I

    .prologue
    .line 797
    iget-boolean v1, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mIsContentViewFreeze:Z

    if-eqz v1, :cond_0

    .line 798
    const/4 p1, 0x0

    .line 800
    :cond_0
    iget-object v1, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mContentView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 801
    iget-object v1, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mContentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 802
    .local v0, "cvlp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {p0}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->getLayoutHeight()I

    move-result v1

    sub-int/2addr v1, p1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 803
    iget-object v1, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mContentView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 805
    .end local v0    # "cvlp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    return-void
.end method

.method private updateDimView(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    .line 869
    iget-object v2, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mDimView:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 870
    .local v1, "dvlp":Landroid/widget/FrameLayout$LayoutParams;
    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 871
    iget-object v2, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mDimView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 872
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->getBottomBarOffset(Z)I

    move-result v2

    sub-int v2, p1, v2

    mul-int/lit8 v2, v2, 0x70

    invoke-direct {p0}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->getScrollViewHeight()I

    move-result v3

    div-int/2addr v2, v3

    rsub-int/lit8 v0, v2, 0x70

    .line 873
    .local v0, "color":I
    iget-object v2, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mDimView:Landroid/widget/LinearLayout;

    shl-int/lit8 v3, v0, 0x18

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 874
    return-void
.end method

.method private updateLayout(II)V
    .locals 11
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 720
    iget-boolean v9, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mIsAnimatoring:Z

    if-eqz v9, :cond_0

    .line 721
    iget-object v9, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->cancel()V

    .line 723
    :cond_0
    iput p1, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mLayoutWidth:I

    .line 724
    iput p2, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mLayoutHeight:I

    .line 726
    const/4 v2, 0x0

    .line 728
    .local v2, "change":Z
    if-le p1, p2, :cond_3

    .line 729
    iget-boolean v9, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mIsScroll:Z

    const/4 v10, 0x1

    if-eq v9, v10, :cond_1

    .line 730
    const/4 v2, 0x1

    .line 731
    :cond_1
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mIsScroll:Z

    .line 738
    :goto_0
    if-eqz v2, :cond_2

    iget v9, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mBottomButtonNum:I

    const/4 v10, 0x4

    if-le v9, v10, :cond_2

    .line 739
    iget-object v9, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mBottomMoreView:Landroid/widget/ScrollView;

    invoke-virtual {v9}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 740
    .local v7, "svlp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-direct {p0}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->getScrollViewHeight()I

    move-result v9

    iput v9, v7, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 741
    iget-object v9, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mBottomMoreView:Landroid/widget/ScrollView;

    invoke-virtual {v9, v7}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 744
    .end local v7    # "svlp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    iget-boolean v9, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mOnlyTextMode:Z

    if-eqz v9, :cond_6

    .line 745
    const/4 v1, 0x0

    .line 746
    .local v1, "buttonWidth":I
    iget v9, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mBottomButtonNum:I

    const/4 v10, 0x4

    if-gt v9, v10, :cond_5

    .line 747
    invoke-direct {p0}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->getLayoutWidth()I

    move-result v9

    iget v10, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mBottomButtonNum:I

    div-int v1, v9, v10

    .line 752
    :goto_1
    iget-object v9, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mCommonButtonView:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    .line 753
    .local v3, "childCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    if-ge v5, v3, :cond_6

    .line 754
    iget-object v9, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mCommonButtonView:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 755
    .local v8, "view":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 756
    .local v6, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iput v1, v6, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 757
    invoke-virtual {v8, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 753
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 733
    .end local v1    # "buttonWidth":I
    .end local v3    # "childCount":I
    .end local v5    # "i":I
    .end local v6    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v8    # "view":Landroid/view/View;
    :cond_3
    iget-boolean v9, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mIsScroll:Z

    if-eqz v9, :cond_4

    .line 734
    const/4 v2, 0x1

    .line 735
    :cond_4
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mIsScroll:Z

    goto :goto_0

    .line 749
    .restart local v1    # "buttonWidth":I
    :cond_5
    invoke-direct {p0}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->getLayoutWidth()I

    move-result v9

    div-int/lit8 v1, v9, 0x4

    goto :goto_1

    .line 761
    .end local v1    # "buttonWidth":I
    :cond_6
    const/4 v0, 0x0

    .line 763
    .local v0, "bottomBarHeight":I
    iget v9, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mState:I

    packed-switch v9, :pswitch_data_0

    .line 786
    :goto_3
    iget-boolean v9, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mIsContentViewFreeze:Z

    if-eqz v9, :cond_7

    .line 787
    const/4 v0, 0x0

    .line 789
    :cond_7
    iget-object v9, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mContentView:Landroid/view/View;

    if-eqz v9, :cond_8

    .line 790
    iget-object v9, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mContentView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 791
    .local v4, "cvlp":Landroid/widget/LinearLayout$LayoutParams;
    sub-int v9, p2, v0

    iput v9, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 792
    iget-object v9, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mContentView:Landroid/view/View;

    invoke-virtual {v9, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 794
    .end local v4    # "cvlp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_8
    return-void

    .line 765
    :pswitch_0
    iget-object v9, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mBottomCommonView:Lcom/lenovo/component/contexturalappbar/CABLinearLayout;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Lcom/lenovo/component/contexturalappbar/CABLinearLayout;->setVisibility(I)V

    .line 766
    iget-object v9, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mBottomMoreView:Landroid/widget/ScrollView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/ScrollView;->setVisibility(I)V

    goto :goto_3

    .line 769
    :pswitch_1
    iget-object v9, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mBottomCommonView:Lcom/lenovo/component/contexturalappbar/CABLinearLayout;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/lenovo/component/contexturalappbar/CABLinearLayout;->setVisibility(I)V

    .line 770
    iget-object v9, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mBottomMoreView:Landroid/widget/ScrollView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 771
    iget-object v9, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mBottomCommonView:Lcom/lenovo/component/contexturalappbar/CABLinearLayout;

    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->getBottomBarOffset(Z)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v9, v10}, Lcom/lenovo/component/contexturalappbar/CABLinearLayout;->setTranslationY(F)V

    .line 772
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->getBottomBarHeight(Z)I

    move-result v0

    .line 773
    goto :goto_3

    .line 775
    :pswitch_2
    iget-object v9, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mBottomCommonView:Lcom/lenovo/component/contexturalappbar/CABLinearLayout;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/lenovo/component/contexturalappbar/CABLinearLayout;->setVisibility(I)V

    .line 776
    iget-object v9, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mBottomMoreView:Landroid/widget/ScrollView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 777
    iget-object v9, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mBottomCommonView:Lcom/lenovo/component/contexturalappbar/CABLinearLayout;

    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->getBottomBarOffset(Z)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v9, v10}, Lcom/lenovo/component/contexturalappbar/CABLinearLayout;->setTranslationY(F)V

    .line 778
    iget-object v9, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mBottomMoreView:Landroid/widget/ScrollView;

    const/4 v10, 0x1

    invoke-direct {p0, v10}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->getBottomBarOffset(Z)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v9, v10}, Landroid/widget/ScrollView;->setTranslationY(F)V

    .line 779
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->getBottomBarHeight(Z)I

    move-result v0

    .line 780
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->getBottomBarOffset(Z)I

    move-result v9

    invoke-direct {p0, v9}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->updateDimView(I)V

    goto :goto_3

    .line 763
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public addBottomButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 4
    .param p1, "textId"    # I
    .param p2, "imageId"    # I
    .param p3, "clickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    const/4 v3, 0x4

    .line 123
    iget v1, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mBottomButtonCount:I

    iget v2, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mBottomButtonNum:I

    if-le v1, v2, :cond_1

    .line 124
    const/4 v0, 0x0

    .line 150
    :cond_0
    :goto_0
    return-object v0

    .line 126
    :cond_1
    iget v1, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mBottomButtonCount:I

    if-nez v1, :cond_2

    if-nez p2, :cond_2

    iget v1, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mBottomButtonNum:I

    const/4 v2, 0x5

    if-ge v1, v2, :cond_2

    .line 127
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mOnlyTextMode:Z

    .line 129
    :cond_2
    iget v1, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mBottomButtonCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mBottomButtonCount:I

    .line 131
    const/4 v0, 0x0

    .line 133
    .local v0, "button":Landroid/view/View;
    iget-boolean v1, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mOnlyTextMode:Z

    if-eqz v1, :cond_3

    .line 134
    invoke-direct {p0, p1, p3}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->addTextButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v0

    .line 135
    goto :goto_0

    .line 138
    :cond_3
    iget v1, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mBottomButtonNum:I

    if-gt v1, v3, :cond_4

    .line 139
    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->addCommonButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 141
    :cond_4
    iget v1, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mBottomButtonCount:I

    if-ge v1, v3, :cond_5

    .line 142
    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->addCommonButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v0

    .line 146
    :goto_1
    iget v1, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mBottomButtonCount:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 147
    invoke-direct {p0}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->addMoreButton()V

    goto :goto_0

    .line 144
    :cond_5
    invoke-direct {p0, p1, p3}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->addMoreButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v0

    goto :goto_1
.end method

.method public addBottomButton(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "imageId"    # I
    .param p3, "clickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    const/4 v3, 0x4

    .line 154
    iget v1, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mBottomButtonCount:I

    iget v2, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mBottomButtonNum:I

    if-le v1, v2, :cond_1

    .line 155
    const/4 v0, 0x0

    .line 181
    :cond_0
    :goto_0
    return-object v0

    .line 157
    :cond_1
    iget v1, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mBottomButtonCount:I

    if-nez v1, :cond_2

    if-nez p2, :cond_2

    iget v1, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mBottomButtonNum:I

    if-ge v1, v3, :cond_2

    .line 158
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mOnlyTextMode:Z

    .line 160
    :cond_2
    iget v1, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mBottomButtonCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mBottomButtonCount:I

    .line 162
    const/4 v0, 0x0

    .line 164
    .local v0, "button":Landroid/view/View;
    iget-boolean v1, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mOnlyTextMode:Z

    if-eqz v1, :cond_3

    .line 165
    invoke-direct {p0, p1, p3}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->addTextButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v0

    .line 166
    goto :goto_0

    .line 169
    :cond_3
    iget v1, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mBottomButtonNum:I

    if-gt v1, v3, :cond_4

    .line 170
    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->addCommonButton(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 172
    :cond_4
    iget v1, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mBottomButtonCount:I

    if-ge v1, v3, :cond_5

    .line 173
    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->addCommonButton(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v0

    .line 177
    :goto_1
    iget v1, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mBottomButtonCount:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 178
    invoke-direct {p0}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->addMoreButton()V

    goto :goto_0

    .line 175
    :cond_5
    invoke-direct {p0, p1, p3}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->addMoreButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v0

    goto :goto_1
.end method

.method public addBottomButton(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;I)Landroid/view/View;
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "image"    # Landroid/graphics/drawable/Drawable;
    .param p3, "clickListener"    # Landroid/view/View$OnClickListener;
    .param p4, "buttonID"    # I

    .prologue
    const/4 v3, 0x4

    .line 185
    iget v1, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mBottomButtonCount:I

    iget v2, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mBottomButtonNum:I

    if-le v1, v2, :cond_0

    .line 186
    const/4 v0, 0x0

    .line 215
    :goto_0
    return-object v0

    .line 188
    :cond_0
    iget v1, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mBottomButtonCount:I

    if-nez v1, :cond_1

    if-nez p2, :cond_1

    iget v1, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mBottomButtonNum:I

    if-ge v1, v3, :cond_1

    .line 189
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mOnlyTextMode:Z

    .line 191
    :cond_1
    iget v1, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mBottomButtonCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mBottomButtonCount:I

    .line 193
    const/4 v0, 0x0

    .line 195
    .local v0, "button":Landroid/view/View;
    iget-boolean v1, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mOnlyTextMode:Z

    if-eqz v1, :cond_2

    .line 196
    invoke-direct {p0, p1, p3}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->addTextButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v0

    .line 197
    invoke-virtual {v0, p4}, Landroid/view/View;->setId(I)V

    goto :goto_0

    .line 201
    :cond_2
    iget v1, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mBottomButtonNum:I

    if-gt v1, v3, :cond_4

    .line 202
    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->addCommonButton(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v0

    .line 213
    :cond_3
    :goto_1
    invoke-virtual {v0, p4}, Landroid/view/View;->setId(I)V

    goto :goto_0

    .line 204
    :cond_4
    iget v1, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mBottomButtonCount:I

    if-ge v1, v3, :cond_5

    .line 205
    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->addCommonButton(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v0

    .line 209
    :goto_2
    iget v1, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mBottomButtonCount:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 210
    invoke-direct {p0}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->addMoreButton()V

    goto :goto_1

    .line 207
    :cond_5
    invoke-direct {p0, p1, p3}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->addMoreButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v0

    goto :goto_2
.end method

.method public addBottomTextButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 1
    .param p1, "textId"    # I
    .param p2, "clickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 277
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->addBottomButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public addBottomTextButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "clickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 281
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->addBottomButton(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 809
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 810
    if-eqz p1, :cond_0

    .line 811
    sub-int v0, p4, p2

    sub-int v1, p5, p3

    invoke-direct {p0, v0, v1}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->updateLayout(II)V

    .line 812
    :cond_0
    return-void
.end method

.method public removeBottomButton()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 268
    iget v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 269
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->setStateWithoutAnimation(I)V

    .line 270
    :cond_0
    iput v2, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mBottomButtonNum:I

    .line 271
    iput v2, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mBottomButtonCount:I

    .line 272
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mCommonButtonView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 273
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mMoreButtonView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 274
    return-void
.end method

.method public setBottomButtonClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "button"    # Landroid/view/View;
    .param p2, "clickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 245
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    return-void
.end method

.method public setBottomButtonEnable(Landroid/view/View;Z)V
    .locals 1
    .param p1, "button"    # Landroid/view/View;
    .param p2, "enable"    # Z

    .prologue
    .line 249
    instance-of v0, p1, Lcom/lenovo/component/contexturalappbar/CABLinearLayout;

    if-eqz v0, :cond_0

    .line 250
    check-cast p1, Lcom/lenovo/component/contexturalappbar/CABLinearLayout;

    .end local p1    # "button":Landroid/view/View;
    invoke-virtual {p1, p2}, Lcom/lenovo/component/contexturalappbar/CABLinearLayout;->setEnabledEx(Z)V

    .line 253
    :goto_0
    return-void

    .line 252
    .restart local p1    # "button":Landroid/view/View;
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setBottomButtonIcon(Landroid/view/View;I)V
    .locals 2
    .param p1, "button"    # Landroid/view/View;
    .param p2, "resid"    # I

    .prologue
    .line 238
    instance-of v1, p1, Lcom/lenovo/component/contexturalappbar/CABLinearLayout;

    if-eqz v1, :cond_0

    .line 239
    const v1, 0x90c0029

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 240
    .local v0, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 242
    .end local v0    # "imageView":Landroid/widget/ImageView;
    :cond_0
    return-void
.end method

.method public setBottomButtonNum(I)V
    .locals 2
    .param p1, "number"    # I

    .prologue
    .line 112
    iput p1, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mBottomButtonNum:I

    .line 113
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mOnlyTextMode:Z

    .line 115
    const/4 v1, 0x4

    if-le p1, v1, :cond_0

    .line 116
    iget-object v1, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mBottomMoreView:Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 117
    .local v0, "svlp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-direct {p0}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->getScrollViewHeight()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 118
    iget-object v1, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mBottomMoreView:Landroid/widget/ScrollView;

    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    .end local v0    # "svlp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method public setBottomButtonText(Landroid/view/View;I)V
    .locals 3
    .param p1, "button"    # Landroid/view/View;
    .param p2, "resid"    # I

    .prologue
    .line 219
    instance-of v2, p1, Lcom/lenovo/component/contexturalappbar/CABLinearLayout;

    if-eqz v2, :cond_1

    .line 220
    const v2, 0x90c002a

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 221
    .local v1, "textView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 222
    .local v0, "text":Ljava/lang/String;
    invoke-direct {p0, v1, v0}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 226
    .end local v0    # "text":Ljava/lang/String;
    .end local v1    # "textView":Landroid/widget/TextView;
    .end local p1    # "button":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 223
    .restart local p1    # "button":Landroid/view/View;
    :cond_1
    instance-of v2, p1, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 224
    check-cast p1, Landroid/widget/TextView;

    .end local p1    # "button":Landroid/view/View;
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public setBottomButtonText(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "button"    # Landroid/view/View;
    .param p2, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 229
    instance-of v1, p1, Lcom/lenovo/component/contexturalappbar/CABLinearLayout;

    if-eqz v1, :cond_1

    .line 230
    const v1, 0x90c002a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 231
    .local v0, "textView":Landroid/widget/TextView;
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 235
    .end local v0    # "textView":Landroid/widget/TextView;
    .end local p1    # "button":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 232
    .restart local p1    # "button":Landroid/view/View;
    :cond_1
    instance-of v1, p1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 233
    check-cast p1, Landroid/widget/TextView;

    .end local p1    # "button":Landroid/view/View;
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setBottomButtonVisible(Landroid/view/View;Z)V
    .locals 3
    .param p1, "button"    # Landroid/view/View;
    .param p2, "enable"    # Z

    .prologue
    .line 256
    iget v1, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mBottomButtonNum:I

    const/4 v2, 0x4

    if-le v1, v2, :cond_0

    .line 265
    :goto_0
    return-void

    .line 259
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 261
    .local v0, "view":Landroid/view/View;
    if-eqz p2, :cond_1

    .line 262
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 264
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, -0x1

    .line 102
    iput-object p1, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mContentView:Landroid/view/View;

    .line 103
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 104
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mContentLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 105
    return-void
.end method

.method public setContentViewFreeze(Z)V
    .locals 0
    .param p1, "bFreeze"    # Z

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mIsContentViewFreeze:Z

    .line 109
    return-void
.end method

.method public showBottomBar(ZZ)V
    .locals 3
    .param p1, "show"    # Z
    .param p2, "animation"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 285
    if-eqz p1, :cond_2

    iget v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mState:I

    if-nez v0, :cond_2

    .line 286
    if-eqz p2, :cond_1

    .line 287
    invoke-direct {p0, v2}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->setStateWithAnimation(I)V

    .line 296
    :cond_0
    :goto_0
    return-void

    .line 289
    :cond_1
    invoke-direct {p0, v2}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->setStateWithoutAnimation(I)V

    goto :goto_0

    .line 290
    :cond_2
    if-nez p1, :cond_0

    iget v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mState:I

    if-eqz v0, :cond_0

    .line 291
    if-eqz p2, :cond_3

    .line 292
    invoke-direct {p0, v1}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->setStateWithAnimation(I)V

    goto :goto_0

    .line 294
    :cond_3
    invoke-direct {p0, v1}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->setStateWithoutAnimation(I)V

    goto :goto_0
.end method
