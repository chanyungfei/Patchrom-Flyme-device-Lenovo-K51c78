.class Landroid/widget/Editor$ActionPopupWindow;
.super Landroid/widget/Editor$PinnedPopupWindow;
.source "Editor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionPopupWindow"
.end annotation


# static fields
.field private static final POPUP_TEXT_LAYOUT:I = 0x10900d7


# instance fields
.field private isShowCursorIndicatorOnTop:Z

.field private mCursorIndicatorDrawable:Landroid/graphics/drawable/Drawable;

.field private mPasteTextView:Landroid/widget/TextView;

.field private mReplaceTextView:Landroid/widget/TextView;

.field private mSelectAllTextView:Landroid/widget/TextView;

.field private mSelectCurrentWordTextView:Landroid/widget/TextView;

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method private constructor <init>(Landroid/widget/Editor;)V
    .locals 0

    .prologue
    .line 3874
    iput-object p1, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-direct {p0, p1}, Landroid/widget/Editor$PinnedPopupWindow;-><init>(Landroid/widget/Editor;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/Editor;
    .param p2, "x1"    # Landroid/widget/Editor$1;

    .prologue
    .line 3874
    invoke-direct {p0, p1}, Landroid/widget/Editor$ActionPopupWindow;-><init>(Landroid/widget/Editor;)V

    return-void
.end method

.method private getCursorIndicatorDrawable(Z)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "isShowOnTop"    # Z

    .prologue
    .line 4033
    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mCursorIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/Editor$ActionPopupWindow;->isShowCursorIndicatorOnTop:Z

    if-eq v0, p1, :cond_1

    .line 4034
    :cond_0
    iput-boolean p1, p0, Landroid/widget/Editor$ActionPopupWindow;->isShowCursorIndicatorOnTop:Z

    .line 4035
    if-eqz p1, :cond_2

    .line 4036
    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

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

    iput-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mCursorIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 4042
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mCursorIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0

    .line 4038
    :cond_2
    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

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

    iput-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mCursorIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private updateCursorIndicator()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 3995
    iget-object v11, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    iget-object v12, p0, Landroid/widget/Editor$ActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    # invokes: Landroid/widget/Editor;->getMeasuredViewSize(Landroid/view/View;)[I
    invoke-static {v11, v12}, Landroid/widget/Editor;->access$2000(Landroid/widget/Editor;Landroid/view/View;)[I

    move-result-object v3

    .line 3996
    .local v3, "contentViewSize":[I
    aget v4, v3, v13

    .line 3997
    .local v4, "contentViewWidth":I
    aget v1, v3, v14

    .line 4000
    .local v1, "contentViewHeight":I
    iget v11, p0, Landroid/widget/Editor$ActionPopupWindow;->mParentPositionY:I

    iget v12, p0, Landroid/widget/Editor$ActionPopupWindow;->mCursorPositionYInText:I

    add-int v8, v11, v12

    .line 4001
    .local v8, "cursorPositionY":I
    iget v11, p0, Landroid/widget/Editor$ActionPopupWindow;->mShowY:I

    if-ge v11, v8, :cond_2

    .line 4003
    invoke-direct {p0, v13}, Landroid/widget/Editor$ActionPopupWindow;->getCursorIndicatorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 4004
    .local v0, "bottomCursorIndicatorDrawableHeight":I
    sub-int v7, v1, v0

    .line 4005
    .local v7, "cursorIndicatorY":I
    iput-boolean v13, p0, Landroid/widget/Editor$ActionPopupWindow;->isShowCursorIndicatorOnTop:Z

    .line 4013
    .end local v0    # "bottomCursorIndicatorDrawableHeight":I
    :goto_0
    iget-boolean v11, p0, Landroid/widget/Editor$ActionPopupWindow;->isShowCursorIndicatorOnTop:Z

    invoke-direct {p0, v11}, Landroid/widget/Editor$ActionPopupWindow;->getCursorIndicatorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 4014
    .local v5, "cursorIndicatorDrawableWidth":I
    iget v11, p0, Landroid/widget/Editor$ActionPopupWindow;->mParentPositionX:I

    iget v12, p0, Landroid/widget/Editor$ActionPopupWindow;->mCursorPositionXInText:I

    add-int/2addr v11, v12

    iget v12, p0, Landroid/widget/Editor$ActionPopupWindow;->mShowX:I

    sub-int/2addr v11, v12

    div-int/lit8 v12, v5, 0x2

    sub-int v6, v11, v12

    .line 4018
    .local v6, "cursorIndicatorX":I
    iget-object v11, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v11}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x90800ac

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 4019
    .local v2, "contentViewSideMargin":I
    mul-int/lit8 v9, v2, 0x2

    .line 4021
    .local v9, "cursorSideMargin":I
    if-ge v6, v9, :cond_0

    move v6, v9

    .line 4023
    :cond_0
    sub-int v11, v4, v9

    sub-int v10, v11, v5

    .line 4024
    .local v10, "rightEdgeX":I
    if-le v6, v10, :cond_1

    move v6, v10

    .line 4026
    :cond_1
    iget-object v11, p0, Landroid/widget/Editor$ActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    check-cast v11, Landroid/widget/CustomDrawLayout;

    iget-boolean v12, p0, Landroid/widget/Editor$ActionPopupWindow;->isShowCursorIndicatorOnTop:Z

    invoke-direct {p0, v12}, Landroid/widget/Editor$ActionPopupWindow;->getCursorIndicatorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v11, v12, v6, v7}, Landroid/widget/CustomDrawLayout;->setDrawableToDraw(Landroid/graphics/drawable/Drawable;II)V

    .line 4027
    return-void

    .line 4008
    .end local v2    # "contentViewSideMargin":I
    .end local v5    # "cursorIndicatorDrawableWidth":I
    .end local v6    # "cursorIndicatorX":I
    .end local v7    # "cursorIndicatorY":I
    .end local v9    # "cursorSideMargin":I
    .end local v10    # "rightEdgeX":I
    :cond_2
    const/4 v7, 0x0

    .line 4009
    .restart local v7    # "cursorIndicatorY":I
    iput-boolean v14, p0, Landroid/widget/Editor$ActionPopupWindow;->isShowCursorIndicatorOnTop:Z

    goto :goto_0
.end method


# virtual methods
.method protected clipVertically(I)I
    .locals 6
    .param p1, "positionY"    # I

    .prologue
    .line 4086
    if-gez p1, :cond_0

    .line 4087
    invoke-virtual {p0}, Landroid/widget/Editor$ActionPopupWindow;->getTextOffset()I

    move-result v3

    .line 4088
    .local v3, "offset":I
    iget-object v4, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 4089
    .local v1, "layout":Landroid/text/Layout;
    invoke-virtual {v1, v3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 4090
    .local v2, "line":I
    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v4

    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v5

    sub-int/2addr v4, v5

    add-int/2addr p1, v4

    .line 4091
    iget-object v4, p0, Landroid/widget/Editor$ActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v4

    add-int/2addr p1, v4

    .line 4094
    iget-object v4, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    iget v5, v5, Landroid/widget/TextView;->mTextSelectHandleRes:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 4096
    .local v0, "handle":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr p1, v4

    .line 4099
    .end local v0    # "handle":Landroid/graphics/drawable/Drawable;
    .end local v1    # "layout":Landroid/text/Layout;
    .end local v2    # "line":I
    .end local v3    # "offset":I
    :cond_0
    return p1
.end method

.method protected createPopupWindow()V
    .locals 4

    .prologue
    .line 3896
    const-string v0, "TextView"

    const-string v1, "ActionPopupWindow.createPopupWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3897
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x10102c8

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 3899
    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 3900
    return-void
.end method

.method protected getTextOffset()I
    .locals 2

    .prologue
    .line 4076
    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method protected getVerticalLocalPosition(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 4081
    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method protected initContentView()V
    .locals 8

    .prologue
    const/4 v7, -0x2

    const/4 v6, 0x0

    const v5, 0x10900d7

    .line 3905
    new-instance v1, Landroid/widget/CustomDrawLayout;

    iget-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/CustomDrawLayout;-><init>(Landroid/content/Context;)V

    .line 3906
    .local v1, "layout":Landroid/widget/CustomDrawLayout;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/CustomDrawLayout;->setOrientation(I)V

    .line 3907
    iput-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    .line 3911
    iget-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    const v4, 0x90200d1

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 3915
    iget-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 3918
    .local v0, "inflater":Landroid/view/LayoutInflater;
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 3922
    .local v2, "wrapContent":Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    iget-boolean v3, v3, Landroid/widget/Editor;->mLenovoSelectPopMenuSupport:Z

    if-eqz v3, :cond_0

    .line 3923
    invoke-virtual {v0, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->mSelectCurrentWordTextView:Landroid/widget/TextView;

    .line 3924
    iget-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->mSelectCurrentWordTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3925
    iget-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v4, p0, Landroid/widget/Editor$ActionPopupWindow;->mSelectCurrentWordTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3926
    iget-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->mSelectCurrentWordTextView:Landroid/widget/TextView;

    const v4, 0x9090069

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 3927
    iget-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->mSelectCurrentWordTextView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3929
    invoke-virtual {v0, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    .line 3930
    iget-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3931
    iget-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v4, p0, Landroid/widget/Editor$ActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3932
    iget-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    const v4, 0x104000d

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 3933
    iget-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3937
    :cond_0
    invoke-virtual {v0, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    .line 3938
    iget-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3939
    iget-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v4, p0, Landroid/widget/Editor$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3940
    iget-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    const v4, 0x104000b

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 3941
    iget-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3943
    invoke-virtual {v0, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    .line 3944
    iget-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3945
    iget-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v4, p0, Landroid/widget/Editor$ActionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3946
    iget-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    const v4, 0x104046a

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 3947
    iget-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3948
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 4048
    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->canPaste()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4049
    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x1020022

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 4050
    invoke-virtual {p0}, Landroid/widget/Editor$ActionPopupWindow;->hide()V

    .line 4072
    :cond_0
    :goto_0
    return-void

    .line 4051
    :cond_1
    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    if-ne p1, v1, :cond_2

    .line 4052
    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    iget-object v2, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    add-int/2addr v1, v2

    div-int/lit8 v0, v1, 0x2

    .line 4053
    .local v0, "middle":I
    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->stopSelectionActionMode()V

    .line 4054
    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    invoke-static {v1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 4055
    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->showSuggestions()V

    goto :goto_0

    .line 4057
    .end local v0    # "middle":I
    :cond_2
    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    if-ne p1, v1, :cond_3

    .line 4058
    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->selectAllText()Z

    .line 4059
    invoke-virtual {p0}, Landroid/widget/Editor$ActionPopupWindow;->hide()V

    .line 4060
    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->startSelectionActionMode()Z

    goto :goto_0

    .line 4061
    :cond_3
    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->mSelectCurrentWordTextView:Landroid/widget/TextView;

    if-ne p1, v1, :cond_0

    .line 4062
    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->selectCurrentWordFormSingleClick()Z
    invoke-static {v1}, Landroid/widget/Editor;->access$3800(Landroid/widget/Editor;)Z

    .line 4064
    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->hasSelection()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4065
    invoke-virtual {p0}, Landroid/widget/Editor$ActionPopupWindow;->hide()V

    .line 4066
    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->startSelectionActionMode()Z

    goto :goto_0
.end method

.method public show()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/16 v6, 0x8

    .line 3952
    const-string v5, "TextView"

    const-string v7, "ActionPopupWindow.show()"

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3953
    iget-object v5, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->canPaste()Z

    move-result v0

    .line 3954
    .local v0, "canPaste":Z
    iget-object v5, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->isSuggestionsEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->isCursorInsideSuggestionSpan()Z
    invoke-static {v5}, Landroid/widget/Editor;->access$3600(Landroid/widget/Editor;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v3, 0x1

    .line 3956
    .local v3, "canSuggest":Z
    :goto_0
    iget-object v5, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->canSelectText()Z
    invoke-static {v5}, Landroid/widget/Editor;->access$3700(Landroid/widget/Editor;)Z

    move-result v1

    .line 3957
    .local v1, "canSelectAll":Z
    move v2, v1

    .line 3960
    .local v2, "canSelectWord":Z
    iget-object v7, p0, Landroid/widget/Editor$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    move v5, v4

    :goto_1
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3961
    iget-object v7, p0, Landroid/widget/Editor$ActionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_3

    move v5, v4

    :goto_2
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3964
    iget-object v5, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    iget-boolean v5, v5, Landroid/widget/Editor;->mLenovoSelectPopMenuSupport:Z

    if-eqz v5, :cond_0

    .line 3969
    iget-object v5, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    iget-object v5, v5, Landroid/widget/Editor;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

    if-nez v5, :cond_6

    iget-object v5, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_6

    .line 3970
    iget-object v7, p0, Landroid/widget/Editor$ActionPopupWindow;->mSelectCurrentWordTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_4

    move v5, v4

    :goto_3
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3971
    iget-object v5, p0, Landroid/widget/Editor$ActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    :goto_4
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3981
    .end local v2    # "canSelectWord":Z
    :cond_0
    :goto_5
    if-nez v0, :cond_7

    if-nez v3, :cond_7

    if-nez v2, :cond_7

    if-nez v1, :cond_7

    .line 3987
    :goto_6
    return-void

    .end local v1    # "canSelectAll":Z
    .end local v3    # "canSuggest":Z
    :cond_1
    move v3, v4

    .line 3954
    goto :goto_0

    .restart local v1    # "canSelectAll":Z
    .restart local v2    # "canSelectWord":Z
    .restart local v3    # "canSuggest":Z
    :cond_2
    move v5, v6

    .line 3960
    goto :goto_1

    :cond_3
    move v5, v6

    .line 3961
    goto :goto_2

    :cond_4
    move v5, v6

    .line 3970
    goto :goto_3

    :cond_5
    move v4, v6

    .line 3971
    goto :goto_4

    .line 3973
    :cond_6
    iget-object v4, p0, Landroid/widget/Editor$ActionPopupWindow;->mSelectCurrentWordTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3974
    iget-object v4, p0, Landroid/widget/Editor$ActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3976
    const/4 v1, 0x0

    .line 3977
    move v2, v1

    .local v2, "canSelectWord":I
    goto :goto_5

    .line 3983
    .end local v2    # "canSelectWord":I
    :cond_7
    invoke-super {p0}, Landroid/widget/Editor$PinnedPopupWindow;->show()V

    .line 3985
    invoke-direct {p0}, Landroid/widget/Editor$ActionPopupWindow;->updateCursorIndicator()V

    goto :goto_6
.end method
