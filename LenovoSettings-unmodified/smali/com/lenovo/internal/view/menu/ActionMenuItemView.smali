.class public Lcom/lenovo/internal/view/menu/ActionMenuItemView;
.super Landroid/widget/TextView;
.source "ActionMenuItemView.java"

# interfaces
.implements Lcom/lenovo/internal/view/menu/MenuView$ItemView;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Llenovo/widget/ActionMenuView$ActionMenuChildView;
.implements Lcom/lenovo/internal/view/menu/TintMenuIcon;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/internal/view/menu/ActionMenuItemView$PopupCallback;,
        Lcom/lenovo/internal/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;
    }
.end annotation


# instance fields
.field private mAllowTextWithIcon:Z

.field private mExpandedFormat:Z

.field private mForwardingListener:Llenovo/widget/ListPopupWindow$ForwardingListener;

.field private mHasIconTextSize:I

.field private mHeight:I

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mItemData:Lcom/lenovo/internal/view/menu/MenuItemImpl;

.field private mItemInvoker:Lcom/lenovo/internal/view/menu/MenuBuilder$ItemInvoker;

.field private mMaxIconSize:I

.field private mMiddlePadding:I

.field private mMinWidth:I

.field private mNormalTextSize:I

.field private mPaddings:I

.field private mPopupCallback:Lcom/lenovo/internal/view/menu/ActionMenuItemView$PopupCallback;

.field private mSavedPaddingLeft:I

.field private mTitle:Ljava/lang/CharSequence;

.field private mTopPaddings:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x0

    .line 77
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 79
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x7f070007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mAllowTextWithIcon:Z

    .line 80
    const v2, 0x7f080009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mHasIconTextSize:I

    .line 81
    const v2, 0x7f08000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mNormalTextSize:I

    .line 82
    const v2, 0x7f080025

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mMaxIconSize:I

    .line 83
    const v2, 0x7f080014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mTopPaddings:I

    .line 84
    const v2, 0x7f080015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mMiddlePadding:I

    .line 85
    const v2, 0x7f080001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mPaddings:I

    .line 86
    const v2, 0x7f080023

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mHeight:I

    .line 87
    sget-object v2, Lcom/lenovo/component/appcompat/R$styleable;->ActionMenuItemView:[I

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 89
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mMinWidth:I

    .line 91
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 94
    invoke-virtual {p0, p0}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    invoke-virtual {p0, p0}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 96
    invoke-virtual {p0}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070008

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 97
    new-instance v2, Lcom/lenovo/internal/text/AllCapsTransformationMethod;

    invoke-direct {v2, p1}, Lcom/lenovo/internal/text/AllCapsTransformationMethod;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v2}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 99
    :cond_0
    const/4 v2, -0x1

    iput v2, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mSavedPaddingLeft:I

    .line 103
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->setSingleLine(Z)V

    .line 104
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v2}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 106
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/internal/view/menu/ActionMenuItemView;)Lcom/lenovo/internal/view/menu/ActionMenuItemView$PopupCallback;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/internal/view/menu/ActionMenuItemView;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mPopupCallback:Lcom/lenovo/internal/view/menu/ActionMenuItemView$PopupCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/internal/view/menu/ActionMenuItemView;)Lcom/lenovo/internal/view/menu/MenuBuilder$ItemInvoker;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/internal/view/menu/ActionMenuItemView;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mItemInvoker:Lcom/lenovo/internal/view/menu/MenuBuilder$ItemInvoker;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/internal/view/menu/ActionMenuItemView;)Lcom/lenovo/internal/view/menu/MenuItemImpl;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/internal/view/menu/ActionMenuItemView;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/lenovo/internal/view/menu/MenuItemImpl;

    return-object v0
.end method

.method private updateTextButtonVisibility()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 190
    iget-object v3, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    move v0, v1

    .line 191
    .local v0, "visible":Z
    :goto_0
    iget-object v3, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/lenovo/internal/view/menu/MenuItemImpl;

    invoke-virtual {v3}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->showsTextAsAction()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mAllowTextWithIcon:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mExpandedFormat:Z

    if-eqz v3, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    and-int/2addr v0, v2

    .line 194
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mTitle:Ljava/lang/CharSequence;

    :goto_1
    invoke-virtual {p0, v1}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    return-void

    .end local v0    # "visible":Z
    :cond_2
    move v0, v2

    .line 190
    goto :goto_0

    .line 194
    .restart local v0    # "visible":Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 271
    invoke-virtual {p0, p1}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 255
    invoke-virtual {p0, p1}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 256
    const/4 v0, 0x1

    return v0
.end method

.method public getItemData()Lcom/lenovo/internal/view/menu/MenuItemImpl;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/lenovo/internal/view/menu/MenuItemImpl;

    return-object v0
.end method

.method public hasIcon()Z
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/lenovo/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasText()Z
    .locals 1

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/lenovo/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initialize(Lcom/lenovo/internal/view/menu/MenuItemImpl;I)V
    .locals 1
    .param p1, "itemData"    # Lcom/lenovo/internal/view/menu/MenuItemImpl;
    .param p2, "menuType"    # I

    .prologue
    .line 129
    iput-object p1, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/lenovo/internal/view/menu/MenuItemImpl;

    .line 131
    invoke-virtual {p1}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 132
    invoke-virtual {p1, p0}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->getTitleForItemView(Lcom/lenovo/internal/view/menu/MenuView$ItemView;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 133
    invoke-virtual {p1}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->setId(I)V

    .line 135
    invoke-virtual {p1}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->setVisibility(I)V

    .line 136
    invoke-virtual {p1}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->setEnabled(Z)V

    .line 137
    invoke-virtual {p1}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mForwardingListener:Llenovo/widget/ListPopupWindow$ForwardingListener;

    if-nez v0, :cond_0

    .line 139
    new-instance v0, Lcom/lenovo/internal/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;

    invoke-direct {v0, p0}, Lcom/lenovo/internal/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;-><init>(Lcom/lenovo/internal/view/menu/ActionMenuItemView;)V

    iput-object v0, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mForwardingListener:Llenovo/widget/ListPopupWindow$ForwardingListener;

    .line 142
    :cond_0
    return-void

    .line 135
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public needsDividerAfter()Z
    .locals 1

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/lenovo/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public needsDividerBefore()Z
    .locals 1

    .prologue
    .line 279
    invoke-virtual {p0}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/lenovo/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mItemInvoker:Lcom/lenovo/internal/view/menu/MenuBuilder$ItemInvoker;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mItemInvoker:Lcom/lenovo/internal/view/menu/MenuBuilder$ItemInvoker;

    iget-object v1, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/lenovo/internal/view/menu/MenuItemImpl;

    invoke-interface {v0, v1}, Lcom/lenovo/internal/view/menu/MenuBuilder$ItemInvoker;->invokeItem(Lcom/lenovo/internal/view/menu/MenuItemImpl;)Z

    .line 158
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 109
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 110
    invoke-super {p0, p1}, Landroid/widget/TextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 113
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mAllowTextWithIcon:Z

    .line 115
    invoke-direct {p0}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->updateTextButtonVisibility()V

    .line 116
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 13
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 291
    invoke-virtual {p0}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 319
    :goto_0
    return v9

    .line 296
    :cond_0
    const/4 v11, 0x2

    new-array v6, v11, [I

    .line 297
    .local v6, "screenPos":[I
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 298
    .local v2, "displayFrame":Landroid/graphics/Rect;
    invoke-virtual {p0, v6}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->getLocationOnScreen([I)V

    .line 299
    invoke-virtual {p0, v2}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 301
    invoke-virtual {p0}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 302
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->getWidth()I

    move-result v8

    .line 303
    .local v8, "width":I
    invoke-virtual {p0}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->getHeight()I

    move-result v3

    .line 304
    .local v3, "height":I
    aget v11, v6, v10

    add-int v4, v11, v3

    .line 305
    .local v4, "midy":I
    aget v11, v6, v9

    div-int/lit8 v12, v8, 0x2

    add-int v5, v11, v12

    .line 306
    .local v5, "referenceX":I
    invoke-static {p1}, Lcom/lenovo/internal/widget/ViewUtils;->getLayoutDirection(Landroid/view/View;)I

    move-result v11

    if-nez v11, :cond_1

    .line 307
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v7, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 308
    .local v7, "screenWidth":I
    sub-int v5, v7, v5

    .line 310
    .end local v7    # "screenWidth":I
    :cond_1
    iget-object v11, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/lenovo/internal/view/menu/MenuItemImpl;

    invoke-virtual {v11}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-static {v1, v11, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 311
    .local v0, "cheatSheet":Landroid/widget/Toast;
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v11

    if-ge v4, v11, :cond_2

    .line 313
    const v9, 0x800035

    invoke-virtual {v0, v9, v5, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 318
    :goto_1
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v9, v10

    .line 319
    goto :goto_0

    .line 316
    :cond_2
    const/16 v11, 0x51

    invoke-virtual {v0, v11, v9, v3}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v11, 0x40000000    # 2.0f

    .line 324
    iget v7, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mHeight:I

    invoke-static {v7, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 325
    invoke-virtual {p0}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v3

    .line 326
    .local v3, "textVisible":Z
    if-eqz v3, :cond_0

    iget v7, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mSavedPaddingLeft:I

    if-ltz v7, :cond_0

    .line 327
    iget v7, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mSavedPaddingLeft:I

    invoke-virtual {p0}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->getPaddingTop()I

    move-result v8

    invoke-virtual {p0}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->getPaddingRight()I

    move-result v9

    invoke-virtual {p0}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->getPaddingBottom()I

    move-result v10

    invoke-super {p0, v7, v8, v9, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 331
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 333
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 334
    .local v5, "widthMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 335
    .local v6, "widthSize":I
    invoke-virtual {p0}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->getMeasuredWidth()I

    move-result v1

    .line 336
    .local v1, "oldMeasuredWidth":I
    const/high16 v7, -0x80000000

    if-ne v5, v7, :cond_3

    iget v7, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mMinWidth:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 339
    .local v2, "targetWidth":I
    :goto_0
    if-eq v5, v11, :cond_1

    iget v7, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mMinWidth:I

    if-lez v7, :cond_1

    if-ge v1, v2, :cond_1

    .line 341
    invoke-static {v2, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-super {p0, v7, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 345
    :cond_1
    if-nez v3, :cond_2

    iget-object v7, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_2

    .line 348
    invoke-virtual {p0}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->getMeasuredWidth()I

    move-result v4

    .line 349
    .local v4, "w":I
    iget-object v7, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 352
    .local v0, "dw":I
    iget-object v7, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/lenovo/internal/view/menu/MenuItemImpl;

    invoke-virtual {v7}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->showsTextAsAction()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 353
    iget v7, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mSavedPaddingLeft:I

    invoke-virtual {p0}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->getPaddingTop()I

    move-result v8

    invoke-virtual {p0}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->getPaddingRight()I

    move-result v9

    invoke-virtual {p0}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->getPaddingBottom()I

    move-result v10

    invoke-super {p0, v7, v8, v9, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 359
    .end local v0    # "dw":I
    .end local v4    # "w":I
    :cond_2
    :goto_1
    return-void

    .line 336
    .end local v2    # "targetWidth":I
    :cond_3
    iget v2, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mMinWidth:I

    goto :goto_0

    .line 355
    .restart local v0    # "dw":I
    .restart local v2    # "targetWidth":I
    .restart local v4    # "w":I
    :cond_4
    sub-int v7, v4, v0

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {p0}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->getPaddingTop()I

    move-result v8

    invoke-virtual {p0}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->getPaddingRight()I

    move-result v9

    invoke-virtual {p0}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->getPaddingBottom()I

    move-result v10

    invoke-super {p0, v7, v8, v9, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_1
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 261
    invoke-super {p0, p1}, Landroid/widget/TextView;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 262
    invoke-virtual {p0}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    .line 263
    .local v0, "cdesc":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 264
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/lenovo/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mForwardingListener:Llenovo/widget/ListPopupWindow$ForwardingListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mForwardingListener:Llenovo/widget/ListPopupWindow$ForwardingListener;

    invoke-virtual {v0, p0, p1}, Llenovo/widget/ListPopupWindow$ForwardingListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    const/4 v0, 0x1

    .line 150
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public prefersCondensedTitle()Z
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x1

    return v0
.end method

.method public setCheckable(Z)V
    .locals 0
    .param p1, "checkable"    # Z

    .prologue
    .line 174
    return-void
.end method

.method public setChecked(Z)V
    .locals 0
    .param p1, "checked"    # Z

    .prologue
    .line 178
    return-void
.end method

.method public setExpandedFormat(Z)V
    .locals 1
    .param p1, "expandedFormat"    # Z

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mExpandedFormat:Z

    if-eq v0, p1, :cond_0

    .line 182
    iput-boolean p1, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mExpandedFormat:Z

    .line 183
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/lenovo/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/lenovo/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->actionFormatChanged()V

    .line 187
    :cond_0
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 8
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 198
    iput-object p1, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 199
    if-eqz p1, :cond_2

    .line 200
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 201
    .local v3, "width":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 202
    .local v0, "height":I
    iget v5, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mMaxIconSize:I

    if-eq v3, v5, :cond_0

    .line 203
    iget v5, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mMaxIconSize:I

    int-to-float v5, v5

    int-to-float v6, v3

    div-float v1, v5, v6

    .line 204
    .local v1, "scale":F
    iget v3, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mMaxIconSize:I

    .line 205
    int-to-float v5, v0

    mul-float/2addr v5, v1

    float-to-int v0, v5

    .line 207
    .end local v1    # "scale":F
    :cond_0
    iget v5, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mMaxIconSize:I

    if-eq v0, v5, :cond_1

    .line 208
    iget v5, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mMaxIconSize:I

    int-to-float v5, v5

    int-to-float v6, v0

    div-float v1, v5, v6

    .line 209
    .restart local v1    # "scale":F
    iget v0, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mMaxIconSize:I

    .line 210
    int-to-float v5, v3

    mul-float/2addr v5, v1

    float-to-int v3, v5

    .line 212
    .end local v1    # "scale":F
    :cond_1
    invoke-virtual {p1, v4, v4, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 216
    .end local v0    # "height":I
    .end local v3    # "width":I
    :cond_2
    iget-object v5, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/lenovo/internal/view/menu/MenuItemImpl;

    invoke-virtual {v5}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->showsTextAsAction()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-boolean v5, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mAllowTextWithIcon:Z

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->hasIcon()Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v2, 0x1

    .line 217
    .local v2, "text_img":Z
    :goto_0
    if-eqz v2, :cond_4

    .line 218
    invoke-virtual {p0, v7, p1, v7, v7}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 219
    iget v5, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mHasIconTextSize:I

    int-to-float v5, v5

    invoke-virtual {p0, v4, v5}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->setTextSize(IF)V

    .line 220
    iget v5, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mMiddlePadding:I

    invoke-virtual {p0, v5}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->setCompoundDrawablePadding(I)V

    .line 221
    iget v5, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mPaddings:I

    iget v6, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mTopPaddings:I

    iget v7, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mPaddings:I

    invoke-virtual {p0, v5, v6, v7, v4}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->setPadding(IIII)V

    .line 228
    :goto_1
    invoke-direct {p0}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->updateTextButtonVisibility()V

    .line 229
    return-void

    .end local v2    # "text_img":Z
    :cond_3
    move v2, v4

    .line 216
    goto :goto_0

    .line 223
    .restart local v2    # "text_img":Z
    :cond_4
    invoke-virtual {p0, p1, v7, v7, v7}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 224
    iget v5, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mNormalTextSize:I

    int-to-float v5, v5

    invoke-virtual {p0, v4, v5}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->setTextSize(IF)V

    goto :goto_1
.end method

.method public setItemInvoker(Lcom/lenovo/internal/view/menu/MenuBuilder$ItemInvoker;)V
    .locals 0
    .param p1, "invoker"    # Lcom/lenovo/internal/view/menu/MenuBuilder$ItemInvoker;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mItemInvoker:Lcom/lenovo/internal/view/menu/MenuBuilder$ItemInvoker;

    .line 162
    return-void
.end method

.method public setPadding(IIII)V
    .locals 0
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    .line 120
    iput p1, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mSavedPaddingLeft:I

    .line 121
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 122
    return-void
.end method

.method public setPopupCallback(Lcom/lenovo/internal/view/menu/ActionMenuItemView$PopupCallback;)V
    .locals 0
    .param p1, "popupCallback"    # Lcom/lenovo/internal/view/menu/ActionMenuItemView$PopupCallback;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mPopupCallback:Lcom/lenovo/internal/view/menu/ActionMenuItemView$PopupCallback;

    .line 166
    return-void
.end method

.method public setShortcut(ZC)V
    .locals 0
    .param p1, "showShortcut"    # Z
    .param p2, "shortcutKey"    # C

    .prologue
    .line 244
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 247
    iput-object p1, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mTitle:Ljava/lang/CharSequence;

    .line 249
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 250
    invoke-direct {p0}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->updateTextButtonVisibility()V

    .line 251
    return-void
.end method

.method public showsIcon()Z
    .locals 1

    .prologue
    .line 275
    const/4 v0, 0x1

    return v0
.end method

.method public tintDrawable(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "colorStateList"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 403
    return-void
.end method
