.class Llenovo/view/PagerTitleStrip$PageListener;
.super Landroid/database/DataSetObserver;
.source "PagerTitleStrip.java"

# interfaces
.implements Llenovo/view/ViewPager$OnPageChangeListener;
.implements Llenovo/view/ViewPager$OnAdapterChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llenovo/view/PagerTitleStrip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PageListener"
.end annotation


# instance fields
.field final synthetic this$0:Llenovo/view/PagerTitleStrip;


# direct methods
.method private constructor <init>(Llenovo/view/PagerTitleStrip;)V
    .locals 0

    .prologue
    .line 393
    iput-object p1, p0, Llenovo/view/PagerTitleStrip$PageListener;->this$0:Llenovo/view/PagerTitleStrip;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Llenovo/view/PagerTitleStrip;Llenovo/view/PagerTitleStrip$1;)V
    .locals 0
    .param p1, "x0"    # Llenovo/view/PagerTitleStrip;
    .param p2, "x1"    # Llenovo/view/PagerTitleStrip$1;

    .prologue
    .line 393
    invoke-direct {p0, p1}, Llenovo/view/PagerTitleStrip$PageListener;-><init>(Llenovo/view/PagerTitleStrip;)V

    return-void
.end method


# virtual methods
.method public onAdapterChanged(Llenovo/view/PagerAdapter;Llenovo/view/PagerAdapter;)V
    .locals 1
    .param p1, "oldAdapter"    # Llenovo/view/PagerAdapter;
    .param p2, "newAdapter"    # Llenovo/view/PagerAdapter;

    .prologue
    .line 441
    iget-object v0, p0, Llenovo/view/PagerTitleStrip$PageListener;->this$0:Llenovo/view/PagerTitleStrip;

    invoke-virtual {v0, p1, p2}, Llenovo/view/PagerTitleStrip;->updateAdapter(Llenovo/view/PagerAdapter;Llenovo/view/PagerAdapter;)V

    .line 442
    return-void
.end method

.method public onChanged()V
    .locals 0

    .prologue
    .line 449
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 427
    if-nez p1, :cond_0

    .line 428
    iget-object v1, p0, Llenovo/view/PagerTitleStrip$PageListener;->this$0:Llenovo/view/PagerTitleStrip;

    iget-object v2, p0, Llenovo/view/PagerTitleStrip$PageListener;->this$0:Llenovo/view/PagerTitleStrip;

    iget-object v2, v2, Llenovo/view/PagerTitleStrip;->mPager:Llenovo/view/ViewPager;

    invoke-virtual {v2}, Llenovo/view/ViewPager;->getCurrentItem()I

    move-result v2

    # setter for: Llenovo/view/PagerTitleStrip;->mLeftItem:I
    invoke-static {v1, v2}, Llenovo/view/PagerTitleStrip;->access$102(Llenovo/view/PagerTitleStrip;I)I

    .line 429
    iget-object v1, p0, Llenovo/view/PagerTitleStrip$PageListener;->this$0:Llenovo/view/PagerTitleStrip;

    const/4 v2, 0x0

    iput v2, v1, Llenovo/view/PagerTitleStrip;->mSliderOffset:F

    .line 431
    :cond_0
    iget-object v1, p0, Llenovo/view/PagerTitleStrip$PageListener;->this$0:Llenovo/view/PagerTitleStrip;

    iget-object v1, v1, Llenovo/view/PagerTitleStrip;->mSplitView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 432
    iget-object v1, p0, Llenovo/view/PagerTitleStrip$PageListener;->this$0:Llenovo/view/PagerTitleStrip;

    iget-object v1, v1, Llenovo/view/PagerTitleStrip;->mSplitView:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Llenovo/widget/ActionMenuView;

    .line 433
    .local v0, "menuview":Llenovo/widget/ActionMenuView;
    if-eqz v0, :cond_1

    .line 434
    invoke-virtual {v0, p1}, Llenovo/widget/ActionMenuView;->onPageScrollStateChanged(I)V

    .line 437
    .end local v0    # "menuview":Llenovo/widget/ActionMenuView;
    :cond_1
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 399
    iget-object v1, p0, Llenovo/view/PagerTitleStrip$PageListener;->this$0:Llenovo/view/PagerTitleStrip;

    # setter for: Llenovo/view/PagerTitleStrip;->mLeftItem:I
    invoke-static {v1, p1}, Llenovo/view/PagerTitleStrip;->access$102(Llenovo/view/PagerTitleStrip;I)I

    .line 400
    iget-object v1, p0, Llenovo/view/PagerTitleStrip$PageListener;->this$0:Llenovo/view/PagerTitleStrip;

    iput p2, v1, Llenovo/view/PagerTitleStrip;->mSliderOffset:F

    .line 402
    iget-object v1, p0, Llenovo/view/PagerTitleStrip$PageListener;->this$0:Llenovo/view/PagerTitleStrip;

    invoke-virtual {v1}, Llenovo/view/PagerTitleStrip;->invalidate()V

    .line 403
    iget-object v1, p0, Llenovo/view/PagerTitleStrip$PageListener;->this$0:Llenovo/view/PagerTitleStrip;

    iget-object v1, v1, Llenovo/view/PagerTitleStrip;->mSplitView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 404
    iget-object v1, p0, Llenovo/view/PagerTitleStrip$PageListener;->this$0:Llenovo/view/PagerTitleStrip;

    iget-object v1, v1, Llenovo/view/PagerTitleStrip;->mSplitView:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Llenovo/widget/ActionMenuView;

    .line 405
    .local v0, "menuview":Llenovo/widget/ActionMenuView;
    if-eqz v0, :cond_0

    iget-object v1, p0, Llenovo/view/PagerTitleStrip$PageListener;->this$0:Llenovo/view/PagerTitleStrip;

    iget-object v1, v1, Llenovo/view/PagerTitleStrip;->mPager:Llenovo/view/ViewPager;

    invoke-virtual {v1}, Llenovo/view/ViewPager;->isUpdateMenuWhenScroller()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 406
    invoke-virtual {v0, p1, p2, p3}, Llenovo/widget/ActionMenuView;->onPageScrolled(IFI)V

    .line 409
    .end local v0    # "menuview":Llenovo/widget/ActionMenuView;
    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 414
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Llenovo/view/PagerTitleStrip$PageListener;->this$0:Llenovo/view/PagerTitleStrip;

    # getter for: Llenovo/view/PagerTitleStrip;->mTabLayout:Landroid/widget/LinearLayout;
    invoke-static {v3}, Llenovo/view/PagerTitleStrip;->access$200(Llenovo/view/PagerTitleStrip;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 415
    iget-object v3, p0, Llenovo/view/PagerTitleStrip$PageListener;->this$0:Llenovo/view/PagerTitleStrip;

    # getter for: Llenovo/view/PagerTitleStrip;->mTabLayout:Landroid/widget/LinearLayout;
    invoke-static {v3}, Llenovo/view/PagerTitleStrip;->access$200(Llenovo/view/PagerTitleStrip;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 416
    .local v0, "child":Landroid/view/View;
    if-ne v1, p1, :cond_1

    const/4 v2, 0x1

    .line 417
    .local v2, "isSelected":Z
    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 418
    if-eqz v2, :cond_0

    .line 419
    iget-object v3, p0, Llenovo/view/PagerTitleStrip$PageListener;->this$0:Llenovo/view/PagerTitleStrip;

    invoke-virtual {v3, p1}, Llenovo/view/PagerTitleStrip;->animateToTab(I)V

    .line 414
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 416
    .end local v2    # "isSelected":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 422
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    return-void
.end method
