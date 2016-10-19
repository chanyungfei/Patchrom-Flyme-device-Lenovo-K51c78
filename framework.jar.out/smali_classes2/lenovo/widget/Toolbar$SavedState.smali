.class Llenovo/widget/Toolbar$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "Toolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llenovo/widget/Toolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Llenovo/widget/Toolbar$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public expandedMenuItemId:I

.field public isOverflowOpen:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1866
    new-instance v0, Llenovo/widget/Toolbar$SavedState$1;

    invoke-direct {v0}, Llenovo/widget/Toolbar$SavedState$1;-><init>()V

    sput-object v0, Llenovo/widget/Toolbar$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 1850
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 1851
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Llenovo/widget/Toolbar$SavedState;->expandedMenuItemId:I

    .line 1852
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Llenovo/widget/Toolbar$SavedState;->isOverflowOpen:Z

    .line 1853
    return-void

    .line 1852
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;

    .prologue
    .line 1856
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1857
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 1861
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1862
    iget v0, p0, Llenovo/widget/Toolbar$SavedState;->expandedMenuItemId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1863
    iget-boolean v0, p0, Llenovo/widget/Toolbar$SavedState;->isOverflowOpen:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1864
    return-void

    .line 1863
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
