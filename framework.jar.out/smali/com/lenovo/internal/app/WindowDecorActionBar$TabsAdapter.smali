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

.field private mRevertTag:Z

.field final synthetic this$0:Lcom/lenovo/internal/app/WindowDecorActionBar;


# direct methods
.method public constructor <init>(Lcom/lenovo/internal/app/WindowDecorActionBar;Landroid/app/Activity;)V
    .locals 1
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1570
    invoke-virtual {p2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;-><init>(Lcom/lenovo/internal/app/WindowDecorActionBar;Landroid/app/FragmentManager;)V

    .line 1571
    return-void
.end method

.method public constructor <init>(Lcom/lenovo/internal/app/WindowDecorActionBar;Landroid/app/FragmentManager;)V
    .locals 2
    .param p2, "fm"    # Landroid/app/FragmentManager;

    .prologue
    const/4 v1, 0x0

    .line 1581
    iput-object p1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->this$0:Lcom/lenovo/internal/app/WindowDecorActionBar;

    invoke-direct {p0}, Llenovo/view/PagerAdapter;-><init>()V

    .line 1576
    iput-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 1577
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->mRevertTag:Z

    .line 1578
    iput-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    .line 1579
    iput-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->mCurrentMenuPrimaryItem:Landroid/app/Fragment;

    .line 1582
    iput-object p2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    .line 1583
    return-void
.end method

.method static synthetic access$702(Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;
    .param p1, "x1"    # Z

    .prologue
    .line 1568
    iput-boolean p1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->mRevertTag:Z

    return p1
.end method

.method private makeFragmentName(IJ)Ljava/lang/String;
    .locals 2
    .param p1, "viewId"    # I
    .param p2, "id"    # J

    .prologue
    .line 1746
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
    .line 1636
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-nez v0, :cond_0

    .line 1637
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 1638
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->mRevertTag:Z

    .line 1642
    :cond_0
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    check-cast p3, Landroid/app/Fragment;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {v0, p3}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1643
    return-void
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .locals 6
    .param p1, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 1685
    iget-object v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-eqz v3, :cond_0

    .line 1686
    iget-object v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1687
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 1688
    iget-object v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v3}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 1692
    :cond_0
    iget-boolean v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->mRevertTag:Z

    if-eqz v3, :cond_1

    .line 1693
    iget-object v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->this$0:Lcom/lenovo/internal/app/WindowDecorActionBar;

    iget-object v3, v3, Lcom/lenovo/internal/app/WindowDecorActionBar;->mViewPager:Llenovo/view/ViewPager;

    invoke-virtual {v3}, Llenovo/view/ViewPager;->isUpdateMenuWhenScroller()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1716
    :cond_1
    return-void

    .line 1694
    :cond_2
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->mRevertTag:Z

    .line 1695
    invoke-virtual {p0}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->getCount()I

    move-result v2

    .line 1696
    .local v2, "index":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1704
    iget-object v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->this$0:Lcom/lenovo/internal/app/WindowDecorActionBar;

    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/lenovo/internal/app/WindowDecorActionBar;->access$1600(Lcom/lenovo/internal/app/WindowDecorActionBar;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;

    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->fragment:Landroid/app/Fragment;
    invoke-static {v3}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->access$1700(Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;)Landroid/app/Fragment;

    move-result-object v0

    .line 1705
    .local v0, "fragment":Landroid/app/Fragment;
    if-eqz v0, :cond_3

    .line 1706
    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1707
    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x90c0018

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1708
    iget-object v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->this$0:Lcom/lenovo/internal/app/WindowDecorActionBar;

    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/lenovo/internal/app/WindowDecorActionBar;->access$1600(Lcom/lenovo/internal/app/WindowDecorActionBar;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;

    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->hasSetOptionMenu:Z
    invoke-static {v3}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->access$1800(Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1709
    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v4

    const v5, 0x90c0019

    iget-object v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->this$0:Lcom/lenovo/internal/app/WindowDecorActionBar;

    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/lenovo/internal/app/WindowDecorActionBar;->access$1600(Lcom/lenovo/internal/app/WindowDecorActionBar;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;

    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->hasOptionMenu:Z
    invoke-static {v3}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->access$1900(Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1696
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getChildAt(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 1591
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->this$0:Lcom/lenovo/internal/app/WindowDecorActionBar;

    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar;->mChildIndex:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->access$1500(Lcom/lenovo/internal/app/WindowDecorActionBar;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 1592
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->this$0:Lcom/lenovo/internal/app/WindowDecorActionBar;

    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar;->mChildIndex:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->access$1500(Lcom/lenovo/internal/app/WindowDecorActionBar;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1597
    :goto_0
    return v0

    .line 1593
    :cond_0
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->this$0:Lcom/lenovo/internal/app/WindowDecorActionBar;

    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar;->mChildIndex:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->access$1500(Lcom/lenovo/internal/app/WindowDecorActionBar;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1594
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->this$0:Lcom/lenovo/internal/app/WindowDecorActionBar;

    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar;->mChildIndex:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->access$1500(Lcom/lenovo/internal/app/WindowDecorActionBar;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->this$0:Lcom/lenovo/internal/app/WindowDecorActionBar;

    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar;->mChildIndex:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/lenovo/internal/app/WindowDecorActionBar;->access$1500(Lcom/lenovo/internal/app/WindowDecorActionBar;)Ljava/util/ArrayList;

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

    .line 1596
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

    .line 1597
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 1751
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->this$0:Lcom/lenovo/internal/app/WindowDecorActionBar;

    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->access$1600(Lcom/lenovo/internal/app/WindowDecorActionBar;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/app/Fragment;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 1756
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->this$0:Lcom/lenovo/internal/app/WindowDecorActionBar;

    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/lenovo/internal/app/WindowDecorActionBar;->access$1600(Lcom/lenovo/internal/app/WindowDecorActionBar;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;

    .line 1757
    .local v0, "info":Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;
    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->fragment:Landroid/app/Fragment;
    invoke-static {v0}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->access$1700(Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;)Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1758
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->this$0:Lcom/lenovo/internal/app/WindowDecorActionBar;

    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lenovo/internal/app/WindowDecorActionBar;->access$1300(Lcom/lenovo/internal/app/WindowDecorActionBar;)Landroid/content/Context;

    move-result-object v1

    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->mClss:Ljava/lang/Class;
    invoke-static {v0}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->access$2000(Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    # setter for: Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->fragment:Landroid/app/Fragment;
    invoke-static {v0, v1}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->access$1702(Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;Landroid/app/Fragment;)Landroid/app/Fragment;

    .line 1759
    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->bundle:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->access$2100(Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1760
    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->fragment:Landroid/app/Fragment;
    invoke-static {v0}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->access$1700(Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;)Landroid/app/Fragment;

    move-result-object v1

    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->bundle:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->access$2100(Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 1763
    :cond_0
    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->fragment:Landroid/app/Fragment;
    invoke-static {v0}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->access$1700(Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;)Landroid/app/Fragment;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 1568
    invoke-virtual {p0, p1}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->getItem(I)Landroid/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public getItemAt(I)Landroid/app/Fragment;
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 1793
    iget-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->this$0:Lcom/lenovo/internal/app/WindowDecorActionBar;

    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/lenovo/internal/app/WindowDecorActionBar;->access$1600(Lcom/lenovo/internal/app/WindowDecorActionBar;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;

    .line 1795
    .local v0, "info":Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;
    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->fragment:Landroid/app/Fragment;
    invoke-static {v0}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->access$1700(Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;)Landroid/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1796
    iget-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->this$0:Lcom/lenovo/internal/app/WindowDecorActionBar;

    iget-object v2, v2, Lcom/lenovo/internal/app/WindowDecorActionBar;->mViewPager:Llenovo/view/ViewPager;

    invoke-virtual {v2}, Llenovo/view/ViewPager;->getId()I

    move-result v2

    invoke-virtual {p0, p1}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-direct {p0, v2, v4, v5}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->makeFragmentName(IJ)Ljava/lang/String;

    move-result-object v1

    .line 1797
    .local v1, "name":Ljava/lang/String;
    iget-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v2, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    # setter for: Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->fragment:Landroid/app/Fragment;
    invoke-static {v0, v2}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->access$1702(Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;Landroid/app/Fragment;)Landroid/app/Fragment;

    .line 1798
    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->fragment:Landroid/app/Fragment;
    invoke-static {v0}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->access$1700(Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;)Landroid/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1799
    iget-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->this$0:Lcom/lenovo/internal/app/WindowDecorActionBar;

    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/lenovo/internal/app/WindowDecorActionBar;->access$1300(Lcom/lenovo/internal/app/WindowDecorActionBar;)Landroid/content/Context;

    move-result-object v2

    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->mClss:Ljava/lang/Class;
    invoke-static {v0}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->access$2000(Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    # setter for: Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->fragment:Landroid/app/Fragment;
    invoke-static {v0, v2}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->access$1702(Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;Landroid/app/Fragment;)Landroid/app/Fragment;

    .line 1800
    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->bundle:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->access$2100(Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1801
    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->fragment:Landroid/app/Fragment;
    invoke-static {v0}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->access$1700(Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;)Landroid/app/Fragment;

    move-result-object v2

    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->bundle:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->access$2100(Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 1805
    .end local v1    # "name":Ljava/lang/String;
    :cond_0
    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->fragment:Landroid/app/Fragment;
    invoke-static {v0}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->access$1700(Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;)Landroid/app/Fragment;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic getItemAt(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 1568
    invoke-virtual {p0, p1}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->getItemAt(I)Landroid/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1742
    int-to-long v0, p1

    return-wide v0
.end method

.method getSettedOptionMenu(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1823
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->getCount()I

    move-result v1

    if-gt p1, v1, :cond_0

    .line 1824
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->this$0:Lcom/lenovo/internal/app/WindowDecorActionBar;

    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/lenovo/internal/app/WindowDecorActionBar;->access$1600(Lcom/lenovo/internal/app/WindowDecorActionBar;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;

    .line 1825
    .local v0, "tab":Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;
    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->hasSetOptionMenu:Z
    invoke-static {v0}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->access$1800(Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;)Z

    move-result v1

    if-eqz v1, :cond_0

    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->hasOptionMenu:Z
    invoke-static {v0}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->access$1900(Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;)Z

    move-result v1

    .line 1827
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
    .line 1768
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->this$0:Lcom/lenovo/internal/app/WindowDecorActionBar;

    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/lenovo/internal/app/WindowDecorActionBar;->access$1600(Lcom/lenovo/internal/app/WindowDecorActionBar;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;

    .line 1769
    .local v3, "info":Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;
    const/4 v2, 0x0

    .line 1770
    .local v2, "hasOptionMenu":Z
    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->hasSetOptionMenu:Z
    invoke-static {v3}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->access$1800(Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1771
    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->hasOptionMenu:Z
    invoke-static {v3}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->access$1900(Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;)Z

    move-result v5

    .line 1789
    :goto_0
    return v5

    .line 1774
    :cond_0
    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->fragment:Landroid/app/Fragment;
    invoke-static {v3}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->access$1700(Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;)Landroid/app/Fragment;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1776
    :try_start_0
    const-class v4, Landroid/app/Fragment;

    .line 1778
    .local v4, "temp":Ljava/lang/Class;
    const-string v5, "mHasMenu"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 1779
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1780
    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->fragment:Landroid/app/Fragment;
    invoke-static {v3}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->access$1700(Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;)Landroid/app/Fragment;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1781
    # setter for: Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->hasOptionMenu:Z
    invoke-static {v3, v2}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->access$1902(Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;Z)Z

    .line 1782
    const/4 v5, 0x1

    # setter for: Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->hasSetOptionMenu:Z
    invoke-static {v3, v5}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->access$1802(Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1789
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v4    # "temp":Ljava/lang/Class;
    :cond_1
    :goto_1
    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->hasOptionMenu:Z
    invoke-static {v3}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->access$1900(Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;)Z

    move-result v5

    goto :goto_0

    .line 1784
    :catch_0
    move-exception v0

    .line 1785
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "liqftest"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1786
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public hideActionMenu(Landroid/view/ViewGroup;)V
    .locals 8
    .param p1, "container"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v7, 0x0

    .line 1809
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->getCount()I

    move-result v4

    .local v4, "n":I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 1810
    invoke-virtual {p0, v1}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->getItemId(I)J

    move-result-wide v2

    .line 1813
    .local v2, "itemId":J
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v6

    invoke-direct {p0, v6, v2, v3}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->makeFragmentName(IJ)Ljava/lang/String;

    move-result-object v5

    .line 1814
    .local v5, "name":Ljava/lang/String;
    iget-object v6, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v6, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 1815
    .local v0, "fragment":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    .line 1816
    invoke-virtual {v0, v7}, Landroid/app/Fragment;->setMenuVisibility(Z)V

    .line 1817
    invoke-static {v0, v7}, Lcom/lenovo/internal/widget/ViewUtils;->setUserVisibleHint(Landroid/app/Fragment;Z)V

    .line 1809
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1820
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

    .line 1601
    iget-object v4, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-nez v4, :cond_0

    .line 1602
    iget-object v4, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 1603
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->mRevertTag:Z

    .line 1606
    :cond_0
    invoke-virtual {p0, p2}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->getItemId(I)J

    move-result-wide v2

    .line 1609
    .local v2, "itemId":J
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v4

    invoke-direct {p0, v4, v2, v3}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->makeFragmentName(IJ)Ljava/lang/String;

    move-result-object v1

    .line 1610
    .local v1, "name":Ljava/lang/String;
    iget-object v4, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v4, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 1611
    .local v0, "fragment":Landroid/app/Fragment;
    if-eqz v0, :cond_3

    .line 1613
    iget-object v4, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->this$0:Lcom/lenovo/internal/app/WindowDecorActionBar;

    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/lenovo/internal/app/WindowDecorActionBar;->access$1600(Lcom/lenovo/internal/app/WindowDecorActionBar;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;

    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->fragment:Landroid/app/Fragment;
    invoke-static {v4}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->access$1700(Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;)Landroid/app/Fragment;

    move-result-object v4

    if-nez v4, :cond_1

    .line 1614
    iget-object v4, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->this$0:Lcom/lenovo/internal/app/WindowDecorActionBar;

    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/lenovo/internal/app/WindowDecorActionBar;->access$1600(Lcom/lenovo/internal/app/WindowDecorActionBar;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;

    # setter for: Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->fragment:Landroid/app/Fragment;
    invoke-static {v4, v0}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->access$1702(Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;Landroid/app/Fragment;)Landroid/app/Fragment;

    .line 1617
    :cond_1
    iget-object v4, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {v4, v0}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1626
    :goto_0
    iget-object v4, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    if-eq v0, v4, :cond_2

    .line 1627
    invoke-virtual {v0, v7}, Landroid/app/Fragment;->setMenuVisibility(Z)V

    .line 1628
    invoke-static {v0, v7}, Lcom/lenovo/internal/widget/ViewUtils;->setUserVisibleHint(Landroid/app/Fragment;Z)V

    .line 1630
    :cond_2
    return-object v0

    .line 1619
    :cond_3
    invoke-virtual {p0, p2}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->getItem(I)Landroid/app/Fragment;

    move-result-object v0

    .line 1621
    iget-object v4, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v6

    invoke-direct {p0, v6, v2, v3}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->makeFragmentName(IJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v0, v6}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1623
    iget-object v4, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->this$0:Lcom/lenovo/internal/app/WindowDecorActionBar;

    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar;->mChildIndex:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/lenovo/internal/app/WindowDecorActionBar;->access$1500(Lcom/lenovo/internal/app/WindowDecorActionBar;)Ljava/util/ArrayList;

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
    .line 1720
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
    .line 1730
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 1725
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

    .line 1665
    const-string v1, "liqftest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setMenuPrimaryItem------------position="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p3

    .line 1666
    check-cast v0, Landroid/app/Fragment;

    .line 1667
    .local v0, "fragment":Landroid/app/Fragment;
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->mCurrentMenuPrimaryItem:Landroid/app/Fragment;

    if-eq v0, v1, :cond_3

    .line 1668
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    invoke-static {v1}, Lcom/lenovo/internal/widget/ViewUtils;->getUserVisibleHint(Landroid/app/Fragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    iget-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->mCurrentMenuPrimaryItem:Landroid/app/Fragment;

    if-eq v1, v2, :cond_0

    .line 1669
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    invoke-virtual {v1, v4}, Landroid/app/Fragment;->setMenuVisibility(Z)V

    .line 1670
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    invoke-static {v1, v4}, Lcom/lenovo/internal/widget/ViewUtils;->setUserVisibleHint(Landroid/app/Fragment;Z)V

    .line 1672
    :cond_0
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->mCurrentMenuPrimaryItem:Landroid/app/Fragment;

    if-eqz v1, :cond_1

    .line 1673
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->mCurrentMenuPrimaryItem:Landroid/app/Fragment;

    invoke-virtual {v1, v4}, Landroid/app/Fragment;->setMenuVisibility(Z)V

    .line 1674
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->mCurrentMenuPrimaryItem:Landroid/app/Fragment;

    invoke-static {v1, v4}, Lcom/lenovo/internal/widget/ViewUtils;->setUserVisibleHint(Landroid/app/Fragment;Z)V

    .line 1676
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p0, p2}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->getSettedOptionMenu(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1677
    invoke-virtual {v0, v5}, Landroid/app/Fragment;->setMenuVisibility(Z)V

    .line 1678
    invoke-static {v0, v5}, Lcom/lenovo/internal/widget/ViewUtils;->setUserVisibleHint(Landroid/app/Fragment;Z)V

    .line 1680
    :cond_2
    iput-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->mCurrentMenuPrimaryItem:Landroid/app/Fragment;

    .line 1682
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

    .line 1647
    move-object v0, p3

    check-cast v0, Landroid/app/Fragment;

    .line 1648
    .local v0, "fragment":Landroid/app/Fragment;
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    if-eq v0, v1, :cond_2

    .line 1650
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    if-eqz v1, :cond_0

    .line 1651
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    invoke-virtual {v1, v2}, Landroid/app/Fragment;->setMenuVisibility(Z)V

    .line 1652
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    invoke-static {v1, v2}, Lcom/lenovo/internal/widget/ViewUtils;->setUserVisibleHint(Landroid/app/Fragment;Z)V

    .line 1654
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p0, p2}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->getSettedOptionMenu(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1655
    invoke-virtual {v0, v3}, Landroid/app/Fragment;->setMenuVisibility(Z)V

    .line 1656
    invoke-static {v0, v3}, Lcom/lenovo/internal/widget/ViewUtils;->setUserVisibleHint(Landroid/app/Fragment;Z)V

    .line 1658
    :cond_1
    iput-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    .line 1660
    :cond_2
    return-void
.end method

.method public startUpdate(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 1587
    return-void
.end method
