.class Lcom/android/internal/telephony/cat/CallCtrlBySimParams;
.super Lcom/android/internal/telephony/cat/CommandParams;
.source "CommandParams.java"


# instance fields
.field mDestAddress:Ljava/lang/String;

.field mInfoType:I

.field mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;ILjava/lang/String;)V
    .locals 0
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .param p2, "textMsg"    # Lcom/android/internal/telephony/cat/TextMessage;
    .param p3, "infoType"    # I
    .param p4, "destAddress"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    .line 63
    iput-object p2, p0, Lcom/android/internal/telephony/cat/CallCtrlBySimParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 64
    iput p3, p0, Lcom/android/internal/telephony/cat/CallCtrlBySimParams;->mInfoType:I

    .line 65
    iput-object p4, p0, Lcom/android/internal/telephony/cat/CallCtrlBySimParams;->mDestAddress:Ljava/lang/String;

    .line 66
    return-void
.end method
