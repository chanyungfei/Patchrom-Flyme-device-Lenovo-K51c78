.class public Llenovo/widget/DrawerLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "DrawerLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llenovo/widget/DrawerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public gravity:I

.field isPeeking:Z

.field knownOpen:Z

.field onScreen:F


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1764
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1750
    const/4 v0, 0x0

    iput v0, p0, Llenovo/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 1765
    return-void
.end method

.method public constructor <init>(III)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "gravity"    # I

    .prologue
    .line 1768
    invoke-direct {p0, p1, p2}, Llenovo/widget/DrawerLayout$LayoutParams;-><init>(II)V

    .line 1769
    iput p3, p0, Llenovo/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 1770
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 1756
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1750
    iput v2, p0, Llenovo/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 1758
    # getter for: Llenovo/widget/DrawerLayout;->LAYOUT_ATTRS:[I
    invoke-static {}, Llenovo/widget/DrawerLayout;->access$100()[I

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1759
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Llenovo/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 1760
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1761
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1778
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1750
    const/4 v0, 0x0

    iput v0, p0, Llenovo/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 1779
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .prologue
    .line 1782
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1750
    const/4 v0, 0x0

    iput v0, p0, Llenovo/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 1783
    return-void
.end method

.method public constructor <init>(Llenovo/widget/DrawerLayout$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Llenovo/widget/DrawerLayout$LayoutParams;

    .prologue
    .line 1773
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1750
    const/4 v0, 0x0

    iput v0, p0, Llenovo/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 1774
    iget v0, p1, Llenovo/widget/DrawerLayout$LayoutParams;->gravity:I

    iput v0, p0, Llenovo/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 1775
    return-void
.end method
