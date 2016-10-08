.class public Lcom/lenovo/internal/view/menu/ListMenuItemTextView;
.super Landroid/widget/TextView;
.source "ListMenuItemTextView.java"

# interfaces
.implements Lcom/lenovo/internal/view/menu/MenuView$ItemView;


# static fields
.field private static final TAG:Ljava/lang/String; = "ListMenuItemTextView"


# instance fields
.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mForceShowIcon:Z

.field private mHeight:I

.field private mItemData:Lcom/lenovo/internal/view/menu/MenuItemImpl;

.field private mTextAppearance:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lenovo/internal/view/menu/ListMenuItemTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/lenovo/internal/view/menu/ListMenuItemTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    sget-object v3, Lcom/lenovo/internal/R$styleable;->MenuView:[I

    invoke-virtual {p1, p2, v3, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 57
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/internal/view/menu/ListMenuItemTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 59
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/lenovo/internal/view/menu/ListMenuItemTextView;->mTextAppearance:I

    .line 61
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 62
    invoke-virtual {p0}, Lcom/lenovo/internal/view/menu/ListMenuItemTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 63
    .local v2, "res":Landroid/content/res/Resources;
    const v3, 0x908006f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/lenovo/internal/view/menu/ListMenuItemTextView;->mHeight:I

    .line 64
    const v3, 0x9080067

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 65
    .local v1, "padding":I
    iget-object v3, p0, Lcom/lenovo/internal/view/menu/ListMenuItemTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v3}, Lcom/lenovo/internal/view/menu/ListMenuItemTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 66
    iget v3, p0, Lcom/lenovo/internal/view/menu/ListMenuItemTextView;->mTextAppearance:I

    if-eq v3, v5, :cond_0

    .line 67
    iget v3, p0, Lcom/lenovo/internal/view/menu/ListMenuItemTextView;->mTextAppearance:I

    invoke-virtual {p0, p1, v3}, Lcom/lenovo/internal/view/menu/ListMenuItemTextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 71
    :cond_0
    const/16 v3, 0x10

    invoke-virtual {p0, v3}, Lcom/lenovo/internal/view/menu/ListMenuItemTextView;->setGravity(I)V

    .line 72
    invoke-virtual {p0, v1, v4, v1, v4}, Lcom/lenovo/internal/view/menu/ListMenuItemTextView;->setPadding(IIII)V

    .line 74
    return-void
.end method


# virtual methods
.method public getItemData()Lcom/lenovo/internal/view/menu/MenuItemImpl;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/ListMenuItemTextView;->mItemData:Lcom/lenovo/internal/view/menu/MenuItemImpl;

    return-object v0
.end method

.method public initialize(Lcom/lenovo/internal/view/menu/MenuItemImpl;I)V
    .locals 1
    .param p1, "itemData"    # Lcom/lenovo/internal/view/menu/MenuItemImpl;
    .param p2, "menuType"    # I

    .prologue
    .line 77
    iput-object p1, p0, Lcom/lenovo/internal/view/menu/ListMenuItemTextView;->mItemData:Lcom/lenovo/internal/view/menu/MenuItemImpl;

    .line 79
    invoke-virtual {p1}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/lenovo/internal/view/menu/ListMenuItemTextView;->setVisibility(I)V

    .line 81
    invoke-virtual {p1, p0}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->getTitleForItemView(Lcom/lenovo/internal/view/menu/MenuView$ItemView;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lenovo/internal/view/menu/ListMenuItemTextView;->setTitle(Ljava/lang/CharSequence;)V

    .line 82
    invoke-virtual {p1}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lenovo/internal/view/menu/ListMenuItemTextView;->setEnabled(Z)V

    .line 83
    return-void

    .line 79
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 120
    iget v0, p0, Lcom/lenovo/internal/view/menu/ListMenuItemTextView;->mHeight:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 121
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 122
    return-void
.end method

.method public prefersCondensedTitle()Z
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method public setCheckable(Z)V
    .locals 0
    .param p1, "checkable"    # Z

    .prologue
    .line 104
    return-void
.end method

.method public setChecked(Z)V
    .locals 0
    .param p1, "checked"    # Z

    .prologue
    .line 108
    return-void
.end method

.method public setForceShowIcon(Z)V
    .locals 0
    .param p1, "forceShow"    # Z

    .prologue
    .line 86
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 116
    return-void
.end method

.method public setShortcut(ZC)V
    .locals 0
    .param p1, "showShortcut"    # Z
    .param p2, "shortcutKey"    # C

    .prologue
    .line 112
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v1, 0x8

    .line 89
    if-eqz p1, :cond_1

    .line 90
    invoke-virtual {p0, p1}, Lcom/lenovo/internal/view/menu/ListMenuItemTextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    invoke-virtual {p0}, Lcom/lenovo/internal/view/menu/ListMenuItemTextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lenovo/internal/view/menu/ListMenuItemTextView;->setVisibility(I)V

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/internal/view/menu/ListMenuItemTextView;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/lenovo/internal/view/menu/ListMenuItemTextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public showsIcon()Z
    .locals 1

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/lenovo/internal/view/menu/ListMenuItemTextView;->mForceShowIcon:Z

    return v0
.end method
