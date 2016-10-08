.class final Lcom/android/ims/mo/ImsPhoneCtx$1;
.super Ljava/lang/Object;
.source "ImsPhoneCtx.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/mo/ImsPhoneCtx;
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
        "Lcom/android/ims/mo/ImsPhoneCtx;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/ims/mo/ImsPhoneCtx;
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, "phoneCtx":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 119
    .local v2, "phoneCtxIpuis":[Ljava/lang/String;
    new-instance v0, Lcom/android/ims/mo/ImsPhoneCtx;

    invoke-direct {v0, v1, v2}, Lcom/android/ims/mo/ImsPhoneCtx;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 120
    .local v0, "imsPhoneCtx":Lcom/android/ims/mo/ImsPhoneCtx;
    const-string v3, "ImsPhoneCtx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "imsPhoneCtx:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 115
    invoke-virtual {p0, p1}, Lcom/android/ims/mo/ImsPhoneCtx$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/ims/mo/ImsPhoneCtx;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/ims/mo/ImsPhoneCtx;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 125
    new-array v0, p1, [Lcom/android/ims/mo/ImsPhoneCtx;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 115
    invoke-virtual {p0, p1}, Lcom/android/ims/mo/ImsPhoneCtx$1;->newArray(I)[Lcom/android/ims/mo/ImsPhoneCtx;

    move-result-object v0

    return-object v0
.end method
