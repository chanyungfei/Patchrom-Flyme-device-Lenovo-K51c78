.class final Lcom/mediatek/internal/telephony/DedicateDataCallState$1;
.super Ljava/lang/Object;
.source "DedicateDataCallState.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/DedicateDataCallState;
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
        "Lcom/mediatek/internal/telephony/DedicateDataCallState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/internal/telephony/DedicateDataCallState;
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 112
    new-instance v0, Lcom/mediatek/internal/telephony/DedicateDataCallState;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/DedicateDataCallState;-><init>()V

    .line 113
    .local v0, "dedicateDataCallState":Lcom/mediatek/internal/telephony/DedicateDataCallState;
    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/DedicateDataCallState;->readFrom(Landroid/os/Parcel;)V

    .line 114
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/DedicateDataCallState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/internal/telephony/DedicateDataCallState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/mediatek/internal/telephony/DedicateDataCallState;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 118
    new-array v0, p1, [Lcom/mediatek/internal/telephony/DedicateDataCallState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/DedicateDataCallState$1;->newArray(I)[Lcom/mediatek/internal/telephony/DedicateDataCallState;

    move-result-object v0

    return-object v0
.end method
