.class public interface abstract Lcom/mediatek/internal/telephony/ltedc/IRilDcArbitrator;
.super Ljava/lang/Object;
.source "IRilDcArbitrator.java"


# virtual methods
.method public abstract deactivateDataCall(IILandroid/os/Message;)V
.end method

.method public abstract dial(Ljava/lang/String;ILandroid/os/Message;)V
.end method

.method public abstract getDataCallList(Landroid/os/Message;)V
.end method

.method public abstract getDataRegistrationState(Landroid/os/Message;)V
.end method

.method public abstract getLastDataCallFailCause(Landroid/os/Message;)V
.end method

.method public abstract hangupAll(Landroid/os/Message;)V
.end method

.method public abstract requestSetPsActiveSlot(ILandroid/os/Message;)V
.end method

.method public abstract resumeDataRilRequest()V
.end method

.method public abstract sendEnvelope(Ljava/lang/String;Landroid/os/Message;II)V
.end method

.method public abstract sendTerminalResponse(Ljava/lang/String;Landroid/os/Message;II)V
.end method

.method public abstract setDataAllowed(ZLandroid/os/Message;)V
.end method

.method public abstract setInitialAttachApn(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Message;)V
.end method

.method public abstract setupDataCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract suspendDataRilRequest()V
.end method

.method public abstract updatePsCi(Lcom/android/internal/telephony/CommandsInterface;)V
.end method
