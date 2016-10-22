.class public Lcom/lenovo/component/slidemenu/LeMenuGridAdapter;
.super Landroid/widget/BaseAdapter;
.source "LeMenuGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/component/slidemenu/LeMenuGridAdapter$LeMenuItem;,
        Lcom/lenovo/component/slidemenu/LeMenuGridAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final MAX_ITEM_COUNT:I = 0x6


# instance fields
.field private mDataset:[Lcom/lenovo/component/slidemenu/LeMenuGridAdapter$LeMenuItem;

.field private mDisabledItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Lcom/lenovo/component/slidemenu/LeMenuGridAdapter$LeMenuItem;)V
    .locals 3
    .param p1, "dataset"    # [Lcom/lenovo/component/slidemenu/LeMenuGridAdapter$LeMenuItem;

    .prologue
    .line 162
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 163
    if-eqz p1, :cond_1

    array-length v0, p1

    const/4 v1, 0x6

    if-gt v0, v1, :cond_1

    .line 164
    iput-object p1, p0, Lcom/lenovo/component/slidemenu/LeMenuGridAdapter;->mDataset:[Lcom/lenovo/component/slidemenu/LeMenuGridAdapter$LeMenuItem;

    .line 171
    :cond_0
    return-void

    .line 166
    :cond_1
    if-eqz p1, :cond_0

    .line 167
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data set volumn must be equal to or less than 6, current volumn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getItemLayoutParams(Landroid/content/Context;)Landroid/view/ViewGroup$LayoutParams;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 147
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x9080084

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 148
    .local v2, "width":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x9080085

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 149
    .local v0, "height":I
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 151
    .local v1, "result":Landroid/view/ViewGroup$LayoutParams;
    return-object v1
.end method

.method private isItemDisabled(I)Z
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 81
    const/4 v1, 0x0

    .line 83
    .local v1, "result":Z
    iget-object v2, p0, Lcom/lenovo/component/slidemenu/LeMenuGridAdapter;->mDisabledItems:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 84
    iget-object v2, p0, Lcom/lenovo/component/slidemenu/LeMenuGridAdapter;->mDisabledItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 85
    .local v0, "disabledItems":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 86
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne p1, v2, :cond_0

    .line 87
    const/4 v1, 0x1

    goto :goto_0

    .line 92
    .end local v0    # "disabledItems":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_1
    return v1
.end method

.method private removeListMenuItemDisabledState(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Lcom/lenovo/component/slidemenu/LeMenuGridAdapter;->setListMenuItemEnabled(I)V

    .line 97
    return-void
.end method

.method private removeListMenuItemDisabledState([I)V
    .locals 0
    .param p1, "indexes"    # [I

    .prologue
    .line 100
    invoke-virtual {p0, p1}, Lcom/lenovo/component/slidemenu/LeMenuGridAdapter;->setListMenuItemEnabled([I)V

    .line 101
    return-void
.end method

.method private setContentTextColor(Lcom/lenovo/component/slidemenu/LeMenuGridAdapter$ViewHolder;I)V
    .locals 3
    .param p1, "holder"    # Lcom/lenovo/component/slidemenu/LeMenuGridAdapter$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 191
    invoke-direct {p0, p2}, Lcom/lenovo/component/slidemenu/LeMenuGridAdapter;->isItemDisabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 192
    iget-object v1, p1, Lcom/lenovo/component/slidemenu/LeMenuGridAdapter$ViewHolder;->content:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x9070068

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 194
    .local v0, "textColor":I
    iget-object v1, p1, Lcom/lenovo/component/slidemenu/LeMenuGridAdapter$ViewHolder;->content:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 199
    :goto_0
    return-void

    .line 196
    .end local v0    # "textColor":I
    :cond_0
    iget-object v1, p1, Lcom/lenovo/component/slidemenu/LeMenuGridAdapter$ViewHolder;->content:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x9070063

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 197
    .restart local v0    # "textColor":I
    iget-object v1, p1, Lcom/lenovo/component/slidemenu/LeMenuGridAdapter$ViewHolder;->content:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private setMenuItem(Lcom/lenovo/component/slidemenu/LeMenuGridAdapter$ViewHolder;Lcom/lenovo/component/slidemenu/LeMenuGridAdapter$LeMenuItem;I)V
    .locals 2
    .param p1, "holder"    # Lcom/lenovo/component/slidemenu/LeMenuGridAdapter$ViewHolder;
    .param p2, "itemData"    # Lcom/lenovo/component/slidemenu/LeMenuGridAdapter$LeMenuItem;
    .param p3, "position"    # I

    .prologue
    .line 174
    if-nez p2, :cond_0

    .line 186
    :goto_0
    return-void

    .line 178
    :cond_0
    invoke-virtual {p2}, Lcom/lenovo/component/slidemenu/LeMenuGridAdapter$LeMenuItem;->getContent()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 179
    iget-object v0, p1, Lcom/lenovo/component/slidemenu/LeMenuGridAdapter$ViewHolder;->content:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/lenovo/component/slidemenu/LeMenuGridAdapter$LeMenuItem;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    :goto_1
    iget-object v0, p1, Lcom/lenovo/component/slidemenu/LeMenuGridAdapter$ViewHolder;->content:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/lenovo/component/slidemenu/LeMenuGridAdapter$LeMenuItem;->getIconId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 185
    invoke-direct {p0, p1, p3}, Lcom/lenovo/component/slidemenu/LeMenuGridAdapter;->setContentTextColor(Lcom/lenovo/component/slidemenu/LeMenuGridAdapter$ViewHolder;I)V

    goto :goto_0

    .line 181
    :cond_1
    iget-object v0, p1, Lcom/lenovo/component/slidemenu/LeMenuGridAdapter$ViewHolder;->content:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/lenovo/component/slidemenu/LeMenuGridAdapter$LeMenuItem;->getContentId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/LeMenuGridAdapter;->mDataset:[Lcom/lenovo/component/slidemenu/LeMenuGridAdapter$LeMenuItem;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Lcom/lenovo/component/slidemenu/LeMenuGridAdapter$LeMenuItem;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 110
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/LeMenuGridAdapter;->mDataset:[Lcom/lenovo/component/slidemenu/LeMenuGridAdapter$LeMenuItem;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/LeMenuGridAdapter;->mDataset:[Lcom/lenovo/component/slidemenu/LeMenuGridAdapter$LeMenuItem;

    aget-object v0, v0, p1

    .line 113
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lcom/lenovo/component/slidemenu/LeMenuGridAdapter;->getItem(I)Lcom/lenovo/component/slidemenu/LeMenuGridAdapter$LeMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 119
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 126
    if-nez p2, :cond_0

    .line 127
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 128
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x904002e

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 129
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/lenovo/component/slidemenu/LeMenuGridAdapter;->getItemLayoutParams(Landroid/content/Context;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    new-instance v0, Lcom/lenovo/component/slidemenu/LeMenuGridAdapter$ViewHolder;

    invoke-direct {v0, p2}, Lcom/lenovo/component/slidemenu/LeMenuGridAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 131
    .local v0, "holder":Lcom/lenovo/component/slidemenu/LeMenuGridAdapter$ViewHolder;
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 139
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/lenovo/component/slidemenu/LeMenuGridAdapter;->getItem(I)Lcom/lenovo/component/slidemenu/LeMenuGridAdapter$LeMenuItem;

    move-result-object v2

    invoke-direct {p0, v0, v2, p1}, Lcom/lenovo/component/slidemenu/LeMenuGridAdapter;->setMenuItem(Lcom/lenovo/component/slidemenu/LeMenuGridAdapter$ViewHolder;Lcom/lenovo/component/slidemenu/LeMenuGridAdapter$LeMenuItem;I)V

    .line 141
    return-object p2

    .line 135
    .end local v0    # "holder":Lcom/lenovo/component/slidemenu/LeMenuGridAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/component/slidemenu/LeMenuGridAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/lenovo/component/slidemenu/LeMenuGridAdapter$ViewHolder;
    goto :goto_0
.end method

.method public setListMenuItemDisabled(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 24
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/LeMenuGridAdapter;->mDisabledItems:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/component/slidemenu/LeMenuGridAdapter;->mDisabledItems:Ljava/util/ArrayList;

    .line 29
    :cond_0
    invoke-direct {p0, p1}, Lcom/lenovo/component/slidemenu/LeMenuGridAdapter;->removeListMenuItemDisabledState(I)V

    .line 30
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/LeMenuGridAdapter;->mDisabledItems:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    invoke-virtual {p0}, Lcom/lenovo/component/slidemenu/LeMenuGridAdapter;->notifyDataSetChanged()V

    .line 33
    return-void
.end method

.method public setListMenuItemDisabled([I)V
    .locals 5
    .param p1, "indexes"    # [I

    .prologue
    .line 36
    iget-object v3, p0, Lcom/lenovo/component/slidemenu/LeMenuGridAdapter;->mDisabledItems:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    .line 37
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/lenovo/component/slidemenu/LeMenuGridAdapter;->mDisabledItems:Ljava/util/ArrayList;

    .line 41
    :cond_0
    invoke-direct {p0, p1}, Lcom/lenovo/component/slidemenu/LeMenuGridAdapter;->removeListMenuItemDisabledState([I)V

    .line 42
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v0, p1

    .local v0, "count":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 43
    aget v2, p1, v1

    .line 44
    .local v2, "index":I
    iget-object v3, p0, Lcom/lenovo/component/slidemenu/LeMenuGridAdapter;->mDisabledItems:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 47
    .end local v2    # "index":I
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/component/slidemenu/LeMenuGridAdapter;->notifyDataSetChanged()V

    .line 48
    return-void
.end method

.method public setListMenuItemEnabled(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 51
    iget-object v1, p0, Lcom/lenovo/component/slidemenu/LeMenuGridAdapter;->mDisabledItems:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 52
    iget-object v1, p0, Lcom/lenovo/component/slidemenu/LeMenuGridAdapter;->mDisabledItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 53
    .local v0, "disabledItems":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 54
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 55
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 59
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/component/slidemenu/LeMenuGridAdapter;->notifyDataSetChanged()V

    .line 61
    .end local v0    # "disabledItems":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_2
    return-void
.end method

.method public setListMenuItemEnabled([I)V
    .locals 5
    .param p1, "indexes"    # [I

    .prologue
    .line 64
    iget-object v4, p0, Lcom/lenovo/component/slidemenu/LeMenuGridAdapter;->mDisabledItems:Ljava/util/ArrayList;

    if-eqz v4, :cond_3

    .line 65
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v0, p1

    .local v0, "count":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 66
    aget v3, p1, v2

    .line 68
    .local v3, "index":I
    iget-object v4, p0, Lcom/lenovo/component/slidemenu/LeMenuGridAdapter;->mDisabledItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 69
    .local v1, "disabledItems":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 70
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 71
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 65
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 76
    .end local v1    # "disabledItems":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v3    # "index":I
    :cond_2
    invoke-virtual {p0}, Lcom/lenovo/component/slidemenu/LeMenuGridAdapter;->notifyDataSetChanged()V

    .line 78
    .end local v0    # "count":I
    .end local v2    # "i":I
    :cond_3
    return-void
.end method

.method public updateDataset(Lcom/lenovo/component/slidemenu/LeMenuGridAdapter$LeMenuItem;I)V
    .locals 1
    .param p1, "itemData"    # Lcom/lenovo/component/slidemenu/LeMenuGridAdapter$LeMenuItem;
    .param p2, "position"    # I

    .prologue
    .line 215
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/LeMenuGridAdapter;->mDataset:[Lcom/lenovo/component/slidemenu/LeMenuGridAdapter$LeMenuItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/component/slidemenu/LeMenuGridAdapter;->mDataset:[Lcom/lenovo/component/slidemenu/LeMenuGridAdapter$LeMenuItem;

    array-length v0, v0

    if-ge p2, v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/LeMenuGridAdapter;->mDataset:[Lcom/lenovo/component/slidemenu/LeMenuGridAdapter$LeMenuItem;

    aput-object p1, v0, p2

    .line 217
    invoke-virtual {p0}, Lcom/lenovo/component/slidemenu/LeMenuGridAdapter;->notifyDataSetChanged()V

    .line 219
    :cond_0
    return-void
.end method

.method public updateDataset([Lcom/lenovo/component/slidemenu/LeMenuGridAdapter$LeMenuItem;)V
    .locals 0
    .param p1, "dataset"    # [Lcom/lenovo/component/slidemenu/LeMenuGridAdapter$LeMenuItem;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/lenovo/component/slidemenu/LeMenuGridAdapter;->mDataset:[Lcom/lenovo/component/slidemenu/LeMenuGridAdapter$LeMenuItem;

    .line 203
    invoke-virtual {p0}, Lcom/lenovo/component/slidemenu/LeMenuGridAdapter;->notifyDataSetChanged()V

    .line 204
    return-void
.end method

.method public updateDataset([Lcom/lenovo/component/slidemenu/LeMenuGridAdapter$LeMenuItem;[I)V
    .locals 5
    .param p1, "dataset"    # [Lcom/lenovo/component/slidemenu/LeMenuGridAdapter$LeMenuItem;
    .param p2, "indexes"    # [I

    .prologue
    .line 207
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v0, p1

    .local v0, "count":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 208
    aget v2, p2, v1

    .line 209
    .local v2, "index":I
    iget-object v3, p0, Lcom/lenovo/component/slidemenu/LeMenuGridAdapter;->mDataset:[Lcom/lenovo/component/slidemenu/LeMenuGridAdapter$LeMenuItem;

    aget-object v4, p1, v1

    aput-object v4, v3, v2

    .line 207
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 211
    .end local v2    # "index":I
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/component/slidemenu/LeMenuGridAdapter;->notifyDataSetChanged()V

    .line 212
    return-void
.end method
