.class public final Lcom/lenovo/internal/view/menu/MenuItemImpl;
.super Ljava/lang/Object;
.source "MenuItemImpl.java"

# interfaces
.implements Lcom/lenovo/internal/view/SupportMenuItem;


# static fields
.field private static final CHECKABLE:I = 0x1

.field private static final CHECKED:I = 0x2

.field private static final ENABLED:I = 0x10

.field private static final EXCLUSIVE:I = 0x4

.field private static final HIDDEN:I = 0x8

.field private static final IS_ACTION:I = 0x20

.field static final NO_ICON:I = 0x0

.field private static final SHOW_AS_ACTION_MASK:I = 0x3

.field private static final TAG:Ljava/lang/String; = "MenuItemImpl"

.field private static sDeleteShortcutLabel:Ljava/lang/String;

.field private static sEnterShortcutLabel:Ljava/lang/String;

.field private static sPrependShortcutLabel:Ljava/lang/String;

.field private static sSpaceShortcutLabel:Ljava/lang/String;


# instance fields
.field private mActionProvider:Llenovo/view/ActionProvider;

.field private mActionView:Landroid/view/View;

.field private final mCategoryOrder:I

.field private mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mFlags:I

.field private final mGroup:I

.field private mIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mIconResId:I

.field private final mId:I

.field private mIntent:Landroid/content/Intent;

.field private mIsActionViewExpanded:Z

.field private mItemCallback:Ljava/lang/Runnable;

.field private mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

.field private mMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field private mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

.field private final mOrdering:I

.field private mShortcutAlphabeticChar:C

.field private mShortcutNumericChar:C

.field private mShowAsAction:I

.field private mSubMenu:Lcom/lenovo/internal/view/menu/SubMenuBuilder;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleCondensed:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/lenovo/internal/view/menu/MenuBuilder;IIIILjava/lang/CharSequence;I)V
    .locals 2
    .param p1, "menu"    # Lcom/lenovo/internal/view/menu/MenuBuilder;
    .param p2, "group"    # I
    .param p3, "id"    # I
    .param p4, "categoryOrder"    # I
    .param p5, "ordering"    # I
    .param p6, "title"    # Ljava/lang/CharSequence;
    .param p7, "showAsAction"    # I

    .prologue
    const/4 v1, 0x0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput v1, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mIconResId:I

    .line 75
    const/16 v0, 0x10

    iput v0, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 83
    iput v1, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mShowAsAction:I

    .line 88
    iput-boolean v1, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mIsActionViewExpanded:Z

    .line 132
    iput-object p1, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    .line 133
    iput p3, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mId:I

    .line 134
    iput p2, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mGroup:I

    .line 135
    iput p4, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mCategoryOrder:I

    .line 136
    iput p5, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mOrdering:I

    .line 137
    iput-object p6, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    .line 138
    iput p7, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mShowAsAction:I

    .line 139
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/internal/view/menu/MenuItemImpl;)Lcom/lenovo/internal/view/menu/MenuBuilder;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/internal/view/menu/MenuItemImpl;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    return-object v0
.end method


# virtual methods
.method public actionFormatChanged()V
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/lenovo/internal/view/menu/MenuBuilder;->onItemActionRequestChanged(Lcom/lenovo/internal/view/menu/MenuItemImpl;)V

    .line 543
    return-void
.end method

.method public collapseActionView()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 683
    iget v1, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mShowAsAction:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_1

    .line 696
    :cond_0
    :goto_0
    return v0

    .line 686
    :cond_1
    iget-object v1, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    if-nez v1, :cond_2

    .line 688
    const/4 v0, 0x1

    goto :goto_0

    .line 691
    :cond_2
    iget-object v1, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    invoke-interface {v1, p0}, Landroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionCollapse(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 693
    :cond_3
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/lenovo/internal/view/menu/MenuBuilder;->collapseItemActionView(Lcom/lenovo/internal/view/menu/MenuItemImpl;)Z

    move-result v0

    goto :goto_0
.end method

.method public expandActionView()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 669
    invoke-virtual {p0}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->hasCollapsibleActionView()Z

    move-result v1

    if-nez v1, :cond_1

    .line 678
    :cond_0
    :goto_0
    return v0

    .line 673
    :cond_1
    iget-object v1, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    invoke-interface {v1, p0}, Landroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionExpand(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 675
    :cond_2
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/lenovo/internal/view/menu/MenuBuilder;->expandItemActionView(Lcom/lenovo/internal/view/menu/MenuItemImpl;)Z

    move-result v0

    goto :goto_0
.end method

.method public getActionProvider()Landroid/view/ActionProvider;
    .locals 2

    .prologue
    .line 633
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is not supported, use MenuItemCompat.getActionProvider()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getActionView()Landroid/view/View;
    .locals 1

    .prologue
    .line 615
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 616
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    .line 621
    :goto_0
    return-object v0

    .line 617
    :cond_0
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mActionProvider:Llenovo/view/ActionProvider;

    if-eqz v0, :cond_1

    .line 618
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mActionProvider:Llenovo/view/ActionProvider;

    invoke-virtual {v0, p0}, Llenovo/view/ActionProvider;->onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    .line 619
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    goto :goto_0

    .line 621
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAlphabeticShortcut()C
    .locals 1

    .prologue
    .line 236
    iget-char v0, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    return v0
.end method

.method getCallback()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mItemCallback:Ljava/lang/Runnable;

    return-object v0
.end method

.method public getGroupId()I
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mGroup:I

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 405
    iget-object v1, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 406
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 416
    :goto_0
    return-object v0

    .line 409
    :cond_0
    iget v1, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mIconResId:I

    if-eqz v1, :cond_1

    .line 410
    iget-object v1, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/lenovo/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mIconResId:I

    invoke-static {v1, v2}, Lcom/lenovo/internal/widget/ViewUtils;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 411
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    iput v1, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mIconResId:I

    .line 412
    iput-object v0, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 416
    .end local v0    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getItemId()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 202
    iget v0, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mId:I

    return v0
.end method

.method public getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public getNumericShortcut()C
    .locals 1

    .prologue
    .line 254
    iget-char v0, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    return v0
.end method

.method public getOrder()I
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mCategoryOrder:I

    return v0
.end method

.method public getOrdering()I
    .locals 1

    .prologue
    .line 211
    iget v0, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mOrdering:I

    return v0
.end method

.method getShortcut()C
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/lenovo/internal/view/menu/MenuBuilder;->isQwertyMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-char v0, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    :goto_0
    return v0

    :cond_0
    iget-char v0, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    goto :goto_0
.end method

.method getShortcutLabel()Ljava/lang/String;
    .locals 3

    .prologue
    .line 294
    invoke-virtual {p0}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->getShortcut()C

    move-result v1

    .line 295
    .local v1, "shortcut":C
    if-nez v1, :cond_0

    .line 296
    const-string v2, ""

    .line 319
    :goto_0
    return-object v2

    .line 299
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/lenovo/internal/view/menu/MenuItemImpl;->sPrependShortcutLabel:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 300
    .local v0, "sb":Ljava/lang/StringBuilder;
    sparse-switch v1, :sswitch_data_0

    .line 315
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 319
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 303
    :sswitch_0
    sget-object v2, Lcom/lenovo/internal/view/menu/MenuItemImpl;->sEnterShortcutLabel:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 307
    :sswitch_1
    sget-object v2, Lcom/lenovo/internal/view/menu/MenuItemImpl;->sDeleteShortcutLabel:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 311
    :sswitch_2
    sget-object v2, Lcom/lenovo/internal/view/menu/MenuItemImpl;->sSpaceShortcutLabel:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 300
    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_1
        0xa -> :sswitch_0
        0x20 -> :sswitch_2
    .end sparse-switch
.end method

.method public getSubMenu()Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mSubMenu:Lcom/lenovo/internal/view/menu/SubMenuBuilder;

    return-object v0
.end method

.method public getSupportActionProvider()Llenovo/view/ActionProvider;
    .locals 1

    .prologue
    .line 639
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mActionProvider:Llenovo/view/ActionProvider;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 351
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleCondensed()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mTitleCondensed:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mTitleCondensed:Ljava/lang/CharSequence;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method getTitleForItemView(Lcom/lenovo/internal/view/menu/MenuView$ItemView;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "itemView"    # Lcom/lenovo/internal/view/menu/MenuView$ItemView;

    .prologue
    .line 361
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/lenovo/internal/view/menu/MenuView$ItemView;->prefersCondensedTitle()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->getTitleCondensed()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public hasCollapsibleActionView()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 714
    iget v1, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mShowAsAction:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_1

    .line 715
    iget-object v1, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mActionProvider:Llenovo/view/ActionProvider;

    if-eqz v1, :cond_0

    .line 716
    iget-object v1, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mActionProvider:Llenovo/view/ActionProvider;

    invoke-virtual {v1, p0}, Llenovo/view/ActionProvider;->onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    .line 718
    :cond_0
    iget-object v1, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 720
    :cond_1
    return v0
.end method

.method public hasSubMenu()Z
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mSubMenu:Lcom/lenovo/internal/view/menu/SubMenuBuilder;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public invoke()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 147
    iget-object v2, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v2, p0}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 173
    :cond_0
    :goto_0
    return v1

    .line 151
    :cond_1
    iget-object v2, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    iget-object v3, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-virtual {v3}, Lcom/lenovo/internal/view/menu/MenuBuilder;->getRootMenu()Lcom/lenovo/internal/view/menu/MenuBuilder;

    move-result-object v3

    invoke-virtual {v2, v3, p0}, Lcom/lenovo/internal/view/menu/MenuBuilder;->dispatchMenuItemSelected(Lcom/lenovo/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 155
    iget-object v2, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mItemCallback:Ljava/lang/Runnable;

    if-eqz v2, :cond_2

    .line 156
    iget-object v2, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mItemCallback:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 160
    :cond_2
    iget-object v2, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mIntent:Landroid/content/Intent;

    if-eqz v2, :cond_3

    .line 162
    :try_start_0
    iget-object v2, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/lenovo/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "MenuItemImpl"

    const-string v3, "Can\'t find activity to handle intent; ignoring"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 169
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_3
    iget-object v2, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mActionProvider:Llenovo/view/ActionProvider;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mActionProvider:Llenovo/view/ActionProvider;

    invoke-virtual {v2}, Llenovo/view/ActionProvider;->onPerformDefaultAction()Z

    move-result v2

    if-nez v2, :cond_0

    .line 173
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isActionButton()Z
    .locals 2

    .prologue
    .line 553
    iget v0, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isActionViewExpanded()Z
    .locals 1

    .prologue
    .line 730
    iget-boolean v0, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mIsActionViewExpanded:Z

    return v0
.end method

.method public isCheckable()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 441
    iget v1, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isChecked()Z
    .locals 2

    .prologue
    .line 465
    iget v0, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isExclusiveCheckable()Z
    .locals 1

    .prologue
    .line 460
    iget v0, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 491
    iget-object v2, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mActionProvider:Llenovo/view/ActionProvider;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mActionProvider:Llenovo/view/ActionProvider;

    invoke-virtual {v2}, Llenovo/view/ActionProvider;->overridesItemVisibility()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 492
    iget v2, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mActionProvider:Llenovo/view/ActionProvider;

    invoke-virtual {v2}, Llenovo/view/ActionProvider;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 494
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 492
    goto :goto_0

    .line 494
    :cond_2
    iget v2, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public requestsActionButton()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 557
    iget v1, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mShowAsAction:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requiresActionButton()Z
    .locals 2

    .prologue
    .line 561
    iget v0, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mShowAsAction:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .locals 2
    .param p1, "actionProvider"    # Landroid/view/ActionProvider;

    .prologue
    .line 627
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is not supported, use MenuItemCompat.setActionProvider()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setActionView(I)Landroid/view/MenuItem;
    .locals 4
    .param p1, "resId"    # I

    .prologue
    .line 607
    iget-object v2, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/lenovo/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 608
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 609
    .local v1, "inflater":Landroid/view/LayoutInflater;
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 610
    return-object p0
.end method

.method public setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 596
    iput-object p1, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    .line 597
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mActionProvider:Llenovo/view/ActionProvider;

    .line 598
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mId:I

    if-lez v0, :cond_0

    .line 599
    iget v0, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    .line 601
    :cond_0
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/lenovo/internal/view/menu/MenuBuilder;->onItemActionRequestChanged(Lcom/lenovo/internal/view/menu/MenuItemImpl;)V

    .line 602
    return-object p0
.end method

.method public setActionViewExpanded(Z)V
    .locals 2
    .param p1, "isExpanded"    # Z

    .prologue
    .line 724
    iput-boolean p1, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mIsActionViewExpanded:Z

    .line 725
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 726
    return-void
.end method

.method public setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .locals 2
    .param p1, "alphaChar"    # C

    .prologue
    .line 241
    iget-char v0, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    if-ne v0, p1, :cond_0

    .line 249
    :goto_0
    return-object p0

    .line 245
    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iput-char v0, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    .line 247
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    goto :goto_0
.end method

.method public setCallback(Ljava/lang/Runnable;)Landroid/view/MenuItem;
    .locals 0
    .param p1, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 230
    iput-object p1, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mItemCallback:Ljava/lang/Runnable;

    .line 231
    return-object p0
.end method

.method public setCheckable(Z)Landroid/view/MenuItem;
    .locals 4
    .param p1, "checkable"    # Z

    .prologue
    const/4 v2, 0x0

    .line 446
    iget v0, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 447
    .local v0, "oldFlags":I
    iget v1, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v3, v1, -0x2

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    or-int/2addr v1, v3

    iput v1, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 448
    iget v1, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mFlags:I

    if-eq v0, v1, :cond_0

    .line 449
    iget-object v1, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-virtual {v1, v2}, Lcom/lenovo/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 452
    :cond_0
    return-object p0

    :cond_1
    move v1, v2

    .line 447
    goto :goto_0
.end method

.method public setChecked(Z)Landroid/view/MenuItem;
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 470
    iget v0, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/lenovo/internal/view/menu/MenuBuilder;->setExclusiveItemChecked(Landroid/view/MenuItem;)V

    .line 478
    :goto_0
    return-object p0

    .line 475
    :cond_0
    invoke-virtual {p0, p1}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->setCheckedInt(Z)V

    goto :goto_0
.end method

.method setCheckedInt(Z)V
    .locals 4
    .param p1, "checked"    # Z

    .prologue
    const/4 v2, 0x0

    .line 482
    iget v0, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 483
    .local v0, "oldFlags":I
    iget v1, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v3, v1, -0x3

    if-eqz p1, :cond_1

    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, v3

    iput v1, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 484
    iget v1, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mFlags:I

    if-eq v0, v1, :cond_0

    .line 485
    iget-object v1, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-virtual {v1, v2}, Lcom/lenovo/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 487
    :cond_0
    return-void

    :cond_1
    move v1, v2

    .line 483
    goto :goto_0
.end method

.method public setEnabled(Z)Landroid/view/MenuItem;
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 183
    if-eqz p1, :cond_0

    .line 184
    iget v0, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 189
    :goto_0
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 191
    return-object p0

    .line 186
    :cond_0
    iget v0, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mFlags:I

    goto :goto_0
.end method

.method public setExclusiveCheckable(Z)V
    .locals 2
    .param p1, "exclusive"    # Z

    .prologue
    .line 456
    iget v0, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v1, v0, -0x5

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 457
    return-void

    .line 456
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIcon(I)Landroid/view/MenuItem;
    .locals 2
    .param p1, "iconResId"    # I

    .prologue
    .line 430
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 431
    iput p1, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mIconResId:I

    .line 434
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 436
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x0

    .line 421
    iput v1, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mIconResId:I

    .line 422
    iput-object p1, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 423
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, v1}, Lcom/lenovo/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 425
    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mIntent:Landroid/content/Intent;

    .line 222
    return-object p0
.end method

.method public setIsActionButton(Z)V
    .locals 1
    .param p1, "isActionButton"    # Z

    .prologue
    .line 565
    if-eqz p1, :cond_0

    .line 566
    iget v0, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mFlags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 570
    :goto_0
    return-void

    .line 568
    :cond_0
    iget v0, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mFlags:I

    goto :goto_0
.end method

.method setMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0
    .param p1, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 533
    iput-object p1, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 534
    return-void
.end method

.method public setNumericShortcut(C)Landroid/view/MenuItem;
    .locals 2
    .param p1, "numericChar"    # C

    .prologue
    .line 259
    iget-char v0, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    if-ne v0, p1, :cond_0

    .line 267
    :goto_0
    return-object p0

    .line 263
    :cond_0
    iput-char p1, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    .line 265
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    goto :goto_0
.end method

.method public setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .locals 0
    .param p1, "listener"    # Landroid/view/MenuItem$OnActionExpandListener;

    .prologue
    .line 707
    iput-object p1, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    .line 708
    return-object p0
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .locals 0
    .param p1, "clickListener"    # Landroid/view/MenuItem$OnMenuItemClickListener;

    .prologue
    .line 523
    iput-object p1, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 524
    return-object p0
.end method

.method public setShortcut(CC)Landroid/view/MenuItem;
    .locals 2
    .param p1, "numericChar"    # C
    .param p2, "alphaChar"    # C

    .prologue
    .line 272
    iput-char p1, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    .line 273
    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iput-char v0, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    .line 275
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 277
    return-object p0
.end method

.method public setShowAsAction(I)V
    .locals 2
    .param p1, "actionEnum"    # I

    .prologue
    .line 578
    and-int/lit8 v0, p1, 0x3

    packed-switch v0, :pswitch_data_0

    .line 587
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 590
    :pswitch_0
    iput p1, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mShowAsAction:I

    .line 591
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/lenovo/internal/view/menu/MenuBuilder;->onItemActionRequestChanged(Lcom/lenovo/internal/view/menu/MenuItemImpl;)V

    .line 592
    return-void

    .line 578
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setShowAsActionFlags(I)Landroid/view/MenuItem;
    .locals 0
    .param p1, "actionEnum"    # I

    .prologue
    .line 663
    invoke-virtual {p0, p1}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->setShowAsAction(I)V

    .line 664
    return-object p0
.end method

.method setSubMenu(Lcom/lenovo/internal/view/menu/SubMenuBuilder;)V
    .locals 1
    .param p1, "subMenu"    # Lcom/lenovo/internal/view/menu/SubMenuBuilder;

    .prologue
    .line 343
    iput-object p1, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mSubMenu:Lcom/lenovo/internal/view/menu/SubMenuBuilder;

    .line 345
    invoke-virtual {p0}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/lenovo/internal/view/menu/SubMenuBuilder;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    .line 346
    return-void
.end method

.method public setSupportActionProvider(Llenovo/view/ActionProvider;)Lcom/lenovo/internal/view/SupportMenuItem;
    .locals 2
    .param p1, "actionProvider"    # Llenovo/view/ActionProvider;

    .prologue
    const/4 v1, 0x0

    .line 644
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mActionProvider:Llenovo/view/ActionProvider;

    if-eqz v0, :cond_0

    .line 645
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mActionProvider:Llenovo/view/ActionProvider;

    invoke-virtual {v0, v1}, Llenovo/view/ActionProvider;->setVisibilityListener(Llenovo/view/ActionProvider$VisibilityListener;)V

    .line 647
    :cond_0
    iput-object v1, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    .line 648
    iput-object p1, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mActionProvider:Llenovo/view/ActionProvider;

    .line 649
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 650
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mActionProvider:Llenovo/view/ActionProvider;

    if-eqz v0, :cond_1

    .line 651
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mActionProvider:Llenovo/view/ActionProvider;

    new-instance v1, Lcom/lenovo/internal/view/menu/MenuItemImpl$1;

    invoke-direct {v1, p0}, Lcom/lenovo/internal/view/menu/MenuItemImpl$1;-><init>(Lcom/lenovo/internal/view/menu/MenuItemImpl;)V

    invoke-virtual {v0, v1}, Llenovo/view/ActionProvider;->setVisibilityListener(Llenovo/view/ActionProvider$VisibilityListener;)V

    .line 658
    :cond_1
    return-object p0
.end method

.method public setSupportOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Lcom/lenovo/internal/view/SupportMenuItem;
    .locals 0
    .param p1, "listener"    # Landroid/view/MenuItem$OnActionExpandListener;

    .prologue
    .line 702
    iput-object p1, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    .line 703
    return-object p0
.end method

.method public setTitle(I)Landroid/view/MenuItem;
    .locals 1
    .param p1, "title"    # I

    .prologue
    .line 381
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/lenovo/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 368
    iput-object p1, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    .line 370
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 372
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mSubMenu:Lcom/lenovo/internal/view/menu/SubMenuBuilder;

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mSubMenu:Lcom/lenovo/internal/view/menu/SubMenuBuilder;

    invoke-virtual {v0, p1}, Lcom/lenovo/internal/view/menu/SubMenuBuilder;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    .line 376
    :cond_0
    return-object p0
.end method

.method public setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 391
    iput-object p1, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mTitleCondensed:Ljava/lang/CharSequence;

    .line 394
    if-nez p1, :cond_0

    .line 395
    iget-object p1, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 400
    return-object p0
.end method

.method public setVisible(Z)Landroid/view/MenuItem;
    .locals 1
    .param p1, "shown"    # Z

    .prologue
    .line 516
    invoke-virtual {p0, p1}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->setVisibleInt(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/lenovo/internal/view/menu/MenuBuilder;->onItemVisibleChanged(Lcom/lenovo/internal/view/menu/MenuItemImpl;)V

    .line 518
    :cond_0
    return-object p0
.end method

.method setVisibleInt(Z)Z
    .locals 4
    .param p1, "shown"    # Z

    .prologue
    const/4 v2, 0x0

    .line 506
    iget v0, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 507
    .local v0, "oldFlags":I
    iget v1, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v3, v1, -0x9

    if-eqz p1, :cond_1

    move v1, v2

    :goto_0
    or-int/2addr v1, v3

    iput v1, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 508
    iget v1, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mFlags:I

    if-eq v0, v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    .line 507
    :cond_1
    const/16 v1, 0x8

    goto :goto_0
.end method

.method public shouldShowIcon()Z
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/lenovo/internal/view/menu/MenuBuilder;->getOptionalIconsVisible()Z

    move-result v0

    return v0
.end method

.method shouldShowShortcut()Z
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/lenovo/internal/view/menu/MenuBuilder;->isShortcutsVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->getShortcut()C

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showsTextAsAction()Z
    .locals 2

    .prologue
    .line 573
    iget v0, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mShowAsAction:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
