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
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 74
    const v0, 0x10102d8

    invoke-direct {p0, p1, p2, v0}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x0

    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 80
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x90a0007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mAllowTextWithIcon:Z

    .line 81
    const v2, 0x9080052

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mHasIconTextSize:I

    .line 82
    const v2, 0x9080053

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mNormalTextSize:I

    .line 83
    const v2, 0x908006d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mMaxIconSize:I

    .line 84
    const v2, 0x908005d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mTopPaddings:I

    .line 85
    const v2, 0x908005e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mMiddlePadding:I

    .line 86
    const v2, 0x9080049

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mPaddings:I

    .line 87
    const v2, 0x908006b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mHeight:I

    .line 88
    sget-object v2, Lcom/lenovo/internal/R$styleable;->ActionMenuItemView:[I

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 90
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mMinWidth:I

    .line 92
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 95
    invoke-virtual {p0, p0}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    invoke-virtual {p0, p0}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 97
    invoke-virtual {p0}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x90a0008

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 98
    new-instance v2, Lcom/lenovo/internal/text/AllCapsTransformationMethod;

    invoke-direct {v2, p1}, Lcom/lenovo/internal/text/AllCapsTransformationMethod;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v2}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 100
    :cond_0
    const/4 v2, -0x1

    iput v2, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mSavedPaddingLeft:I

    .line 104
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->setSingleLine(Z)V

    .line 105
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v2}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 107
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/internal/view/menu/ActionMenuItemView;)Lcom/lenovo/internal/view/menu/ActionMenuItemView$PopupCallback;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/internal/view/menu/ActionMenuItemView;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mPopupCallback:Lcom/lenovo/internal/view/menu/ActionMenuItemView$PopupCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/internal/view/menu/ActionMenuItemView;)Lcom/lenovo/internal/view/menu/MenuBuilder$ItemInvoker;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/internal/view/menu/ActionMenuItemView;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mItemInvoker:Lcom/lenovo/internal/view/menu/MenuBuilder$ItemInvoker;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/internal/view/menu/ActionMenuItemView;)Lcom/lenovo/internal/view/menu/MenuItemImpl;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/internal/view/menu/ActionMenuItemView;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/lenovo/internal/view/menu/MenuItemImpl;

    return-object v0
.end method

.method private updateTextButtonVisibility()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 194
    iget-object v3, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    move v0, v1

    .line 195
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

    .line 198
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mTitle:Ljava/lang/CharSequence;

    :goto_1
    invoke-virtual {p0, v1}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    return-void

    .end local v0    # "visible":Z
    :cond_2
    move v0, v2

    .line 194
    goto :goto_0

    .line 198
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
    .line 278
    invoke-virtual {p0, p1}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 262
    invoke-virtual {p0, p1}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 263
    const/4 v0, 0x1

    return v0
.end method

.method public getItemData()Lcom/lenovo/internal/view/menu/MenuItemImpl;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/lenovo/internal/view/menu/MenuItemImpl;

    return-object v0
.end method

.method public hasIcon()Z
    .locals 1

    .prologue
    .line 246
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
    .line 241
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
    .line 133
    iput-object p1, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/lenovo/internal/view/menu/MenuItemImpl;

    .line 135
    invoke-virtual {p1}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 136
    invoke-virtual {p1, p0}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->getTitleForItemView(Lcom/lenovo/internal/view/menu/MenuView$ItemView;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 137
    invoke-virtual {p1}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->setId(I)V

    .line 139
    invoke-virtual {p1}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->setVisibility(I)V

    .line 140
    invoke-virtual {p1}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->setEnabled(Z)V

    .line 141
    invoke-virtual {p1}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mForwardingListener:Llenovo/widget/ListPopupWindow$ForwardingListener;

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Lcom/lenovo/internal/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;

    invoke-direct {v0, p0}, Lcom/lenovo/internal/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;-><init>(Lcom/lenovo/internal/view/menu/ActionMenuItemView;)V

    iput-object v0, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mForwardingListener:Llenovo/widget/ListPopupWindow$ForwardingListener;

    .line 146
    :cond_0
    return-void

    .line 139
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public needsDividerAfter()Z
    .locals 1

    .prologue
    .line 292
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
    .line 286
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
    .line 159
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mItemInvoker:Lcom/lenovo/internal/view/menu/MenuBuilder$ItemInvoker;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mItemInvoker:Lcom/lenovo/internal/view/menu/MenuBuilder$ItemInvoker;

    iget-object v1, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/lenovo/internal/view/menu/MenuItemImpl;

    invoke-interface {v0, v1}, Lcom/lenovo/internal/view/menu/MenuBuilder$ItemInvoker;->invokeItem(Lcom/lenovo/internal/view/menu/MenuItemImpl;)Z

    .line 162
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 110
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    .line 111
    invoke-super {p0, p1}, Landroid/widget/TextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 114
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 115
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x90a0007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mAllowTextWithIcon:Z

    .line 117
    const v1, 0x9080049

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mPaddings:I

    .line 119
    invoke-direct {p0}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->updateTextButtonVisibility()V

    .line 120
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 13
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 298
    invoke-virtual {p0}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 326
    :goto_0
    return v9

    .line 303
    :cond_0
    const/4 v11, 0x2

    new-array v6, v11, [I

    .line 304
    .local v6, "screenPos":[I
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 305
    .local v2, "displayFrame":Landroid/graphics/Rect;
    invoke-virtual {p0, v6}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->getLocationOnScreen([I)V

    .line 306
    invoke-virtual {p0, v2}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 308
    invoke-virtual {p0}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 309
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->getWidth()I

    move-result v8

    .line 310
    .local v8, "width":I
    invoke-virtual {p0}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->getHeight()I

    move-result v3

    .line 311
    .local v3, "height":I
    aget v11, v6, v10

    add-int v4, v11, v3

    .line 312
    .local v4, "midy":I
    aget v11, v6, v9

    div-int/lit8 v12, v8, 0x2

    add-int v5, v11, v12

    .line 313
    .local v5, "referenceX":I
    invoke-static {p1}, Lcom/lenovo/internal/widget/ViewUtils;->getLayoutDirection(Landroid/view/View;)I

    move-result v11

    if-nez v11, :cond_1

    .line 314
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v7, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 315
    .local v7, "screenWidth":I
    sub-int v5, v7, v5

    .line 317
    .end local v7    # "screenWidth":I
    :cond_1
    iget-object v11, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/lenovo/internal/view/menu/MenuItemImpl;

    invoke-virtual {v11}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-static {v1, v11, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 318
    .local v0, "cheatSheet":Landroid/widget/Toast;
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v11

    if-ge v4, v11, :cond_2

    .line 320
    const v9, 0x800035

    invoke-virtual {v0, v9, v5, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 325
    :goto_1
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v9, v10

    .line 326
    goto :goto_0

    .line 323
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

    .line 331
    iget v7, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mHeight:I

    invoke-static {v7, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 332
    invoke-virtual {p0}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v3

    .line 333
    .local v3, "textVisible":Z
    if-eqz v3, :cond_0

    iget v7, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mSavedPaddingLeft:I

    if-ltz v7, :cond_0

    .line 334
    iget v7, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mSavedPaddingLeft:I

    invoke-virtual {p0}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->getPaddingTop()I

    move-result v8

    invoke-virtual {p0}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->getPaddingRight()I

    move-result v9

    invoke-virtual {p0}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->getPaddingBottom()I

    move-result v10

    invoke-super {p0, v7, v8, v9, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 338
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 340
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 341
    .local v5, "widthMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 342
    .local v6, "widthSize":I
    invoke-virtual {p0}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->getMeasuredWidth()I

    move-result v1

    .line 343
    .local v1, "oldMeasuredWidth":I
    const/high16 v7, -0x80000000

    if-ne v5, v7, :cond_3

    iget v7, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mMinWidth:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 346
    .local v2, "targetWidth":I
    :goto_0
    if-eq v5, v11, :cond_1

    iget v7, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mMinWidth:I

    if-lez v7, :cond_1

    if-ge v1, v2, :cond_1

    .line 348
    invoke-static {v2, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-super {p0, v7, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 352
    :cond_1
    if-nez v3, :cond_2

    iget-object v7, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_2

    .line 355
    invoke-virtual {p0}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->getMeasuredWidth()I

    move-result v4

    .line 356
    .local v4, "w":I
    iget-object v7, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 359
    .local v0, "dw":I
    iget-object v7, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/lenovo/internal/view/menu/MenuItemImpl;

    invoke-virtual {v7}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->showsTextAsAction()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 360
    iget v7, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mSavedPaddingLeft:I

    invoke-virtual {p0}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->getPaddingTop()I

    move-result v8

    invoke-virtual {p0}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->getPaddingRight()I

    move-result v9

    invoke-virtual {p0}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->getPaddingBottom()I

    move-result v10

    invoke-super {p0, v7, v8, v9, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 366
    .end local v0    # "dw":I
    .end local v4    # "w":I
    :cond_2
    :goto_1
    return-void

    .line 343
    .end local v2    # "targetWidth":I
    :cond_3
    iget v2, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mMinWidth:I

    goto :goto_0

    .line 362
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
    .line 268
    invoke-super {p0, p1}, Landroid/widget/TextView;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 269
    invoke-virtual {p0}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    .line 270
    .local v0, "cdesc":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 271
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 150
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

    .line 152
    const/4 v0, 0x1

    .line 154
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onlyText()Z
    .locals 1

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/lenovo/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->showsTextAsAction()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public prefersCondensedTitle()Z
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x1

    return v0
.end method

.method public setCheckable(Z)V
    .locals 0
    .param p1, "checkable"    # Z

    .prologue
    .line 178
    return-void
.end method

.method public setChecked(Z)V
    .locals 0
    .param p1, "checked"    # Z

    .prologue
    .line 182
    return-void
.end method

.method public setExpandedFormat(Z)V
    .locals 1
    .param p1, "expandedFormat"    # Z

    .prologue
    .line 185
    iget-boolean v0, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mExpandedFormat:Z

    if-eq v0, p1, :cond_0

    .line 186
    iput-boolean p1, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mExpandedFormat:Z

    .line 187
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/lenovo/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/lenovo/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->actionFormatChanged()V

    .line 191
    :cond_0
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 8
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 202
    iput-object p1, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 203
    if-eqz p1, :cond_2

    .line 204
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 205
    .local v3, "width":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 206
    .local v0, "height":I
    iget v5, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mMaxIconSize:I

    if-eq v3, v5, :cond_0

    .line 207
    iget v5, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mMaxIconSize:I

    int-to-float v5, v5

    int-to-float v6, v3

    div-float v1, v5, v6

    .line 208
    .local v1, "scale":F
    iget v3, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mMaxIconSize:I

    .line 209
    int-to-float v5, v0

    mul-float/2addr v5, v1

    float-to-int v0, v5

    .line 211
    .end local v1    # "scale":F
    :cond_0
    iget v5, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mMaxIconSize:I

    if-eq v0, v5, :cond_1

    .line 212
    iget v5, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mMaxIconSize:I

    int-to-float v5, v5

    int-to-float v6, v0

    div-float v1, v5, v6

    .line 213
    .restart local v1    # "scale":F
    iget v0, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mMaxIconSize:I

    .line 214
    int-to-float v5, v3

    mul-float/2addr v5, v1

    float-to-int v3, v5

    .line 216
    .end local v1    # "scale":F
    :cond_1
    invoke-virtual {p1, v4, v4, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 220
    .end local v0    # "height":I
    .end local v3    # "width":I
    :cond_2
    iget-object v5, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/lenovo/internal/view/menu/MenuItemImpl;

    invoke-virtual {v5}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->showsTextAsAction()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-boolean v5, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mAllowTextWithIcon:Z

    if-eqz v5, :cond_3

    if-eqz p1, :cond_3

    const/4 v2, 0x1

    .line 221
    .local v2, "text_img":Z
    :goto_0
    if-eqz v2, :cond_4

    .line 222
    invoke-virtual {p0, v7, p1, v7, v7}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 223
    iget v5, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mHasIconTextSize:I

    int-to-float v5, v5

    invoke-virtual {p0, v4, v5}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->setTextSize(IF)V

    .line 224
    iget v5, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mMiddlePadding:I

    invoke-virtual {p0, v5}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->setCompoundDrawablePadding(I)V

    .line 225
    iget v5, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mPaddings:I

    iget v6, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mTopPaddings:I

    iget v7, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mPaddings:I

    invoke-virtual {p0, v5, v6, v7, v4}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->setPadding(IIII)V

    .line 232
    :goto_1
    invoke-direct {p0}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->updateTextButtonVisibility()V

    .line 233
    return-void

    .end local v2    # "text_img":Z
    :cond_3
    move v2, v4

    .line 220
    goto :goto_0

    .line 227
    .restart local v2    # "text_img":Z
    :cond_4
    invoke-virtual {p0, p1, v7, v7, v7}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 228
    iget v5, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mNormalTextSize:I

    int-to-float v5, v5

    invoke-virtual {p0, v4, v5}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->setTextSize(IF)V

    goto :goto_1
.end method

.method public setItemInvoker(Lcom/lenovo/internal/view/menu/MenuBuilder$ItemInvoker;)V
    .locals 0
    .param p1, "invoker"    # Lcom/lenovo/internal/view/menu/MenuBuilder$ItemInvoker;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mItemInvoker:Lcom/lenovo/internal/view/menu/MenuBuilder$ItemInvoker;

    .line 166
    return-void
.end method

.method public setPadding(IIII)V
    .locals 0
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    .line 124
    iput p1, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mSavedPaddingLeft:I

    .line 125
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 126
    return-void
.end method

.method public setPopupCallback(Lcom/lenovo/internal/view/menu/ActionMenuItemView$PopupCallback;)V
    .locals 0
    .param p1, "popupCallback"    # Lcom/lenovo/internal/view/menu/ActionMenuItemView$PopupCallback;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mPopupCallback:Lcom/lenovo/internal/view/menu/ActionMenuItemView$PopupCallback;

    .line 170
    return-void
.end method

.method public setShortcut(ZC)V
    .locals 0
    .param p1, "showShortcut"    # Z
    .param p2, "shortcutKey"    # C

    .prologue
    .line 251
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 254
    iput-object p1, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mTitle:Ljava/lang/CharSequence;

    .line 256
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 257
    invoke-direct {p0}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->updateTextButtonVisibility()V

    .line 258
    return-void
.end method

.method public showsIcon()Z
    .locals 1

    .prologue
    .line 282
    const/4 v0, 0x1

    return v0
.end method

.method public tintDrawable(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "colorStateList"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 410
    return-void
.end method
