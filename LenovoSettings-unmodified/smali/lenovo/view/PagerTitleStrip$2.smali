.class Llenovo/view/PagerTitleStrip$2;
.super Ljava/lang/Object;
.source "PagerTitleStrip.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llenovo/view/PagerTitleStrip;->animateToTab(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llenovo/view/PagerTitleStrip;

.field final synthetic val$position:I

.field final synthetic val$tabView:Landroid/view/View;


# direct methods
.method constructor <init>(Llenovo/view/PagerTitleStrip;Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 474
    iput-object p1, p0, Llenovo/view/PagerTitleStrip$2;->this$0:Llenovo/view/PagerTitleStrip;

    iput-object p2, p0, Llenovo/view/PagerTitleStrip$2;->val$tabView:Landroid/view/View;

    iput p3, p0, Llenovo/view/PagerTitleStrip$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 480
    const/4 v0, 0x0

    .line 481
    .local v0, "scrollPos":I
    iget-object v1, p0, Llenovo/view/PagerTitleStrip$2;->val$tabView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    iget-object v2, p0, Llenovo/view/PagerTitleStrip$2;->this$0:Llenovo/view/PagerTitleStrip;

    # getter for: Llenovo/view/PagerTitleStrip;->mTabLayout:Landroid/widget/LinearLayout;
    invoke-static {v2}, Llenovo/view/PagerTitleStrip;->access$200(Llenovo/view/PagerTitleStrip;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Llenovo/view/PagerTitleStrip$2;->this$0:Llenovo/view/PagerTitleStrip;

    invoke-virtual {v2}, Llenovo/view/PagerTitleStrip;->getWidth()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 482
    iget-object v1, p0, Llenovo/view/PagerTitleStrip$2;->val$tabView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Llenovo/view/PagerTitleStrip$2;->this$0:Llenovo/view/PagerTitleStrip;

    invoke-virtual {v2}, Llenovo/view/PagerTitleStrip;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Llenovo/view/PagerTitleStrip$2;->val$tabView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sub-int v0, v1, v2

    .line 484
    :cond_0
    iget-object v1, p0, Llenovo/view/PagerTitleStrip$2;->this$0:Llenovo/view/PagerTitleStrip;

    # getter for: Llenovo/view/PagerTitleStrip;->mTabLayout:Landroid/widget/LinearLayout;
    invoke-static {v1}, Llenovo/view/PagerTitleStrip;->access$200(Llenovo/view/PagerTitleStrip;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v1

    if-eqz v1, :cond_1

    .line 485
    iget v1, p0, Llenovo/view/PagerTitleStrip$2;->val$position:I

    if-eqz v1, :cond_1

    .line 486
    iget-object v1, p0, Llenovo/view/PagerTitleStrip$2;->this$0:Llenovo/view/PagerTitleStrip;

    # getter for: Llenovo/view/PagerTitleStrip;->mTabLayout:Landroid/widget/LinearLayout;
    invoke-static {v1}, Llenovo/view/PagerTitleStrip;->access$200(Llenovo/view/PagerTitleStrip;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    .line 489
    :cond_1
    iget-object v1, p0, Llenovo/view/PagerTitleStrip$2;->this$0:Llenovo/view/PagerTitleStrip;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Llenovo/view/PagerTitleStrip;->smoothScrollTo(II)V

    .line 490
    iget-object v1, p0, Llenovo/view/PagerTitleStrip$2;->this$0:Llenovo/view/PagerTitleStrip;

    const/4 v2, 0x0

    iput-object v2, v1, Llenovo/view/PagerTitleStrip;->mTabSelector:Ljava/lang/Runnable;

    .line 491
    iget-object v1, p0, Llenovo/view/PagerTitleStrip$2;->this$0:Llenovo/view/PagerTitleStrip;

    iget v2, p0, Llenovo/view/PagerTitleStrip$2;->val$position:I

    # setter for: Llenovo/view/PagerTitleStrip;->mCurrentItem:I
    invoke-static {v1, v2}, Llenovo/view/PagerTitleStrip;->access$302(Llenovo/view/PagerTitleStrip;I)I

    .line 493
    return-void
.end method
