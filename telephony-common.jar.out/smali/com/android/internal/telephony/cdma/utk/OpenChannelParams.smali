.class Lcom/android/internal/telephony/cdma/utk/OpenChannelParams;
.super Lcom/android/internal/telephony/cdma/utk/CommandParams;
.source "CommandParams.java"


# instance fields
.field autoReconnect:Z

.field backgrountMode:Z

.field public bearerDesc:Lcom/android/internal/telephony/cdma/utk/BearerDescription;

.field public bufferSize:I

.field public destAddress:Lcom/android/internal/telephony/cdma/utk/OtherAddress;

.field public iconId:Lcom/android/internal/telephony/cdma/utk/IconId;

.field immediateLink:Z

.field public localAddress:Lcom/android/internal/telephony/cdma/utk/OtherAddress;

.field public networkAccessName:Ljava/lang/String;

.field public textMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;

.field public transportLevel:Lcom/android/internal/telephony/cdma/utk/TransportLevel;

.field public userName:Ljava/lang/String;

.field public userPwd:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/utk/CommandDetails;)V
    .locals 3
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 267
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/utk/CommandParams;-><init>(Lcom/android/internal/telephony/cdma/utk/CommandDetails;)V

    .line 240
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/OpenChannelParams;->textMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;

    .line 241
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/OpenChannelParams;->iconId:Lcom/android/internal/telephony/cdma/utk/IconId;

    .line 242
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/OpenChannelParams;->bearerDesc:Lcom/android/internal/telephony/cdma/utk/BearerDescription;

    .line 243
    iput v2, p0, Lcom/android/internal/telephony/cdma/utk/OpenChannelParams;->bufferSize:I

    .line 244
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/OpenChannelParams;->localAddress:Lcom/android/internal/telephony/cdma/utk/OtherAddress;

    .line 245
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/OpenChannelParams;->networkAccessName:Ljava/lang/String;

    .line 246
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/OpenChannelParams;->userName:Ljava/lang/String;

    .line 247
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/OpenChannelParams;->userPwd:Ljava/lang/String;

    .line 248
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/OpenChannelParams;->transportLevel:Lcom/android/internal/telephony/cdma/utk/TransportLevel;

    .line 249
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/OpenChannelParams;->destAddress:Lcom/android/internal/telephony/cdma/utk/OtherAddress;

    .line 255
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/utk/OpenChannelParams;->immediateLink:Z

    .line 259
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/utk/OpenChannelParams;->autoReconnect:Z

    .line 263
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/utk/OpenChannelParams;->backgrountMode:Z

    .line 269
    iget v0, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/utk/OpenChannelParams;->immediateLink:Z

    .line 270
    iget v0, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/utk/OpenChannelParams;->autoReconnect:Z

    .line 271
    iget v0, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v1, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/utk/OpenChannelParams;->backgrountMode:Z

    .line 272
    return-void

    :cond_0
    move v0, v2

    .line 269
    goto :goto_0

    :cond_1
    move v0, v2

    .line 270
    goto :goto_1

    :cond_2
    move v1, v2

    .line 271
    goto :goto_2
.end method
