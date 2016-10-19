.class final Lcom/android/ims/mo/ImsIcsi$1;
.super Ljava/lang/Object;
.source "ImsIcsi.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/mo/ImsIcsi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/android/ims/mo/ImsIcsi;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/ims/mo/ImsIcsi;
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "icsi":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 117
    .local v2, "isAllocated":Z
    :goto_0
    new-instance v1, Lcom/android/ims/mo/ImsIcsi;

    invoke-direct {v1, v0, v2}, Lcom/android/ims/mo/ImsIcsi;-><init>(Ljava/lang/String;Z)V

    .line 118
    .local v1, "imsIcsi":Lcom/android/ims/mo/ImsIcsi;
    return-object v1

    .line 116
    .end local v1    # "imsIcsi":Lcom/android/ims/mo/ImsIcsi;
    .end local v2    # "isAllocated":Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 113
    invoke-virtual {p0, p1}, Lcom/android/ims/mo/ImsIcsi$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/ims/mo/ImsIcsi;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/ims/mo/ImsIcsi;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 122
    new-array v0, p1, [Lcom/android/ims/mo/ImsIcsi;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 113
    invoke-virtual {p0, p1}, Lcom/android/ims/mo/ImsIcsi$1;->newArray(I)[Lcom/android/ims/mo/ImsIcsi;

    move-result-object v0

    return-object v0
.end method
