.class Lcom/android/internal/telephony/cat/CloseChannelParams;
.super Lcom/android/internal/telephony/cat/CommandParams;
.source "CommandParams.java"


# instance fields
.field mBackToTcpListen:Z

.field mCloseCid:I

.field textMsg:Lcom/android/internal/telephony/cat/TextMessage;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;ILcom/android/internal/telephony/cat/TextMessage;Z)V
    .locals 2
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .param p2, "cid"    # I
    .param p3, "textMsg"    # Lcom/android/internal/telephony/cat/TextMessage;
    .param p4, "backToTcpListen"    # Z

    .prologue
    const/4 v1, 0x0

    .line 295
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    .line 290
    new-instance v0, Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CloseChannelParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 291
    iput v1, p0, Lcom/android/internal/telephony/cat/CloseChannelParams;->mCloseCid:I

    .line 292
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CloseChannelParams;->mBackToTcpListen:Z

    .line 296
    iput-object p3, p0, Lcom/android/internal/telephony/cat/CloseChannelParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 297
    iput p2, p0, Lcom/android/internal/telephony/cat/CloseChannelParams;->mCloseCid:I

    .line 298
    iput-boolean p4, p0, Lcom/android/internal/telephony/cat/CloseChannelParams;->mBackToTcpListen:Z

    .line 299
    return-void
.end method
