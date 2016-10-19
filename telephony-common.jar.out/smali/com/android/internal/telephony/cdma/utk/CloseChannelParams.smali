.class Lcom/android/internal/telephony/cdma/utk/CloseChannelParams;
.super Lcom/android/internal/telephony/cdma/utk/CommandParams;
.source "CommandParams.java"


# instance fields
.field chId:I

.field isListen:Z

.field textMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/TextMessage;I)V
    .locals 2
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cdma/utk/CommandDetails;
    .param p2, "msg"    # Lcom/android/internal/telephony/cdma/utk/TextMessage;
    .param p3, "destinationId"    # I

    .prologue
    const/4 v0, 0x1

    .line 286
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/utk/CommandParams;-><init>(Lcom/android/internal/telephony/cdma/utk/CommandDetails;)V

    .line 276
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/CloseChannelParams;->textMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;

    .line 287
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/utk/CloseChannelParams;->textMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;

    .line 288
    and-int/lit8 v1, p3, 0xf

    iput v1, p0, Lcom/android/internal/telephony/cdma/utk/CloseChannelParams;->chId:I

    .line 290
    iget v1, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/utk/CloseChannelParams;->isListen:Z

    .line 291
    return-void

    .line 290
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
