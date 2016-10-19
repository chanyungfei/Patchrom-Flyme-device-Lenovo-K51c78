.class public Lcom/mediatek/widget/AccountViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "AccountViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/widget/AccountViewAdapter$AccountElements;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/widget/AccountViewAdapter$AccountElements;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/widget/AccountViewAdapter$AccountElements;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/widget/AccountViewAdapter$AccountElements;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/mediatek/widget/AccountViewAdapter;->mContext:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lcom/mediatek/widget/AccountViewAdapter;->mData:Ljava/util/List;

    .line 45
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/mediatek/widget/AccountViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 54
    iget-object v0, p0, Lcom/mediatek/widget/AccountViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 59
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 75
    if-nez p2, :cond_0

    .line 76
    new-instance v1, Lcom/mediatek/widget/AccountItemView;

    iget-object v2, p0, Lcom/mediatek/widget/AccountViewAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/mediatek/widget/AccountItemView;-><init>(Landroid/content/Context;)V

    .line 80
    .local v1, "view":Lcom/mediatek/widget/AccountItemView;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/mediatek/widget/AccountViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/widget/AccountViewAdapter$AccountElements;

    .line 81
    .local v0, "elements":Lcom/mediatek/widget/AccountViewAdapter$AccountElements;
    invoke-virtual {v1, v0}, Lcom/mediatek/widget/AccountItemView;->setViewItem(Lcom/mediatek/widget/AccountViewAdapter$AccountElements;)V

    .line 82
    return-object v1

    .end local v0    # "elements":Lcom/mediatek/widget/AccountViewAdapter$AccountElements;
    .end local v1    # "view":Lcom/mediatek/widget/AccountItemView;
    :cond_0
    move-object v1, p2

    .line 78
    check-cast v1, Lcom/mediatek/widget/AccountItemView;

    .restart local v1    # "view":Lcom/mediatek/widget/AccountItemView;
    goto :goto_0
.end method

.method public updateData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/widget/AccountViewAdapter$AccountElements;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/widget/AccountViewAdapter$AccountElements;>;"
    iput-object p1, p0, Lcom/mediatek/widget/AccountViewAdapter;->mData:Ljava/util/List;

    .line 69
    invoke-virtual {p0}, Lcom/mediatek/widget/AccountViewAdapter;->notifyDataSetChanged()V

    .line 70
    return-void
.end method
