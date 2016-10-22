.class Llenovo/widget/ActionMenuPresenter$OverflowMenuButton;
.super Landroid/widget/TextView;
.source "ActionMenuPresenter.java"

# interfaces
.implements Llenovo/widget/ActionMenuView$ActionMenuChildView;
.implements Lcom/lenovo/internal/view/menu/TintMenuIcon;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llenovo/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OverflowMenuButton"
.end annotation


# instance fields
.field private mChecked:Z

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field mHeight:I

.field final synthetic this$0:Llenovo/widget/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Llenovo/widget/ActionMenuPresenter;Landroid/content/Context;)V
    .locals 21
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 608
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Llenovo/widget/ActionMenuPresenter$OverflowMenuButton;->this$0:Llenovo/widget/ActionMenuPresenter;

    .line 609
    const/16 v17, 0x0

    const v18, 0x10102f6

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v17

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 610
    const/16 v17, 0x0

    sget-object v18, Lcom/lenovo/component/appcompat/R$styleable;->OverflowMenuButton:[I

    const v19, 0x10102f6

    const/16 v20, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 612
    .local v5, "a":Landroid/content/res/TypedArray;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Llenovo/widget/ActionMenuPresenter$OverflowMenuButton;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 613
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 615
    invoke-virtual/range {p0 .. p0}, Llenovo/widget/ActionMenuPresenter$OverflowMenuButton;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 616
    .local v13, "res":Landroid/content/res/Resources;
    new-instance v15, Landroid/util/TypedValue;

    invoke-direct {v15}, Landroid/util/TypedValue;-><init>()V

    .line 618
    .local v15, "tv":Landroid/util/TypedValue;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v17

    const v18, 0x1010361

    const/16 v19, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v15, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v17

    if-eqz v17, :cond_0

    iget v0, v15, Landroid/util/TypedValue;->resourceId:I

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 619
    iget v0, v15, Landroid/util/TypedValue;->resourceId:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    .line 620
    .local v6, "color":Landroid/content/res/ColorStateList;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Llenovo/widget/ActionMenuPresenter$OverflowMenuButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 625
    .end local v6    # "color":Landroid/content/res/ColorStateList;
    :cond_0
    const v17, 0x7f080023

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Llenovo/widget/ActionMenuPresenter$OverflowMenuButton;->mHeight:I

    .line 626
    const v17, 0x7f080025

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 627
    .local v9, "mMaxIconSize":I
    const v17, 0x7f08000a

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 628
    .local v8, "mHasIconTextSize":I
    const v17, 0x7f080015

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 629
    .local v12, "mTopPaddings":I
    const v17, 0x7f080016

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 630
    .local v10, "mMiddlePadding":I
    const v17, 0x7f080001

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 632
    .local v11, "mPaddings":I
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/ActionMenuPresenter$OverflowMenuButton;->mDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    .line 633
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/ActionMenuPresenter$OverflowMenuButton;->mDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v16

    .line 634
    .local v16, "width":I
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/ActionMenuPresenter$OverflowMenuButton;->mDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    .line 635
    .local v7, "height":I
    move/from16 v0, v16

    if-eq v0, v9, :cond_1

    .line 636
    int-to-float v0, v9

    move/from16 v17, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v14, v17, v18

    .line 637
    .local v14, "scale":F
    move/from16 v16, v9

    .line 638
    int-to-float v0, v7

    move/from16 v17, v0

    mul-float v17, v17, v14

    move/from16 v0, v17

    float-to-int v7, v0

    .line 640
    .end local v14    # "scale":F
    :cond_1
    if-eq v7, v9, :cond_2

    .line 641
    int-to-float v0, v9

    move/from16 v17, v0

    int-to-float v0, v7

    move/from16 v18, v0

    div-float v14, v17, v18

    .line 642
    .restart local v14    # "scale":F
    move v7, v9

    .line 643
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, v14

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v16, v0

    .line 645
    .end local v14    # "scale":F
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/ActionMenuPresenter$OverflowMenuButton;->mDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 647
    .end local v7    # "height":I
    .end local v16    # "width":I
    :cond_3
    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/ActionMenuPresenter$OverflowMenuButton;->mDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Llenovo/widget/ActionMenuPresenter$OverflowMenuButton;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 648
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Llenovo/widget/ActionMenuPresenter$OverflowMenuButton;->setCompoundDrawablePadding(I)V

    .line 649
    const/16 v17, 0x0

    int-to-float v0, v8

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Llenovo/widget/ActionMenuPresenter$OverflowMenuButton;->setTextSize(IF)V

    .line 650
    const v17, 0x7f0c0005

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Llenovo/widget/ActionMenuPresenter$OverflowMenuButton;->setText(I)V

    .line 651
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Llenovo/widget/ActionMenuPresenter$OverflowMenuButton;->setSingleLine(Z)V

    .line 652
    sget-object v17, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Llenovo/widget/ActionMenuPresenter$OverflowMenuButton;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 653
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v11, v12, v11, v1}, Llenovo/widget/ActionMenuPresenter$OverflowMenuButton;->setPadding(IIII)V

    .line 655
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Llenovo/widget/ActionMenuPresenter$OverflowMenuButton;->setClickable(Z)V

    .line 656
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Llenovo/widget/ActionMenuPresenter$OverflowMenuButton;->setFocusable(Z)V

    .line 657
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Llenovo/widget/ActionMenuPresenter$OverflowMenuButton;->setVisibility(I)V

    .line 658
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Llenovo/widget/ActionMenuPresenter$OverflowMenuButton;->setEnabled(Z)V

    .line 660
    new-instance v17, Llenovo/widget/ActionMenuPresenter$OverflowMenuButton$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Llenovo/widget/ActionMenuPresenter$OverflowMenuButton$1;-><init>(Llenovo/widget/ActionMenuPresenter$OverflowMenuButton;Landroid/view/View;Llenovo/widget/ActionMenuPresenter;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Llenovo/widget/ActionMenuPresenter$OverflowMenuButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 689
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 771
    invoke-super {p0}, Landroid/widget/TextView;->drawableStateChanged()V

    .line 772
    iget-object v0, p0, Llenovo/widget/ActionMenuPresenter$OverflowMenuButton;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 773
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 774
    invoke-virtual {p0}, Llenovo/widget/ActionMenuPresenter$OverflowMenuButton;->getDrawableState()[I

    move-result-object v1

    .line 777
    .local v1, "myDrawableState":[I
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 779
    invoke-virtual {p0}, Llenovo/widget/ActionMenuPresenter$OverflowMenuButton;->invalidate()V

    .line 781
    .end local v1    # "myDrawableState":[I
    :cond_0
    return-void
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 742
    iget-boolean v0, p0, Llenovo/widget/ActionMenuPresenter$OverflowMenuButton;->mChecked:Z

    return v0
.end method

.method public needsDividerAfter()Z
    .locals 1

    .prologue
    .line 710
    const/4 v0, 0x0

    return v0
.end method

.method public needsDividerBefore()Z
    .locals 1

    .prologue
    .line 705
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateDrawableState(I)[I
    .locals 2
    .param p1, "extraSpace"    # I

    .prologue
    .line 763
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/TextView;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 764
    .local v0, "drawableState":[I
    invoke-virtual {p0}, Llenovo/widget/ActionMenuPresenter$OverflowMenuButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 765
    # getter for: Llenovo/widget/ActionMenuPresenter;->CHECKED_STATE_SET:[I
    invoke-static {}, Llenovo/widget/ActionMenuPresenter;->access$400()[I

    move-result-object v1

    invoke-static {v0, v1}, Llenovo/widget/ActionMenuPresenter$OverflowMenuButton;->mergeDrawableStates([I[I)[I

    .line 767
    :cond_0
    return-object v0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 734
    invoke-super {p0, p1}, Landroid/widget/TextView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 735
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 736
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCanOpenPopup(Z)V

    .line 738
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 785
    iget v0, p0, Llenovo/widget/ActionMenuPresenter$OverflowMenuButton;->mHeight:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 786
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 787
    return-void
.end method

.method public performClick()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 693
    invoke-virtual {p0}, Llenovo/widget/ActionMenuPresenter$OverflowMenuButton;->toggle()V

    .line 694
    invoke-super {p0}, Landroid/widget/TextView;->performClick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 700
    :goto_0
    return v1

    .line 698
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Llenovo/widget/ActionMenuPresenter$OverflowMenuButton;->playSoundEffect(I)V

    .line 699
    iget-object v0, p0, Llenovo/widget/ActionMenuPresenter$OverflowMenuButton;->this$0:Llenovo/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Llenovo/widget/ActionMenuPresenter;->showOverflowMenu()Z

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 751
    iget-boolean v0, p0, Llenovo/widget/ActionMenuPresenter$OverflowMenuButton;->mChecked:Z

    if-eq v0, p1, :cond_0

    .line 752
    iput-boolean p1, p0, Llenovo/widget/ActionMenuPresenter$OverflowMenuButton;->mChecked:Z

    .line 753
    invoke-virtual {p0}, Llenovo/widget/ActionMenuPresenter$OverflowMenuButton;->refreshDrawableState()V

    .line 756
    :cond_0
    return-void
.end method

.method public tintDrawable(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "colorStateList"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 791
    iget-object v0, p0, Llenovo/widget/ActionMenuPresenter$OverflowMenuButton;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 792
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 758
    iget-boolean v0, p0, Llenovo/widget/ActionMenuPresenter$OverflowMenuButton;->mChecked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Llenovo/widget/ActionMenuPresenter$OverflowMenuButton;->setChecked(Z)V

    .line 759
    return-void

    .line 758
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
