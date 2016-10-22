.class public Llenovo/widget/LinearLayoutCompat$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "LinearLayoutCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llenovo/widget/LinearLayoutCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public gravity:I

.field public weight:F


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1790
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1770
    const/4 v0, -0x1

    iput v0, p0, Llenovo/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    .line 1791
    const/4 v0, 0x0

    iput v0, p0, Llenovo/widget/LinearLayoutCompat$LayoutParams;->weight:F

    .line 1792
    return-void
.end method

.method public constructor <init>(IIF)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "weight"    # F

    .prologue
    .line 1805
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1770
    const/4 v0, -0x1

    iput v0, p0, Llenovo/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    .line 1806
    iput p3, p0, Llenovo/widget/LinearLayoutCompat$LayoutParams;->weight:F

    .line 1807
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, -0x1

    .line 1776
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1770
    iput v3, p0, Llenovo/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    .line 1777
    sget-object v1, Lcom/lenovo/internal/R$styleable;->LinearLayoutCompat_Layout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1780
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Llenovo/widget/LinearLayoutCompat$LayoutParams;->weight:F

    .line 1781
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Llenovo/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    .line 1783
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1784
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1813
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1770
    const/4 v0, -0x1

    iput v0, p0, Llenovo/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    .line 1814
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .prologue
    .line 1820
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1770
    const/4 v0, -0x1

    iput v0, p0, Llenovo/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    .line 1821
    return-void
.end method

.method public constructor <init>(Llenovo/widget/LinearLayoutCompat$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Llenovo/widget/LinearLayoutCompat$LayoutParams;

    .prologue
    .line 1830
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1770
    const/4 v0, -0x1

    iput v0, p0, Llenovo/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    .line 1832
    iget v0, p1, Llenovo/widget/LinearLayoutCompat$LayoutParams;->weight:F

    iput v0, p0, Llenovo/widget/LinearLayoutCompat$LayoutParams;->weight:F

    .line 1833
    iget v0, p1, Llenovo/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    iput v0, p0, Llenovo/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    .line 1834
    return-void
.end method
