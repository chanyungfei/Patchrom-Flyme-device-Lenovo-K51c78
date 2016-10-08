.class final Lcom/mediatek/internal/telephony/BtSimapOperResponse$1;
.super Ljava/lang/Object;
.source "BtSimapOperResponse.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/BtSimapOperResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/internal/telephony/BtSimapOperResponse;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 256
    new-instance v0, Lcom/mediatek/internal/telephony/BtSimapOperResponse;

    invoke-direct {v0, p1}, Lcom/mediatek/internal/telephony/BtSimapOperResponse;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 254
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/BtSimapOperResponse$1;->createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/internal/telephony/BtSimapOperResponse;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/mediatek/internal/telephony/BtSimapOperResponse;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 260
    new-array v0, p1, [Lcom/mediatek/internal/telephony/BtSimapOperResponse;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 254
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/BtSimapOperResponse$1;->newArray(I)[Lcom/mediatek/internal/telephony/BtSimapOperResponse;

    move-result-object v0

    return-object v0
.end method
