.class final Lcom/mediatek/internal/telephony/DefaultBearerConfig$1;
.super Ljava/lang/Object;
.source "DefaultBearerConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/DefaultBearerConfig;
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
        "Lcom/mediatek/internal/telephony/DefaultBearerConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/internal/telephony/DefaultBearerConfig;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 68
    new-instance v0, Lcom/mediatek/internal/telephony/DefaultBearerConfig;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/DefaultBearerConfig;-><init>()V

    .line 69
    .local v0, "defaultBearerConfig":Lcom/mediatek/internal/telephony/DefaultBearerConfig;
    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/DefaultBearerConfig;->readFrom(Landroid/os/Parcel;)V

    .line 70
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/DefaultBearerConfig$1;->createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/internal/telephony/DefaultBearerConfig;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/mediatek/internal/telephony/DefaultBearerConfig;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 74
    new-array v0, p1, [Lcom/mediatek/internal/telephony/DefaultBearerConfig;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/DefaultBearerConfig$1;->newArray(I)[Lcom/mediatek/internal/telephony/DefaultBearerConfig;

    move-result-object v0

    return-object v0
.end method
