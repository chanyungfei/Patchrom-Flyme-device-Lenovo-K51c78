.class Lcom/lenovo/internal/view/menu/MenuPopupHelper$MenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "MenuPopupHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/internal/view/menu/MenuPopupHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuAdapter"
.end annotation


# instance fields
.field private mAdapterMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

.field private mExpandedIndex:I

.field final synthetic this$0:Lcom/lenovo/internal/view/menu/MenuPopupHelper;


# direct methods
.method public constructor <init>(Lcom/lenovo/internal/view/menu/MenuPopupHelper;Lcom/lenovo/internal/view/menu/MenuBuilder;)V
    .locals 1
    .param p2, "menu"    # Lcom/lenovo/internal/view/menu/MenuBuilder;

    .prologue
    .line 344
    iput-object p1, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/lenovo/internal/view/menu/MenuPopupHelper;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 342
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    .line 345
    iput-object p2, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    .line 346
    invoke-virtual {p0}, Lcom/lenovo/internal/view/menu/MenuPopupHelper$MenuAdapter;->findExpandedIndex()V

    .line 347
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/internal/view/menu/MenuPopupHelper$MenuAdapter;)Lcom/lenovo/internal/view/menu/MenuBuilder;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/internal/view/menu/MenuPopupHelper$MenuAdapter;

    .prologue
    .line 340
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    return-object v0
.end method


# virtual methods
.method findExpandedIndex()V
    .locals 6

    .prologue
    .line 388
    iget-object v5, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/lenovo/internal/view/menu/MenuPopupHelper;

    # getter for: Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;
    invoke-static {v5}, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->access$200(Lcom/lenovo/internal/view/menu/MenuPopupHelper;)Lcom/lenovo/internal/view/menu/MenuBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/internal/view/menu/MenuBuilder;->getExpandedItem()Lcom/lenovo/internal/view/menu/MenuItemImpl;

    move-result-object v1

    .line 389
    .local v1, "expandedItem":Lcom/lenovo/internal/view/menu/MenuItemImpl;
    if-eqz v1, :cond_1

    .line 390
    iget-object v5, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/lenovo/internal/view/menu/MenuPopupHelper;

    # getter for: Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;
    invoke-static {v5}, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->access$200(Lcom/lenovo/internal/view/menu/MenuPopupHelper;)Lcom/lenovo/internal/view/menu/MenuBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v4

    .line 391
    .local v4, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 392
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 393
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/internal/view/menu/MenuItemImpl;

    .line 394
    .local v3, "item":Lcom/lenovo/internal/view/menu/MenuItemImpl;
    if-ne v3, v1, :cond_0

    .line 395
    iput v2, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    .line 401
    .end local v0    # "count":I
    .end local v2    # "i":I
    .end local v3    # "item":Lcom/lenovo/internal/view/menu/MenuItemImpl;
    .end local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/internal/view/menu/MenuItemImpl;>;"
    :goto_1
    return-void

    .line 392
    .restart local v0    # "count":I
    .restart local v2    # "i":I
    .restart local v3    # "item":Lcom/lenovo/internal/view/menu/MenuItemImpl;
    .restart local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/internal/view/menu/MenuItemImpl;>;"
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 400
    .end local v0    # "count":I
    .end local v2    # "i":I
    .end local v3    # "item":Lcom/lenovo/internal/view/menu/MenuItemImpl;
    .end local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/internal/view/menu/MenuItemImpl;>;"
    :cond_1
    const/4 v5, -0x1

    iput v5, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    goto :goto_1
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 350
    iget-object v1, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/lenovo/internal/view/menu/MenuPopupHelper;

    # getter for: Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mOverflowOnly:Z
    invoke-static {v1}, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->access$100(Lcom/lenovo/internal/view/menu/MenuPopupHelper;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/lenovo/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 352
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/internal/view/menu/MenuItemImpl;>;"
    :goto_0
    iget v1, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    if-gez v1, :cond_1

    .line 353
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 355
    :goto_1
    return v1

    .line 350
    .end local v0    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/internal/view/menu/MenuItemImpl;>;"
    :cond_0
    iget-object v1, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/lenovo/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 355
    .restart local v0    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/internal/view/menu/MenuItemImpl;>;"
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method public getItem(I)Lcom/lenovo/internal/view/menu/MenuItemImpl;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 359
    iget-object v1, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/lenovo/internal/view/menu/MenuPopupHelper;

    # getter for: Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mOverflowOnly:Z
    invoke-static {v1}, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->access$100(Lcom/lenovo/internal/view/menu/MenuPopupHelper;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/lenovo/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 361
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/internal/view/menu/MenuItemImpl;>;"
    :goto_0
    iget v1, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    if-lt p1, v1, :cond_0

    .line 362
    add-int/lit8 p1, p1, 0x1

    .line 364
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/internal/view/menu/MenuItemImpl;

    return-object v1

    .line 359
    .end local v0    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/internal/view/menu/MenuItemImpl;>;"
    :cond_1
    iget-object v1, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/lenovo/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 340
    invoke-virtual {p0, p1}, Lcom/lenovo/internal/view/menu/MenuPopupHelper$MenuAdapter;->getItem(I)Lcom/lenovo/internal/view/menu/MenuItemImpl;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 370
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 374
    if-nez p2, :cond_0

    .line 376
    new-instance p2, Lcom/lenovo/internal/view/menu/ListMenuItemTextView;

    .end local p2    # "convertView":Landroid/view/View;
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p2, v1}, Lcom/lenovo/internal/view/menu/ListMenuItemTextView;-><init>(Landroid/content/Context;)V

    .restart local p2    # "convertView":Landroid/view/View;
    :cond_0
    move-object v0, p2

    .line 379
    check-cast v0, Lcom/lenovo/internal/view/menu/MenuView$ItemView;

    .line 380
    .local v0, "itemView":Lcom/lenovo/internal/view/menu/MenuView$ItemView;
    iget-object v1, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/lenovo/internal/view/menu/MenuPopupHelper;

    iget-boolean v1, v1, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mForceShowIcon:Z

    if-eqz v1, :cond_1

    move-object v1, p2

    .line 381
    check-cast v1, Lcom/lenovo/internal/view/menu/ListMenuItemTextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/lenovo/internal/view/menu/ListMenuItemTextView;->setForceShowIcon(Z)V

    .line 383
    :cond_1
    invoke-virtual {p0, p1}, Lcom/lenovo/internal/view/menu/MenuPopupHelper$MenuAdapter;->getItem(I)Lcom/lenovo/internal/view/menu/MenuItemImpl;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/lenovo/internal/view/menu/MenuView$ItemView;->initialize(Lcom/lenovo/internal/view/menu/MenuItemImpl;I)V

    .line 384
    return-object p2
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 405
    invoke-virtual {p0}, Lcom/lenovo/internal/view/menu/MenuPopupHelper$MenuAdapter;->findExpandedIndex()V

    .line 406
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 407
    return-void
.end method
