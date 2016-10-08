.class final Lcom/mediatek/internal/telephony/uicc/AlphaTag$1;
.super Ljava/lang/Object;
.source "AlphaTag.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/uicc/AlphaTag;
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
        "Lcom/mediatek/internal/telephony/uicc/AlphaTag;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/internal/telephony/uicc/AlphaTag;
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 78
    .local v2, "recordNumber":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "alphaTag":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 80
    .local v1, "pbrIndex":I
    new-instance v3, Lcom/mediatek/internal/telephony/uicc/AlphaTag;

    invoke-direct {v3, v2, v0, v1}, Lcom/mediatek/internal/telephony/uicc/AlphaTag;-><init>(ILjava/lang/String;I)V

    return-object v3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 72
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/uicc/AlphaTag$1;->createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/internal/telephony/uicc/AlphaTag;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/mediatek/internal/telephony/uicc/AlphaTag;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 84
    new-array v0, p1, [Lcom/mediatek/internal/telephony/uicc/AlphaTag;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 72
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/uicc/AlphaTag$1;->newArray(I)[Lcom/mediatek/internal/telephony/uicc/AlphaTag;

    move-result-object v0

    return-object v0
.end method
