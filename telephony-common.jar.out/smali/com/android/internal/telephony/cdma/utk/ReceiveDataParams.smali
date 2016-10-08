.class Lcom/android/internal/telephony/cdma/utk/ReceiveDataParams;
.super Lcom/android/internal/telephony/cdma/utk/CommandParams;
.source "CommandParams.java"


# instance fields
.field chId:I

.field reqDataLength:I

.field textMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/utk/CommandDetails;ILcom/android/internal/telephony/cdma/utk/TextMessage;I)V
    .locals 1
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cdma/utk/CommandDetails;
    .param p2, "len"    # I
    .param p3, "msg"    # Lcom/android/internal/telephony/cdma/utk/TextMessage;
    .param p4, "destinationId"    # I

    .prologue
    .line 300
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/utk/CommandParams;-><init>(Lcom/android/internal/telephony/cdma/utk/CommandDetails;)V

    .line 295
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cdma/utk/ReceiveDataParams;->reqDataLength:I

    .line 296
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/ReceiveDataParams;->textMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;

    .line 301
    iput p2, p0, Lcom/android/internal/telephony/cdma/utk/ReceiveDataParams;->reqDataLength:I

    .line 302
    iput-object p3, p0, Lcom/android/internal/telephony/cdma/utk/ReceiveDataParams;->textMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;

    .line 303
    and-int/lit8 v0, p4, 0xf

    iput v0, p0, Lcom/android/internal/telephony/cdma/utk/ReceiveDataParams;->chId:I

    .line 304
    return-void
.end method
