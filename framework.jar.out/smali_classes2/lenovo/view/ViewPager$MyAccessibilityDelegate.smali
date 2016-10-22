.class Llenovo/view/ViewPager$MyAccessibilityDelegate;
.super Landroid/view/View$AccessibilityDelegate;
.source "ViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llenovo/view/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyAccessibilityDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Llenovo/view/ViewPager;


# direct methods
.method constructor <init>(Llenovo/view/ViewPager;)V
    .locals 0

    .prologue
    .line 2894
    iput-object p1, p0, Llenovo/view/ViewPager$MyAccessibilityDelegate;->this$0:Llenovo/view/ViewPager;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method

.method private canScroll()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2946
    iget-object v1, p0, Llenovo/view/ViewPager$MyAccessibilityDelegate;->this$0:Llenovo/view/ViewPager;

    # getter for: Llenovo/view/ViewPager;->mAdapter:Llenovo/view/PagerAdapter;
    invoke-static {v1}, Llenovo/view/ViewPager;->access$200(Llenovo/view/ViewPager;)Llenovo/view/PagerAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Llenovo/view/ViewPager$MyAccessibilityDelegate;->this$0:Llenovo/view/ViewPager;

    # getter for: Llenovo/view/ViewPager;->mAdapter:Llenovo/view/PagerAdapter;
    invoke-static {v1}, Llenovo/view/ViewPager;->access$200(Llenovo/view/ViewPager;)Llenovo/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Llenovo/view/PagerAdapter;->getCount()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 2898
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2899
    const-class v1, Llenovo/view/ViewPager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 2900
    invoke-static {}, Landroid/view/accessibility/AccessibilityRecord;->obtain()Landroid/view/accessibility/AccessibilityRecord;

    move-result-object v0

    .line 2901
    .local v0, "recordCompat":Landroid/view/accessibility/AccessibilityRecord;
    invoke-direct {p0}, Llenovo/view/ViewPager$MyAccessibilityDelegate;->canScroll()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityRecord;->setScrollable(Z)V

    .line 2902
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    const/16 v2, 0x1000

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Llenovo/view/ViewPager$MyAccessibilityDelegate;->this$0:Llenovo/view/ViewPager;

    # getter for: Llenovo/view/ViewPager;->mAdapter:Llenovo/view/PagerAdapter;
    invoke-static {v1}, Llenovo/view/ViewPager;->access$200(Llenovo/view/ViewPager;)Llenovo/view/PagerAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2904
    iget-object v1, p0, Llenovo/view/ViewPager$MyAccessibilityDelegate;->this$0:Llenovo/view/ViewPager;

    # getter for: Llenovo/view/ViewPager;->mAdapter:Llenovo/view/PagerAdapter;
    invoke-static {v1}, Llenovo/view/ViewPager;->access$200(Llenovo/view/ViewPager;)Llenovo/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Llenovo/view/PagerAdapter;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityRecord;->setItemCount(I)V

    .line 2905
    iget-object v1, p0, Llenovo/view/ViewPager$MyAccessibilityDelegate;->this$0:Llenovo/view/ViewPager;

    # getter for: Llenovo/view/ViewPager;->mCurItem:I
    invoke-static {v1}, Llenovo/view/ViewPager;->access$300(Llenovo/view/ViewPager;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    .line 2906
    iget-object v1, p0, Llenovo/view/ViewPager$MyAccessibilityDelegate;->this$0:Llenovo/view/ViewPager;

    # getter for: Llenovo/view/ViewPager;->mCurItem:I
    invoke-static {v1}, Llenovo/view/ViewPager;->access$300(Llenovo/view/ViewPager;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    .line 2908
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 2912
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2913
    const-class v0, Llenovo/view/ViewPager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 2914
    invoke-direct {p0}, Llenovo/view/ViewPager$MyAccessibilityDelegate;->canScroll()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 2915
    iget-object v0, p0, Llenovo/view/ViewPager$MyAccessibilityDelegate;->this$0:Llenovo/view/ViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Llenovo/view/ViewPager;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2916
    const/16 v0, 0x1000

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2918
    :cond_0
    iget-object v0, p0, Llenovo/view/ViewPager$MyAccessibilityDelegate;->this$0:Llenovo/view/ViewPager;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Llenovo/view/ViewPager;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2919
    const/16 v0, 0x2000

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2921
    :cond_1
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 4
    .param p1, "host"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "args"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2925
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2942
    :goto_0
    return v0

    .line 2928
    :cond_0
    sparse-switch p2, :sswitch_data_0

    move v0, v1

    .line 2942
    goto :goto_0

    .line 2930
    :sswitch_0
    iget-object v2, p0, Llenovo/view/ViewPager$MyAccessibilityDelegate;->this$0:Llenovo/view/ViewPager;

    invoke-virtual {v2, v0}, Llenovo/view/ViewPager;->canScrollHorizontally(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2931
    iget-object v1, p0, Llenovo/view/ViewPager$MyAccessibilityDelegate;->this$0:Llenovo/view/ViewPager;

    iget-object v2, p0, Llenovo/view/ViewPager$MyAccessibilityDelegate;->this$0:Llenovo/view/ViewPager;

    # getter for: Llenovo/view/ViewPager;->mCurItem:I
    invoke-static {v2}, Llenovo/view/ViewPager;->access$300(Llenovo/view/ViewPager;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Llenovo/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 2934
    goto :goto_0

    .line 2936
    :sswitch_1
    iget-object v2, p0, Llenovo/view/ViewPager$MyAccessibilityDelegate;->this$0:Llenovo/view/ViewPager;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Llenovo/view/ViewPager;->canScrollHorizontally(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2937
    iget-object v1, p0, Llenovo/view/ViewPager$MyAccessibilityDelegate;->this$0:Llenovo/view/ViewPager;

    iget-object v2, p0, Llenovo/view/ViewPager$MyAccessibilityDelegate;->this$0:Llenovo/view/ViewPager;

    # getter for: Llenovo/view/ViewPager;->mCurItem:I
    invoke-static {v2}, Llenovo/view/ViewPager;->access$300(Llenovo/view/ViewPager;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Llenovo/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 2940
    goto :goto_0

    .line 2928
    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
    .end sparse-switch
.end method
