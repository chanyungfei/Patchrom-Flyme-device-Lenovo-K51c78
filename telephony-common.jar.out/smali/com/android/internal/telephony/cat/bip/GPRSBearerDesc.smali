.class public Lcom/android/internal/telephony/cat/bip/GPRSBearerDesc;
.super Lcom/android/internal/telephony/cat/bip/BearerDesc;
.source "GPRSBearerDesc.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/cat/bip/GPRSBearerDesc;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public bearerService:I

.field public connectionElement:I

.field public dataCompression:I

.field public dataRate:I

.field public delay:I

.field public headerCompression:I

.field public mean:I

.field public pdpType:I

.field public peak:I

.field public precedence:I

.field public reliability:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 106
    new-instance v0, Lcom/android/internal/telephony/cat/bip/GPRSBearerDesc$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/bip/GPRSBearerDesc$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/cat/bip/GPRSBearerDesc;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 72
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/bip/BearerDesc;-><init>()V

    .line 58
    iput v0, p0, Lcom/android/internal/telephony/cat/bip/GPRSBearerDesc;->precedence:I

    .line 59
    iput v0, p0, Lcom/android/internal/telephony/cat/bip/GPRSBearerDesc;->delay:I

    .line 60
    iput v0, p0, Lcom/android/internal/telephony/cat/bip/GPRSBearerDesc;->reliability:I

    .line 61
    iput v0, p0, Lcom/android/internal/telephony/cat/bip/GPRSBearerDesc;->peak:I

    .line 62
    iput v0, p0, Lcom/android/internal/telephony/cat/bip/GPRSBearerDesc;->mean:I

    .line 63
    iput v0, p0, Lcom/android/internal/telephony/cat/bip/GPRSBearerDesc;->pdpType:I

    .line 65
    iput v0, p0, Lcom/android/internal/telephony/cat/bip/GPRSBearerDesc;->dataCompression:I

    .line 66
    iput v0, p0, Lcom/android/internal/telephony/cat/bip/GPRSBearerDesc;->headerCompression:I

    .line 68
    iput v0, p0, Lcom/android/internal/telephony/cat/bip/GPRSBearerDesc;->dataRate:I

    .line 69
    iput v0, p0, Lcom/android/internal/telephony/cat/bip/GPRSBearerDesc;->bearerService:I

    .line 70
    iput v0, p0, Lcom/android/internal/telephony/cat/bip/GPRSBearerDesc;->connectionElement:I

    .line 73
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/cat/bip/GPRSBearerDesc;->bearerType:I

    .line 74
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x0

    .line 76
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/bip/BearerDesc;-><init>()V

    .line 58
    iput v0, p0, Lcom/android/internal/telephony/cat/bip/GPRSBearerDesc;->precedence:I

    .line 59
    iput v0, p0, Lcom/android/internal/telephony/cat/bip/GPRSBearerDesc;->delay:I

    .line 60
    iput v0, p0, Lcom/android/internal/telephony/cat/bip/GPRSBearerDesc;->reliability:I

    .line 61
    iput v0, p0, Lcom/android/internal/telephony/cat/bip/GPRSBearerDesc;->peak:I

    .line 62
    iput v0, p0, Lcom/android/internal/telephony/cat/bip/GPRSBearerDesc;->mean:I

    .line 63
    iput v0, p0, Lcom/android/internal/telephony/cat/bip/GPRSBearerDesc;->pdpType:I

    .line 65
    iput v0, p0, Lcom/android/internal/telephony/cat/bip/GPRSBearerDesc;->dataCompression:I

    .line 66
    iput v0, p0, Lcom/android/internal/telephony/cat/bip/GPRSBearerDesc;->headerCompression:I

    .line 68
    iput v0, p0, Lcom/android/internal/telephony/cat/bip/GPRSBearerDesc;->dataRate:I

    .line 69
    iput v0, p0, Lcom/android/internal/telephony/cat/bip/GPRSBearerDesc;->bearerService:I

    .line 70
    iput v0, p0, Lcom/android/internal/telephony/cat/bip/GPRSBearerDesc;->connectionElement:I

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cat/bip/GPRSBearerDesc;->bearerType:I

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cat/bip/GPRSBearerDesc;->precedence:I

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cat/bip/GPRSBearerDesc;->delay:I

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cat/bip/GPRSBearerDesc;->reliability:I

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cat/bip/GPRSBearerDesc;->peak:I

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cat/bip/GPRSBearerDesc;->mean:I

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cat/bip/GPRSBearerDesc;->pdpType:I

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cat/bip/GPRSBearerDesc;->dataCompression:I

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cat/bip/GPRSBearerDesc;->headerCompression:I

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cat/bip/GPRSBearerDesc;->dataRate:I

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cat/bip/GPRSBearerDesc;->bearerService:I

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cat/bip/GPRSBearerDesc;->connectionElement:I

    .line 89
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/internal/telephony/cat/bip/GPRSBearerDesc$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/android/internal/telephony/cat/bip/GPRSBearerDesc$1;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/bip/GPRSBearerDesc;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 92
    iget v0, p0, Lcom/android/internal/telephony/cat/bip/GPRSBearerDesc;->bearerType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    iget v0, p0, Lcom/android/internal/telephony/cat/bip/GPRSBearerDesc;->precedence:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    iget v0, p0, Lcom/android/internal/telephony/cat/bip/GPRSBearerDesc;->delay:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    iget v0, p0, Lcom/android/internal/telephony/cat/bip/GPRSBearerDesc;->reliability:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    iget v0, p0, Lcom/android/internal/telephony/cat/bip/GPRSBearerDesc;->peak:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    iget v0, p0, Lcom/android/internal/telephony/cat/bip/GPRSBearerDesc;->mean:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    iget v0, p0, Lcom/android/internal/telephony/cat/bip/GPRSBearerDesc;->pdpType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    iget v0, p0, Lcom/android/internal/telephony/cat/bip/GPRSBearerDesc;->dataCompression:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    iget v0, p0, Lcom/android/internal/telephony/cat/bip/GPRSBearerDesc;->headerCompression:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    iget v0, p0, Lcom/android/internal/telephony/cat/bip/GPRSBearerDesc;->dataRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    iget v0, p0, Lcom/android/internal/telephony/cat/bip/GPRSBearerDesc;->bearerService:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    iget v0, p0, Lcom/android/internal/telephony/cat/bip/GPRSBearerDesc;->connectionElement:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    return-void
.end method
