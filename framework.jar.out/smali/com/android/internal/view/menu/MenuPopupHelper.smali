.class public Lcom/android/internal/view/menu/MenuPopupHelper;
.super Ljava/lang/Object;
.source "MenuPopupHelper.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Lcom/android/internal/view/menu/MenuPresenter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;
    }
.end annotation


# static fields
.field static final ITEM_LAYOUT:I = #android:layout@popup_menu_item_layout#t

.field private static final TAG:Ljava/lang/String; = "MenuPopupHelper"


# instance fields
.field private mFlymeAdjustWindowPosition:Z

.field private mFlymeCenterHorizontal:Z

.field private mFlymeMaxHeight:I

.field private mFlymePopupLayoutMode:I

.field private mFlymePopupWidthFromApp:I

.field private final mAdapter:Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;

.field private mAnchorView:Landroid/view/View;

.field private mContentWidth:I

.field private final mContext:Landroid/content/Context;

.field private mDropDownGravity:I

.field mForceShowIcon:Z

.field private mHasContentWidth:Z

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mMeasureParent:Landroid/view/ViewGroup;

.field private final mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private final mOverflowOnly:Z

.field private mPopup:Landroid/widget/ListPopupWindow;

.field private final mPopupMaxWidth:I

.field private final mPopupStyleAttr:I

.field private final mPopupStyleRes:I

.field private mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

.field private mTreeObserver:Landroid/view/ViewTreeObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .prologue
    const/4 v4, 0x0

    .line 83
    const/4 v3, 0x0

    const v5, #android:attr@popupMenuStyle#t

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;ZII)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p3, "anchorView"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    const v5, #android:attr@popupMenuStyle#t

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;ZII)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;ZI)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p3, "anchorView"    # Landroid/view/View;
    .param p4, "overflowOnly"    # Z
    .param p5, "popupStyleAttr"    # I

    .prologue
    .line 92
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;ZII)V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;ZII)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p3, "anchorView"    # Landroid/view/View;
    .param p4, "overflowOnly"    # Z
    .param p5, "popupStyleAttr"    # I
    .param p6, "popupStyleRes"    # I

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mDropDownGravity:I

    .line 97
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    .line 98
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mInflater:Landroid/view/LayoutInflater;

    .line 99
    iput-object p2, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 100
    new-instance v1, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;

    iget-object v2, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-direct {v1, p0, v2}, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;-><init>(Lcom/android/internal/view/menu/MenuPopupHelper;Lcom/android/internal/view/menu/MenuBuilder;)V

    iput-object v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAdapter:Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;

    .line 101
    iput-boolean p4, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mOverflowOnly:Z

    .line 102
    iput p5, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupStyleAttr:I

    .line 103
    iput p6, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupStyleRes:I

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 106
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v1, v1, 0x2

    const v2, #android:dimen@config_prefDialogWidth#t

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupMaxWidth:I

    iput-object p3, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    invoke-virtual {p2, p0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->initFlymeExtraFields()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/view/menu/MenuPopupHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/view/menu/MenuPopupHelper;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mOverflowOnly:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/view/menu/MenuPopupHelper;)Landroid/view/LayoutInflater;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/view/menu/MenuPopupHelper;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/view/menu/MenuPopupHelper;)Lcom/android/internal/view/menu/MenuBuilder;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/view/menu/MenuPopupHelper;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method private measureContentWidth()I
    .locals 12

    .prologue
    const/4 v10, 0x0

    .line 223
    const/4 v7, 0x0

    .line 224
    .local v7, "maxWidth":I
    const/4 v5, 0x0

    .line 225
    .local v5, "itemView":Landroid/view/View;
    const/4 v4, 0x0

    .line 227
    .local v4, "itemType":I
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAdapter:Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;

    .line 228
    .local v0, "adapter":Landroid/widget/ListAdapter;
    invoke-static {v10, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 229
    .local v9, "widthMeasureSpec":I
    invoke-static {v10, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 230
    .local v2, "heightMeasureSpec":I
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 231
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 232
    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v8

    .line 233
    .local v8, "positionType":I
    if-eq v8, v4, :cond_0

    .line 234
    move v4, v8

    .line 235
    const/4 v5, 0x0

    .line 238
    :cond_0
    iget-object v10, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mMeasureParent:Landroid/view/ViewGroup;

    if-nez v10, :cond_1

    .line 239
    new-instance v10, Landroid/widget/FrameLayout;

    iget-object v11, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mMeasureParent:Landroid/view/ViewGroup;

    .line 242
    :cond_1
    iget-object v10, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mMeasureParent:Landroid/view/ViewGroup;

    invoke-interface {v0, v3, v5, v10}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 243
    invoke-virtual {v5, v9, v2}, Landroid/view/View;->measure(II)V

    .line 245
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 246
    .local v6, "itemWidth":I
    iget v10, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupMaxWidth:I

    if-lt v6, v10, :cond_3

    .line 247
    iget v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupMaxWidth:I

    .line 253
    .end local v6    # "itemWidth":I
    .end local v7    # "maxWidth":I
    .end local v8    # "positionType":I
    :cond_2
    return v7

    .line 248
    .restart local v6    # "itemWidth":I
    .restart local v7    # "maxWidth":I
    .restart local v8    # "positionType":I
    :cond_3
    if-le v6, v7, :cond_4

    .line 249
    move v7, v6

    .line 231
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public collapseItemActionView(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;

    .prologue
    .line 354
    const/4 v0, 0x0

    return v0
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 190
    :cond_0
    return-void
.end method

.method public expandItemActionView(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;

    .prologue
    .line 350
    const/4 v0, 0x0

    return v0
.end method

.method public flagActionItems()Z
    .locals 1

    .prologue
    .line 346
    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 359
    const/4 v0, 0x0

    return v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;
    .locals 2
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 289
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "MenuPopupHelpers manage their own views"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPopup()Landroid/widget/ListPopupWindow;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    return-object v0
.end method

.method public initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .prologue
    .line 285
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .locals 1
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eq p1, v0, :cond_1

    .line 342
    :cond_0
    :goto_0
    return-void

    .line 338
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->dismiss()V

    .line 339
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/view/menu/MenuPresenter$Callback;->onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V

    goto :goto_0
.end method

.method public onDismiss()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 193
    iput-object v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    .line 194
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->close()V

    .line 195
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1

    .line 196
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 198
    iput-object v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 201
    return-void
.end method

.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 258
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 259
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 260
    .local v0, "anchor":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_2

    .line 261
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->dismiss()V

    .line 267
    .end local v0    # "anchor":Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    .line 262
    .restart local v0    # "anchor":Landroid/view/View;
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 264
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->show()V

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
    .line 209
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAdapter:Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;

    .line 210
    .local v0, "adapter":Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;
    # getter for: Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;
    invoke-static {v0}, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->access$000(Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;)Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v1

    invoke-virtual {v0, p3}, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    .line 211
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 214
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/16 v1, 0x52

    if-ne p2, v1, :cond_0

    .line 215
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->dismiss()V

    .line 218
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
    .line 369
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 364
    const/4 v0, 0x0

    return-object v0
.end method

.method public onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z
    .locals 7
    .param p1, "subMenu"    # Lcom/android/internal/view/menu/SubMenuBuilder;

    .prologue
    .line 308
    invoke-virtual {p1}, Lcom/android/internal/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 309
    new-instance v4, Lcom/android/internal/view/menu/MenuPopupHelper;

    iget-object v5, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    invoke-direct {v4, v5, p1, v6}, Lcom/android/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;)V

    .line 310
    .local v4, "subPopup":Lcom/android/internal/view/menu/MenuPopupHelper;
    iget-object v5, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    invoke-virtual {v4, v5}, Lcom/android/internal/view/menu/MenuPopupHelper;->setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 312
    const/4 v3, 0x0

    .line 313
    .local v3, "preserveIconSpacing":Z
    invoke-virtual {p1}, Lcom/android/internal/view/menu/SubMenuBuilder;->size()I

    move-result v1

    .line 314
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 315
    invoke-virtual {p1, v2}, Lcom/android/internal/view/menu/SubMenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 316
    .local v0, "childItem":Landroid/view/MenuItem;
    invoke-interface {v0}, Landroid/view/MenuItem;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 317
    const/4 v3, 0x1

    .line 321
    .end local v0    # "childItem":Landroid/view/MenuItem;
    :cond_0
    invoke-virtual {v4, v3}, Lcom/android/internal/view/menu/MenuPopupHelper;->setForceShowIcon(Z)V

    .line 323
    invoke-virtual {v4}, Lcom/android/internal/view/menu/MenuPopupHelper;->tryShow()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 324
    iget-object v5, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    if-eqz v5, :cond_1

    .line 325
    iget-object v5, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    invoke-interface {v5, p1}, Lcom/android/internal/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Lcom/android/internal/view/menu/MenuBuilder;)Z

    .line 327
    :cond_1
    const/4 v5, 0x1

    .line 330
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "preserveIconSpacing":Z
    .end local v4    # "subPopup":Lcom/android/internal/view/menu/MenuPopupHelper;
    :goto_1
    return v5

    .line 314
    .restart local v0    # "childItem":Landroid/view/MenuItem;
    .restart local v1    # "count":I
    .restart local v2    # "i":I
    .restart local v3    # "preserveIconSpacing":Z
    .restart local v4    # "subPopup":Lcom/android/internal/view/menu/MenuPopupHelper;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 330
    .end local v0    # "childItem":Landroid/view/MenuItem;
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "preserveIconSpacing":Z
    .end local v4    # "subPopup":Lcom/android/internal/view/menu/MenuPopupHelper;
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_flyme_0

    invoke-direct/range {p0 .. p1}, Lcom/android/internal/view/menu/MenuPopupHelper;->flymeAddOnGlobalLayoutListener(Landroid/view/View;)V

    :cond_flyme_0

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1

    .line 276
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->flymeOnViewDetachedFromWindow()Z

    move-result v0

    if-eqz v0, :cond_flyme_0

    return-void

    :cond_flyme_0

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0
    .param p1, "anchor"    # Landroid/view/View;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 117
    return-void
.end method

.method public setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V
    .locals 0
    .param p1, "cb"    # Lcom/android/internal/view/menu/MenuPresenter$Callback;

    .prologue
    .line 303
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    .line 304
    return-void
.end method

.method public setForceShowIcon(Z)V
    .locals 0
    .param p1, "forceShow"    # Z

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mForceShowIcon:Z

    .line 121
    return-void
.end method

.method public setGravity(I)V
    .locals 0
    .param p1, "gravity"    # I

    .prologue
    .line 124
    iput p1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mDropDownGravity:I

    .line 125
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->tryShow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MenuPopupHelper cannot be used without an anchor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_0
    return-void
.end method

.method public tryShow()Z
    .locals 12

    .prologue
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_flyme_0

    const/4 v0, 0x1

    return v0

    :cond_flyme_0

    const/4 v0, 0x0

    const/4 v7, 0x1

    .line 138
    new-instance v6, Landroid/widget/ListPopupWindow;

    iget-object v8, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    iget v10, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupStyleAttr:I

    iget v11, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupStyleRes:I

    invoke-direct {v6, v8, v9, v10, v11}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v6, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    .line 140
    iget-object v5, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    .line 141
    .local v5, "savedPopup":Landroid/widget/ListPopupWindow;
    iget-object v6, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    new-instance v8, Lcom/android/internal/view/menu/MenuPopupHelper$1;

    invoke-direct {v8, p0, v5}, Lcom/android/internal/view/menu/MenuPopupHelper$1;-><init>(Lcom/android/internal/view/menu/MenuPopupHelper;Landroid/widget/ListPopupWindow;)V

    invoke-virtual {v6, v8}, Landroid/widget/ListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 152
    iget-object v6, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v6, p0}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 153
    iget-object v6, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    iget-object v8, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAdapter:Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;

    invoke-virtual {v6, v8}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 154
    iget-object v6, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v6, v7}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 156
    iget-object v6, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v6}, Lcom/android/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v4

    .line 157
    .local v4, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 158
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 159
    const-string v8, "MenuPopupHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "tryShow: title = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v6}, Lcom/android/internal/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 162
    :cond_0
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 163
    .local v1, "anchor":Landroid/view/View;
    if-eqz v1, :cond_4

    .line 164
    iget-object v6, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-nez v6, :cond_1

    move v0, v7

    .line 165
    .local v0, "addGlobalListener":Z
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 166
    if-eqz v0, :cond_2

    iget-object v6, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v6, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 167
    :cond_2
    invoke-virtual {v1, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 168
    iget-object v6, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v6, v1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 169
    iget-object v6, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    iget v8, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mDropDownGravity:I

    invoke-virtual {v6, v8}, Landroid/widget/ListPopupWindow;->setDropDownGravity(I)V

    .line 174
    iget-boolean v6, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mHasContentWidth:Z

    if-nez v6, :cond_3

    .line 175
    invoke-direct {p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->measureContentWidth()I

    move-result v6

    iput v6, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mContentWidth:I

    .line 176
    iput-boolean v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mHasContentWidth:Z

    .line 179
    :cond_3
    iget-object v6, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    iget v8, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mContentWidth:I

    invoke-virtual {v6, v8}, Landroid/widget/ListPopupWindow;->setContentWidth(I)V

    iget-object v6, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    const/4 v8, 0x2

    invoke-virtual {v6, v8}, Landroid/widget/ListPopupWindow;->setInputMethodMode(I)V

    iget-object v6, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->flymeShowListPopupWindow()V

    iget-object v6, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v6}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 183
    .end local v0    # "addGlobalListener":Z
    :goto_1
    return v7

    :cond_4
    move v7, v0

    .line 171
    goto :goto_1
.end method

.method public updateMenuView(Z)V
    .locals 1
    .param p1, "cleared"    # Z

    .prologue
    .line 294
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mHasContentWidth:Z

    .line 296
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAdapter:Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAdapter:Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->notifyDataSetChanged()V

    .line 299
    :cond_0
    return-void
.end method

.method private flymeAddOnGlobalLayoutListener(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .local v0, "addGlobalListener":Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void

    .end local v0    # "addGlobalListener":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private flymeOnViewDetachedFromWindow()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private flymeShowListPopupWindow()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    iget v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mFlymePopupLayoutMode:I

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setLayoutMode(I)V

    iget v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mFlymePopupWidthFromApp:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mFlymePopupWidthFromApp:I

    :goto_0
    iput v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mContentWidth:I

    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    iget v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mContentWidth:I

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setContentWidth(I)V

    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    iget-boolean v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mFlymeAdjustWindowPosition:Z

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->adjustWindowPositionForMz(Z)V

    iget v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mFlymeMaxHeight:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    iget v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mFlymeMaxHeight:I

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setMaxHeight(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->show()V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->measureContentWidth()I

    move-result v0

    goto :goto_0
.end method

.method private initFlymeExtraFields()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mFlymePopupWidthFromApp:I

    iput v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mFlymePopupLayoutMode:I

    iput v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mFlymeMaxHeight:I

    return-void
.end method

.method public adjustWindowPositionForMz(Z)V
    .locals 0
    .param p1, "adjust"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mFlymeAdjustWindowPosition:Z

    return-void
.end method

.method public setCenterHorizontal(Z)V
    .locals 1
    .param p1, "center"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mFlymeCenterHorizontal:Z

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/MenuPopupHelper;->setPopupLayoutMode(I)V

    return-void
.end method

.method public setMaxHeigh(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    iput p1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mFlymeMaxHeight:I

    return-void
.end method

.method public setPopupLayoutMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    iput p1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mFlymePopupLayoutMode:I

    return-void
.end method

.method public setPopupWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    iput p1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mFlymePopupWidthFromApp:I

    return-void
.end method
