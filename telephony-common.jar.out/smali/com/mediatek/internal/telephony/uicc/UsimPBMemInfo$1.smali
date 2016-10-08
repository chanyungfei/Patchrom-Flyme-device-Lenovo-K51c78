.class final Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo$1;
.super Ljava/lang/Object;
.source "UsimPBMemInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;
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
        "Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 142
    invoke-static {p1}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 140
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 146
    new-array v0, p1, [Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 140
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo$1;->newArray(I)[Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;

    move-result-object v0

    return-object v0
.end method
