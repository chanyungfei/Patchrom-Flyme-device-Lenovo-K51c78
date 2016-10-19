.class Llenovo/view/PagerTitleStrip$TabView;
.super Landroid/widget/LinearLayout;
.source "PagerTitleStrip.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llenovo/view/PagerTitleStrip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabView"
.end annotation


# instance fields
.field mCirclePaint:Landroid/graphics/Paint;

.field private mMsgNewSize:I

.field private mText:Ljava/lang/CharSequence;

.field private mTextSize:I

.field mTextView:Landroid/widget/TextView;

.field final synthetic this$0:Llenovo/view/PagerTitleStrip;


# direct methods
.method public constructor <init>(Llenovo/view/PagerTitleStrip;Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 8
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 515
    iput-object p1, p0, Llenovo/view/PagerTitleStrip$TabView;->this$0:Llenovo/view/PagerTitleStrip;

    .line 516
    const/4 v4, 0x0

    const v5, 0x10102f3

    invoke-direct {p0, p2, v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 517
    iput-object p3, p0, Llenovo/view/PagerTitleStrip$TabView;->mText:Ljava/lang/CharSequence;

    .line 519
    invoke-virtual {p0}, Llenovo/view/PagerTitleStrip$TabView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 520
    .local v2, "res":Landroid/content/res/Resources;
    const v4, 0x9080053

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Llenovo/view/PagerTitleStrip$TabView;->mTextSize:I

    .line 521
    const v4, 0x9080059

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Llenovo/view/PagerTitleStrip$TabView;->mMsgNewSize:I

    .line 524
    const/16 v4, 0x11

    invoke-virtual {p0, v4}, Llenovo/view/PagerTitleStrip$TabView;->setGravity(I)V

    .line 525
    invoke-virtual {p0, v7}, Llenovo/view/PagerTitleStrip$TabView;->setOrientation(I)V

    .line 526
    iget v4, p1, Llenovo/view/PagerTitleStrip;->mItemPadding:I

    iget v5, p1, Llenovo/view/PagerTitleStrip;->mItemPadding:I

    invoke-virtual {p0, v4, v6, v5, v6}, Llenovo/view/PagerTitleStrip$TabView;->setPadding(IIII)V

    .line 527
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_1

    .line 528
    const v4, 0x902007e

    invoke-virtual {p0, v4}, Llenovo/view/PagerTitleStrip$TabView;->setBackgroundResource(I)V

    .line 539
    :cond_0
    :goto_0
    invoke-virtual {p0}, Llenovo/view/PagerTitleStrip$TabView;->update()V

    .line 540
    return-void

    .line 530
    :cond_1
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 531
    .local v3, "tValue":Landroid/util/TypedValue;
    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x101030e

    invoke-virtual {v4, v5, v3, v7}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    .line 532
    .local v1, "hasArr":Z
    if-eqz v1, :cond_0

    iget v4, v3, Landroid/util/TypedValue;->resourceId:I

    if-eqz v4, :cond_0

    .line 533
    invoke-virtual {p0}, Llenovo/view/PagerTitleStrip$TabView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, v3, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 534
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    invoke-static {p0, v0}, Lcom/lenovo/internal/widget/ViewUtils;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 627
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 630
    iget-object v0, p0, Llenovo/view/PagerTitleStrip$TabView;->mCirclePaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 631
    iget-object v0, p0, Llenovo/view/PagerTitleStrip$TabView;->this$0:Llenovo/view/PagerTitleStrip;

    # getter for: Llenovo/view/PagerTitleStrip;->mDrawFilter:Landroid/graphics/DrawFilter;
    invoke-static {v0}, Llenovo/view/PagerTitleStrip;->access$500(Llenovo/view/PagerTitleStrip;)Landroid/graphics/DrawFilter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 632
    iget-object v0, p0, Llenovo/view/PagerTitleStrip$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getRight()I

    move-result v0

    iget v1, p0, Llenovo/view/PagerTitleStrip$TabView;->mMsgNewSize:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Llenovo/view/PagerTitleStrip$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTop()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Llenovo/view/PagerTitleStrip$TabView;->mMsgNewSize:I

    int-to-float v2, v2

    iget-object v3, p0, Llenovo/view/PagerTitleStrip$TabView;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 634
    :cond_0
    return-void
.end method

.method public getTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 657
    iget-object v0, p0, Llenovo/view/PagerTitleStrip$TabView;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 558
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 560
    const-class v0, Landroid/app/ActionBar$Tab;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 561
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 565
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 567
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 569
    const-class v0, Landroid/app/ActionBar$Tab;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 571
    :cond_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 653
    const/4 v0, 0x0

    return v0
.end method

.method public onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 575
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 578
    iget-object v0, p0, Llenovo/view/PagerTitleStrip$TabView;->this$0:Llenovo/view/PagerTitleStrip;

    iget v0, v0, Llenovo/view/PagerTitleStrip;->mMaxTabWidth:I

    if-lez v0, :cond_1

    invoke-virtual {p0}, Llenovo/view/PagerTitleStrip$TabView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Llenovo/view/PagerTitleStrip$TabView;->this$0:Llenovo/view/PagerTitleStrip;

    iget v1, v1, Llenovo/view/PagerTitleStrip;->mMaxTabWidth:I

    if-le v0, v1, :cond_1

    .line 579
    iget-object v0, p0, Llenovo/view/PagerTitleStrip$TabView;->this$0:Llenovo/view/PagerTitleStrip;

    iget v0, v0, Llenovo/view/PagerTitleStrip;->mMaxTabWidth:I

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, v0, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 586
    :cond_0
    :goto_0
    return-void

    .line 581
    :cond_1
    iget-object v0, p0, Llenovo/view/PagerTitleStrip$TabView;->this$0:Llenovo/view/PagerTitleStrip;

    iget v0, v0, Llenovo/view/PagerTitleStrip;->mMinTabWidth:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Llenovo/view/PagerTitleStrip$TabView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Llenovo/view/PagerTitleStrip$TabView;->this$0:Llenovo/view/PagerTitleStrip;

    iget v1, v1, Llenovo/view/PagerTitleStrip;->mMinTabWidth:I

    if-ge v0, v1, :cond_0

    .line 582
    iget-object v0, p0, Llenovo/view/PagerTitleStrip$TabView;->this$0:Llenovo/view/PagerTitleStrip;

    iget v0, v0, Llenovo/view/PagerTitleStrip;->mMinTabWidth:I

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, v0, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    goto :goto_0
.end method

.method public setSelected(Z)V
    .locals 4
    .param p1, "selected"    # Z

    .prologue
    .line 544
    invoke-virtual {p0}, Llenovo/view/PagerTitleStrip$TabView;->isSelected()Z

    move-result v1

    if-eq v1, p1, :cond_1

    const/4 v0, 0x1

    .line 545
    .local v0, "changed":Z
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 546
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 547
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Llenovo/view/PagerTitleStrip$TabView;->sendAccessibilityEvent(I)V

    .line 549
    :cond_0
    if-eqz p1, :cond_2

    .line 550
    iget-object v1, p0, Llenovo/view/PagerTitleStrip$TabView;->mTextView:Landroid/widget/TextView;

    iget-object v2, p0, Llenovo/view/PagerTitleStrip$TabView;->this$0:Llenovo/view/PagerTitleStrip;

    iget-object v2, v2, Llenovo/view/PagerTitleStrip;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 554
    :goto_1
    return-void

    .line 544
    .end local v0    # "changed":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 552
    .restart local v0    # "changed":Z
    :cond_2
    iget-object v1, p0, Llenovo/view/PagerTitleStrip$TabView;->mTextView:Landroid/widget/TextView;

    iget-object v2, p0, Llenovo/view/PagerTitleStrip$TabView;->this$0:Llenovo/view/PagerTitleStrip;

    iget-object v2, v2, Llenovo/view/PagerTitleStrip;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    const v3, 0xffffff

    and-int/2addr v2, v3

    const/high16 v3, -0x4e000000

    or-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1
.end method

.method public setTextViewImageColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 637
    if-eqz p1, :cond_1

    .line 638
    iget-object v0, p0, Llenovo/view/PagerTitleStrip$TabView;->mCirclePaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 639
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Llenovo/view/PagerTitleStrip$TabView;->mCirclePaint:Landroid/graphics/Paint;

    .line 640
    iget-object v0, p0, Llenovo/view/PagerTitleStrip$TabView;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 647
    :goto_0
    invoke-virtual {p0}, Llenovo/view/PagerTitleStrip$TabView;->invalidate()V

    .line 648
    return-void

    .line 642
    :cond_0
    iget-object v0, p0, Llenovo/view/PagerTitleStrip$TabView;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 645
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Llenovo/view/PagerTitleStrip$TabView;->mCirclePaint:Landroid/graphics/Paint;

    goto :goto_0
.end method

.method public update()V
    .locals 9

    .prologue
    const/4 v8, -0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 589
    iget-object v2, p0, Llenovo/view/PagerTitleStrip$TabView;->mText:Ljava/lang/CharSequence;

    .line 591
    .local v2, "text":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    move v0, v4

    .line 592
    .local v0, "hasText":Z
    :goto_0
    if-eqz v0, :cond_3

    .line 593
    iget-object v6, p0, Llenovo/view/PagerTitleStrip$TabView;->mTextView:Landroid/widget/TextView;

    if-nez v6, :cond_0

    .line 594
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Llenovo/view/PagerTitleStrip$TabView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 597
    .local v3, "textView":Landroid/widget/TextView;
    invoke-virtual {p0}, Llenovo/view/PagerTitleStrip$TabView;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Llenovo/view/PagerTitleStrip$TabView;->this$0:Llenovo/view/PagerTitleStrip;

    # getter for: Llenovo/view/PagerTitleStrip;->mTabViewStyleRes:I
    invoke-static {v7}, Llenovo/view/PagerTitleStrip;->access$400(Llenovo/view/PagerTitleStrip;)I

    move-result v7

    invoke-virtual {v3, v6, v7}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 598
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 599
    sget-object v6, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 600
    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    .line 601
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 602
    iget v4, p0, Llenovo/view/PagerTitleStrip$TabView;->mTextSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v5, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 604
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 608
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v4, 0x11

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 609
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 610
    invoke-virtual {p0, v3}, Llenovo/view/PagerTitleStrip$TabView;->addView(Landroid/view/View;)V

    .line 611
    iput-object v3, p0, Llenovo/view/PagerTitleStrip$TabView;->mTextView:Landroid/widget/TextView;

    .line 613
    .end local v1    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v3    # "textView":Landroid/widget/TextView;
    :cond_0
    iget-object v4, p0, Llenovo/view/PagerTitleStrip$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 614
    iget-object v4, p0, Llenovo/view/PagerTitleStrip$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 622
    :cond_1
    :goto_1
    return-void

    .end local v0    # "hasText":Z
    :cond_2
    move v0, v5

    .line 591
    goto :goto_0

    .line 616
    .restart local v0    # "hasText":Z
    :cond_3
    iget-object v4, p0, Llenovo/view/PagerTitleStrip$TabView;->mTextView:Landroid/widget/TextView;

    if-eqz v4, :cond_1

    .line 617
    iget-object v4, p0, Llenovo/view/PagerTitleStrip$TabView;->mTextView:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 618
    iget-object v4, p0, Llenovo/view/PagerTitleStrip$TabView;->mTextView:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
