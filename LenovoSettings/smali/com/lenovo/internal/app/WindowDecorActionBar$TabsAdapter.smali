.class Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;
.super Llenovo/view/PagerAdapter;
.source "WindowDecorActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/internal/app/WindowDecorActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabsAdapter"
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "PagerAdapter"


# instance fields
.field private mCurTransaction:Landroid/app/FragmentTransaction;

.field private mCurrentMenuPrimaryItem:Landroid/app/Fragment;

.field private mCurrentPrimaryItem:Landroid/app/Fragment;

.field private final mFragmentManager:Landroid/app/FragmentManager;

.field final synthetic this$0:Lcom/lenovo/internal/app/WindowDecorActionBar;


# direct methods
.method public constructor <init>(Lcom/lenovo/internal/app/WindowDecorActionBar;Landroid/app/Activity;)V
    .locals 1
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1523
    invoke-virtual {p2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;-><init>(Lcom/lenovo/internal/app/WindowDecorActionBar;Landroid/app/FragmentManager;)V

    .line 1524
    return-void
.end method

.method public constructor <init>(Lcom/lenovo/internal/app/WindowDecorActionBar;Landroid/app/FragmentManager;)V
    .locals 1
    .param p2, "fm"    # Landroid/app/FragmentManager;

    .prologue
    const/4 v0, 0x0

    .line 1533
    iput-object p1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->this$0:Lcom/lenovo/internal/app/WindowDecorActionBar;

    invoke-direct {p0}, Llenovo/view/PagerAdapter;-><init>()V

    .line 1529
    iput-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 1530
    iput-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    .line 1531
    iput-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->mCurrentMenuPrimaryItem:Landroid/app/Fragment;

    .line 1534
    iput-object p2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    .line 1535
    return-void
.end method

.method private makeFragmentName(IJ)Ljava/lang/String;
    .locals 2
    .param p1, "viewId"    # I
    .param p2, "id"    # J

    .prologue
    .line 1694
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android:switcher:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 1587
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-nez v0, :cond_0

    .line 1588
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 1592
    :cond_0
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    check-cast p3, Landroid/app/Fragment;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {v0, p3}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1593
    return-void
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .locals 6
    .param p1, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 1635
    iget-object v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-eqz v3, :cond_0

    .line 1636
    iget-object v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1637
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 1638
    iget-object v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v3}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 1642
    iget-object v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->this$0:Lcom/lenovo/internal/app/WindowDecorActionBar;

    iget-object v3, v3, Lcom/lenovo/internal/app/WindowDecorActionBar;->mViewPager:Llenovo/view/ViewPager;

    invoke-virtual {v3}, Llenovo/view/ViewPager;->isUpdateMenuWhenScroller()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1664
    :cond_0
    return-void

    .line 1643
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->getCount()I

    move-result v2

    .line 1644
    .local v2, "index":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1652
    iget-object v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->this$0:Lcom/lenovo/internal/app/WindowDecorActionBar;

    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/lenovo/internal/app/WindowDecorActionBar;->access$1400(Lcom/lenovo/internal/app/WindowDecorActionBar;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;

    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->fragment:Landroid/app/Fragment;
    invoke-static {v3}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->access$1500(Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;)Landroid/app/Fragment;

    move-result-object v0

    .line 1653
    .local v0, "fragment":Landroid/app/Fragment;
    if-eqz v0, :cond_2

    .line 1654
    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1655
    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0b0018

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1656
    iget-object v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->this$0:Lcom/lenovo/internal/app/WindowDecorActionBar;

    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/lenovo/internal/app/WindowDecorActionBar;->access$1400(Lcom/lenovo/internal/app/WindowDecorActionBar;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;

    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->hasSetOptionMenu:Z
    invoke-static {v3}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->access$1600(Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1657
    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0b0019

    iget-object v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->this$0:Lcom/lenovo/internal/app/WindowDecorActionBar;

    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/lenovo/internal/app/WindowDecorActionBar;->access$1400(Lcom/lenovo/internal/app/WindowDecorActionBar;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;

    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->hasOptionMenu:Z
    invoke-static {v3}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->access$1700(Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1644
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getChildAt(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 1543
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->this$0:Lcom/lenovo/internal/app/WindowDecorActionBar;

    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar;->mChildIndex:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->access$1300(Lcom/lenovo/internal/app/WindowDecorActionBar;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 1544
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->this$0:Lcom/lenovo/internal/app/WindowDecorActionBar;

    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar;->mChildIndex:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->access$1300(Lcom/lenovo/internal/app/WindowDecorActionBar;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1549
    :goto_0
    return v0

    .line 1545
    :cond_0
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->this$0:Lcom/lenovo/internal/app/WindowDecorActionBar;

    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar;->mChildIndex:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->access$1300(Lcom/lenovo/internal/app/WindowDecorActionBar;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1546
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->this$0:Lcom/lenovo/internal/app/WindowDecorActionBar;

    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar;->mChildIndex:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->access$1300(Lcom/lenovo/internal/app/WindowDecorActionBar;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->this$0:Lcom/lenovo/internal/app/WindowDecorActionBar;

    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar;->mChildIndex:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/lenovo/internal/app/WindowDecorActionBar;->access$1300(Lcom/lenovo/internal/app/WindowDecorActionBar;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 1548
    :cond_1
    const-string v0, "liqftest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PagerAdapter::child at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has outIndexof"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1549
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 1699
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->this$0:Lcom/lenovo/internal/app/WindowDecorActionBar;

    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->access$1400(Lcom/lenovo/internal/app/WindowDecorActionBar;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/app/Fragment;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 1704
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->this$0:Lcom/lenovo/internal/app/WindowDecorActionBar;

    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/lenovo/internal/app/WindowDecorActionBar;->access$1400(Lcom/lenovo/internal/app/WindowDecorActionBar;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;

    .line 1705
    .local v0, "info":Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;
    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->fragment:Landroid/app/Fragment;
    invoke-static {v0}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->access$1500(Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;)Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1706
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->this$0:Lcom/lenovo/internal/app/WindowDecorActionBar;

    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lenovo/internal/app/WindowDecorActionBar;->access$1100(Lcom/lenovo/internal/app/WindowDecorActionBar;)Landroid/content/Context;

    move-result-object v1

    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->mClss:Ljava/lang/Class;
    invoke-static {v0}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->access$1800(Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    # setter for: Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->fragment:Landroid/app/Fragment;
    invoke-static {v0, v1}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->access$1502(Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;Landroid/app/Fragment;)Landroid/app/Fragment;

    .line 1707
    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->bundle:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->access$1900(Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1708
    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->fragment:Landroid/app/Fragment;
    invoke-static {v0}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->access$1500(Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;)Landroid/app/Fragment;

    move-result-object v1

    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->bundle:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->access$1900(Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 1711
    :cond_0
    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->fragment:Landroid/app/Fragment;
    invoke-static {v0}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->access$1500(Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;)Landroid/app/Fragment;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 1521
    invoke-virtual {p0, p1}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->getItem(I)Landroid/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public getItemAt(I)Landroid/app/Fragment;
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 1741
    iget-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->this$0:Lcom/lenovo/internal/app/WindowDecorActionBar;

    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/lenovo/internal/app/WindowDecorActionBar;->access$1400(Lcom/lenovo/internal/app/WindowDecorActionBar;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;

    .line 1743
    .local v0, "info":Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;
    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->fragment:Landroid/app/Fragment;
    invoke-static {v0}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->access$1500(Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;)Landroid/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1744
    iget-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->this$0:Lcom/lenovo/internal/app/WindowDecorActionBar;

    iget-object v2, v2, Lcom/lenovo/internal/app/WindowDecorActionBar;->mViewPager:Llenovo/view/ViewPager;

    invoke-virtual {v2}, Llenovo/view/ViewPager;->getId()I

    move-result v2

    invoke-virtual {p0, p1}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-direct {p0, v2, v4, v5}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->makeFragmentName(IJ)Ljava/lang/String;

    move-result-object v1

    .line 1745
    .local v1, "name":Ljava/lang/String;
    iget-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v2, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    # setter for: Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->fragment:Landroid/app/Fragment;
    invoke-static {v0, v2}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->access$1502(Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;Landroid/app/Fragment;)Landroid/app/Fragment;

    .line 1746
    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->fragment:Landroid/app/Fragment;
    invoke-static {v0}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->access$1500(Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;)Landroid/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1747
    iget-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->this$0:Lcom/lenovo/internal/app/WindowDecorActionBar;

    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/lenovo/internal/app/WindowDecorActionBar;->access$1100(Lcom/lenovo/internal/app/WindowDecorActionBar;)Landroid/content/Context;

    move-result-object v2

    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->mClss:Ljava/lang/Class;
    invoke-static {v0}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->access$1800(Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    # setter for: Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->fragment:Landroid/app/Fragment;
    invoke-static {v0, v2}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->access$1502(Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;Landroid/app/Fragment;)Landroid/app/Fragment;

    .line 1748
    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->bundle:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->access$1900(Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1749
    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->fragment:Landroid/app/Fragment;
    invoke-static {v0}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->access$1500(Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;)Landroid/app/Fragment;

    move-result-object v2

    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->bundle:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->access$1900(Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 1753
    .end local v1    # "name":Ljava/lang/String;
    :cond_0
    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->fragment:Landroid/app/Fragment;
    invoke-static {v0}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->access$1500(Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;)Landroid/app/Fragment;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic getItemAt(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 1521
    invoke-virtual {p0, p1}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->getItemAt(I)Landroid/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1690
    int-to-long v0, p1

    return-wide v0
.end method

.method getSettedOptionMenu(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1771
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->getCount()I

    move-result v1

    if-gt p1, v1, :cond_0

    .line 1772
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->this$0:Lcom/lenovo/internal/app/WindowDecorActionBar;

    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/lenovo/internal/app/WindowDecorActionBar;->access$1400(Lcom/lenovo/internal/app/WindowDecorActionBar;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;

    .line 1773
    .local v0, "tab":Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;
    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->hasSetOptionMenu:Z
    invoke-static {v0}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->access$1600(Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;)Z

    move-result v1

    if-eqz v1, :cond_0

    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->hasOptionMenu:Z
    invoke-static {v0}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->access$1700(Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;)Z

    move-result v1

    .line 1775
    .end local v0    # "tab":Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hasActionMenu(I)Z
    .locals 7
    .param p1, "position"    # I

    .prologue
    .line 1716
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->this$0:Lcom/lenovo/internal/app/WindowDecorActionBar;

    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/lenovo/internal/app/WindowDecorActionBar;->access$1400(Lcom/lenovo/internal/app/WindowDecorActionBar;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;

    .line 1717
    .local v3, "info":Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;
    const/4 v2, 0x0

    .line 1718
    .local v2, "hasOptionMenu":Z
    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->hasSetOptionMenu:Z
    invoke-static {v3}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->access$1600(Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1719
    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->hasOptionMenu:Z
    invoke-static {v3}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->access$1700(Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;)Z

    move-result v5

    .line 1737
    :goto_0
    return v5

    .line 1722
    :cond_0
    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->fragment:Landroid/app/Fragment;
    invoke-static {v3}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->access$1500(Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;)Landroid/app/Fragment;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1724
    :try_start_0
    const-class v4, Landroid/app/Fragment;

    .line 1726
    .local v4, "temp":Ljava/lang/Class;
    const-string v5, "mHasMenu"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 1727
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1728
    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->fragment:Landroid/app/Fragment;
    invoke-static {v3}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->access$1500(Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;)Landroid/app/Fragment;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1729
    # setter for: Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->hasOptionMenu:Z
    invoke-static {v3, v2}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->access$1702(Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;Z)Z

    .line 1730
    const/4 v5, 0x1

    # setter for: Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->hasSetOptionMenu:Z
    invoke-static {v3, v5}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->access$1602(Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1737
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v4    # "temp":Ljava/lang/Class;
    :cond_1
    :goto_1
    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->hasOptionMenu:Z
    invoke-static {v3}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->access$1700(Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;)Z

    move-result v5

    goto :goto_0

    .line 1732
    :catch_0
    move-exception v0

    .line 1733
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "liqftest"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1734
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public hideActionMenu(Landroid/view/ViewGroup;)V
    .locals 8
    .param p1, "container"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v7, 0x0

    .line 1757
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->getCount()I

    move-result v4

    .local v4, "n":I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 1758
    invoke-virtual {p0, v1}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->getItemId(I)J

    move-result-wide v2

    .line 1761
    .local v2, "itemId":J
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v6

    invoke-direct {p0, v6, v2, v3}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->makeFragmentName(IJ)Ljava/lang/String;

    move-result-object v5

    .line 1762
    .local v5, "name":Ljava/lang/String;
    iget-object v6, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v6, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 1763
    .local v0, "fragment":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    .line 1764
    invoke-virtual {v0, v7}, Landroid/app/Fragment;->setMenuVisibility(Z)V

    .line 1765
    invoke-static {v0, v7}, Lcom/lenovo/internal/widget/ViewUtils;->setUserVisibleHint(Landroid/app/Fragment;Z)V

    .line 1757
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1768
    .end local v0    # "fragment":Landroid/app/Fragment;
    .end local v2    # "itemId":J
    .end local v5    # "name":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 8
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    const/4 v7, 0x0

    .line 1553
    iget-object v4, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-nez v4, :cond_0

    .line 1554
    iget-object v4, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 1557
    :cond_0
    invoke-virtual {p0, p2}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->getItemId(I)J

    move-result-wide v2

    .line 1560
    .local v2, "itemId":J
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v4

    invoke-direct {p0, v4, v2, v3}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->makeFragmentName(IJ)Ljava/lang/String;

    move-result-object v1

    .line 1561
    .local v1, "name":Ljava/lang/String;
    iget-object v4, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v4, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 1562
    .local v0, "fragment":Landroid/app/Fragment;
    if-eqz v0, :cond_3

    .line 1564
    iget-object v4, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->this$0:Lcom/lenovo/internal/app/WindowDecorActionBar;

    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/lenovo/internal/app/WindowDecorActionBar;->access$1400(Lcom/lenovo/internal/app/WindowDecorActionBar;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;

    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->fragment:Landroid/app/Fragment;
    invoke-static {v4}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->access$1500(Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;)Landroid/app/Fragment;

    move-result-object v4

    if-nez v4, :cond_1

    .line 1565
    iget-object v4, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->this$0:Lcom/lenovo/internal/app/WindowDecorActionBar;

    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/lenovo/internal/app/WindowDecorActionBar;->access$1400(Lcom/lenovo/internal/app/WindowDecorActionBar;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;

    # setter for: Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->fragment:Landroid/app/Fragment;
    invoke-static {v4, v0}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->access$1502(Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;Landroid/app/Fragment;)Landroid/app/Fragment;

    .line 1568
    :cond_1
    iget-object v4, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {v4, v0}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1577
    :goto_0
    iget-object v4, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    if-eq v0, v4, :cond_2

    .line 1578
    invoke-virtual {v0, v7}, Landroid/app/Fragment;->setMenuVisibility(Z)V

    .line 1579
    invoke-static {v0, v7}, Lcom/lenovo/internal/widget/ViewUtils;->setUserVisibleHint(Landroid/app/Fragment;Z)V

    .line 1581
    :cond_2
    return-object v0

    .line 1570
    :cond_3
    invoke-virtual {p0, p2}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->getItem(I)Landroid/app/Fragment;

    move-result-object v0

    .line 1572
    iget-object v4, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v6

    invoke-direct {p0, v6, v2, v3}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->makeFragmentName(IJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v0, v6}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1574
    iget-object v4, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->this$0:Lcom/lenovo/internal/app/WindowDecorActionBar;

    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar;->mChildIndex:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/lenovo/internal/app/WindowDecorActionBar;->access$1300(Lcom/lenovo/internal/app/WindowDecorActionBar;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 1668
    check-cast p2, Landroid/app/Fragment;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-virtual {p2}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Parcelable;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 1678
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 1673
    const/4 v0, 0x0

    return-object v0
.end method

.method public setMenuPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 6
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1615
    const-string v1, "liqftest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMenuPrimaryItem------------position="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p3

    .line 1616
    check-cast v0, Landroid/app/Fragment;

    .line 1617
    .local v0, "fragment":Landroid/app/Fragment;
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->mCurrentMenuPrimaryItem:Landroid/app/Fragment;

    if-eq v0, v1, :cond_3

    .line 1618
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    invoke-static {v1}, Lcom/lenovo/internal/widget/ViewUtils;->getUserVisibleHint(Landroid/app/Fragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    iget-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->mCurrentMenuPrimaryItem:Landroid/app/Fragment;

    if-eq v1, v2, :cond_0

    .line 1619
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    invoke-virtual {v1, v4}, Landroid/app/Fragment;->setMenuVisibility(Z)V

    .line 1620
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    invoke-static {v1, v4}, Lcom/lenovo/internal/widget/ViewUtils;->setUserVisibleHint(Landroid/app/Fragment;Z)V

    .line 1622
    :cond_0
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->mCurrentMenuPrimaryItem:Landroid/app/Fragment;

    if-eqz v1, :cond_1

    .line 1623
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->mCurrentMenuPrimaryItem:Landroid/app/Fragment;

    invoke-virtual {v1, v4}, Landroid/app/Fragment;->setMenuVisibility(Z)V

    .line 1624
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->mCurrentMenuPrimaryItem:Landroid/app/Fragment;

    invoke-static {v1, v4}, Lcom/lenovo/internal/widget/ViewUtils;->setUserVisibleHint(Landroid/app/Fragment;Z)V

    .line 1626
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p0, p2}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->getSettedOptionMenu(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1627
    invoke-virtual {v0, v5}, Landroid/app/Fragment;->setMenuVisibility(Z)V

    .line 1628
    invoke-static {v0, v5}, Lcom/lenovo/internal/widget/ViewUtils;->setUserVisibleHint(Landroid/app/Fragment;Z)V

    .line 1630
    :cond_2
    iput-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->mCurrentMenuPrimaryItem:Landroid/app/Fragment;

    .line 1632
    :cond_3
    return-void
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 4
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1597
    move-object v0, p3

    check-cast v0, Landroid/app/Fragment;

    .line 1598
    .local v0, "fragment":Landroid/app/Fragment;
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    if-eq v0, v1, :cond_2

    .line 1600
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    if-eqz v1, :cond_0

    .line 1601
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    invoke-virtual {v1, v2}, Landroid/app/Fragment;->setMenuVisibility(Z)V

    .line 1602
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    invoke-static {v1, v2}, Lcom/lenovo/internal/widget/ViewUtils;->setUserVisibleHint(Landroid/app/Fragment;Z)V

    .line 1604
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p0, p2}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->getSettedOptionMenu(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1605
    invoke-virtual {v0, v3}, Landroid/app/Fragment;->setMenuVisibility(Z)V

    .line 1606
    invoke-static {v0, v3}, Lcom/lenovo/internal/widget/ViewUtils;->setUserVisibleHint(Landroid/app/Fragment;Z)V

    .line 1608
    :cond_1
    iput-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    .line 1610
    :cond_2
    return-void
.end method

.method public startUpdate(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 1539
    return-void
.end method
