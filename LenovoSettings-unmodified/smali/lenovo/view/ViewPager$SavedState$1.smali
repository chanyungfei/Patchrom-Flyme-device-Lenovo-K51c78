.class final Llenovo/view/ViewPager$SavedState$1;
.super Ljava/lang/Object;
.source "ViewPager.java"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llenovo/view/ViewPager$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator",
        "<",
        "Llenovo/view/ViewPager$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 1284
    invoke-virtual {p0, p1}, Llenovo/view/ViewPager$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Llenovo/view/ViewPager$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Ljava/lang/ClassLoader;

    .prologue
    .line 1284
    invoke-virtual {p0, p1, p2}, Llenovo/view/ViewPager$SavedState$1;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Llenovo/view/ViewPager$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Llenovo/view/ViewPager$SavedState;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 1296
    const/4 v0, 0x0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Llenovo/view/ViewPager$SavedState;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 1287
    new-instance v0, Llenovo/view/ViewPager$SavedState;

    invoke-direct {v0, p1, p2}, Llenovo/view/ViewPager$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 1284
    invoke-virtual {p0, p1}, Llenovo/view/ViewPager$SavedState$1;->newArray(I)[Llenovo/view/ViewPager$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Llenovo/view/ViewPager$SavedState;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 1291
    new-array v0, p1, [Llenovo/view/ViewPager$SavedState;

    return-object v0
.end method
