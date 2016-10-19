.class public Lcom/lenovo/component/slidemenu/DrawerLayout$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "DrawerLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/component/slidemenu/DrawerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lenovo/component/slidemenu/DrawerLayout$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field lockModeLeft:I

.field lockModeRight:I

.field openDrawerGravity:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1519
    new-instance v0, Lcom/lenovo/component/slidemenu/DrawerLayout$SavedState$1;

    invoke-direct {v0}, Lcom/lenovo/component/slidemenu/DrawerLayout$SavedState$1;-><init>()V

    sput-object v0, Lcom/lenovo/component/slidemenu/DrawerLayout$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x0

    .line 1505
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 1500
    iput v0, p0, Lcom/lenovo/component/slidemenu/DrawerLayout$SavedState;->openDrawerGravity:I

    .line 1501
    iput v0, p0, Lcom/lenovo/component/slidemenu/DrawerLayout$SavedState;->lockModeLeft:I

    .line 1502
    iput v0, p0, Lcom/lenovo/component/slidemenu/DrawerLayout$SavedState;->lockModeRight:I

    .line 1506
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lenovo/component/slidemenu/DrawerLayout$SavedState;->openDrawerGravity:I

    .line 1507
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 1
    .param p1, "superState"    # Landroid/os/Parcelable;

    .prologue
    const/4 v0, 0x0

    .line 1510
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1500
    iput v0, p0, Lcom/lenovo/component/slidemenu/DrawerLayout$SavedState;->openDrawerGravity:I

    .line 1501
    iput v0, p0, Lcom/lenovo/component/slidemenu/DrawerLayout$SavedState;->lockModeLeft:I

    .line 1502
    iput v0, p0, Lcom/lenovo/component/slidemenu/DrawerLayout$SavedState;->lockModeRight:I

    .line 1511
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 1515
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1516
    iget v0, p0, Lcom/lenovo/component/slidemenu/DrawerLayout$SavedState;->openDrawerGravity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1517
    return-void
.end method
