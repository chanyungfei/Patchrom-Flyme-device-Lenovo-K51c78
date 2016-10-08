.class public Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;
.super Ljava/lang/Object;
.source "UtkResponseMessage.java"


# instance fields
.field additionalInfo:[B

.field cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

.field destinationId:I

.field event:I

.field oneShot:Z

.field resCode:Lcom/android/internal/telephony/cdma/utk/ResultCode;

.field sourceId:I

.field usersConfirm:Z

.field usersInput:Ljava/lang/String;

.field usersMenuSelection:I

.field usersYesNoSelection:Z


# direct methods
.method public constructor <init>(III[BZ)V
    .locals 3
    .param p1, "ev"    # I
    .param p2, "srceId"    # I
    .param p3, "dstId"    # I
    .param p4, "moreInfo"    # [B
    .param p5, "shot"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    .line 25
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->resCode:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    .line 26
    iput v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->usersMenuSelection:I

    .line 27
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->usersInput:Ljava/lang/String;

    .line 28
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->usersYesNoSelection:Z

    .line 29
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->usersConfirm:Z

    .line 32
    iput v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->event:I

    .line 33
    iput v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->sourceId:I

    .line 34
    iput v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->destinationId:I

    .line 36
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->oneShot:Z

    .line 43
    iput p1, p0, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->event:I

    .line 44
    iput p2, p0, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->sourceId:I

    .line 45
    iput p3, p0, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->destinationId:I

    .line 46
    iput-object p4, p0, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->additionalInfo:[B

    .line 47
    iput-boolean p5, p0, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->oneShot:Z

    .line 48
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;)V
    .locals 3
    .param p1, "cmdMsg"    # Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    .line 25
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->resCode:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    .line 26
    iput v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->usersMenuSelection:I

    .line 27
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->usersInput:Ljava/lang/String;

    .line 28
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->usersYesNoSelection:Z

    .line 29
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->usersConfirm:Z

    .line 32
    iput v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->event:I

    .line 33
    iput v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->sourceId:I

    .line 34
    iput v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->destinationId:I

    .line 36
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->oneShot:Z

    .line 52
    iget-object v0, p1, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    .line 53
    return-void
.end method


# virtual methods
.method getCmdDetails()Lcom/android/internal/telephony/cdma/utk/CommandDetails;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    return-object v0
.end method

.method public setConfirmation(Z)V
    .locals 0
    .param p1, "confirm"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->usersConfirm:Z

    .line 73
    return-void
.end method

.method public setInput(Ljava/lang/String;)V
    .locals 0
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->usersInput:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setMenuSelection(I)V
    .locals 0
    .param p1, "selection"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->usersMenuSelection:I

    .line 61
    return-void
.end method

.method public setResultCode(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V
    .locals 0
    .param p1, "resCode"    # Lcom/android/internal/telephony/cdma/utk/ResultCode;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->resCode:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    .line 57
    return-void
.end method

.method public setYesNo(Z)V
    .locals 0
    .param p1, "yesNo"    # Z

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->usersYesNoSelection:Z

    .line 69
    return-void
.end method
