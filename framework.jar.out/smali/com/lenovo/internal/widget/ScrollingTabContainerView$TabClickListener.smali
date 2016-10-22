.class Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabClickListener;
.super Ljava/lang/Object;
.source "ScrollingTabContainerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/internal/widget/ScrollingTabContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/internal/widget/ScrollingTabContainerView;


# direct methods
.method private constructor <init>(Lcom/lenovo/internal/widget/ScrollingTabContainerView;)V
    .locals 0

    .prologue
    .line 808
    iput-object p1, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabClickListener;->this$0:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/internal/widget/ScrollingTabContainerView;Lcom/lenovo/internal/widget/ScrollingTabContainerView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/internal/widget/ScrollingTabContainerView;
    .param p2, "x1"    # Lcom/lenovo/internal/widget/ScrollingTabContainerView$1;

    .prologue
    .line 808
    invoke-direct {p0, p1}, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabClickListener;-><init>(Lcom/lenovo/internal/widget/ScrollingTabContainerView;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 810
    move-object v3, p1

    check-cast v3, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;

    .line 811
    .local v3, "tabView":Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;
    invoke-virtual {v3}, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;->getTab()Landroid/app/ActionBar$Tab;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActionBar$Tab;->select()V

    .line 812
    iget-object v4, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabClickListener;->this$0:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    # getter for: Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->access$100(Lcom/lenovo/internal/widget/ScrollingTabContainerView;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    .line 813
    .local v2, "tabCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 814
    iget-object v4, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabClickListener;->this$0:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    # getter for: Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->access$100(Lcom/lenovo/internal/widget/ScrollingTabContainerView;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 815
    .local v0, "child":Landroid/view/View;
    if-ne v0, p1, :cond_0

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v0, v4}, Landroid/view/View;->setSelected(Z)V

    .line 813
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 815
    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    .line 817
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method
