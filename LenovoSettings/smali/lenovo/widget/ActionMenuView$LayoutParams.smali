.class public Llenovo/widget/ActionMenuView$LayoutParams;
.super Llenovo/widget/LinearLayoutCompat$LayoutParams;
.source "ActionMenuView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llenovo/widget/ActionMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public cellsUsed:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public expandable:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field expanded:Z

.field public extraPixels:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public isOverflowButton:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public preventEdgeOffset:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1034
    invoke-direct {p0, p1, p2}, Llenovo/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    .line 1035
    const/4 v0, 0x0

    iput-boolean v0, p0, Llenovo/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 1036
    return-void
.end method

.method constructor <init>(IIZ)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "isOverflowButton"    # Z

    .prologue
    .line 1039
    invoke-direct {p0, p1, p2}, Llenovo/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    .line 1040
    iput-boolean p3, p0, Llenovo/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 1041
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1021
    invoke-direct {p0, p1, p2}, Llenovo/widget/LinearLayoutCompat$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1022
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "other"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1025
    invoke-direct {p0, p1}, Llenovo/widget/LinearLayoutCompat$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1026
    return-void
.end method

.method public constructor <init>(Llenovo/widget/ActionMenuView$LayoutParams;)V
    .locals 1
    .param p1, "other"    # Llenovo/widget/ActionMenuView$LayoutParams;

    .prologue
    .line 1029
    invoke-direct {p0, p1}, Llenovo/widget/LinearLayoutCompat$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1030
    iget-boolean v0, p1, Llenovo/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    iput-boolean v0, p0, Llenovo/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 1031
    return-void
.end method
