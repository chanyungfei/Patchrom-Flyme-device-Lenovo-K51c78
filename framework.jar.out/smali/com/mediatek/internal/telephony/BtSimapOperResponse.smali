.class public Lcom/mediatek/internal/telephony/BtSimapOperResponse;
.super Ljava/lang/Object;
.source "BtSimapOperResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final APDU_RESPONSE_MASK:B = 0x8t

.field private static final ATR_MASK:B = 0x4t

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mediatek/internal/telephony/BtSimapOperResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static final CURTYPE_MASK:B = 0x1t

.field public static final ERR_CARD_NOT_ACCESSIBLE:I = 0x2

.field public static final ERR_CARD_POWERED_OFF:I = 0x3

.field public static final ERR_CARD_POWERED_ON:I = 0x5

.field public static final ERR_CARD_REMOVED:I = 0x4

.field public static final ERR_DATA_NOT_AVAILABLE:I = 0x6

.field public static final ERR_NOT_SUPPORTED:I = 0x7

.field public static final ERR_NO_REASON_DEFINED:I = 0x1

.field public static final SUCCESS:I = 0x0

.field private static final SUPPORTTYPE_MASK:B = 0x2t

.field static final UNKNOWN_PROTOCOL_TYPE:I = -0x1


# instance fields
.field private mCurType:I

.field private mParams:I

.field private mStrAPDU:Ljava/lang/String;

.field private mStrATR:Ljava/lang/String;

.field private mSupportType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 254
    new-instance v0, Lcom/mediatek/internal/telephony/BtSimapOperResponse$1;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/BtSimapOperResponse$1;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/BtSimapOperResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/internal/telephony/BtSimapOperResponse;->mParams:I

    .line 69
    iput v1, p0, Lcom/mediatek/internal/telephony/BtSimapOperResponse;->mCurType:I

    .line 70
    iput v1, p0, Lcom/mediatek/internal/telephony/BtSimapOperResponse;->mSupportType:I

    .line 71
    iput-object v2, p0, Lcom/mediatek/internal/telephony/BtSimapOperResponse;->mStrATR:Ljava/lang/String;

    .line 72
    iput-object v2, p0, Lcom/mediatek/internal/telephony/BtSimapOperResponse;->mStrAPDU:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/BtSimapOperResponse;->mParams:I

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/BtSimapOperResponse;->mCurType:I

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/BtSimapOperResponse;->mSupportType:I

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/BtSimapOperResponse;->mStrATR:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/BtSimapOperResponse;->mStrAPDU:Ljava/lang/String;

    .line 84
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 246
    const/4 v0, 0x0

    return v0
.end method

.method public getApduString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/BtSimapOperResponse;->isApduExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/mediatek/internal/telephony/BtSimapOperResponse;->mStrAPDU:Ljava/lang/String;

    .line 174
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAtrString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/BtSimapOperResponse;->isAtrExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/mediatek/internal/telephony/BtSimapOperResponse;->mStrATR:Ljava/lang/String;

    .line 159
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurType()I
    .locals 1

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/BtSimapOperResponse;->isCurTypeExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget v0, p0, Lcom/mediatek/internal/telephony/BtSimapOperResponse;->mCurType:I

    .line 129
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getSupportType()I
    .locals 1

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/BtSimapOperResponse;->isSupportTypeExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget v0, p0, Lcom/mediatek/internal/telephony/BtSimapOperResponse;->mSupportType:I

    .line 144
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public isApduExist()Z
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/mediatek/internal/telephony/BtSimapOperResponse;->mParams:I

    and-int/lit8 v0, v0, 0x8

    if-lez v0, :cond_0

    .line 112
    const/4 v0, 0x1

    .line 114
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAtrExist()Z
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/mediatek/internal/telephony/BtSimapOperResponse;->mParams:I

    and-int/lit8 v0, v0, 0x4

    if-lez v0, :cond_0

    .line 104
    const/4 v0, 0x1

    .line 106
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCurTypeExist()Z
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/mediatek/internal/telephony/BtSimapOperResponse;->mParams:I

    and-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_0

    .line 88
    const/4 v0, 0x1

    .line 90
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportTypeExist()Z
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/mediatek/internal/telephony/BtSimapOperResponse;->mParams:I

    and-int/lit8 v0, v0, 0x2

    if-lez v0, :cond_0

    .line 96
    const/4 v0, 0x1

    .line 98
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 235
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/BtSimapOperResponse;->mParams:I

    .line 236
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/BtSimapOperResponse;->mCurType:I

    .line 237
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/BtSimapOperResponse;->mSupportType:I

    .line 238
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/BtSimapOperResponse;->mStrATR:Ljava/lang/String;

    .line 239
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/BtSimapOperResponse;->mStrAPDU:Ljava/lang/String;

    .line 240
    return-void
.end method

.method public setApduString(Ljava/lang/String;)V
    .locals 1
    .param p1, "strVal"    # Ljava/lang/String;

    .prologue
    .line 228
    if-eqz p1, :cond_0

    .line 229
    iput-object p1, p0, Lcom/mediatek/internal/telephony/BtSimapOperResponse;->mStrAPDU:Ljava/lang/String;

    .line 230
    iget v0, p0, Lcom/mediatek/internal/telephony/BtSimapOperResponse;->mParams:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/mediatek/internal/telephony/BtSimapOperResponse;->mParams:I

    .line 232
    :cond_0
    return-void
.end method

.method public setAtrString(Ljava/lang/String;)V
    .locals 1
    .param p1, "strVal"    # Ljava/lang/String;

    .prologue
    .line 214
    if-eqz p1, :cond_0

    .line 215
    iput-object p1, p0, Lcom/mediatek/internal/telephony/BtSimapOperResponse;->mStrATR:Ljava/lang/String;

    .line 216
    iget v0, p0, Lcom/mediatek/internal/telephony/BtSimapOperResponse;->mParams:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/mediatek/internal/telephony/BtSimapOperResponse;->mParams:I

    .line 218
    :cond_0
    return-void
.end method

.method public setCurType(I)V
    .locals 1
    .param p1, "nType"    # I

    .prologue
    .line 186
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 187
    :cond_0
    iput p1, p0, Lcom/mediatek/internal/telephony/BtSimapOperResponse;->mCurType:I

    .line 188
    iget v0, p0, Lcom/mediatek/internal/telephony/BtSimapOperResponse;->mParams:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/BtSimapOperResponse;->mParams:I

    .line 190
    :cond_1
    return-void
.end method

.method public setSupportType(I)V
    .locals 1
    .param p1, "nType"    # I

    .prologue
    .line 200
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 201
    :cond_0
    iput p1, p0, Lcom/mediatek/internal/telephony/BtSimapOperResponse;->mSupportType:I

    .line 202
    iget v0, p0, Lcom/mediatek/internal/telephony/BtSimapOperResponse;->mParams:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mediatek/internal/telephony/BtSimapOperResponse;->mParams:I

    .line 204
    :cond_1
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 265
    iget v0, p0, Lcom/mediatek/internal/telephony/BtSimapOperResponse;->mParams:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 266
    iget v0, p0, Lcom/mediatek/internal/telephony/BtSimapOperResponse;->mCurType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 267
    iget v0, p0, Lcom/mediatek/internal/telephony/BtSimapOperResponse;->mSupportType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 268
    iget-object v0, p0, Lcom/mediatek/internal/telephony/BtSimapOperResponse;->mStrATR:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/mediatek/internal/telephony/BtSimapOperResponse;->mStrAPDU:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 270
    return-void
.end method
