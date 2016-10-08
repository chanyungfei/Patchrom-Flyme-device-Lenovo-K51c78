.class public Lcom/lenovo/internal/view/menu/MenuPopupHelper;
.super Ljava/lang/Object;
.source "MenuPopupHelper.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Llenovo/widget/PopupWindow$OnDismissListener;
.implements Lcom/lenovo/internal/view/menu/MenuPresenter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/internal/view/menu/MenuPopupHelper$MenuAdapter;
    }
.end annotation


# static fields
.field static final ITEM_LAYOUT:I = 0x9040022

.field private static final TAG:Ljava/lang/String; = "MenuPopupHelper"


# instance fields
.field private final mAdapter:Lcom/lenovo/internal/view/menu/MenuPopupHelper$MenuAdapter;

.field private mAnchorView:Landroid/view/View;

.field private mContentWidth:I

.field private final mContext:Landroid/content/Context;

.field private mDropDownGravity:I

.field mForceShowIcon:Z

.field private mHasContentWidth:Z

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mMeasureParent:Landroid/view/ViewGroup;

.field private final mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

.field private final mOverflowOnly:Z

.field private mPopup:Llenovo/widget/ListPopupWindow;

.field private final mPopupMaxWidth:I

.field private final mPopupStyleAttr:I

.field private mPresenterCallback:Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;

.field private mTreeObserver:Landroid/view/ViewTreeObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/internal/view/menu/MenuBuilder;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/lenovo/internal/view/menu/MenuBuilder;

    .prologue
    .line 82
    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x1010300

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/lenovo/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/lenovo/internal/view/menu/MenuBuilder;Landroid/view/View;ZI)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/internal/view/menu/MenuBuilder;Landroid/view/View;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/lenovo/internal/view/menu/MenuBuilder;
    .param p3, "anchorView"    # Landroid/view/View;

    .prologue
    .line 86
    const/4 v4, 0x0

    const v5, 0x1010300

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/lenovo/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/lenovo/internal/view/menu/MenuBuilder;Landroid/view/View;ZI)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/internal/view/menu/MenuBuilder;Landroid/view/View;ZI)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/lenovo/internal/view/menu/MenuBuilder;
    .param p3, "anchorView"    # Landroid/view/View;
    .param p4, "overflowOnly"    # Z
    .param p5, "popupStyleAttr"    # I

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v1, 0x0

    iput v1, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mDropDownGravity:I

    .line 91
    iput-object p1, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    .line 92
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mInflater:Landroid/view/LayoutInflater;

    .line 93
    iput-object p2, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    .line 94
    new-instance v1, Lcom/lenovo/internal/view/menu/MenuPopupHelper$MenuAdapter;

    iget-object v2, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-direct {v1, p0, v2}, Lcom/lenovo/internal/view/menu/MenuPopupHelper$MenuAdapter;-><init>(Lcom/lenovo/internal/view/menu/MenuPopupHelper;Lcom/lenovo/internal/view/menu/MenuBuilder;)V

    iput-object v1, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mAdapter:Lcom/lenovo/internal/view/menu/MenuPopupHelper$MenuAdapter;

    .line 95
    iput-boolean p4, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mOverflowOnly:Z

    .line 96
    iput p5, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mPopupStyleAttr:I

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 102
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    const v2, 0x9080048

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mPopupMaxWidth:I

    .line 105
    iput-object p3, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 108
    invoke-virtual {p2, p0, p1}, Lcom/lenovo/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/lenovo/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 109
    return-void
.end method

.method static synthetic access$100(Lcom/lenovo/internal/view/menu/MenuPopupHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/internal/view/menu/MenuPopupHelper;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mOverflowOnly:Z

    return v0
.end method

.method static synthetic access$200(Lcom/lenovo/internal/view/menu/MenuPopupHelper;)Lcom/lenovo/internal/view/menu/MenuBuilder;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/internal/view/menu/MenuPopupHelper;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method private measureContentWidth()I
    .locals 12

    .prologue
    const/4 v10, 0x0

    .line 205
    const/4 v7, 0x0

    .line 206
    .local v7, "maxWidth":I
    const/4 v5, 0x0

    .line 207
    .local v5, "itemView":Landroid/view/View;
    const/4 v4, 0x0

    .line 209
    .local v4, "itemType":I
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mAdapter:Lcom/lenovo/internal/view/menu/MenuPopupHelper$MenuAdapter;

    .line 210
    .local v0, "adapter":Landroid/widget/ListAdapter;
    invoke-static {v10, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 211
    .local v9, "widthMeasureSpec":I
    invoke-static {v10, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 212
    .local v2, "heightMeasureSpec":I
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 213
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 214
    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v8

    .line 215
    .local v8, "positionType":I
    if-eq v8, v4, :cond_0

    .line 216
    move v4, v8

    .line 217
    const/4 v5, 0x0

    .line 220
    :cond_0
    iget-object v10, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mMeasureParent:Landroid/view/ViewGroup;

    if-nez v10, :cond_1

    .line 221
    new-instance v10, Landroid/widget/FrameLayout;

    iget-object v11, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mMeasureParent:Landroid/view/ViewGroup;

    .line 224
    :cond_1
    iget-object v10, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mMeasureParent:Landroid/view/ViewGroup;

    invoke-interface {v0, v3, v5, v10}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 225
    invoke-virtual {v5, v9, v2}, Landroid/view/View;->measure(II)V

    .line 227
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 228
    .local v6, "itemWidth":I
    iget v10, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mPopupMaxWidth:I

    if-lt v6, v10, :cond_3

    .line 229
    iget v7, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mPopupMaxWidth:I

    .line 235
    .end local v6    # "itemWidth":I
    .end local v7    # "maxWidth":I
    .end local v8    # "positionType":I
    :cond_2
    return v7

    .line 230
    .restart local v6    # "itemWidth":I
    .restart local v7    # "maxWidth":I
    .restart local v8    # "positionType":I
    :cond_3
    if-le v6, v7, :cond_4

    .line 231
    move v7, v6

    .line 213
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public collapseItemActionView(Lcom/lenovo/internal/view/menu/MenuBuilder;Lcom/lenovo/internal/view/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "menu"    # Lcom/lenovo/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Lcom/lenovo/internal/view/menu/MenuItemImpl;

    .prologue
    .line 323
    const/4 v0, 0x0

    return v0
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mPopup:Llenovo/widget/ListPopupWindow;

    invoke-virtual {v0}, Llenovo/widget/ListPopupWindow;->dismiss()V

    .line 173
    :cond_0
    return-void
.end method

.method public expandItemActionView(Lcom/lenovo/internal/view/menu/MenuBuilder;Lcom/lenovo/internal/view/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "menu"    # Lcom/lenovo/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Lcom/lenovo/internal/view/menu/MenuItemImpl;

    .prologue
    .line 319
    const/4 v0, 0x0

    return v0
.end method

.method public flagActionItems()Z
    .locals 1

    .prologue
    .line 315
    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 328
    const/4 v0, 0x0

    return v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lcom/lenovo/internal/view/menu/MenuView;
    .locals 2
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 258
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "MenuPopupHelpers manage their own views"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPopup()Llenovo/widget/ListPopupWindow;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mPopup:Llenovo/widget/ListPopupWindow;

    return-object v0
.end method

.method public initForMenu(Landroid/content/Context;Lcom/lenovo/internal/view/menu/MenuBuilder;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/lenovo/internal/view/menu/MenuBuilder;

    .prologue
    .line 254
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mPopup:Llenovo/widget/ListPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mPopup:Llenovo/widget/ListPopupWindow;

    invoke-virtual {v0}, Llenovo/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCloseMenu(Lcom/lenovo/internal/view/menu/MenuBuilder;Z)V
    .locals 1
    .param p1, "menu"    # Lcom/lenovo/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 305
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    if-eq p1, v0, :cond_1

    .line 311
    :cond_0
    :goto_0
    return-void

    .line 307
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->dismiss()V

    .line 308
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mPresenterCallback:Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mPresenterCallback:Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1, p2}, Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;->onCloseMenu(Lcom/lenovo/internal/view/menu/MenuBuilder;Z)V

    goto :goto_0
.end method

.method public onDismiss()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 176
    iput-object v1, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mPopup:Llenovo/widget/ListPopupWindow;

    .line 177
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/lenovo/internal/view/menu/MenuBuilder;->close()V

    .line 178
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1

    .line 179
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 181
    iput-object v1, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 183
    :cond_1
    return-void
.end method

.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 241
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 242
    .local v0, "anchor":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_2

    .line 243
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->dismiss()V

    .line 249
    .end local v0    # "anchor":Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    .line 244
    .restart local v0    # "anchor":Landroid/view/View;
    :cond_2
    invoke-virtual {p0}, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 246
    iget-object v1, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mPopup:Llenovo/widget/ListPopupWindow;

    invoke-virtual {v1}, Llenovo/widget/ListPopupWindow;->show()V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 191
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mAdapter:Lcom/lenovo/internal/view/menu/MenuPopupHelper$MenuAdapter;

    .line 192
    .local v0, "adapter":Lcom/lenovo/internal/view/menu/MenuPopupHelper$MenuAdapter;
    # getter for: Lcom/lenovo/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;
    invoke-static {v0}, Lcom/lenovo/internal/view/menu/MenuPopupHelper$MenuAdapter;->access$000(Lcom/lenovo/internal/view/menu/MenuPopupHelper$MenuAdapter;)Lcom/lenovo/internal/view/menu/MenuBuilder;

    move-result-object v1

    invoke-virtual {v0, p3}, Lcom/lenovo/internal/view/menu/MenuPopupHelper$MenuAdapter;->getItem(I)Lcom/lenovo/internal/view/menu/MenuItemImpl;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    .line 193
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 196
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/16 v1, 0x52

    if-ne p2, v1, :cond_0

    .line 197
    invoke-virtual {p0}, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->dismiss()V

    .line 200
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 338
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 333
    const/4 v0, 0x0

    return-object v0
.end method

.method public onSubMenuSelected(Lcom/lenovo/internal/view/menu/SubMenuBuilder;)Z
    .locals 7
    .param p1, "subMenu"    # Lcom/lenovo/internal/view/menu/SubMenuBuilder;

    .prologue
    .line 277
    invoke-virtual {p1}, Lcom/lenovo/internal/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 278
    new-instance v4, Lcom/lenovo/internal/view/menu/MenuPopupHelper;

    iget-object v5, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    invoke-direct {v4, v5, p1, v6}, Lcom/lenovo/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/lenovo/internal/view/menu/MenuBuilder;Landroid/view/View;)V

    .line 279
    .local v4, "subPopup":Lcom/lenovo/internal/view/menu/MenuPopupHelper;
    iget-object v5, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mPresenterCallback:Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;

    invoke-virtual {v4, v5}, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->setCallback(Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;)V

    .line 281
    const/4 v3, 0x0

    .line 282
    .local v3, "preserveIconSpacing":Z
    invoke-virtual {p1}, Lcom/lenovo/internal/view/menu/SubMenuBuilder;->size()I

    move-result v1

    .line 283
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 284
    invoke-virtual {p1, v2}, Lcom/lenovo/internal/view/menu/SubMenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 285
    .local v0, "childItem":Landroid/view/MenuItem;
    invoke-interface {v0}, Landroid/view/MenuItem;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 286
    const/4 v3, 0x1

    .line 290
    .end local v0    # "childItem":Landroid/view/MenuItem;
    :cond_0
    invoke-virtual {v4, v3}, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->setForceShowIcon(Z)V

    .line 292
    invoke-virtual {v4}, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->tryShow()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 293
    iget-object v5, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mPresenterCallback:Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;

    if-eqz v5, :cond_1

    .line 294
    iget-object v5, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mPresenterCallback:Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;

    invoke-interface {v5, p1}, Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Lcom/lenovo/internal/view/menu/MenuBuilder;)Z

    .line 296
    :cond_1
    const/4 v5, 0x1

    .line 299
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "preserveIconSpacing":Z
    .end local v4    # "subPopup":Lcom/lenovo/internal/view/menu/MenuPopupHelper;
    :goto_1
    return v5

    .line 283
    .restart local v0    # "childItem":Landroid/view/MenuItem;
    .restart local v1    # "count":I
    .restart local v2    # "i":I
    .restart local v3    # "preserveIconSpacing":Z
    .restart local v4    # "subPopup":Lcom/lenovo/internal/view/menu/MenuPopupHelper;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 299
    .end local v0    # "childItem":Landroid/view/MenuItem;
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "preserveIconSpacing":Z
    .end local v4    # "subPopup":Lcom/lenovo/internal/view/menu/MenuPopupHelper;
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0
    .param p1, "anchor"    # Landroid/view/View;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 113
    return-void
.end method

.method public setCallback(Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;)V
    .locals 0
    .param p1, "cb"    # Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;

    .prologue
    .line 272
    iput-object p1, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mPresenterCallback:Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;

    .line 273
    return-void
.end method

.method public setForceShowIcon(Z)V
    .locals 0
    .param p1, "forceShow"    # Z

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mForceShowIcon:Z

    .line 117
    return-void
.end method

.method public setGravity(I)V
    .locals 0
    .param p1, "gravity"    # I

    .prologue
    .line 120
    iput p1, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mDropDownGravity:I

    .line 121
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->tryShow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MenuPopupHelper cannot be used without an anchor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_0
    return-void
.end method

.method public tryShow()Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 134
    new-instance v3, Llenovo/widget/ListPopupWindow;

    iget-object v4, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    iget v6, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mPopupStyleAttr:I

    invoke-direct {v3, v4, v5, v6}, Llenovo/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v3, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mPopup:Llenovo/widget/ListPopupWindow;

    .line 135
    iget-object v3, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mPopup:Llenovo/widget/ListPopupWindow;

    invoke-virtual {v3, p0}, Llenovo/widget/ListPopupWindow;->setOnDismissListener(Llenovo/widget/PopupWindow$OnDismissListener;)V

    .line 136
    iget-object v3, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mPopup:Llenovo/widget/ListPopupWindow;

    invoke-virtual {v3, p0}, Llenovo/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 137
    iget-object v3, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mPopup:Llenovo/widget/ListPopupWindow;

    iget-object v4, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mAdapter:Lcom/lenovo/internal/view/menu/MenuPopupHelper$MenuAdapter;

    invoke-virtual {v3, v4}, Llenovo/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 138
    iget-object v3, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mPopup:Llenovo/widget/ListPopupWindow;

    invoke-virtual {v3, v2}, Llenovo/widget/ListPopupWindow;->setModal(Z)V

    .line 143
    iget-object v1, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 144
    .local v1, "anchor":Landroid/view/View;
    if-eqz v1, :cond_3

    .line 145
    iget-object v3, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-nez v3, :cond_0

    move v0, v2

    .line 146
    .local v0, "addGlobalListener":Z
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 147
    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v3, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 148
    :cond_1
    iget-object v3, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mPopup:Llenovo/widget/ListPopupWindow;

    invoke-virtual {v3, v1}, Llenovo/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 149
    iget-object v3, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mPopup:Llenovo/widget/ListPopupWindow;

    iget v4, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mDropDownGravity:I

    invoke-virtual {v3, v4}, Llenovo/widget/ListPopupWindow;->setDropDownGravity(I)V

    .line 154
    iget-boolean v3, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mHasContentWidth:Z

    if-nez v3, :cond_2

    .line 157
    iget v3, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mPopupMaxWidth:I

    iput v3, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mContentWidth:I

    .line 159
    iput-boolean v2, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mHasContentWidth:Z

    .line 162
    :cond_2
    iget-object v3, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mPopup:Llenovo/widget/ListPopupWindow;

    iget v4, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mContentWidth:I

    invoke-virtual {v3, v4}, Llenovo/widget/ListPopupWindow;->setContentWidth(I)V

    .line 163
    iget-object v3, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mPopup:Llenovo/widget/ListPopupWindow;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Llenovo/widget/ListPopupWindow;->setInputMethodMode(I)V

    .line 164
    iget-object v3, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mPopup:Llenovo/widget/ListPopupWindow;

    invoke-virtual {v3}, Llenovo/widget/ListPopupWindow;->show()V

    .line 165
    iget-object v3, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mPopup:Llenovo/widget/ListPopupWindow;

    invoke-virtual {v3}, Llenovo/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 166
    .end local v0    # "addGlobalListener":Z
    :goto_0
    return v2

    :cond_3
    move v2, v0

    .line 151
    goto :goto_0
.end method

.method public updateMenuView(Z)V
    .locals 1
    .param p1, "cleared"    # Z

    .prologue
    .line 263
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mHasContentWidth:Z

    .line 265
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mAdapter:Lcom/lenovo/internal/view/menu/MenuPopupHelper$MenuAdapter;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mAdapter:Lcom/lenovo/internal/view/menu/MenuPopupHelper$MenuAdapter;

    invoke-virtual {v0}, Lcom/lenovo/internal/view/menu/MenuPopupHelper$MenuAdapter;->notifyDataSetChanged()V

    .line 268
    :cond_0
    return-void
.end method
