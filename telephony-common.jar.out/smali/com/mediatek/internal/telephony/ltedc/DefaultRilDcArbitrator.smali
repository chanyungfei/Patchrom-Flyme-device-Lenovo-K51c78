.class public Lcom/mediatek/internal/telephony/ltedc/DefaultRilDcArbitrator;
.super Ljava/lang/Object;
.source "DefaultRilDcArbitrator.java"

# interfaces
.implements Lcom/mediatek/internal/telephony/ltedc/IRilDcArbitrator;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PHONE"


# instance fields
.field protected mCsCi:Lcom/android/internal/telephony/CommandsInterface;

.field protected mLtePhone:Lcom/android/internal/telephony/PhoneBase;

.field protected mNonLtePhone:Lcom/android/internal/telephony/PhoneBase;

.field protected mPsCi:Lcom/android/internal/telephony/CommandsInterface;

.field protected mSuspendDataRequest:Z


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/PhoneBase;)V
    .locals 0
    .param p1, "ltePhone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p2, "nonLtePhone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ltedc/DefaultRilDcArbitrator;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    .line 66
    iput-object p2, p0, Lcom/mediatek/internal/telephony/ltedc/DefaultRilDcArbitrator;->mNonLtePhone:Lcom/android/internal/telephony/PhoneBase;

    .line 67
    return-void
.end method


# virtual methods
.method public deactivateDataCall(IILandroid/os/Message;)V
    .locals 1
    .param p1, "cid"    # I
    .param p2, "reason"    # I
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/DefaultRilDcArbitrator;->mPsCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->deactivateDataCall(IILandroid/os/Message;)V

    .line 96
    return-void
.end method

.method public dial(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/DefaultRilDcArbitrator;->mNonLtePhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->dial(Ljava/lang/String;ILandroid/os/Message;)V

    .line 78
    return-void
.end method

.method public getDataCallList(Landroid/os/Message;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/DefaultRilDcArbitrator;->mPsCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getDataCallList(Landroid/os/Message;)V

    .line 126
    return-void
.end method

.method public getDataRegistrationState(Landroid/os/Message;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/DefaultRilDcArbitrator;->mPsCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getDataRegistrationState(Landroid/os/Message;)V

    .line 131
    return-void
.end method

.method public getLastDataCallFailCause(Landroid/os/Message;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/DefaultRilDcArbitrator;->mPsCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getLastDataCallFailCause(Landroid/os/Message;)V

    .line 106
    return-void
.end method

.method public hangupAll(Landroid/os/Message;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/DefaultRilDcArbitrator;->mNonLtePhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->hangupAll(Landroid/os/Message;)V

    .line 83
    return-void
.end method

.method public log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 155
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RilDcArbitrator] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    return-void
.end method

.method public requestSetPsActiveSlot(ILandroid/os/Message;)V
    .locals 1
    .param p1, "psSlot"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/DefaultRilDcArbitrator;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->requestSetPsActiveSlot(ILandroid/os/Message;)V

    .line 113
    return-void
.end method

.method public resumeDataRilRequest()V
    .locals 0

    .prologue
    .line 139
    return-void
.end method

.method public sendEnvelope(Ljava/lang/String;Landroid/os/Message;II)V
    .locals 0
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;
    .param p3, "cmdType"    # I
    .param p4, "mMutliSimType"    # I

    .prologue
    .line 148
    return-void
.end method

.method public sendTerminalResponse(Ljava/lang/String;Landroid/os/Message;II)V
    .locals 0
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;
    .param p3, "cmdType"    # I
    .param p4, "mMutliSimType"    # I

    .prologue
    .line 144
    return-void
.end method

.method public setDataAllowed(ZLandroid/os/Message;)V
    .locals 1
    .param p1, "allowed"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/DefaultRilDcArbitrator;->mPsCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setDataAllowed(ZLandroid/os/Message;)V

    .line 101
    return-void
.end method

.method public setInitialAttachApn(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Message;)V
    .locals 9
    .param p1, "apn"    # Ljava/lang/String;
    .param p2, "protocol"    # Ljava/lang/String;
    .param p3, "authType"    # I
    .param p4, "username"    # Ljava/lang/String;
    .param p5, "password"    # Ljava/lang/String;
    .param p6, "operatorNumeric"    # Ljava/lang/String;
    .param p7, "canHandleIms"    # Z
    .param p8, "result"    # Landroid/os/Message;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/DefaultRilDcArbitrator;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Lcom/android/internal/telephony/CommandsInterface;->setInitialAttachApn(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Message;)V

    .line 121
    return-void
.end method

.method public setupDataCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 10
    .param p1, "radioTechnology"    # Ljava/lang/String;
    .param p2, "profile"    # Ljava/lang/String;
    .param p3, "apn"    # Ljava/lang/String;
    .param p4, "user"    # Ljava/lang/String;
    .param p5, "password"    # Ljava/lang/String;
    .param p6, "authType"    # Ljava/lang/String;
    .param p7, "protocol"    # Ljava/lang/String;
    .param p8, "interfaceId"    # Ljava/lang/String;
    .param p9, "result"    # Landroid/os/Message;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/DefaultRilDcArbitrator;->mPsCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Lcom/android/internal/telephony/CommandsInterface;->setupDataCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 91
    return-void
.end method

.method public suspendDataRilRequest()V
    .locals 0

    .prologue
    .line 135
    return-void
.end method

.method public updatePsCi(Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 2
    .param p1, "psRil"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updatePsRil: psRil = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/DefaultRilDcArbitrator;->log(Ljava/lang/String;)V

    .line 72
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ltedc/DefaultRilDcArbitrator;->mPsCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 73
    return-void
.end method
