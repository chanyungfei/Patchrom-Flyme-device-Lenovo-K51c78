.class public Lcom/mediatek/widget/DefaultAccountPickerAdapter;
.super Landroid/widget/BaseAdapter;
.source "DefaultAccountPickerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/widget/DefaultAccountPickerAdapter$1;,
        Lcom/mediatek/widget/DefaultAccountPickerAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-string v0, "DefaultAccountPickerAdapter"

    sput-object v0, Lcom/mediatek/widget/DefaultAccountPickerAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/mediatek/widget/DefaultAccountPickerAdapter;->mContext:Landroid/content/Context;

    .line 41
    return-void
.end method


# virtual methods
.method getActivePosition()I
    .locals 2

    .prologue
    .line 72
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/mediatek/widget/DefaultAccountPickerAdapter;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 73
    iget-object v1, p0, Lcom/mediatek/widget/DefaultAccountPickerAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;

    invoke-virtual {v1}, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 72
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/mediatek/widget/DefaultAccountPickerAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/widget/DefaultAccountPickerAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lcom/mediatek/widget/DefaultAccountPickerAdapter;->getItem(I)Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 92
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    .line 98
    if-nez p2, :cond_0

    .line 99
    iget-object v3, p0, Lcom/mediatek/widget/DefaultAccountPickerAdapter;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 100
    .local v1, "inflator":Landroid/view/LayoutInflater;
    const v3, 0x8070011

    invoke-virtual {v1, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 102
    new-instance v2, Lcom/mediatek/widget/DefaultAccountPickerAdapter$ViewHolder;

    invoke-direct {v2, p0, v5}, Lcom/mediatek/widget/DefaultAccountPickerAdapter$ViewHolder;-><init>(Lcom/mediatek/widget/DefaultAccountPickerAdapter;Lcom/mediatek/widget/DefaultAccountPickerAdapter$1;)V

    .line 103
    .local v2, "viewHolder":Lcom/mediatek/widget/DefaultAccountPickerAdapter$ViewHolder;
    const v3, 0x811003f

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/mediatek/widget/AccountItemView;

    iput-object v3, v2, Lcom/mediatek/widget/DefaultAccountPickerAdapter$ViewHolder;->accountItem:Lcom/mediatek/widget/AccountItemView;

    .line 104
    const v3, 0x811003e

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, v2, Lcom/mediatek/widget/DefaultAccountPickerAdapter$ViewHolder;->radioButton:Landroid/widget/RadioButton;

    .line 105
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 110
    .end local v1    # "inflator":Landroid/view/LayoutInflater;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/mediatek/widget/DefaultAccountPickerAdapter;->getItem(I)Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;

    move-result-object v0

    .line 112
    .local v0, "accountInfo":Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;
    iget-object v3, v2, Lcom/mediatek/widget/DefaultAccountPickerAdapter$ViewHolder;->accountItem:Lcom/mediatek/widget/AccountItemView;

    invoke-virtual {v0}, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mediatek/widget/AccountItemView;->setAccountIcon(Landroid/graphics/Bitmap;)V

    .line 113
    iget-object v3, v2, Lcom/mediatek/widget/DefaultAccountPickerAdapter$ViewHolder;->accountItem:Lcom/mediatek/widget/AccountItemView;

    invoke-virtual {v0}, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mediatek/widget/AccountItemView;->setAccountName(Ljava/lang/String;)V

    .line 114
    iget-object v3, v2, Lcom/mediatek/widget/DefaultAccountPickerAdapter$ViewHolder;->accountItem:Lcom/mediatek/widget/AccountItemView;

    invoke-virtual {v0}, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mediatek/widget/AccountItemView;->setAccountNumber(Ljava/lang/String;)V

    .line 116
    iget-object v3, v2, Lcom/mediatek/widget/DefaultAccountPickerAdapter$ViewHolder;->radioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->isActive()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 118
    return-object p2

    .line 107
    .end local v0    # "accountInfo":Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;
    .end local v2    # "viewHolder":Lcom/mediatek/widget/DefaultAccountPickerAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/widget/DefaultAccountPickerAdapter$ViewHolder;

    .restart local v2    # "viewHolder":Lcom/mediatek/widget/DefaultAccountPickerAdapter$ViewHolder;
    goto :goto_0
.end method

.method setActiveStatus(I)V
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 57
    iget-object v2, p0, Lcom/mediatek/widget/DefaultAccountPickerAdapter;->mData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;

    .line 58
    .local v0, "accountInfo":Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->setActiveStatus(Z)V

    goto :goto_0

    .line 61
    .end local v0    # "accountInfo":Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;
    :cond_0
    const/4 v2, -0x1

    if-le p1, v2, :cond_1

    iget-object v2, p0, Lcom/mediatek/widget/DefaultAccountPickerAdapter;->mData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_1

    .line 62
    iget-object v2, p0, Lcom/mediatek/widget/DefaultAccountPickerAdapter;->mData:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->setActiveStatus(Z)V

    .line 66
    :goto_1
    return-void

    .line 64
    :cond_1
    sget-object v2, Lcom/mediatek/widget/DefaultAccountPickerAdapter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set the wrong active position: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method setItemData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;>;"
    iget-object v0, p0, Lcom/mediatek/widget/DefaultAccountPickerAdapter;->mData:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/mediatek/widget/DefaultAccountPickerAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 50
    :cond_0
    iput-object p1, p0, Lcom/mediatek/widget/DefaultAccountPickerAdapter;->mData:Ljava/util/List;

    .line 51
    return-void
.end method
