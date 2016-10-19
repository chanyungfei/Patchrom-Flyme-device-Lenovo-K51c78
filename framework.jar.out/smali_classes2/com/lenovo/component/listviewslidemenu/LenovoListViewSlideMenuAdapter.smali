.class public abstract Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "LenovoListViewSlideMenuAdapter.java"


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 22
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 24
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 33
    if-nez p2, :cond_0

    .line 34
    iget-object v0, p0, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x9040037

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .end local p2    # "convertView":Landroid/view/View;
    check-cast p2, Lcom/lenovo/component/listviewslidemenu/LenovoListViewSlideMenuGroupView;

    .line 37
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_0
    return-object p2
.end method
