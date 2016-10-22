.class final Lcom/mediatek/hotknot/HotKnotMessage$1;
.super Ljava/lang/Object;
.source "HotKnotMessage.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/hotknot/HotKnotMessage;
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
        "Lcom/mediatek/hotknot/HotKnotMessage;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/hotknot/HotKnotMessage;
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 87
    const/4 v2, 0x0

    .line 88
    .local v2, "mimeType":Ljava/lang/String;
    const/4 v0, 0x0

    .line 89
    .local v0, "data":[B
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 91
    .local v1, "datalen":I
    if-lez v1, :cond_0

    .line 92
    new-array v0, v1, [B

    .line 93
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 95
    :cond_0
    new-instance v3, Lcom/mediatek/hotknot/HotKnotMessage;

    invoke-direct {v3, v2, v0}, Lcom/mediatek/hotknot/HotKnotMessage;-><init>(Ljava/lang/String;[B)V

    return-object v3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Lcom/mediatek/hotknot/HotKnotMessage$1;->createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/hotknot/HotKnotMessage;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/mediatek/hotknot/HotKnotMessage;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 100
    new-array v0, p1, [Lcom/mediatek/hotknot/HotKnotMessage;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Lcom/mediatek/hotknot/HotKnotMessage$1;->newArray(I)[Lcom/mediatek/hotknot/HotKnotMessage;

    move-result-object v0

    return-object v0
.end method
