.class public Lcom/lenovo/component/slidemenu/LeMenuListAdapter;
.super Landroid/widget/BaseAdapter;
.source "LeMenuListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;,
        Lcom/lenovo/component/slidemenu/LeMenuListAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final NO_ITEM_FOCUSED:I = -0x1


# instance fields
.field private mDataset:[Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;

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

.field private mFocusedItem:I


# direct methods
.method public constructor <init>([Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;)V
    .locals 1
    .param p1, "myDataset"    # [Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;

    .prologue
    .line 250
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter;->mFocusedItem:I

    .line 251
    iput-object p1, p0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter;->mDataset:[Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;

    .line 252
    return-void
.end method

.method private isItemDisabled(I)Z
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 154
    const/4 v1, 0x0

    .line 156
    .local v1, "result":Z
    iget-object v2, p0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter;->mDisabledItems:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 157
    iget-object v2, p0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter;->mDisabledItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 158
    .local v0, "disabledItems":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 159
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne p1, v2, :cond_0

    .line 160
    const/4 v1, 0x1

    goto :goto_0

    .line 165
    .end local v0    # "disabledItems":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_1
    return v1
.end method

.method private removeListMenuItemDisabledState(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 169
    invoke-virtual {p0, p1}, Lcom/lenovo/component/slidemenu/LeMenuListAdapter;->setListMenuItemEnabled(I)V

    .line 170
    return-void
.end method

.method private removeListMenuItemDisabledState([I)V
    .locals 0
    .param p1, "indexes"    # [I

    .prologue
    .line 173
    invoke-virtual {p0, p1}, Lcom/lenovo/component/slidemenu/LeMenuListAdapter;->setListMenuItemEnabled([I)V

    .line 174
    return-void
.end method

.method private setContentItem(Lcom/lenovo/component/slidemenu/LeMenuListAdapter$ViewHolder;Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;I)V
    .locals 2
    .param p1, "holder"    # Lcom/lenovo/component/slidemenu/LeMenuListAdapter$ViewHolder;
    .param p2, "itemData"    # Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;
    .param p3, "position"    # I

    .prologue
    .line 272
    iget-object v0, p1, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$ViewHolder;->titleLayout:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 273
    iget-object v0, p1, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$ViewHolder;->contentLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 276
    iget-object v0, p1, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$ViewHolder;->titleLayout:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    iget-object v0, p1, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$ViewHolder;->contentLayout:Landroid/widget/RelativeLayout;

    invoke-direct {p0, p3}, Lcom/lenovo/component/slidemenu/LeMenuListAdapter;->isItemDisabled(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 280
    invoke-direct {p0, p1, p2}, Lcom/lenovo/component/slidemenu/LeMenuListAdapter;->setContentItemIcon(Lcom/lenovo/component/slidemenu/LeMenuListAdapter$ViewHolder;Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;)V

    .line 281
    invoke-direct {p0, p1, p2}, Lcom/lenovo/component/slidemenu/LeMenuListAdapter;->setContnetItemText(Lcom/lenovo/component/slidemenu/LeMenuListAdapter$ViewHolder;Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;)V

    .line 282
    invoke-direct {p0, p1, p3}, Lcom/lenovo/component/slidemenu/LeMenuListAdapter;->setContentItemTextColor(Lcom/lenovo/component/slidemenu/LeMenuListAdapter$ViewHolder;I)V

    .line 283
    return-void
.end method

.method private setContentItemIcon(Lcom/lenovo/component/slidemenu/LeMenuListAdapter$ViewHolder;Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;)V
    .locals 3
    .param p1, "holder"    # Lcom/lenovo/component/slidemenu/LeMenuListAdapter$ViewHolder;
    .param p2, "itemData"    # Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;

    .prologue
    const/4 v2, 0x0

    .line 344
    invoke-virtual {p2}, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p1, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 346
    iget-object v0, p1, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 353
    :goto_0
    return-void

    .line 347
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p2}, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;->getIconId()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 348
    iget-object v0, p1, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 349
    iget-object v0, p1, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;->getIconId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 351
    :cond_1
    iget-object v0, p1, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setContentItemTextColor(Lcom/lenovo/component/slidemenu/LeMenuListAdapter$ViewHolder;I)V
    .locals 3
    .param p1, "holder"    # Lcom/lenovo/component/slidemenu/LeMenuListAdapter$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 296
    invoke-direct {p0, p2}, Lcom/lenovo/component/slidemenu/LeMenuListAdapter;->isItemDisabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 298
    iget-object v1, p1, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$ViewHolder;->content:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x9070068

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 300
    .local v0, "textColor":I
    iget-object v1, p1, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$ViewHolder;->content:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 301
    iget-object v1, p1, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$ViewHolder;->remark:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 314
    :goto_0
    return-void

    .line 303
    .end local v0    # "textColor":I
    :cond_0
    iget v1, p0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter;->mFocusedItem:I

    if-ne p2, v1, :cond_1

    .line 305
    iget-object v1, p1, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$ViewHolder;->content:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x907006b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 311
    .restart local v0    # "textColor":I
    :goto_1
    iget-object v1, p1, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$ViewHolder;->content:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 312
    iget-object v1, p1, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$ViewHolder;->remark:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 309
    .end local v0    # "textColor":I
    :cond_1
    iget-object v1, p1, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$ViewHolder;->content:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x9070063

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .restart local v0    # "textColor":I
    goto :goto_1
.end method

.method private setContnetItemText(Lcom/lenovo/component/slidemenu/LeMenuListAdapter$ViewHolder;Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;)V
    .locals 2
    .param p1, "holder"    # Lcom/lenovo/component/slidemenu/LeMenuListAdapter$ViewHolder;
    .param p2, "itemData"    # Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;

    .prologue
    .line 323
    invoke-virtual {p2}, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;->getContent()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p1, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$ViewHolder;->content:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    :goto_0
    invoke-virtual {p2}, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;->getRemark()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 330
    iget-object v0, p1, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$ViewHolder;->remark:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;->getRemark()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    :goto_1
    return-void

    .line 326
    :cond_0
    iget-object v0, p1, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$ViewHolder;->content:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;->getContentId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 332
    :cond_1
    iget-object v0, p1, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$ViewHolder;->remark:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;->getRemarkId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method private setMenuItem(Lcom/lenovo/component/slidemenu/LeMenuListAdapter$ViewHolder;Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;I)V
    .locals 3
    .param p1, "holder"    # Lcom/lenovo/component/slidemenu/LeMenuListAdapter$ViewHolder;
    .param p2, "itemData"    # Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;
    .param p3, "position"    # I

    .prologue
    .line 255
    if-nez p2, :cond_0

    .line 269
    :goto_0
    return-void

    .line 259
    :cond_0
    invoke-virtual {p2}, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;->getId()Ljava/lang/Integer;

    move-result-object v0

    .line 260
    .local v0, "itemId":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    .line 261
    iget-object v1, p1, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$ViewHolder;->listItemLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setId(I)V

    .line 264
    :cond_1
    invoke-virtual {p2}, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;->isTitle()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 265
    invoke-direct {p0, p1, p2}, Lcom/lenovo/component/slidemenu/LeMenuListAdapter;->setTitleItem(Lcom/lenovo/component/slidemenu/LeMenuListAdapter$ViewHolder;Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;)V

    goto :goto_0

    .line 267
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/component/slidemenu/LeMenuListAdapter;->setContentItem(Lcom/lenovo/component/slidemenu/LeMenuListAdapter$ViewHolder;Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;I)V

    goto :goto_0
.end method

.method private setTitleItem(Lcom/lenovo/component/slidemenu/LeMenuListAdapter$ViewHolder;Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;)V
    .locals 2
    .param p1, "holder"    # Lcom/lenovo/component/slidemenu/LeMenuListAdapter$ViewHolder;
    .param p2, "itemData"    # Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;

    .prologue
    .line 356
    iget-object v0, p1, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$ViewHolder;->titleLayout:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 357
    iget-object v0, p1, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$ViewHolder;->contentLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 360
    iget-object v0, p1, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$ViewHolder;->titleLayout:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 364
    const/4 v0, -0x2

    invoke-virtual {p2}, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;->getTitleId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 365
    invoke-direct {p0, p1}, Lcom/lenovo/component/slidemenu/LeMenuListAdapter;->setTitleItemAsDivider(Lcom/lenovo/component/slidemenu/LeMenuListAdapter$ViewHolder;)V

    .line 369
    :goto_0
    return-void

    .line 367
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/lenovo/component/slidemenu/LeMenuListAdapter;->setTitleItemAsTitle(Lcom/lenovo/component/slidemenu/LeMenuListAdapter$ViewHolder;Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;)V

    goto :goto_0
.end method

.method private setTitleItemAsDivider(Lcom/lenovo/component/slidemenu/LeMenuListAdapter$ViewHolder;)V
    .locals 4
    .param p1, "holder"    # Lcom/lenovo/component/slidemenu/LeMenuListAdapter$ViewHolder;

    .prologue
    const/4 v3, 0x0

    .line 405
    iget-object v1, p1, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$ViewHolder;->titleLayout:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x908007d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 409
    .local v0, "padding":I
    iget-object v1, p1, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 410
    iget-object v1, p1, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 414
    iget-object v1, p1, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v0, v3, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 417
    iget-object v1, p1, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    const v2, 0x902008d

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 418
    return-void
.end method

.method private setTitleItemAsTitle(Lcom/lenovo/component/slidemenu/LeMenuListAdapter$ViewHolder;Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;)V
    .locals 4
    .param p1, "holder"    # Lcom/lenovo/component/slidemenu/LeMenuListAdapter$ViewHolder;
    .param p2, "itemData"    # Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;

    .prologue
    const/4 v3, 0x0

    .line 380
    iget-object v1, p1, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$ViewHolder;->titleLayout:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x9080078

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 384
    .local v0, "padding":I
    iget-object v1, p1, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v3, v0, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 387
    iget-object v1, p1, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 389
    invoke-virtual {p2}, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 390
    iget-object v1, p1, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 394
    :goto_0
    return-void

    .line 392
    :cond_0
    iget-object v1, p1, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;->getTitleId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter;->mDataset:[Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 183
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter;->mDataset:[Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter;->mDataset:[Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;

    aget-object v0, v0, p1

    .line 186
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
    .line 40
    invoke-virtual {p0, p1}, Lcom/lenovo/component/slidemenu/LeMenuListAdapter;->getItem(I)Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 192
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 199
    if-nez p2, :cond_0

    .line 201
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 202
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x9040030

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 203
    new-instance v0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$ViewHolder;

    move-object v2, p2

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-direct {v0, v2}, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$ViewHolder;-><init>(Landroid/view/ViewGroup;)V

    .line 204
    .local v0, "holder":Lcom/lenovo/component/slidemenu/LeMenuListAdapter$ViewHolder;
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 212
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/lenovo/component/slidemenu/LeMenuListAdapter;->getItem(I)Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;

    move-result-object v2

    invoke-direct {p0, v0, v2, p1}, Lcom/lenovo/component/slidemenu/LeMenuListAdapter;->setMenuItem(Lcom/lenovo/component/slidemenu/LeMenuListAdapter$ViewHolder;Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;I)V

    .line 214
    return-object p2

    .line 208
    .end local v0    # "holder":Lcom/lenovo/component/slidemenu/LeMenuListAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/lenovo/component/slidemenu/LeMenuListAdapter$ViewHolder;
    goto :goto_0
.end method

.method public setListMenuItemDisabled(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 76
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter;->mDisabledItems:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter;->mDisabledItems:Ljava/util/ArrayList;

    .line 81
    :cond_0
    invoke-direct {p0, p1}, Lcom/lenovo/component/slidemenu/LeMenuListAdapter;->removeListMenuItemDisabledState(I)V

    .line 82
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter;->mDisabledItems:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    invoke-virtual {p0}, Lcom/lenovo/component/slidemenu/LeMenuListAdapter;->notifyDataSetChanged()V

    .line 85
    return-void
.end method

.method public setListMenuItemDisabled([I)V
    .locals 5
    .param p1, "indexes"    # [I

    .prologue
    .line 95
    iget-object v3, p0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter;->mDisabledItems:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    .line 96
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter;->mDisabledItems:Ljava/util/ArrayList;

    .line 100
    :cond_0
    invoke-direct {p0, p1}, Lcom/lenovo/component/slidemenu/LeMenuListAdapter;->removeListMenuItemDisabledState([I)V

    .line 101
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v0, p1

    .local v0, "count":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 102
    aget v2, p1, v1

    .line 103
    .local v2, "index":I
    iget-object v3, p0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter;->mDisabledItems:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 106
    .end local v2    # "index":I
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/component/slidemenu/LeMenuListAdapter;->notifyDataSetChanged()V

    .line 107
    return-void
.end method

.method public setListMenuItemEnabled(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 117
    iget-object v1, p0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter;->mDisabledItems:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 118
    iget-object v1, p0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter;->mDisabledItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 119
    .local v0, "disabledItems":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 120
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 121
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 125
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/component/slidemenu/LeMenuListAdapter;->notifyDataSetChanged()V

    .line 127
    .end local v0    # "disabledItems":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_2
    return-void
.end method

.method public setListMenuItemEnabled([I)V
    .locals 5
    .param p1, "indexes"    # [I

    .prologue
    .line 137
    iget-object v4, p0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter;->mDisabledItems:Ljava/util/ArrayList;

    if-eqz v4, :cond_3

    .line 138
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v0, p1

    .local v0, "count":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 139
    aget v3, p1, v2

    .line 141
    .local v3, "index":I
    iget-object v4, p0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter;->mDisabledItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 142
    .local v1, "disabledItems":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 143
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 144
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 138
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 149
    .end local v1    # "disabledItems":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v3    # "index":I
    :cond_2
    invoke-virtual {p0}, Lcom/lenovo/component/slidemenu/LeMenuListAdapter;->notifyDataSetChanged()V

    .line 151
    .end local v0    # "count":I
    .end local v2    # "i":I
    :cond_3
    return-void
.end method

.method public setListMenuItemFocused(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter;->mFocusedItem:I

    .line 57
    invoke-virtual {p0}, Lcom/lenovo/component/slidemenu/LeMenuListAdapter;->notifyDataSetChanged()V

    .line 58
    return-void
.end method

.method public setListMenuItemUnfocused()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter;->mFocusedItem:I

    .line 65
    invoke-virtual {p0}, Lcom/lenovo/component/slidemenu/LeMenuListAdapter;->notifyDataSetChanged()V

    .line 66
    return-void
.end method

.method public updateDataset(Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;I)V
    .locals 1
    .param p1, "itemData"    # Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;
    .param p2, "position"    # I

    .prologue
    .line 453
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter;->mDataset:[Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter;->mDataset:[Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;

    array-length v0, v0

    if-ge p2, v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter;->mDataset:[Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;

    aput-object p1, v0, p2

    .line 455
    invoke-virtual {p0}, Lcom/lenovo/component/slidemenu/LeMenuListAdapter;->notifyDataSetChanged()V

    .line 457
    :cond_0
    return-void
.end method

.method public updateDataset([Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;)V
    .locals 0
    .param p1, "dataset"    # [Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;

    .prologue
    .line 426
    iput-object p1, p0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter;->mDataset:[Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;

    .line 427
    invoke-virtual {p0}, Lcom/lenovo/component/slidemenu/LeMenuListAdapter;->notifyDataSetChanged()V

    .line 428
    return-void
.end method

.method public updateDataset([Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;[I)V
    .locals 5
    .param p1, "dataset"    # [Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;
    .param p2, "indexes"    # [I

    .prologue
    .line 438
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v0, p1

    .local v0, "count":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 439
    aget v2, p2, v1

    .line 440
    .local v2, "index":I
    iget-object v3, p0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter;->mDataset:[Lcom/lenovo/component/slidemenu/LeMenuListAdapter$LeMenuItem;

    aget-object v4, p1, v1

    aput-object v4, v3, v2

    .line 438
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 442
    .end local v2    # "index":I
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/component/slidemenu/LeMenuListAdapter;->notifyDataSetChanged()V

    .line 443
    return-void
.end method
