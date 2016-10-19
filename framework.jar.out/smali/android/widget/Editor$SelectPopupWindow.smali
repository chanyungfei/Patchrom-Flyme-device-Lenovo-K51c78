.class Landroid/widget/Editor$SelectPopupWindow;
.super Landroid/widget/PopupWindow;
.source "Editor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/Editor$TextViewPositionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectPopupWindow"
.end annotation


# static fields
.field private static final SHOW_BASIC:I = 0x0

.field private static final SHOW_MORE:I = 0x1

.field private static final SHOW_TRANSLATE:I = 0x2


# instance fields
.field private isShowCursorIndicatorOnTop:Z

.field private mAnchor:Landroid/view/View;

.field private mBasicMenuView:Landroid/widget/LinearLayout;

.field private mBottomY:I

.field private mContentView:Landroid/widget/CustomDrawLayout;

.field private mCursorIndicatorDrawable:Landroid/graphics/drawable/Drawable;

.field private mMenuWidth:I

.field private mMoreMenuView:Landroid/widget/LinearLayout;

.field private mParentPositionX:I

.field private mParentPositionY:I

.field private mPositionUpdateListener:Landroid/widget/TranslationViewHelper$OnPositionUpdateListener;

.field private mPositionX:I

.field private mSelectAllMenuItem:Landroid/view/View;

.field private mShowX:I

.field private mShowY:I

.field private mTopY:I

.field private mTranslationStub:Landroid/view/ViewStub;

.field private mTranslationView:Landroid/widget/LinearLayout;

.field private mTranslationViewHelper:Landroid/widget/TranslationViewHelper;

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method public constructor <init>(Landroid/widget/Editor;)V
    .locals 1

    .prologue
    .line 2653
    iput-object p1, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Landroid/widget/PopupWindow;-><init>()V

    .line 2623
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/Editor$SelectPopupWindow;->mMenuWidth:I

    .line 2645
    new-instance v0, Landroid/widget/Editor$SelectPopupWindow$1;

    invoke-direct {v0, p0}, Landroid/widget/Editor$SelectPopupWindow$1;-><init>(Landroid/widget/Editor$SelectPopupWindow;)V

    iput-object v0, p0, Landroid/widget/Editor$SelectPopupWindow;->mPositionUpdateListener:Landroid/widget/TranslationViewHelper$OnPositionUpdateListener;

    .line 2654
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/Editor$SelectPopupWindow;->setClippingEnabled(Z)V

    .line 2655
    invoke-direct {p0}, Landroid/widget/Editor$SelectPopupWindow;->initLayout()V

    .line 2656
    invoke-direct {p0}, Landroid/widget/Editor$SelectPopupWindow;->setupPopupWindowSizeInfo()V

    .line 2657
    iget-object v0, p0, Landroid/widget/Editor$SelectPopupWindow;->mContentView:Landroid/widget/CustomDrawLayout;

    invoke-virtual {p0, v0}, Landroid/widget/Editor$SelectPopupWindow;->setContentView(Landroid/view/View;)V

    .line 2658
    return-void
.end method

.method static synthetic access$1700(Landroid/widget/Editor$SelectPopupWindow;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor$SelectPopupWindow;

    .prologue
    .line 2584
    iget v0, p0, Landroid/widget/Editor$SelectPopupWindow;->mParentPositionX:I

    return v0
.end method

.method static synthetic access$1800(Landroid/widget/Editor$SelectPopupWindow;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor$SelectPopupWindow;

    .prologue
    .line 2584
    iget v0, p0, Landroid/widget/Editor$SelectPopupWindow;->mParentPositionY:I

    return v0
.end method

.method static synthetic access$1900(Landroid/widget/Editor$SelectPopupWindow;II)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/Editor$SelectPopupWindow;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 2584
    invoke-direct {p0, p1, p2}, Landroid/widget/Editor$SelectPopupWindow;->updatePosition(II)V

    return-void
.end method

.method private activateMoreItems()V
    .locals 1

    .prologue
    .line 2859
    iget-object v0, p0, Landroid/widget/Editor$SelectPopupWindow;->mSelectAllMenuItem:Landroid/view/View;

    if-nez v0, :cond_0

    .line 2860
    invoke-direct {p0}, Landroid/widget/Editor$SelectPopupWindow;->initMoreItems()V

    .line 2862
    :cond_0
    return-void
.end method

.method private computeLocalPosition()V
    .locals 6

    .prologue
    .line 2923
    iget-object v4, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    .line 2924
    .local v1, "offsetEnd":I
    iget-object v4, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    .line 2925
    .local v2, "offsetStart":I
    iget-object v4, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v4

    iget-object v5, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v5

    add-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/Editor$SelectPopupWindow;->mPositionX:I

    .line 2927
    iget v4, p0, Landroid/widget/Editor$SelectPopupWindow;->mPositionX:I

    iget-object v5, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Landroid/widget/Editor$SelectPopupWindow;->mPositionX:I

    .line 2929
    iget-object v4, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    .line 2930
    .local v3, "startLine":I
    iget-object v4, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    iput v4, p0, Landroid/widget/Editor$SelectPopupWindow;->mTopY:I

    .line 2931
    iget v4, p0, Landroid/widget/Editor$SelectPopupWindow;->mTopY:I

    iget-object v5, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Landroid/widget/Editor$SelectPopupWindow;->mTopY:I

    .line 2932
    iget-object v4, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 2933
    .local v0, "endLine":I
    iget-object v4, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v4

    iput v4, p0, Landroid/widget/Editor$SelectPopupWindow;->mBottomY:I

    .line 2934
    iget v4, p0, Landroid/widget/Editor$SelectPopupWindow;->mBottomY:I

    iget-object v5, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Landroid/widget/Editor$SelectPopupWindow;->mBottomY:I

    .line 2935
    return-void
.end method

.method private getCursorIndicatorDrawable(Z)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "isShowOnTop"    # Z

    .prologue
    .line 3092
    iget-object v0, p0, Landroid/widget/Editor$SelectPopupWindow;->mCursorIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/Editor$SelectPopupWindow;->isShowCursorIndicatorOnTop:Z

    if-eq v0, p1, :cond_1

    .line 3093
    :cond_0
    iput-boolean p1, p0, Landroid/widget/Editor$SelectPopupWindow;->isShowCursorIndicatorOnTop:Z

    .line 3094
    if-eqz p1, :cond_2

    .line 3095
    iget-object v0, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x90200cf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor$SelectPopupWindow;->mCursorIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 3101
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/widget/Editor$SelectPopupWindow;->mCursorIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0

    .line 3097
    :cond_2
    iget-object v0, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x90200ce

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor$SelectPopupWindow;->mCursorIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private initChildrenViews()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 2689
    iget-object v5, p0, Landroid/widget/Editor$SelectPopupWindow;->mContentView:Landroid/widget/CustomDrawLayout;

    const v6, 0x90c0063

    invoke-virtual {v5, v6}, Landroid/widget/CustomDrawLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Landroid/widget/Editor$SelectPopupWindow;->mBasicMenuView:Landroid/widget/LinearLayout;

    .line 2690
    iget-object v5, p0, Landroid/widget/Editor$SelectPopupWindow;->mContentView:Landroid/widget/CustomDrawLayout;

    const v6, 0x90c0061

    invoke-virtual {v5, v6}, Landroid/widget/CustomDrawLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Landroid/widget/Editor$SelectPopupWindow;->mMoreMenuView:Landroid/widget/LinearLayout;

    .line 2691
    iget-object v5, p0, Landroid/widget/Editor$SelectPopupWindow;->mContentView:Landroid/widget/CustomDrawLayout;

    const v6, 0x90c0062

    invoke-virtual {v5, v6}, Landroid/widget/CustomDrawLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewStub;

    iput-object v5, p0, Landroid/widget/Editor$SelectPopupWindow;->mTranslationStub:Landroid/view/ViewStub;

    .line 2692
    iget-object v5, p0, Landroid/widget/Editor$SelectPopupWindow;->mContentView:Landroid/widget/CustomDrawLayout;

    const v6, 0x90c0064

    invoke-virtual {v5, v6}, Landroid/widget/CustomDrawLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2693
    .local v0, "copy":Landroid/widget/TextView;
    iget-object v5, p0, Landroid/widget/Editor$SelectPopupWindow;->mContentView:Landroid/widget/CustomDrawLayout;

    const v6, 0x90c005d

    invoke-virtual {v5, v6}, Landroid/widget/CustomDrawLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2694
    .local v1, "cut":Landroid/widget/TextView;
    iget-object v5, p0, Landroid/widget/Editor$SelectPopupWindow;->mContentView:Landroid/widget/CustomDrawLayout;

    const v6, 0x90c0065

    invoke-virtual {v5, v6}, Landroid/widget/CustomDrawLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 2695
    .local v3, "paste":Landroid/widget/TextView;
    iget-object v5, p0, Landroid/widget/Editor$SelectPopupWindow;->mContentView:Landroid/widget/CustomDrawLayout;

    const v6, 0x90c005f

    invoke-virtual {v5, v6}, Landroid/widget/CustomDrawLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 2696
    .local v4, "translate":Landroid/widget/TextView;
    iget-object v5, p0, Landroid/widget/Editor$SelectPopupWindow;->mContentView:Landroid/widget/CustomDrawLayout;

    const v6, 0x90c0066

    invoke-virtual {v5, v6}, Landroid/widget/CustomDrawLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 2698
    .local v2, "more":Landroid/view/View;
    iget-object v5, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->canCopy()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2699
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 2701
    :cond_0
    iget-object v5, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->canCut()Z

    move-result v5

    if-nez v5, :cond_1

    .line 2702
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 2704
    :cond_1
    iget-object v5, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->canPaste()Z

    move-result v5

    if-nez v5, :cond_2

    .line 2705
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 2708
    :cond_2
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2709
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2710
    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2711
    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2712
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2713
    return-void
.end method

.method private initContentView()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v1, -0x1

    .line 2674
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 2676
    .local v0, "lpContentView":Landroid/view/ViewGroup$LayoutParams;
    new-instance v1, Landroid/widget/CustomDrawLayout;

    iget-object v2, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/CustomDrawLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/Editor$SelectPopupWindow;->mContentView:Landroid/widget/CustomDrawLayout;

    .line 2677
    iget-object v1, p0, Landroid/widget/Editor$SelectPopupWindow;->mContentView:Landroid/widget/CustomDrawLayout;

    invoke-virtual {v1, v0}, Landroid/widget/CustomDrawLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2678
    iget-object v1, p0, Landroid/widget/Editor$SelectPopupWindow;->mContentView:Landroid/widget/CustomDrawLayout;

    invoke-virtual {v1, v3}, Landroid/widget/CustomDrawLayout;->setOrientation(I)V

    .line 2679
    iget-object v1, p0, Landroid/widget/Editor$SelectPopupWindow;->mContentView:Landroid/widget/CustomDrawLayout;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/CustomDrawLayout;->setGravity(I)V

    .line 2680
    iget-object v1, p0, Landroid/widget/Editor$SelectPopupWindow;->mContentView:Landroid/widget/CustomDrawLayout;

    invoke-virtual {v1, v3}, Landroid/widget/CustomDrawLayout;->setBackgroundColor(I)V

    .line 2681
    iget-object v1, p0, Landroid/widget/Editor$SelectPopupWindow;->mContentView:Landroid/widget/CustomDrawLayout;

    invoke-virtual {v1, v4}, Landroid/widget/CustomDrawLayout;->setFocusable(Z)V

    .line 2682
    iget-object v1, p0, Landroid/widget/Editor$SelectPopupWindow;->mContentView:Landroid/widget/CustomDrawLayout;

    invoke-virtual {v1, v4}, Landroid/widget/CustomDrawLayout;->setFocusableInTouchMode(Z)V

    .line 2683
    return-void
.end method

.method private initLayout()V
    .locals 4

    .prologue
    .line 2664
    invoke-direct {p0}, Landroid/widget/Editor$SelectPopupWindow;->initContentView()V

    .line 2665
    iget-object v1, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 2666
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x904004b

    iget-object v2, p0, Landroid/widget/Editor$SelectPopupWindow;->mContentView:Landroid/widget/CustomDrawLayout;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 2667
    invoke-direct {p0}, Landroid/widget/Editor$SelectPopupWindow;->initChildrenViews()V

    .line 2668
    return-void
.end method

.method private initMoreItems()V
    .locals 5

    .prologue
    .line 2868
    iget-object v2, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 2869
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x9040048

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/Editor$SelectPopupWindow;->mSelectAllMenuItem:Landroid/view/View;

    .line 2871
    const v2, 0x904004c

    iget-object v3, p0, Landroid/widget/Editor$SelectPopupWindow;->mMoreMenuView:Landroid/widget/LinearLayout;

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 2872
    iget-object v2, p0, Landroid/widget/Editor$SelectPopupWindow;->mMoreMenuView:Landroid/widget/LinearLayout;

    const v3, 0x90c0068

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 2873
    .local v1, "moreMenuContainer":Landroid/widget/LinearLayout;
    iget-object v2, p0, Landroid/widget/Editor$SelectPopupWindow;->mMoreMenuView:Landroid/widget/LinearLayout;

    const v3, 0x90c0067

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2874
    iget-object v2, p0, Landroid/widget/Editor$SelectPopupWindow;->mSelectAllMenuItem:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2876
    iget-object v2, p0, Landroid/widget/Editor$SelectPopupWindow;->mSelectAllMenuItem:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2877
    return-void
.end method

.method private onClickTranslationButton()V
    .locals 18

    .prologue
    .line 2805
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Editor$SelectPopupWindow;->mTranslationViewHelper:Landroid/widget/TranslationViewHelper;

    if-nez v1, :cond_0

    .line 2806
    new-instance v1, Landroid/widget/TranslationViewHelper;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TranslationViewHelper;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/widget/Editor$SelectPopupWindow;->mTranslationViewHelper:Landroid/widget/TranslationViewHelper;

    .line 2807
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Editor$SelectPopupWindow;->mTranslationStub:Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/widget/Editor$SelectPopupWindow;->mTranslationView:Landroid/widget/LinearLayout;

    .line 2808
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Editor$SelectPopupWindow;->mTranslationView:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$SelectPopupWindow;->getWidth()I

    move-result v3

    const/4 v5, -0x2

    invoke-direct {v2, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2810
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Editor$SelectPopupWindow;->mBasicMenuView:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2812
    const/16 v9, 0x3c

    .line 2813
    .local v9, "selectHandleHeight":I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Landroid/widget/Editor;->access$2300(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 2814
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Landroid/widget/Editor;->access$2300(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v9

    .line 2819
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v16

    .line 2820
    .local v16, "startOffset":I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v12

    .line 2822
    .local v12, "endOffset":I
    const/4 v1, 0x0

    move/from16 v0, v16

    invoke-static {v0, v12}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 2823
    .local v17, "startOffsetFixed":I
    const/4 v1, 0x0

    move/from16 v0, v16

    invoke-static {v0, v12}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 2825
    .local v13, "endOffsetFixed":I
    move/from16 v16, v17

    .line 2826
    move v12, v13

    .line 2828
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    move/from16 v0, v16

    invoke-interface {v1, v0, v12}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2829
    .local v4, "selectedStr":Ljava/lang/String;
    if-nez v4, :cond_2

    .line 2830
    const-string v4, ""

    .line 2833
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v15

    .line 2834
    .local v15, "startLine":I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v11

    .line 2835
    .local v11, "endLine":I
    const/4 v1, 0x2

    new-array v14, v1, [I

    .line 2836
    .local v14, "locationOnScreen":[I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v14}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 2838
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    invoke-virtual {v1, v15}, Landroid/text/Layout;->getLineTop(I)I

    move-result v7

    .line 2839
    .local v7, "topY":I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v1

    add-int/2addr v7, v1

    .line 2840
    const/4 v1, 0x1

    aget v1, v14, v1

    add-int/2addr v7, v1

    .line 2842
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v8

    .line 2843
    .local v8, "bottomY":I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v1

    add-int/2addr v8, v1

    .line 2844
    const/4 v1, 0x1

    aget v1, v14, v1

    add-int/2addr v8, v1

    .line 2846
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Editor$SelectPopupWindow;->mMoreMenuView:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2848
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/Editor$SelectPopupWindow;->mParentPositionX:I

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/Editor$SelectPopupWindow;->mPositionX:I

    add-int v6, v1, v2

    .line 2850
    .local v6, "positionX":I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Editor$SelectPopupWindow;->mTranslationViewHelper:Landroid/widget/TranslationViewHelper;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/Editor$SelectPopupWindow;->mTranslationView:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/Editor$SelectPopupWindow;->mAnchor:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/widget/Editor$SelectPopupWindow;->mPositionUpdateListener:Landroid/widget/TranslationViewHelper$OnPositionUpdateListener;

    move-object/from16 v2, p0

    invoke-virtual/range {v1 .. v10}, Landroid/widget/TranslationViewHelper;->showTranslatePopupWindow(Landroid/widget/PopupWindow;Landroid/widget/LinearLayout;Ljava/lang/String;Landroid/view/View;IIIILandroid/widget/TranslationViewHelper$OnPositionUpdateListener;)V

    .line 2852
    return-void

    .line 2815
    .end local v4    # "selectedStr":Ljava/lang/String;
    .end local v6    # "positionX":I
    .end local v7    # "topY":I
    .end local v8    # "bottomY":I
    .end local v11    # "endLine":I
    .end local v12    # "endOffset":I
    .end local v13    # "endOffsetFixed":I
    .end local v14    # "locationOnScreen":[I
    .end local v15    # "startLine":I
    .end local v16    # "startOffset":I
    .end local v17    # "startOffsetFixed":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Landroid/widget/Editor;->access$2400(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2816
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Landroid/widget/Editor;->access$2400(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v9

    goto/16 :goto_0
.end method

.method private setupPopupWindowSizeInfo()V
    .locals 3

    .prologue
    .line 2720
    iget-object v1, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    iget-object v2, p0, Landroid/widget/Editor$SelectPopupWindow;->mBasicMenuView:Landroid/widget/LinearLayout;

    # invokes: Landroid/widget/Editor;->getMeasuredViewSize(Landroid/view/View;)[I
    invoke-static {v1, v2}, Landroid/widget/Editor;->access$2000(Landroid/widget/Editor;Landroid/view/View;)[I

    move-result-object v0

    .line 2722
    .local v0, "sizeBasicView":[I
    const/4 v1, 0x0

    aget v1, v0, v1

    invoke-virtual {p0, v1}, Landroid/widget/Editor$SelectPopupWindow;->setWidth(I)V

    .line 2723
    const/4 v1, -0x2

    invoke-virtual {p0, v1}, Landroid/widget/Editor$SelectPopupWindow;->setHeight(I)V

    .line 2724
    return-void
.end method

.method private updateCursorIndicator()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 3058
    iget v9, p0, Landroid/widget/Editor$SelectPopupWindow;->mParentPositionY:I

    iget v10, p0, Landroid/widget/Editor$SelectPopupWindow;->mTopY:I

    add-int v8, v9, v10

    .line 3059
    .local v8, "selectionTextTopY":I
    iget v9, p0, Landroid/widget/Editor$SelectPopupWindow;->mShowY:I

    if-ge v9, v8, :cond_2

    .line 3061
    invoke-direct {p0, v11}, Landroid/widget/Editor$SelectPopupWindow;->getCursorIndicatorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 3062
    .local v0, "bottomCursorIndicatorDrawableHeight":I
    iget-object v9, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    iget-object v10, p0, Landroid/widget/Editor$SelectPopupWindow;->mContentView:Landroid/widget/CustomDrawLayout;

    # invokes: Landroid/widget/Editor;->getMeasuredViewSize(Landroid/view/View;)[I
    invoke-static {v9, v10}, Landroid/widget/Editor;->access$2000(Landroid/widget/Editor;Landroid/view/View;)[I

    move-result-object v9

    aget v1, v9, v12

    .line 3063
    .local v1, "contentViewHeight":I
    sub-int v5, v1, v0

    .line 3064
    .local v5, "cursorIndicatorY":I
    iput-boolean v11, p0, Landroid/widget/Editor$SelectPopupWindow;->isShowCursorIndicatorOnTop:Z

    .line 3072
    .end local v0    # "bottomCursorIndicatorDrawableHeight":I
    .end local v1    # "contentViewHeight":I
    :goto_0
    iget-boolean v9, p0, Landroid/widget/Editor$SelectPopupWindow;->isShowCursorIndicatorOnTop:Z

    invoke-direct {p0, v9}, Landroid/widget/Editor$SelectPopupWindow;->getCursorIndicatorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 3073
    .local v3, "cursorIndicatorDrawableWidth":I
    iget v9, p0, Landroid/widget/Editor$SelectPopupWindow;->mParentPositionX:I

    iget v10, p0, Landroid/widget/Editor$SelectPopupWindow;->mPositionX:I

    add-int/2addr v9, v10

    iget v10, p0, Landroid/widget/Editor$SelectPopupWindow;->mShowX:I

    sub-int/2addr v9, v10

    div-int/lit8 v10, v3, 0x2

    sub-int v4, v9, v10

    .line 3077
    .local v4, "cursorIndicatorX":I
    iget-object v9, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v9}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x90800ac

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 3078
    .local v2, "contentViewSideMargin":I
    mul-int/lit8 v6, v2, 0x2

    .line 3080
    .local v6, "cursorSideMargin":I
    if-ge v4, v6, :cond_0

    move v4, v6

    .line 3082
    :cond_0
    iget v9, p0, Landroid/widget/Editor$SelectPopupWindow;->mMenuWidth:I

    sub-int/2addr v9, v6

    sub-int v7, v9, v3

    .line 3083
    .local v7, "rightEdgeX":I
    if-le v4, v7, :cond_1

    move v4, v7

    .line 3085
    :cond_1
    iget-object v9, p0, Landroid/widget/Editor$SelectPopupWindow;->mContentView:Landroid/widget/CustomDrawLayout;

    iget-boolean v10, p0, Landroid/widget/Editor$SelectPopupWindow;->isShowCursorIndicatorOnTop:Z

    invoke-direct {p0, v10}, Landroid/widget/Editor$SelectPopupWindow;->getCursorIndicatorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10, v4, v5}, Landroid/widget/CustomDrawLayout;->setDrawableToDraw(Landroid/graphics/drawable/Drawable;II)V

    .line 3086
    return-void

    .line 3067
    .end local v2    # "contentViewSideMargin":I
    .end local v3    # "cursorIndicatorDrawableWidth":I
    .end local v4    # "cursorIndicatorX":I
    .end local v5    # "cursorIndicatorY":I
    .end local v6    # "cursorSideMargin":I
    .end local v7    # "rightEdgeX":I
    :cond_2
    const/4 v5, 0x0

    .line 3068
    .restart local v5    # "cursorIndicatorY":I
    iput-boolean v12, p0, Landroid/widget/Editor$SelectPopupWindow;->isShowCursorIndicatorOnTop:Z

    goto :goto_0
.end method

.method private updatePosition(II)V
    .locals 19
    .param p1, "parentPositionX"    # I
    .param p2, "parentPositionY"    # I

    .prologue
    .line 2947
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectPopupWindow;->mTopY:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v18, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v18 .. v18}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getHeight()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectPopupWindow;->mBottomY:I

    move/from16 v17, v0

    if-gez v17, :cond_1

    .line 3049
    :cond_0
    :goto_0
    return-void

    .line 2951
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$SelectPopupWindow;->measureContent()V

    .line 2952
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectPopupWindow;->mParentPositionX:I

    .line 2953
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectPopupWindow;->mParentPositionY:I

    .line 2954
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectPopupWindow;->mPositionX:I

    move/from16 v17, v0

    add-int v11, p1, v17

    .line 2955
    .local v11, "positionX":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectPopupWindow;->mTopY:I

    move/from16 v17, v0

    add-int v12, p2, v17

    .line 2958
    .local v12, "positionY":I
    const/16 v17, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectPopupWindow;->mMenuWidth:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 2959
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectPopupWindow;->mContentView:Landroid/widget/CustomDrawLayout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/CustomDrawLayout;->getMeasuredWidth()I

    move-result v16

    .line 2960
    .local v16, "widthChangeable":I
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectPopupWindow;->mMenuWidth:I

    .line 2961
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectPopupWindow;->mMenuWidth:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/Editor$SelectPopupWindow;->setWidth(I)V

    .line 2965
    :goto_1
    move/from16 v15, v16

    .line 2966
    .local v15, "width":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectPopupWindow;->mContentView:Landroid/widget/CustomDrawLayout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/CustomDrawLayout;->getMeasuredHeight()I

    move-result v6

    .line 2967
    .local v6, "height":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v17, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v17 .. v17}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getHeight()I

    move-result v14

    .line 2968
    .local v14, "textViewHeight":I
    const/4 v13, 0x0

    .line 2969
    .local v13, "sHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v17, v0

    # getter for: Landroid/widget/Editor;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;
    invoke-static/range {v17 .. v17}, Landroid/widget/Editor;->access$2300(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    if-eqz v17, :cond_6

    .line 2970
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v17, v0

    # getter for: Landroid/widget/Editor;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;
    invoke-static/range {v17 .. v17}, Landroid/widget/Editor;->access$2300(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v13

    .line 2977
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectPopupWindow;->mTopY:I

    move/from16 v17, v0

    if-gez v17, :cond_a

    .line 2981
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectPopupWindow;->mBottomY:I

    move/from16 v17, v0

    add-int v17, v17, v6

    add-int v17, v17, v13

    move/from16 v0, v17

    if-le v0, v14, :cond_9

    .line 2987
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectPopupWindow;->mBottomY:I

    move/from16 v17, v0

    sub-int v17, v17, v6

    if-lez v17, :cond_8

    .line 2990
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectPopupWindow;->mBottomY:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v0, v14, :cond_7

    .line 2993
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectPopupWindow;->mBottomY:I

    move/from16 v17, v0

    add-int v17, v17, v6

    div-int/lit8 v17, v17, 0x2

    add-int v12, p2, v17

    .line 3024
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v17, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v17 .. v17}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v18, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v18 .. v18}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/widget/TextView;->mTextSelectHandleRes:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 3025
    .local v5, "handleRes":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v18, v0

    # getter for: Landroid/widget/Editor;->mStatusBarHeight:I
    invoke-static/range {v18 .. v18}, Landroid/widget/Editor;->access$2500(Landroid/widget/Editor;)I

    move-result v18

    add-int v9, v17, v18

    .line 3026
    .local v9, "minPositionY":I
    if-ge v12, v9, :cond_4

    .line 3027
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v17, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v17 .. v17}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v18, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v18 .. v18}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v18

    add-int v17, v17, v18

    div-int/lit8 v10, v17, 0x2

    .line 3028
    .local v10, "offset":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v17, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v17 .. v17}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v7

    .line 3029
    .local v7, "layout":Landroid/text/Layout;
    invoke-virtual {v7, v10}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v8

    .line 3030
    .local v8, "line":I
    invoke-virtual {v7, v8}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v17

    invoke-virtual {v7, v8}, Landroid/text/Layout;->getLineTop(I)I

    move-result v18

    sub-int v17, v17, v18

    add-int v12, v12, v17

    .line 3031
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectPopupWindow;->mContentView:Landroid/widget/CustomDrawLayout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/CustomDrawLayout;->getMeasuredHeight()I

    move-result v17

    add-int v12, v12, v17

    .line 3034
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v17, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v17 .. v17}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v18, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v18 .. v18}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/widget/TextView;->mTextSelectHandleRes:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 3035
    .local v4, "handle":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v17

    add-int v12, v12, v17

    .line 3038
    .end local v4    # "handle":Landroid/graphics/drawable/Drawable;
    .end local v7    # "layout":Landroid/text/Layout;
    .end local v8    # "line":I
    .end local v10    # "offset":I
    :cond_4
    int-to-float v0, v15

    move/from16 v17, v0

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    sub-int v11, v11, v17

    .line 3039
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v17, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v17 .. v17}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 3040
    .local v3, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v0, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-static {v12, v0}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 3041
    iget v0, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v17, v0

    sub-int v17, v17, v15

    move/from16 v0, v17

    invoke-static {v0, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 3042
    const/16 v17, 0x0

    sub-int v18, v12, v6

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 3043
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v0, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 3045
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v17, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v17 .. v17}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2, v11, v12}, Landroid/widget/Editor$SelectPopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 3046
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12, v15, v6}, Landroid/widget/Editor$SelectPopupWindow;->update(IIII)V

    .line 3048
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectPopupWindow;->updateCursorIndicator()V

    goto/16 :goto_0

    .line 2963
    .end local v3    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v5    # "handleRes":Landroid/graphics/drawable/Drawable;
    .end local v6    # "height":I
    .end local v9    # "minPositionY":I
    .end local v13    # "sHeight":I
    .end local v14    # "textViewHeight":I
    .end local v15    # "width":I
    .end local v16    # "widthChangeable":I
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectPopupWindow;->mMenuWidth:I

    move/from16 v16, v0

    .restart local v16    # "widthChangeable":I
    goto/16 :goto_1

    .line 2971
    .restart local v6    # "height":I
    .restart local v13    # "sHeight":I
    .restart local v14    # "textViewHeight":I
    .restart local v15    # "width":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v17, v0

    # getter for: Landroid/widget/Editor;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;
    invoke-static/range {v17 .. v17}, Landroid/widget/Editor;->access$2400(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    if-eqz v17, :cond_2

    .line 2972
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v17, v0

    # getter for: Landroid/widget/Editor;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;
    invoke-static/range {v17 .. v17}, Landroid/widget/Editor;->access$2400(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v13

    goto/16 :goto_2

    .line 2999
    :cond_7
    add-int v17, v14, v6

    div-int/lit8 v17, v17, 0x2

    add-int v12, p2, v17

    goto/16 :goto_3

    .line 3009
    :cond_8
    sub-int v17, p2, v6

    if-gez v17, :cond_3

    .line 3012
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectPopupWindow;->mBottomY:I

    move/from16 v17, v0

    add-int v17, v17, p2

    add-int v17, v17, v6

    add-int v12, v17, v13

    goto/16 :goto_3

    .line 3016
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectPopupWindow;->mBottomY:I

    move/from16 v17, v0

    add-int v17, v17, p2

    add-int v17, v17, v6

    add-int v12, v17, v13

    goto/16 :goto_3

    .line 3019
    :cond_a
    sub-int v17, v12, v6

    if-gez v17, :cond_3

    .line 3020
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectPopupWindow;->mBottomY:I

    move/from16 v17, v0

    add-int v17, v17, p2

    add-int v17, v17, v6

    add-int v12, v17, v13

    goto/16 :goto_3
.end method


# virtual methods
.method public finish()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2745
    iget-object v0, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/widget/Editor;->mSelectPopupWindow:Landroid/widget/Editor$SelectPopupWindow;

    .line 2746
    iget-object v0, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;
    invoke-static {v0}, Landroid/widget/Editor;->access$2100(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/Editor$PositionListener;->removeSubscriber(Landroid/widget/Editor$TextViewPositionListener;)V

    .line 2747
    iget-object v0, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mPreserveDetachedSelection:Z

    if-nez v0, :cond_0

    .line 2748
    iget-object v0, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    iget-object v1, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 2749
    iget-object v0, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setHasTransientState(Z)V

    .line 2752
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v0, :cond_1

    .line 2753
    iget-object v0, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->hide()V

    .line 2756
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mIsSetHardwareAccelerated:Z

    if-eqz v0, :cond_2

    .line 2757
    iget-object v0, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    iput-boolean v2, v0, Landroid/widget/Editor;->mIsSetHardwareAccelerated:Z

    .line 2758
    iget-object v0, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setHardwareAccelerated(Z)V

    .line 2761
    :cond_2
    invoke-virtual {p0}, Landroid/widget/Editor$SelectPopupWindow;->dismiss()V

    .line 2762
    return-void
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 2740
    iget-object v0, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;
    invoke-static {v0}, Landroid/widget/Editor;->access$2100(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/Editor$PositionListener;->removeSubscriber(Landroid/widget/Editor$TextViewPositionListener;)V

    .line 2741
    invoke-virtual {p0}, Landroid/widget/Editor$SelectPopupWindow;->dismiss()V

    .line 2742
    return-void
.end method

.method protected measureContent()V
    .locals 5

    .prologue
    const/high16 v4, -0x80000000

    .line 3115
    iget-object v1, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 3116
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v1, p0, Landroid/widget/Editor$SelectPopupWindow;->mContentView:Landroid/widget/CustomDrawLayout;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/CustomDrawLayout;->measure(II)V

    .line 3121
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 2766
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2799
    :goto_0
    :pswitch_0
    return-void

    .line 2768
    :pswitch_1
    iget-object v0, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x1020022

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 2769
    invoke-virtual {p0}, Landroid/widget/Editor$SelectPopupWindow;->dismiss()V

    goto :goto_0

    .line 2772
    :pswitch_2
    iget-object v0, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x1020021

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 2773
    # setter for: Landroid/widget/Editor;->isLastEventCutOrCopy:Z
    invoke-static {v5}, Landroid/widget/Editor;->access$2202(Z)Z

    .line 2774
    invoke-virtual {p0}, Landroid/widget/Editor$SelectPopupWindow;->dismiss()V

    goto :goto_0

    .line 2777
    :pswitch_3
    iget-object v0, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x1020020

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 2778
    # setter for: Landroid/widget/Editor;->isLastEventCutOrCopy:Z
    invoke-static {v5}, Landroid/widget/Editor;->access$2202(Z)Z

    .line 2779
    invoke-virtual {p0}, Landroid/widget/Editor$SelectPopupWindow;->dismiss()V

    goto :goto_0

    .line 2782
    :pswitch_4
    iget-object v0, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x102001f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 2783
    iget-object v1, p0, Landroid/widget/Editor$SelectPopupWindow;->mAnchor:Landroid/view/View;

    iget v3, p0, Landroid/widget/Editor$SelectPopupWindow;->mShowX:I

    iget v4, p0, Landroid/widget/Editor$SelectPopupWindow;->mShowY:I

    move-object v0, p0

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Editor$SelectPopupWindow;->showAtLocation(Landroid/view/View;IIII)V

    .line 2784
    invoke-virtual {p0}, Landroid/widget/Editor$SelectPopupWindow;->show()V

    goto :goto_0

    .line 2787
    :pswitch_5
    invoke-direct {p0}, Landroid/widget/Editor$SelectPopupWindow;->onClickTranslationButton()V

    goto :goto_0

    .line 2790
    :pswitch_6
    invoke-direct {p0}, Landroid/widget/Editor$SelectPopupWindow;->activateMoreItems()V

    .line 2791
    iget-object v1, p0, Landroid/widget/Editor$SelectPopupWindow;->mAnchor:Landroid/view/View;

    iget v3, p0, Landroid/widget/Editor$SelectPopupWindow;->mShowX:I

    iget v4, p0, Landroid/widget/Editor$SelectPopupWindow;->mShowY:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Editor$SelectPopupWindow;->showAtLocation(Landroid/view/View;IIII)V

    goto :goto_0

    .line 2794
    :pswitch_7
    iget-object v1, p0, Landroid/widget/Editor$SelectPopupWindow;->mAnchor:Landroid/view/View;

    iget v3, p0, Landroid/widget/Editor$SelectPopupWindow;->mShowX:I

    iget v4, p0, Landroid/widget/Editor$SelectPopupWindow;->mShowY:I

    move-object v0, p0

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Editor$SelectPopupWindow;->showAtLocation(Landroid/view/View;IIII)V

    goto :goto_0

    .line 2766
    nop

    :pswitch_data_0
    .packed-switch 0x90c005d
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public show()V
    .locals 3

    .prologue
    .line 2730
    iget-object v1, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;
    invoke-static {v1}, Landroid/widget/Editor;->access$2100(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/Editor$PositionListener;->removeSubscriber(Landroid/widget/Editor$TextViewPositionListener;)V

    .line 2731
    iget-object v1, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;
    invoke-static {v1}, Landroid/widget/Editor;->access$2100(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/widget/Editor$PositionListener;->addSubscriber(Landroid/widget/Editor$TextViewPositionListener;Z)V

    .line 2733
    invoke-direct {p0}, Landroid/widget/Editor$SelectPopupWindow;->computeLocalPosition()V

    .line 2735
    iget-object v1, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;
    invoke-static {v1}, Landroid/widget/Editor;->access$2100(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v0

    .line 2736
    .local v0, "positionListener":Landroid/widget/Editor$PositionListener;
    invoke-virtual {v0}, Landroid/widget/Editor$PositionListener;->getPositionX()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/Editor$PositionListener;->getPositionY()I

    move-result v2

    invoke-direct {p0, v1, v2}, Landroid/widget/Editor$SelectPopupWindow;->updatePosition(II)V

    .line 2737
    return-void
.end method

.method public showAtLocation(Landroid/view/View;III)V
    .locals 0
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "gravity"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    .line 2881
    iput-object p1, p0, Landroid/widget/Editor$SelectPopupWindow;->mAnchor:Landroid/view/View;

    .line 2882
    iput p3, p0, Landroid/widget/Editor$SelectPopupWindow;->mShowX:I

    .line 2883
    iput p4, p0, Landroid/widget/Editor$SelectPopupWindow;->mShowY:I

    .line 2885
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 2886
    return-void
.end method

.method public showAtLocation(Landroid/view/View;IIII)V
    .locals 3
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "gravity"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "option"    # I

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 2889
    packed-switch p5, :pswitch_data_0

    .line 2919
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/Editor$SelectPopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 2920
    :cond_1
    :goto_1
    return-void

    .line 2891
    :pswitch_0
    iget-object v0, p0, Landroid/widget/Editor$SelectPopupWindow;->mBasicMenuView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2892
    iget-object v0, p0, Landroid/widget/Editor$SelectPopupWindow;->mMoreMenuView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2893
    iget-object v0, p0, Landroid/widget/Editor$SelectPopupWindow;->mTranslationView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 2894
    iget-object v0, p0, Landroid/widget/Editor$SelectPopupWindow;->mTranslationView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 2900
    :pswitch_1
    iget-object v0, p0, Landroid/widget/Editor$SelectPopupWindow;->mBasicMenuView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2901
    iget-object v0, p0, Landroid/widget/Editor$SelectPopupWindow;->mMoreMenuView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2902
    iget-object v0, p0, Landroid/widget/Editor$SelectPopupWindow;->mTranslationView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 2903
    iget-object v0, p0, Landroid/widget/Editor$SelectPopupWindow;->mTranslationView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 2909
    :pswitch_2
    iget-object v0, p0, Landroid/widget/Editor$SelectPopupWindow;->mBasicMenuView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2910
    iget-object v0, p0, Landroid/widget/Editor$SelectPopupWindow;->mMoreMenuView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2911
    iget-object v0, p0, Landroid/widget/Editor$SelectPopupWindow;->mTranslationView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 2912
    iget-object v0, p0, Landroid/widget/Editor$SelectPopupWindow;->mTranslationView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 2889
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public updatePosition(IIZZ)V
    .locals 2
    .param p1, "parentPositionX"    # I
    .param p2, "parentPositionY"    # I
    .param p3, "parentPositionChanged"    # Z
    .param p4, "parentScrolled"    # Z

    .prologue
    .line 3107
    invoke-virtual {p0}, Landroid/widget/Editor$SelectPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    iget-object v1, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    # invokes: Landroid/widget/Editor;->isOffsetVisible(I)Z
    invoke-static {v0, v1}, Landroid/widget/Editor;->access$2600(Landroid/widget/Editor;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3108
    if-eqz p4, :cond_0

    invoke-direct {p0}, Landroid/widget/Editor$SelectPopupWindow;->computeLocalPosition()V

    .line 3109
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/widget/Editor$SelectPopupWindow;->updatePosition(II)V

    .line 3113
    :goto_0
    return-void

    .line 3111
    :cond_1
    invoke-virtual {p0}, Landroid/widget/Editor$SelectPopupWindow;->hide()V

    goto :goto_0
.end method
