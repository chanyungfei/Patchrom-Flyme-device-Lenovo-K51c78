.class public Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;
.super Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;
.source "ImsRILAdapter.java"

# interfaces
.implements Lcom/mediatek/internal/telephony/ims/ImsCommandsInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$ImsRILReceiver;
    }
.end annotation


# static fields
.field private static final EVENT_AT_CMD_DONE:I = 0x64

.field static final IMS_RILA_LOGD:Z = true

.field static final IMS_RILA_LOG_TAG:Ljava/lang/String; = "IMS: IMS_RILA"

.field private static final IMS_VIDEO_CALL:I = 0x15

.field private static final IMS_VIDEO_CONF:I = 0x17

.field private static final IMS_VIDEO_CONF_PARTS:I = 0x19

.field private static final IMS_VOICE_CALL:I = 0x14

.field private static final IMS_VOICE_CONF:I = 0x16

.field private static final IMS_VOICE_CONF_PARTS:I = 0x18

.field private static final INVALID_CALL_MODE:I = 0xff

.field private static final MAX_BYTE_COUNT:I = 0x100

.field static final MAX_CONNECTIONS:I = 0x7

.field static final RESPONSE_SOLICITED:I = 0x0

.field static final RESPONSE_UNSOLICITED:I = 0x1

.field static final RIL_MAX_COMMAND_BYTES:I = 0x2000

.field static final SOCKET_OPEN_RETRY_MILLIS:I = 0xfa0


# instance fields
.field private mCallConnections:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/mediatek/internal/telephony/ims/ImsCallInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mConferenceCallDialInfo:Lcom/mediatek/internal/telephony/ims/ConferenceCallDialInfo;

.field mContext:Landroid/content/Context;

.field mDefaultCi:Lcom/android/internal/telephony/CommandsInterface;

.field private mHandler:Landroid/os/Handler;

.field private mMoCall:Lcom/mediatek/internal/telephony/ims/MoCallInfo;

.field mReceiver:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$ImsRILReceiver;

.field mReceiverThread:Ljava/lang/Thread;

.field mSocket:Landroid/net/LocalSocket;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    const/4 v0, 0x0

    .line 327
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;-><init>(Landroid/content/Context;)V

    .line 302
    iput-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mMoCall:Lcom/mediatek/internal/telephony/ims/MoCallInfo;

    .line 303
    iput-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mConferenceCallDialInfo:Lcom/mediatek/internal/telephony/ims/ConferenceCallDialInfo;

    .line 308
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mCallConnections:Ljava/util/HashMap;

    .line 310
    new-instance v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$1;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$1;-><init>(Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mHandler:Landroid/os/Handler;

    .line 328
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mContext:Landroid/content/Context;

    .line 329
    iput-object p2, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDefaultCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 330
    const-string v0, "IMS: IMS_RILA"

    const-string v1, "IMS:ImsRILAdapter constructor"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    new-instance v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$ImsRILReceiver;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$ImsRILReceiver;-><init>(Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mReceiver:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$ImsRILReceiver;

    .line 333
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mReceiver:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$ImsRILReceiver;

    const-string v2, "ImsRILReceiver"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mReceiverThread:Ljava/lang/Thread;

    .line 334
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mReceiverThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 336
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .prologue
    .line 274
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->handleAtCmdResponseAndDial(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$100(Ljava/io/InputStream;[B)I
    .locals 1
    .param p0, "x0"    # Ljava/io/InputStream;
    .param p1, "x1"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 274
    invoke-static {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->readRilMessage(Ljava/io/InputStream;[B)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;Landroid/os/Parcel;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;
    .param p1, "x1"    # Landroid/os/Parcel;

    .prologue
    .line 274
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->processResponse(Landroid/os/Parcel;)V

    return-void
.end method

.method private declared-synchronized executeCommandResponse(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "atCmdLine"    # Ljava/lang/String;

    .prologue
    .line 1365
    monitor-enter p0

    :try_start_0
    const-string v0, ""

    .line 1366
    .local v0, "atCmdResult":Ljava/lang/String;
    const/4 v3, 0x2

    new-array v1, v3, [Ljava/lang/String;

    .line 1367
    .local v1, "cmd":[Ljava/lang/String;
    const/4 v3, 0x0

    aput-object p1, v1, v3

    .line 1368
    const/4 v3, 0x1

    const-string v4, ""

    aput-object v4, v1, v3

    .line 1370
    const-string v3, "IMS: IMS_RILA"

    const-string v4, "IMS: mDefaultCi.invokeOemRilRequestRaw() "

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1373
    :try_start_1
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDefaultCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v3, :cond_0

    .line 1374
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDefaultCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Lcom/android/internal/telephony/CommandsInterface;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1382
    :goto_0
    monitor-exit p0

    return-object v0

    .line 1377
    :cond_0
    :try_start_2
    const-string v3, "IMS: IMS_RILA"

    const-string v4, "IMS: executeCommandResponse, CI of RILJ is null !!"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1379
    :catch_0
    move-exception v2

    .line 1380
    .local v2, "ex":Ljava/lang/NullPointerException;
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1365
    .end local v0    # "atCmdResult":Ljava/lang/String;
    .end local v1    # "cmd":[Ljava/lang/String;
    .end local v2    # "ex":Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private handleAtCmdResponseAndDial(Landroid/os/AsyncResult;)V
    .locals 7
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v6, 0x0

    .line 1387
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mMoCall:Lcom/mediatek/internal/telephony/ims/MoCallInfo;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mConferenceCallDialInfo:Lcom/mediatek/internal/telephony/ims/ConferenceCallDialInfo;

    if-nez v1, :cond_0

    .line 1388
    const-string v1, "IMS: IMS_RILA"

    const-string v2, "IMS: mMoCall is null when calling"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1419
    :goto_0
    return-void

    .line 1392
    :cond_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDefaultCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v1, :cond_4

    .line 1393
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mConferenceCallDialInfo:Lcom/mediatek/internal/telephony/ims/ConferenceCallDialInfo;

    if-eqz v1, :cond_1

    .line 1394
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDefaultCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mConferenceCallDialInfo:Lcom/mediatek/internal/telephony/ims/ConferenceCallDialInfo;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/ims/ConferenceCallDialInfo;->mParticipants:[Ljava/lang/String;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mConferenceCallDialInfo:Lcom/mediatek/internal/telephony/ims/ConferenceCallDialInfo;

    iget v3, v3, Lcom/mediatek/internal/telephony/ims/ConferenceCallDialInfo;->mClirMode:I

    iget-object v4, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mConferenceCallDialInfo:Lcom/mediatek/internal/telephony/ims/ConferenceCallDialInfo;

    iget-boolean v4, v4, Lcom/mediatek/internal/telephony/ims/ConferenceCallDialInfo;->mIsVideoCall:Z

    iget-object v5, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mConferenceCallDialInfo:Lcom/mediatek/internal/telephony/ims/ConferenceCallDialInfo;

    iget-object v5, v5, Lcom/mediatek/internal/telephony/ims/ConferenceCallDialInfo;->mResult:Landroid/os/Message;

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->conferenceDial([Ljava/lang/String;IZLandroid/os/Message;)V

    .line 1417
    :goto_1
    iput-object v6, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mMoCall:Lcom/mediatek/internal/telephony/ims/MoCallInfo;

    .line 1418
    iput-object v6, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mConferenceCallDialInfo:Lcom/mediatek/internal/telephony/ims/ConferenceCallDialInfo;

    goto :goto_0

    .line 1399
    :cond_1
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mMoCall:Lcom/mediatek/internal/telephony/ims/MoCallInfo;

    iget-boolean v1, v1, Lcom/mediatek/internal/telephony/ims/MoCallInfo;->mIsVideoCall:Z

    if-eqz v1, :cond_2

    .line 1400
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDefaultCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mMoCall:Lcom/mediatek/internal/telephony/ims/MoCallInfo;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/ims/MoCallInfo;->mCallee:Ljava/lang/String;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mMoCall:Lcom/mediatek/internal/telephony/ims/MoCallInfo;

    iget v3, v3, Lcom/mediatek/internal/telephony/ims/MoCallInfo;->mClirMode:I

    iget-object v4, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mMoCall:Lcom/mediatek/internal/telephony/ims/MoCallInfo;

    iget-object v4, v4, Lcom/mediatek/internal/telephony/ims/MoCallInfo;->mResult:Landroid/os/Message;

    invoke-interface {v1, v2, v3, v6, v4}, Lcom/android/internal/telephony/CommandsInterface;->vtDial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V

    goto :goto_1

    .line 1402
    :cond_2
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mMoCall:Lcom/mediatek/internal/telephony/ims/MoCallInfo;

    iget-boolean v1, v1, Lcom/mediatek/internal/telephony/ims/MoCallInfo;->mIsEmergency:Z

    if-eqz v1, :cond_3

    .line 1403
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mMoCall:Lcom/mediatek/internal/telephony/ims/MoCallInfo;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/ims/MoCallInfo;->mCallee:Ljava/lang/String;

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->getServiceCategoryFromEcc(Ljava/lang/String;)I

    move-result v0

    .line 1404
    .local v0, "serviceCategory":I
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDefaultCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/CommandsInterface;->setEccServiceCategory(I)V

    .line 1405
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDefaultCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mMoCall:Lcom/mediatek/internal/telephony/ims/MoCallInfo;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/ims/MoCallInfo;->mCallee:Ljava/lang/String;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mMoCall:Lcom/mediatek/internal/telephony/ims/MoCallInfo;

    iget v3, v3, Lcom/mediatek/internal/telephony/ims/MoCallInfo;->mClirMode:I

    iget-object v4, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mMoCall:Lcom/mediatek/internal/telephony/ims/MoCallInfo;

    iget-object v4, v4, Lcom/mediatek/internal/telephony/ims/MoCallInfo;->mResult:Landroid/os/Message;

    invoke-interface {v1, v2, v3, v6, v4}, Lcom/android/internal/telephony/CommandsInterface;->emergencyDial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V

    goto :goto_1

    .line 1408
    .end local v0    # "serviceCategory":I
    :cond_3
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDefaultCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mMoCall:Lcom/mediatek/internal/telephony/ims/MoCallInfo;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/ims/MoCallInfo;->mCallee:Ljava/lang/String;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mMoCall:Lcom/mediatek/internal/telephony/ims/MoCallInfo;

    iget v3, v3, Lcom/mediatek/internal/telephony/ims/MoCallInfo;->mClirMode:I

    iget-object v4, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mMoCall:Lcom/mediatek/internal/telephony/ims/MoCallInfo;

    iget-object v4, v4, Lcom/mediatek/internal/telephony/ims/MoCallInfo;->mResult:Landroid/os/Message;

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->dial(Ljava/lang/String;ILandroid/os/Message;)V

    goto :goto_1

    .line 1413
    :cond_4
    const-string v1, "IMS: IMS_RILA"

    const-string v2, "IMS: CI of RILJ is null when handleAtCmdResponseAndDial"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private processResponse(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 803
    const-string v1, "IMS: IMS_RILA"

    const-string v2, " IMS processResponse()"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 806
    .local v0, "type":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 807
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->processUnsolicited(Landroid/os/Parcel;)V

    .line 816
    :cond_0
    :goto_0
    return-void

    .line 808
    :cond_1
    if-nez v0, :cond_0

    .line 809
    const-string v1, "IMS: IMS_RILA"

    const-string v2, "IMS: We should not receive the RESPONSE_SOLICITED !!"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private processUnsolicited(Landroid/os/Parcel;)V
    .locals 26
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 1064
    const-string v21, "IMS: IMS_RILA"

    const-string v22, " IMS processUnsolicited !!"

    invoke-static/range {v21 .. v22}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 1068
    .local v15, "response":I
    sparse-switch v15, :sswitch_data_0

    .line 1094
    :try_start_0
    new-instance v21, Ljava/lang/RuntimeException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Unrecognized unsol response: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v21
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1096
    :catch_0
    move-exception v20

    .line 1097
    .local v20, "tr":Ljava/lang/Throwable;
    const-string v21, "IMS: IMS_RILA"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Exception processing unsol response: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "Exception:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    .end local v20    # "tr":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void

    .line 1069
    :sswitch_0
    :try_start_1
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v16

    .line 1102
    .local v16, "ret":Ljava/lang/Object;
    :goto_1
    sparse-switch v15, :sswitch_data_1

    goto :goto_0

    .line 1184
    :sswitch_1
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->unsljLog(I)V

    .line 1185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mCallStateRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    .line 1186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mCallStateRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v21, v0

    new-instance v22, Landroid/os/AsyncResult;

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-direct/range {v22 .. v25}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v21 .. v22}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 1070
    .end local v16    # "ret":Ljava/lang/Object;
    :sswitch_2
    :try_start_2
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    .restart local v16    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 1071
    .end local v16    # "ret":Ljava/lang/Object;
    :sswitch_3
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    .restart local v16    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 1072
    .end local v16    # "ret":Ljava/lang/Object;
    :sswitch_4
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    .restart local v16    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 1073
    .end local v16    # "ret":Ljava/lang/Object;
    :sswitch_5
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    .restart local v16    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 1074
    .end local v16    # "ret":Ljava/lang/Object;
    :sswitch_6
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    .restart local v16    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 1075
    .end local v16    # "ret":Ljava/lang/Object;
    :sswitch_7
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    .restart local v16    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 1076
    .end local v16    # "ret":Ljava/lang/Object;
    :sswitch_8
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    .restart local v16    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 1077
    .end local v16    # "ret":Ljava/lang/Object;
    :sswitch_9
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    .restart local v16    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 1078
    .end local v16    # "ret":Ljava/lang/Object;
    :sswitch_a
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    .restart local v16    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 1079
    .end local v16    # "ret":Ljava/lang/Object;
    :sswitch_b
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    .restart local v16    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 1080
    .end local v16    # "ret":Ljava/lang/Object;
    :sswitch_c
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    .restart local v16    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 1081
    .end local v16    # "ret":Ljava/lang/Object;
    :sswitch_d
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    .restart local v16    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 1082
    .end local v16    # "ret":Ljava/lang/Object;
    :sswitch_e
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseCallRing(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    .restart local v16    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 1083
    .end local v16    # "ret":Ljava/lang/Object;
    :sswitch_f
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseSuppServiceNotification(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    .restart local v16    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 1084
    .end local v16    # "ret":Ljava/lang/Object;
    :sswitch_10
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    .restart local v16    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 1085
    .end local v16    # "ret":Ljava/lang/Object;
    :sswitch_11
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    .restart local v16    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 1087
    .end local v16    # "ret":Ljava/lang/Object;
    :sswitch_12
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    .restart local v16    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 1088
    .end local v16    # "ret":Ljava/lang/Object;
    :sswitch_13
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    .restart local v16    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 1089
    .end local v16    # "ret":Ljava/lang/Object;
    :sswitch_14
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    .restart local v16    # "ret":Ljava/lang/Object;
    goto/16 :goto_1

    .line 1091
    .end local v16    # "ret":Ljava/lang/Object;
    :sswitch_15
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    .restart local v16    # "ret":Ljava/lang/Object;
    goto/16 :goto_1

    .line 1092
    .end local v16    # "ret":Ljava/lang/Object;
    :sswitch_16
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v16

    .restart local v16    # "ret":Ljava/lang/Object;
    goto/16 :goto_1

    .line 1105
    :sswitch_17
    if-eqz v16, :cond_0

    .line 1108
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->unsljLog(I)V

    .line 1109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mCallInfoRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1

    .line 1110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mCallInfoRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v21, v0

    new-instance v22, Landroid/os/AsyncResult;

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v16

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v21 .. v22}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1113
    :cond_1
    check-cast v16, [Ljava/lang/String;

    .end local v16    # "ret":Ljava/lang/Object;
    move-object/from16 v5, v16

    check-cast v5, [Ljava/lang/String;

    .line 1115
    .local v5, "callInfo":[Ljava/lang/String;
    const/16 v21, 0x0

    aget-object v21, v5, v21

    if-eqz v21, :cond_2

    const/16 v21, 0x1

    aget-object v21, v5, v21

    if-nez v21, :cond_3

    .line 1116
    :cond_2
    const-string v21, "RIL_UNSOL_CALL_INFO_INDICATION something wrong"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1120
    :cond_3
    const/16 v21, 0x1

    aget-object v21, v5, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 1121
    .local v12, "msgType":I
    const/16 v21, 0x0

    aget-object v21, v5, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1122
    .local v4, "callId":I
    const/16 v6, 0xff

    .line 1123
    .local v6, "callMode":I
    const/4 v11, 0x0

    .line 1124
    .local v11, "isConferenceCall":Z
    const/16 v21, 0x5

    aget-object v21, v5, v21

    if-eqz v21, :cond_4

    const/16 v21, 0x5

    aget-object v21, v5, v21

    const-string v22, ""

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_4

    .line 1125
    const/16 v21, 0x5

    aget-object v21, v5, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 1128
    :cond_4
    const/16 v21, 0x16

    move/from16 v0, v21

    if-eq v6, v0, :cond_5

    const/16 v21, 0x17

    move/from16 v0, v21

    if-eq v6, v0, :cond_5

    const/16 v21, 0x18

    move/from16 v0, v21

    if-eq v6, v0, :cond_5

    const/16 v21, 0x19

    move/from16 v0, v21

    if-ne v6, v0, :cond_6

    .line 1132
    :cond_5
    const/4 v11, 0x1

    .line 1136
    :cond_6
    sparse-switch v12, :sswitch_data_2

    goto/16 :goto_0

    .line 1139
    :sswitch_18
    sget-object v19, Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;->INCOMING:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    .line 1140
    .local v19, "state":Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mCallConnections:Ljava/util/HashMap;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-object v22, v5, v22

    new-instance v23, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;

    const/16 v24, 0x0

    aget-object v24, v5, v24

    const/16 v25, 0x6

    aget-object v25, v5, v25

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v11, v3}, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/mediatek/internal/telephony/ims/ImsCallInfo$State;)V

    invoke-virtual/range {v21 .. v23}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1147
    .end local v19    # "state":Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;
    :sswitch_19
    sget-object v19, Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;->ALERTING:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    .line 1148
    .restart local v19    # "state":Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mCallConnections:Ljava/util/HashMap;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-object v22, v5, v22

    new-instance v23, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;

    const/16 v24, 0x0

    aget-object v24, v5, v24

    const/16 v25, 0x6

    aget-object v25, v5, v25

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v11, v3}, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/mediatek/internal/telephony/ims/ImsCallInfo$State;)V

    invoke-virtual/range {v21 .. v23}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1155
    .end local v19    # "state":Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;
    :sswitch_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mCallConnections:Ljava/util/HashMap;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-object v22, v5, v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;

    .line 1156
    .local v10, "imsCallInfo":Lcom/mediatek/internal/telephony/ims/ImsCallInfo;
    iput-boolean v11, v10, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;->mIsConference:Z

    .line 1157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mCallConnections:Ljava/util/HashMap;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-object v22, v5, v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1162
    .end local v10    # "imsCallInfo":Lcom/mediatek/internal/telephony/ims/ImsCallInfo;
    :sswitch_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mCallConnections:Ljava/util/HashMap;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-object v22, v5, v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;

    .line 1163
    .restart local v10    # "imsCallInfo":Lcom/mediatek/internal/telephony/ims/ImsCallInfo;
    sget-object v21, Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;->HOLDING:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    move-object/from16 v0, v21

    iput-object v0, v10, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;->mState:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    .line 1164
    iput-boolean v11, v10, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;->mIsConference:Z

    .line 1165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mCallConnections:Ljava/util/HashMap;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-object v22, v5, v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1170
    .end local v10    # "imsCallInfo":Lcom/mediatek/internal/telephony/ims/ImsCallInfo;
    :sswitch_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mCallConnections:Ljava/util/HashMap;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-object v22, v5, v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;

    .line 1171
    .restart local v10    # "imsCallInfo":Lcom/mediatek/internal/telephony/ims/ImsCallInfo;
    sget-object v21, Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;->ACTIVE:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    move-object/from16 v0, v21

    iput-object v0, v10, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;->mState:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    .line 1172
    iput-boolean v11, v10, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;->mIsConference:Z

    .line 1173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mCallConnections:Ljava/util/HashMap;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-object v22, v5, v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1177
    .end local v10    # "imsCallInfo":Lcom/mediatek/internal/telephony/ims/ImsCallInfo;
    :sswitch_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mCallConnections:Ljava/util/HashMap;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-object v22, v5, v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1191
    .end local v4    # "callId":I
    .end local v5    # "callInfo":[Ljava/lang/String;
    .end local v6    # "callMode":I
    .end local v11    # "isConferenceCall":Z
    .end local v12    # "msgType":I
    .restart local v16    # "ret":Ljava/lang/Object;
    :sswitch_1e
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->unsljLog(I)V

    .line 1192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mImsRegistrationInfoRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    .line 1193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mImsRegistrationInfoRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v21, v0

    new-instance v22, Landroid/os/AsyncResult;

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v16

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v21 .. v22}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1197
    :sswitch_1f
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->unsljLogvRet(ILjava/lang/Object;)V

    .line 1198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mIncomingCallIndicationRegistrant:Landroid/os/Registrant;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    .line 1199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mIncomingCallIndicationRegistrant:Landroid/os/Registrant;

    move-object/from16 v21, v0

    new-instance v22, Landroid/os/AsyncResult;

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v16

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v21 .. v22}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1203
    :sswitch_20
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->unsljLogvRet(ILjava/lang/Object;)V

    .line 1204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    .line 1205
    check-cast v16, [I

    .end local v16    # "ret":Ljava/lang/Object;
    check-cast v16, [I

    const/16 v21, 0x0

    aget v21, v16, v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_7

    const/4 v13, 0x1

    .line 1206
    .local v13, "playtone":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v21, v0

    new-instance v22, Landroid/os/AsyncResult;

    const/16 v23, 0x0

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    const/16 v25, 0x0

    invoke-direct/range {v22 .. v25}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v21 .. v22}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1205
    .end local v13    # "playtone":Z
    :cond_7
    const/4 v13, 0x0

    goto :goto_2

    .line 1211
    .restart local v16    # "ret":Ljava/lang/Object;
    :sswitch_21
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->unsljLogvRet(ILjava/lang/Object;)V

    move-object/from16 v21, v16

    .line 1213
    check-cast v21, [Ljava/lang/String;

    check-cast v21, [Ljava/lang/String;

    const/16 v22, 0x0

    aget-object v21, v21, v22

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .local v18, "simCipherStatus":I
    move-object/from16 v21, v16

    .line 1214
    check-cast v21, [Ljava/lang/String;

    check-cast v21, [Ljava/lang/String;

    const/16 v22, 0x1

    aget-object v21, v21, v22

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .local v17, "sessionStatus":I
    move-object/from16 v21, v16

    .line 1215
    check-cast v21, [Ljava/lang/String;

    check-cast v21, [Ljava/lang/String;

    const/16 v22, 0x2

    aget-object v21, v21, v22

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 1216
    .local v8, "csStatus":I
    check-cast v16, [Ljava/lang/String;

    .end local v16    # "ret":Ljava/lang/Object;
    check-cast v16, [Ljava/lang/String;

    const/16 v21, 0x3

    aget-object v21, v16, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 1218
    .local v14, "psStatus":I
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "RIL_UNSOL_CIPHER_INDICATION :"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1220
    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v7, v0, [I

    .line 1222
    .local v7, "cipherResult":[I
    const/16 v21, 0x0

    aput v18, v7, v21

    .line 1223
    const/16 v21, 0x1

    aput v8, v7, v21

    .line 1224
    const/16 v21, 0x2

    aput v14, v7, v21

    .line 1226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mCipherIndicationRegistrant:Landroid/os/RegistrantList;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    .line 1227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mCipherIndicationRegistrant:Landroid/os/RegistrantList;

    move-object/from16 v21, v0

    new-instance v22, Landroid/os/AsyncResult;

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v7, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v21 .. v22}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1232
    .end local v7    # "cipherResult":[I
    .end local v8    # "csStatus":I
    .end local v14    # "psStatus":I
    .end local v17    # "sessionStatus":I
    .end local v18    # "simCipherStatus":I
    .restart local v16    # "ret":Ljava/lang/Object;
    :sswitch_22
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->unsljLogvRet(ILjava/lang/Object;)V

    .line 1233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mEpsNetworkFeatureSupportRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    .line 1234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mEpsNetworkFeatureSupportRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v21, v0

    new-instance v22, Landroid/os/AsyncResult;

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v16

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v21 .. v22}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1241
    :sswitch_23
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->unsljLog(I)V

    .line 1242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mEconfSrvccRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    .line 1243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mEconfSrvccRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v21, v0

    new-instance v22, Landroid/os/AsyncResult;

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v16

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v21 .. v22}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1249
    :sswitch_24
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->unsljLog(I)V

    .line 1250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mEconfResultRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    .line 1251
    const-string v21, "Notify ECONF result"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    move-object/from16 v21, v16

    .line 1252
    check-cast v21, [Ljava/lang/String;

    move-object/from16 v9, v21

    check-cast v9, [Ljava/lang/String;

    .line 1253
    .local v9, "econfResult":[Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "ECONF result = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x3

    aget-object v22, v9, v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mEconfResultRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v21, v0

    new-instance v22, Landroid/os/AsyncResult;

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v16

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v21 .. v22}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1258
    .end local v9    # "econfResult":[Ljava/lang/String;
    :sswitch_25
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->unsljLog(I)V

    .line 1259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mEpsNetworkFeatureInfoRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    .line 1260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mEpsNetworkFeatureInfoRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v21, v0

    new-instance v22, Landroid/os/AsyncResult;

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v16

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v21 .. v22}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1265
    :sswitch_26
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->unsljLog(I)V

    .line 1266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mSrvccHandoverInfoIndicationRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    .line 1267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mSrvccHandoverInfoIndicationRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v21, v0

    new-instance v22, Landroid/os/AsyncResult;

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v16

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v21 .. v22}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1274
    :sswitch_27
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 1275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDedicateBearerActivatedRegistrant:Landroid/os/RegistrantList;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    .line 1276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDedicateBearerActivatedRegistrant:Landroid/os/RegistrantList;

    move-object/from16 v21, v0

    new-instance v22, Landroid/os/AsyncResult;

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v16

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v21 .. v22}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1280
    :sswitch_28
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 1281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDedicateBearerModifiedRegistrant:Landroid/os/RegistrantList;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    .line 1282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDedicateBearerModifiedRegistrant:Landroid/os/RegistrantList;

    move-object/from16 v21, v0

    new-instance v22, Landroid/os/AsyncResult;

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v16

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v21 .. v22}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1286
    :sswitch_29
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 1287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDedicateBearerDeactivatedRegistrant:Landroid/os/RegistrantList;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    .line 1288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDedicateBearerDeactivatedRegistrant:Landroid/os/RegistrantList;

    move-object/from16 v21, v0

    new-instance v22, Landroid/os/AsyncResult;

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v16

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v21 .. v22}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1293
    :sswitch_2a
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->unsljLogvRet(ILjava/lang/Object;)V

    .line 1295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mSpeechCodecInfoRegistrant:Landroid/os/Registrant;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    .line 1296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mSpeechCodecInfoRegistrant:Landroid/os/Registrant;

    move-object/from16 v21, v0

    new-instance v22, Landroid/os/AsyncResult;

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v16

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v21 .. v22}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1301
    :sswitch_2b
    const-string v21, "IMS: IMS_RILA"

    const-string v22, "IMS: receive RIL_UNSOL_CALL_RING"

    invoke-static/range {v21 .. v22}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 1304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mRingRegistrant:Landroid/os/Registrant;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    .line 1305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mRingRegistrant:Landroid/os/Registrant;

    move-object/from16 v21, v0

    new-instance v22, Landroid/os/AsyncResult;

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v16

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v21 .. v22}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1310
    :sswitch_2c
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 1311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mSsnRegistrant:Landroid/os/Registrant;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    .line 1312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mSsnRegistrant:Landroid/os/Registrant;

    move-object/from16 v21, v0

    new-instance v22, Landroid/os/AsyncResult;

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v16

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v21 .. v22}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1317
    :sswitch_2d
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 1318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mSrvccStateRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    .line 1319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mSrvccStateRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v21, v0

    new-instance v22, Landroid/os/AsyncResult;

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v16

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v21 .. v22}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1324
    :sswitch_2e
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 1325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mCallProgressIndicatorRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    .line 1326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mCallProgressIndicatorRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v21, v0

    new-instance v22, Landroid/os/AsyncResult;

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v16

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v21 .. v22}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1331
    :sswitch_2f
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->unsljLog(I)V

    .line 1332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mImsEnableDoneRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    .line 1333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mImsEnableDoneRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto/16 :goto_0

    .line 1337
    :sswitch_30
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->unsljLog(I)V

    .line 1338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mImsDisableDoneRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    .line 1339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mImsDisableDoneRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto/16 :goto_0

    .line 1344
    :sswitch_31
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->unsljLog(I)V

    .line 1346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mImsEnableStartRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    .line 1347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mImsEnableStartRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto/16 :goto_0

    .line 1352
    :sswitch_32
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->unsljLog(I)V

    .line 1354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mImsDisableStartRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    .line 1355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mImsDisableStartRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto/16 :goto_0

    .line 1068
    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_14
        0x3e9 -> :sswitch_2
        0x3f3 -> :sswitch_f
        0x3fa -> :sswitch_e
        0x405 -> :sswitch_5
        0x40f -> :sswitch_10
        0xbd6 -> :sswitch_8
        0xbd7 -> :sswitch_12
        0xbd8 -> :sswitch_13
        0xbd9 -> :sswitch_3
        0xbdc -> :sswitch_c
        0xbde -> :sswitch_9
        0xbe2 -> :sswitch_4
        0xbe3 -> :sswitch_6
        0xbe8 -> :sswitch_7
        0xbe9 -> :sswitch_0
        0xbea -> :sswitch_a
        0xbeb -> :sswitch_b
        0xbec -> :sswitch_d
        0xbf1 -> :sswitch_11
        0xbf8 -> :sswitch_15
        0xbf9 -> :sswitch_16
    .end sparse-switch

    .line 1102
    :sswitch_data_1
    .sparse-switch
        0x3e9 -> :sswitch_1
        0x3f3 -> :sswitch_2c
        0x3fa -> :sswitch_2b
        0x405 -> :sswitch_20
        0x40f -> :sswitch_2d
        0xbd6 -> :sswitch_23
        0xbd7 -> :sswitch_2f
        0xbd8 -> :sswitch_30
        0xbd9 -> :sswitch_1e
        0xbda -> :sswitch_27
        0xbdb -> :sswitch_28
        0xbdc -> :sswitch_29
        0xbde -> :sswitch_24
        0xbe2 -> :sswitch_1f
        0xbe3 -> :sswitch_21
        0xbe8 -> :sswitch_22
        0xbe9 -> :sswitch_17
        0xbea -> :sswitch_25
        0xbeb -> :sswitch_26
        0xbec -> :sswitch_2a
        0xbf1 -> :sswitch_2e
        0xbf8 -> :sswitch_31
        0xbf9 -> :sswitch_32
    .end sparse-switch

    .line 1136
    :sswitch_data_2
    .sparse-switch
        0x0 -> :sswitch_18
        0x2 -> :sswitch_1a
        0x82 -> :sswitch_19
        0x83 -> :sswitch_1b
        0x84 -> :sswitch_1c
        0x85 -> :sswitch_1d
    .end sparse-switch
.end method

.method private static readRilMessage(Ljava/io/InputStream;[B)I
    .locals 8
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 648
    const/4 v2, 0x0

    .line 649
    .local v2, "offset":I
    const/4 v3, 0x4

    .line 651
    .local v3, "remaining":I
    :cond_0
    invoke-virtual {p0, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 653
    .local v0, "countRead":I
    if-gez v0, :cond_1

    .line 654
    const-string v5, "IMS: IMS_RILA"

    const-string v6, "Hit EOS reading message length"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 683
    :goto_0
    return v1

    .line 658
    :cond_1
    add-int/2addr v2, v0

    .line 659
    sub-int/2addr v3, v0

    .line 660
    if-gtz v3, :cond_0

    .line 662
    const/4 v5, 0x0

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    const/4 v6, 0x1

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    const/4 v6, 0x2

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    const/4 v6, 0x3

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    or-int v1, v5, v6

    .line 668
    .local v1, "messageLength":I
    const/4 v2, 0x0

    .line 669
    move v3, v1

    .line 671
    :cond_2
    invoke-virtual {p0, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 673
    if-gez v0, :cond_3

    .line 674
    const-string v5, "IMS: IMS_RILA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Hit EOS reading message.  messageLength="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " remaining="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 676
    goto :goto_0

    .line 679
    :cond_3
    add-int/2addr v2, v0

    .line 680
    sub-int/2addr v3, v0

    .line 681
    if-gtz v3, :cond_2

    goto :goto_0
.end method

.method static requestToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "request"    # I

    .prologue
    .line 997
    .line 999
    const-string v0, "<unknown request>"

    return-object v0
.end method

.method private responseCallRing(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 3
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 856
    const/4 v1, 0x4

    new-array v0, v1, [C

    .line 858
    .local v0, "response":[C
    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 859
    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 860
    const/4 v1, 0x2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 861
    const/4 v1, 0x3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 863
    return-object v0
.end method

.method private responseInts(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 4
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 843
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 845
    .local v1, "numInts":I
    new-array v2, v1, [I

    .line 847
    .local v2, "response":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 848
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aput v3, v2, v0

    .line 847
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 851
    :cond_0
    return-object v2
.end method

.method private responseString(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 825
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 827
    .local v0, "response":Ljava/lang/String;
    return-object v0
.end method

.method private responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 834
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 836
    .local v0, "response":[Ljava/lang/String;
    return-object v0
.end method

.method private responseSuppServiceNotification(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 868
    new-instance v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/SuppServiceNotification;-><init>()V

    .line 870
    .local v0, "notification":Lcom/android/internal/telephony/gsm/SuppServiceNotification;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->notificationType:I

    .line 871
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    .line 872
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->index:I

    .line 873
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->type:I

    .line 874
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->number:Ljava/lang/String;

    .line 876
    return-object v0
.end method

.method static responseToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "request"    # I

    .prologue
    .line 881
    sparse-switch p0, :sswitch_data_0

    .line 992
    const-string v0, "<unknown response>"

    :goto_0
    return-object v0

    .line 882
    :sswitch_0
    const-string v0, "UNSOL_RESPONSE_RADIO_STATE_CHANGED"

    goto :goto_0

    .line 883
    :sswitch_1
    const-string v0, "UNSOL_RESPONSE_CALL_STATE_CHANGED"

    goto :goto_0

    .line 884
    :sswitch_2
    const-string v0, "UNSOL_RESPONSE_VOICE_NETWORK_STATE_CHANGED"

    goto :goto_0

    .line 885
    :sswitch_3
    const-string v0, "UNSOL_RESPONSE_NEW_SMS"

    goto :goto_0

    .line 886
    :sswitch_4
    const-string v0, "UNSOL_RESPONSE_NEW_SMS_STATUS_REPORT"

    goto :goto_0

    .line 887
    :sswitch_5
    const-string v0, "UNSOL_RESPONSE_NEW_SMS_ON_SIM"

    goto :goto_0

    .line 888
    :sswitch_6
    const-string v0, "UNSOL_ON_USSD"

    goto :goto_0

    .line 889
    :sswitch_7
    const-string v0, "UNSOL_ON_USSD_REQUEST"

    goto :goto_0

    .line 890
    :sswitch_8
    const-string v0, "UNSOL_NITZ_TIME_RECEIVED"

    goto :goto_0

    .line 891
    :sswitch_9
    const-string v0, "UNSOL_SIGNAL_STRENGTH"

    goto :goto_0

    .line 892
    :sswitch_a
    const-string v0, "UNSOL_DATA_CALL_LIST_CHANGED"

    goto :goto_0

    .line 893
    :sswitch_b
    const-string v0, "UNSOL_SUPP_SVC_NOTIFICATION"

    goto :goto_0

    .line 894
    :sswitch_c
    const-string v0, "UNSOL_STK_SESSION_END"

    goto :goto_0

    .line 895
    :sswitch_d
    const-string v0, "UNSOL_STK_PROACTIVE_COMMAND"

    goto :goto_0

    .line 896
    :sswitch_e
    const-string v0, "UNSOL_STK_EVENT_NOTIFY"

    goto :goto_0

    .line 897
    :sswitch_f
    const-string v0, "UNSOL_STK_CALL_SETUP"

    goto :goto_0

    .line 898
    :sswitch_10
    const-string v0, "UNSOL_SIM_SMS_STORAGE_FULL"

    goto :goto_0

    .line 899
    :sswitch_11
    const-string v0, "UNSOL_SIM_REFRESH"

    goto :goto_0

    .line 900
    :sswitch_12
    const-string v0, "UNSOL_CALL_RING"

    goto :goto_0

    .line 901
    :sswitch_13
    const-string v0, "UNSOL_RESPONSE_SIM_STATUS_CHANGED"

    goto :goto_0

    .line 902
    :sswitch_14
    const-string v0, "UNSOL_RESPONSE_CDMA_NEW_SMS"

    goto :goto_0

    .line 903
    :sswitch_15
    const-string v0, "UNSOL_RESPONSE_NEW_BROADCAST_SMS"

    goto :goto_0

    .line 904
    :sswitch_16
    const-string v0, "UNSOL_CDMA_RUIM_SMS_STORAGE_FULL"

    goto :goto_0

    .line 905
    :sswitch_17
    const-string v0, "UNSOL_RESTRICTED_STATE_CHANGED"

    goto :goto_0

    .line 906
    :sswitch_18
    const-string v0, "UNSOL_ENTER_EMERGENCY_CALLBACK_MODE"

    goto :goto_0

    .line 907
    :sswitch_19
    const-string v0, "UNSOL_CDMA_CALL_WAITING"

    goto :goto_0

    .line 908
    :sswitch_1a
    const-string v0, "UNSOL_CDMA_OTA_PROVISION_STATUS"

    goto :goto_0

    .line 909
    :sswitch_1b
    const-string v0, "UNSOL_CDMA_INFO_REC"

    goto :goto_0

    .line 910
    :sswitch_1c
    const-string v0, "UNSOL_OEM_HOOK_RAW"

    goto :goto_0

    .line 911
    :sswitch_1d
    const-string v0, "UNSOL_RINGBACK_TONE"

    goto :goto_0

    .line 912
    :sswitch_1e
    const-string v0, "UNSOL_RESEND_INCALL_MUTE"

    goto :goto_0

    .line 913
    :sswitch_1f
    const-string v0, "CDMA_SUBSCRIPTION_SOURCE_CHANGED"

    goto :goto_0

    .line 914
    :sswitch_20
    const-string v0, "UNSOL_CDMA_PRL_CHANGED"

    goto :goto_0

    .line 915
    :sswitch_21
    const-string v0, "UNSOL_EXIT_EMERGENCY_CALLBACK_MODE"

    goto :goto_0

    .line 916
    :sswitch_22
    const-string v0, "UNSOL_RIL_CONNECTED"

    goto :goto_0

    .line 917
    :sswitch_23
    const-string v0, "UNSOL_VOICE_RADIO_TECH_CHANGED"

    goto :goto_0

    .line 918
    :sswitch_24
    const-string v0, "UNSOL_CELL_INFO_LIST"

    goto :goto_0

    .line 920
    :sswitch_25
    const-string v0, "UNSOL_RESPONSE_IMS_NETWORK_STATE_CHANGED"

    goto :goto_0

    .line 922
    :sswitch_26
    const-string v0, "RIL_UNSOL_UICC_SUBSCRIPTION_STATUS_CHANGED"

    goto :goto_0

    .line 924
    :sswitch_27
    const-string v0, "UNSOL_SRVCC_STATE_NOTIFY"

    goto :goto_0

    .line 926
    :sswitch_28
    const-string v0, "UNSOL_SIP_CALL_PROGRESS_INDICATOR"

    goto :goto_0

    .line 927
    :sswitch_29
    const-string v0, "RIL_UNSOL_HARDWARE_CONFIG_CHANGED"

    goto :goto_0

    .line 929
    :sswitch_2a
    const-string v0, "UNSOL_CALL_FORWARDING"

    goto/16 :goto_0

    .line 930
    :sswitch_2b
    const-string v0, "UNSOL_CRSS_NOTIFICATION"

    goto/16 :goto_0

    .line 931
    :sswitch_2c
    const-string v0, "UNSOL_INCOMING_CALL_INDICATION"

    goto/16 :goto_0

    .line 932
    :sswitch_2d
    const-string v0, "RIL_UNSOL_CIPHER_INDICATION"

    goto/16 :goto_0

    .line 933
    :sswitch_2e
    const-string v0, "RIL_UNSOL_CNAP"

    goto/16 :goto_0

    .line 934
    :sswitch_2f
    const-string v0, "UNSOL_SPEECH_CODEC_INFO"

    goto/16 :goto_0

    .line 937
    :sswitch_30
    const-string v0, "RIL_UNSOL_APPLICATION_SESSION_ID_CHANGED"

    goto/16 :goto_0

    .line 939
    :sswitch_31
    const-string v0, "UNSOL_SIM_MISSING"

    goto/16 :goto_0

    .line 940
    :sswitch_32
    const-string v0, "UNSOL_VIRTUAL_SIM_ON"

    goto/16 :goto_0

    .line 941
    :sswitch_33
    const-string v0, "UNSOL_VIRTUAL_SIM_ON_OFF"

    goto/16 :goto_0

    .line 942
    :sswitch_34
    const-string v0, "UNSOL_SIM_RECOVERY"

    goto/16 :goto_0

    .line 943
    :sswitch_35
    const-string v0, "UNSOL_SIM_PLUG_OUT"

    goto/16 :goto_0

    .line 944
    :sswitch_36
    const-string v0, "UNSOL_SIM_PLUG_IN"

    goto/16 :goto_0

    .line 945
    :sswitch_37
    const-string v0, "RIL_UNSOL_SIM_COMMON_SLOT_NO_CHANGED"

    goto/16 :goto_0

    .line 946
    :sswitch_38
    const-string v0, "RIL_UNSOL_DATA_ALLOWED"

    goto/16 :goto_0

    .line 947
    :sswitch_39
    const-string v0, "UNSOL_PHB_READY_NOTIFICATION"

    goto/16 :goto_0

    .line 948
    :sswitch_3a
    const-string v0, "UNSOL_IMEI_LOCK"

    goto/16 :goto_0

    .line 949
    :sswitch_3b
    const-string v0, "UNSOL_ACMT_INFO"

    goto/16 :goto_0

    .line 950
    :sswitch_3c
    const-string v0, "UNSOL_RESPONSE_PS_NETWORK_STATE_CHANGED"

    goto/16 :goto_0

    .line 951
    :sswitch_3d
    const-string v0, "UNSOL_RESPONSE_MMRR_STATUS_CHANGED"

    goto/16 :goto_0

    .line 952
    :sswitch_3e
    const-string v0, "UNSOL_NEIGHBORING_CELL_INFO"

    goto/16 :goto_0

    .line 953
    :sswitch_3f
    const-string v0, "UNSOL_NETWORK_INFO"

    goto/16 :goto_0

    .line 954
    :sswitch_40
    const-string v0, "RIL_UNSOL_IMS_ENABLE_DONE"

    goto/16 :goto_0

    .line 955
    :sswitch_41
    const-string v0, "RIL_UNSOL_IMS_DISABLE_DONE"

    goto/16 :goto_0

    .line 956
    :sswitch_42
    const-string v0, "RIL_UNSOL_IMS_REGISTRATION_INFO"

    goto/16 :goto_0

    .line 957
    :sswitch_43
    const-string v0, "RIL_UNSOL_STK_SETUP_MENU_RESET"

    goto/16 :goto_0

    .line 958
    :sswitch_44
    const-string v0, "RIL_UNSOL_RESPONSE_PLMN_CHANGED"

    goto/16 :goto_0

    .line 959
    :sswitch_45
    const-string v0, "RIL_UNSOL_RESPONSE_REGISTRATION_SUSPENDED"

    goto/16 :goto_0

    .line 961
    :sswitch_46
    const-string v0, "RIL_UNSOL_DEDICATE_BEARER_ACTIVATED"

    goto/16 :goto_0

    .line 962
    :sswitch_47
    const-string v0, "RIL_UNSOL_DEDICATE_BEARER_MODIFIED"

    goto/16 :goto_0

    .line 964
    :sswitch_48
    const-string v0, "RIL_UNSOL_MELOCK_NOTIFICATION"

    goto/16 :goto_0

    .line 967
    :sswitch_49
    const-string v0, "RIL_UNSOL_SCRI_RESULT"

    goto/16 :goto_0

    .line 968
    :sswitch_4a
    const-string v0, "RIL_UNSOL_STK_EVDL_CALL"

    goto/16 :goto_0

    .line 969
    :sswitch_4b
    const-string v0, "RIL_UNSOL_STK_CALL_CTRL"

    goto/16 :goto_0

    .line 972
    :sswitch_4c
    const-string v0, "RIL_UNSOL_ECONF_SRVCC_INDICATION"

    goto/16 :goto_0

    .line 974
    :sswitch_4d
    const-string v0, "RIL_UNSOL_ECONF_RESULT_INDICATION"

    goto/16 :goto_0

    .line 976
    :sswitch_4e
    const-string v0, "RIL_UNSOL_CALL_INFO_INDICATION"

    goto/16 :goto_0

    .line 979
    :sswitch_4f
    const-string v0, "RIL_UNSOL_VOLTE_EPS_NETWORK_FEATURE_INFO"

    goto/16 :goto_0

    .line 980
    :sswitch_50
    const-string v0, "RIL_UNSOL_SRVCC_HANDOVER_INFO_INDICATION"

    goto/16 :goto_0

    .line 982
    :sswitch_51
    const-string v0, "RIL_UNSOL_RAC_UPDATE"

    goto/16 :goto_0

    .line 983
    :sswitch_52
    const-string v0, "RIL_UNSOL_REMOVE_RESTRICT_EUTRAN"

    goto/16 :goto_0

    .line 986
    :sswitch_53
    const-string v0, "RIL_UNSOL_MD_STATE_CHANGE"

    goto/16 :goto_0

    .line 988
    :sswitch_54
    const-string v0, "UNSOL_STK_CC_ALPHA_NOTIFY"

    goto/16 :goto_0

    .line 990
    :sswitch_55
    const-string v0, "RIL_UNSOL_IMS_ENABLE_START"

    goto/16 :goto_0

    .line 991
    :sswitch_56
    const-string v0, "RIL_UNSOL_IMS_DISABLE_START"

    goto/16 :goto_0

    .line 881
    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_0
        0x3e9 -> :sswitch_1
        0x3ea -> :sswitch_2
        0x3eb -> :sswitch_3
        0x3ec -> :sswitch_4
        0x3ed -> :sswitch_5
        0x3ee -> :sswitch_6
        0x3ef -> :sswitch_7
        0x3f0 -> :sswitch_8
        0x3f1 -> :sswitch_9
        0x3f2 -> :sswitch_a
        0x3f3 -> :sswitch_b
        0x3f4 -> :sswitch_c
        0x3f5 -> :sswitch_d
        0x3f6 -> :sswitch_e
        0x3f7 -> :sswitch_f
        0x3f8 -> :sswitch_10
        0x3f9 -> :sswitch_11
        0x3fa -> :sswitch_12
        0x3fb -> :sswitch_13
        0x3fc -> :sswitch_14
        0x3fd -> :sswitch_15
        0x3fe -> :sswitch_16
        0x3ff -> :sswitch_17
        0x400 -> :sswitch_18
        0x401 -> :sswitch_19
        0x402 -> :sswitch_1a
        0x403 -> :sswitch_1b
        0x404 -> :sswitch_1c
        0x405 -> :sswitch_1d
        0x406 -> :sswitch_1e
        0x407 -> :sswitch_1f
        0x408 -> :sswitch_20
        0x409 -> :sswitch_21
        0x40a -> :sswitch_22
        0x40b -> :sswitch_23
        0x40c -> :sswitch_24
        0x40d -> :sswitch_25
        0x40e -> :sswitch_26
        0x40f -> :sswitch_27
        0x410 -> :sswitch_29
        0x414 -> :sswitch_54
        0xbb8 -> :sswitch_3e
        0xbb9 -> :sswitch_3f
        0xbba -> :sswitch_39
        0xbbf -> :sswitch_49
        0xbc0 -> :sswitch_31
        0xbc3 -> :sswitch_34
        0xbc4 -> :sswitch_32
        0xbc5 -> :sswitch_33
        0xbc7 -> :sswitch_3c
        0xbc8 -> :sswitch_3b
        0xbca -> :sswitch_3a
        0xbcb -> :sswitch_3d
        0xbcc -> :sswitch_35
        0xbcd -> :sswitch_36
        0xbcf -> :sswitch_44
        0xbd0 -> :sswitch_45
        0xbd1 -> :sswitch_4a
        0xbd4 -> :sswitch_43
        0xbd5 -> :sswitch_30
        0xbd6 -> :sswitch_4c
        0xbd7 -> :sswitch_40
        0xbd8 -> :sswitch_41
        0xbd9 -> :sswitch_42
        0xbda -> :sswitch_46
        0xbdb -> :sswitch_47
        0xbdd -> :sswitch_51
        0xbde -> :sswitch_4d
        0xbdf -> :sswitch_48
        0xbe0 -> :sswitch_2a
        0xbe1 -> :sswitch_2b
        0xbe2 -> :sswitch_2c
        0xbe3 -> :sswitch_2d
        0xbe4 -> :sswitch_2e
        0xbe5 -> :sswitch_37
        0xbe6 -> :sswitch_38
        0xbe7 -> :sswitch_4b
        0xbe9 -> :sswitch_4e
        0xbea -> :sswitch_4f
        0xbeb -> :sswitch_50
        0xbec -> :sswitch_2f
        0xbed -> :sswitch_53
        0xbee -> :sswitch_52
        0xbf1 -> :sswitch_28
        0xbf8 -> :sswitch_55
        0xbf9 -> :sswitch_56
    .end sparse-switch
.end method

.method private responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 819
    const/4 v0, 0x0

    return-object v0
.end method

.method static retToString(ILjava/lang/Object;)Ljava/lang/String;
    .locals 9
    .param p0, "req"    # I
    .param p1, "ret"    # Ljava/lang/Object;

    .prologue
    .line 1004
    if-nez p1, :cond_0

    const-string v4, ""

    .line 1038
    .end local p1    # "ret":Ljava/lang/Object;
    :goto_0
    return-object v4

    .line 1009
    .restart local p1    # "ret":Ljava/lang/Object;
    :cond_0
    instance-of v7, p1, [I

    if-eqz v7, :cond_2

    .line 1010
    check-cast p1, [I

    .end local p1    # "ret":Ljava/lang/Object;
    move-object v2, p1

    check-cast v2, [I

    .line 1011
    .local v2, "intArray":[I
    array-length v3, v2

    .line 1012
    .local v3, "length":I
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "{"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1013
    .local v5, "sb":Ljava/lang/StringBuilder;
    if-lez v3, :cond_1

    .line 1014
    const/4 v0, 0x0

    .line 1015
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    aget v7, v2, v0

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1016
    :goto_1
    if-ge v1, v3, :cond_1

    .line 1017
    const-string v7, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aget v8, v2, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_1

    .line 1020
    .end local v1    # "i":I
    :cond_1
    const-string v7, "}"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1021
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1022
    .local v4, "s":Ljava/lang/String;
    goto :goto_0

    .end local v2    # "intArray":[I
    .end local v3    # "length":I
    .end local v4    # "s":Ljava/lang/String;
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    .restart local p1    # "ret":Ljava/lang/Object;
    :cond_2
    instance-of v7, p1, [Ljava/lang/String;

    if-eqz v7, :cond_4

    .line 1023
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "ret":Ljava/lang/Object;
    move-object v6, p1

    check-cast v6, [Ljava/lang/String;

    .line 1024
    .local v6, "strings":[Ljava/lang/String;
    array-length v3, v6

    .line 1025
    .restart local v3    # "length":I
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "{"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1026
    .restart local v5    # "sb":Ljava/lang/StringBuilder;
    if-lez v3, :cond_3

    .line 1027
    const/4 v0, 0x0

    .line 1028
    .restart local v0    # "i":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aget-object v7, v6, v0

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1029
    :goto_2
    if-ge v1, v3, :cond_3

    .line 1030
    const-string v7, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aget-object v8, v6, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_2

    .line 1033
    .end local v1    # "i":I
    :cond_3
    const-string v7, "}"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1034
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1035
    .restart local v4    # "s":Ljava/lang/String;
    goto :goto_0

    .line 1036
    .end local v3    # "length":I
    .end local v4    # "s":Ljava/lang/String;
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    .end local v6    # "strings":[Ljava/lang/String;
    .restart local p1    # "ret":Ljava/lang/Object;
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "s":Ljava/lang/String;
    goto :goto_0
.end method

.method private riljLog(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1042
    const-string v0, "IMS: IMS_RILA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    return-void
.end method

.method private riljLogv(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1047
    const-string v0, "IMS: IMS_RILA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    return-void
.end method

.method private unsljLog(I)V
    .locals 2
    .param p1, "response"    # I

    .prologue
    .line 1052
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1053
    return-void
.end method

.method private unsljLogRet(ILjava/lang/Object;)V
    .locals 2
    .param p1, "response"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .prologue
    .line 1056
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1057
    return-void
.end method

.method private unsljLogvRet(ILjava/lang/Object;)V
    .locals 2
    .param p1, "response"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .prologue
    .line 1060
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->riljLogv(Ljava/lang/String;)V

    .line 1061
    return-void
.end method


# virtual methods
.method public accept()V
    .locals 2

    .prologue
    .line 391
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDefaultCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDefaultCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->acceptCall(Landroid/os/Message;)V

    .line 396
    :goto_0
    return-void

    .line 394
    :cond_0
    const-string v0, "IMS: IMS_RILA"

    const-string v1, "IMS CommandsInterface of RILJ is null !!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getCallInfo(Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;)Lcom/mediatek/internal/telephony/ims/ImsCallInfo;
    .locals 6
    .param p1, "state"    # Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    .prologue
    .line 605
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mCallConnections:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 606
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/internal/telephony/ims/ImsCallInfo;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;

    .line 607
    .local v0, "callInfo":Lcom/mediatek/internal/telephony/ims/ImsCallInfo;
    const-string v3, "IMS: IMS_RILA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCallInfo- callID:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;->mCallId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "call num:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;->mCallNum:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "call State:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;->mState:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;->mState:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    if-ne v3, p1, :cond_0

    .line 613
    .end local v0    # "callInfo":Lcom/mediatek/internal/telephony/ims/ImsCallInfo;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/internal/telephony/ims/ImsCallInfo;>;"
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCallInfo(Ljava/lang/String;)Lcom/mediatek/internal/telephony/ims/ImsCallInfo;
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 595
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mCallConnections:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;

    return-object v0
.end method

.method public getLastCallFailCause(Landroid/os/Message;)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 570
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDefaultCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDefaultCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getLastCallFailCause(Landroid/os/Message;)V

    .line 575
    :goto_0
    return-void

    .line 573
    :cond_0
    const-string v0, "IMS: IMS_RILA"

    const-string v1, "IMS CommandsInterface of RILJ is null !!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public hangupAllCall(Landroid/os/Message;)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 582
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDefaultCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v0, :cond_0

    .line 583
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDefaultCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->hangupAll(Landroid/os/Message;)V

    .line 587
    :goto_0
    return-void

    .line 585
    :cond_0
    const-string v0, "IMS: IMS_RILA"

    const-string v1, "IMS CommandsInterface of RILJ is null !!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public hold(ILandroid/os/Message;)V
    .locals 2
    .param p1, "callId"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 421
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDefaultCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDefaultCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->holdCall(ILandroid/os/Message;)V

    .line 426
    :goto_0
    return-void

    .line 424
    :cond_0
    const-string v0, "IMS: IMS_RILA"

    const-string v1, "IMS CommandsInterface of RILJ is null !!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public inviteParticipants(ILjava/lang/String;Landroid/os/Message;)V
    .locals 6
    .param p1, "confCallId"    # I
    .param p2, "participant"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 517
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDefaultCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v4, :cond_2

    .line 518
    const/4 v3, -0x1

    .line 520
    .local v3, "participantCallId":I
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mCallConnections:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 521
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/internal/telephony/ims/ImsCallInfo;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;

    .line 522
    .local v0, "callInfo":Lcom/mediatek/internal/telephony/ims/ImsCallInfo;
    iget-object v4, v0, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;->mCallNum:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 523
    iget-object v4, v0, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;->mCallId:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 528
    .end local v0    # "callInfo":Lcom/mediatek/internal/telephony/ims/ImsCallInfo;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/internal/telephony/ims/ImsCallInfo;>;"
    :cond_1
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDefaultCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, p1, p2, v3, p3}, Lcom/android/internal/telephony/CommandsInterface;->addConferenceMember(ILjava/lang/String;ILandroid/os/Message;)V

    .line 533
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "participantCallId":I
    :goto_0
    return-void

    .line 531
    :cond_2
    const-string v4, "IMS: IMS_RILA"

    const-string v5, "IMS CommandsInterface of RILJ is null !!"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public merge(Landroid/os/Message;)V
    .locals 2
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 442
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDefaultCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDefaultCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->conference(Landroid/os/Message;)V

    .line 447
    :goto_0
    return-void

    .line 445
    :cond_0
    const-string v0, "IMS: IMS_RILA"

    const-string v1, "IMS CommandsInterface of RILJ is null !!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public notifySrvccDone()V
    .locals 1

    .prologue
    .line 1422
    const-string v0, "SRVCC_DONE"

    .line 1425
    .local v0, "atCmdString":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->executeCommandResponse(Ljava/lang/String;)Ljava/lang/String;

    .line 1426
    return-void
.end method

.method public registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1429
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDefaultCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v0, :cond_0

    .line 1430
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDefaultCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1434
    :goto_0
    return-void

    .line 1432
    :cond_0
    const-string v0, "IMS: IMS_RILA"

    const-string v1, "mDefaultCi is null when registerForNotAvailable"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1445
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDefaultCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v0, :cond_0

    .line 1446
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDefaultCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1450
    :goto_0
    return-void

    .line 1448
    :cond_0
    const-string v0, "IMS: IMS_RILA"

    const-string v1, "mDefaultCi is null when registerForOffOrNotAvailable"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public reject(I)V
    .locals 2
    .param p1, "callId"    # I

    .prologue
    .line 399
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDefaultCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDefaultCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->hangupConnection(ILandroid/os/Message;)V

    .line 404
    :goto_0
    return-void

    .line 402
    :cond_0
    const-string v0, "IMS: IMS_RILA"

    const-string v1, "IMS CommandsInterface of RILJ is null !!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public removeParticipants(ILjava/lang/String;Landroid/os/Message;)V
    .locals 6
    .param p1, "confCallId"    # I
    .param p2, "participant"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 545
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDefaultCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v4, :cond_2

    .line 546
    const/4 v3, -0x1

    .line 548
    .local v3, "participantCallId":I
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mCallConnections:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 549
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/internal/telephony/ims/ImsCallInfo;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;

    .line 550
    .local v0, "callInfo":Lcom/mediatek/internal/telephony/ims/ImsCallInfo;
    iget-object v4, v0, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;->mCallNum:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 551
    iget-object v4, v0, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;->mCallId:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 556
    .end local v0    # "callInfo":Lcom/mediatek/internal/telephony/ims/ImsCallInfo;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/internal/telephony/ims/ImsCallInfo;>;"
    :cond_1
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDefaultCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, p1, p2, v3, p3}, Lcom/android/internal/telephony/CommandsInterface;->removeConferenceMember(ILjava/lang/String;ILandroid/os/Message;)V

    .line 561
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "participantCallId":I
    :goto_0
    return-void

    .line 559
    :cond_2
    const-string v4, "IMS: IMS_RILA"

    const-string v5, "IMS CommandsInterface of RILJ is null !!"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public resume(ILandroid/os/Message;)V
    .locals 2
    .param p1, "callId"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 434
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDefaultCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDefaultCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->resumeCall(ILandroid/os/Message;)V

    .line 439
    :goto_0
    return-void

    .line 437
    :cond_0
    const-string v0, "IMS: IMS_RILA"

    const-string v1, "IMS CommandsInterface of RILJ is null !!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendDtmf(CLandroid/os/Message;)V
    .locals 2
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 450
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDefaultCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDefaultCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->sendDtmf(CLandroid/os/Message;)V

    .line 455
    :goto_0
    return-void

    .line 453
    :cond_0
    const-string v0, "IMS: IMS_RILA"

    const-string v1, "IMS CommandsInterface of RILJ is null !!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendWfcProfileInfo(I)V
    .locals 5
    .param p1, "wfcPreference"    # I

    .prologue
    const/4 v4, 0x0

    .line 633
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    .line 634
    .local v0, "s":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AT+EWFCP="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 635
    const/4 v1, 0x1

    const-string v2, ""

    aput-object v2, v0, v1

    .line 636
    const-string v1, "IMS: IMS_RILA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "At cmnd:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDefaultCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 638
    return-void
.end method

.method public setCallIndication(III)V
    .locals 2
    .param p1, "mode"    # I
    .param p2, "callId"    # I
    .param p3, "seqNum"    # I

    .prologue
    .line 484
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDefaultCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDefaultCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/android/internal/telephony/CommandsInterface;->setCallIndication(IIILandroid/os/Message;)V

    .line 489
    :goto_0
    return-void

    .line 487
    :cond_0
    const-string v0, "IMS: IMS_RILA"

    const-string v1, "IMS CommandsInterface of RILJ is null !!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setMute(Z)V
    .locals 2
    .param p1, "muted"    # Z

    .prologue
    .line 339
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDefaultCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDefaultCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->setMute(ZLandroid/os/Message;)V

    .line 344
    :goto_0
    return-void

    .line 342
    :cond_0
    const-string v0, "IMS: IMS_RILA"

    const-string v1, "IMS CommandsInterface of RILJ is null !!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public start(Ljava/lang/String;IZZLandroid/os/Message;)V
    .locals 7
    .param p1, "callee"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "isEmergency"    # Z
    .param p4, "isVideoCall"    # Z
    .param p5, "result"    # Landroid/os/Message;

    .prologue
    .line 358
    const-string v6, "DIALSOURCE_IMS"

    .line 360
    .local v6, "atCmdString":Ljava/lang/String;
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mMoCall:Lcom/mediatek/internal/telephony/ims/MoCallInfo;

    if-eqz v0, :cond_0

    const-string v0, "IMS: IMS_RILA"

    const-string v1, "IMS: mMoCall is not null when dial !!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :cond_0
    new-instance v0, Lcom/mediatek/internal/telephony/ims/MoCallInfo;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/internal/telephony/ims/MoCallInfo;-><init>(Ljava/lang/String;IZZLandroid/os/Message;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mMoCall:Lcom/mediatek/internal/telephony/ims/MoCallInfo;

    .line 364
    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->executeCommandResponse(Ljava/lang/String;)Ljava/lang/String;

    .line 365
    return-void
.end method

.method public startConference([Ljava/lang/String;IZLandroid/os/Message;)V
    .locals 3
    .param p1, "participants"    # [Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "isVideoCall"    # Z
    .param p4, "result"    # Landroid/os/Message;

    .prologue
    .line 378
    const-string v0, "DIALSOURCE_IMS"

    .line 380
    .local v0, "atCmdString":Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mConferenceCallDialInfo:Lcom/mediatek/internal/telephony/ims/ConferenceCallDialInfo;

    if-eqz v1, :cond_0

    .line 381
    const-string v1, "IMS: IMS_RILA"

    const-string v2, "IMS: ConferenceCallDialInfo is not null when dial !!"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :cond_0
    new-instance v1, Lcom/mediatek/internal/telephony/ims/ConferenceCallDialInfo;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/mediatek/internal/telephony/ims/ConferenceCallDialInfo;-><init>([Ljava/lang/String;IZLandroid/os/Message;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mConferenceCallDialInfo:Lcom/mediatek/internal/telephony/ims/ConferenceCallDialInfo;

    .line 387
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->executeCommandResponse(Ljava/lang/String;)Ljava/lang/String;

    .line 388
    return-void
.end method

.method public startDtmf(CLandroid/os/Message;)V
    .locals 2
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 464
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDefaultCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDefaultCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->startDtmf(CLandroid/os/Message;)V

    .line 469
    :goto_0
    return-void

    .line 467
    :cond_0
    const-string v0, "IMS: IMS_RILA"

    const-string v1, "IMS CommandsInterface of RILJ is null !!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stopDtmf(Landroid/os/Message;)V
    .locals 2
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 477
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDefaultCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDefaultCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->stopDtmf(Landroid/os/Message;)V

    .line 482
    :goto_0
    return-void

    .line 480
    :cond_0
    const-string v0, "IMS: IMS_RILA"

    const-string v1, "IMS CommandsInterface of RILJ is null !!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public swap(Landroid/os/Message;)V
    .locals 2
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 621
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDefaultCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v0, :cond_0

    .line 622
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDefaultCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->switchWaitingOrHoldingAndActive(Landroid/os/Message;)V

    .line 626
    :goto_0
    return-void

    .line 624
    :cond_0
    const-string v0, "IMS: IMS_RILA"

    const-string v1, "IMS CommandsInterface of RILJ is null !!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public terminate(I)V
    .locals 2
    .param p1, "callId"    # I

    .prologue
    .line 407
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDefaultCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDefaultCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->hangupConnection(ILandroid/os/Message;)V

    .line 413
    :goto_0
    return-void

    .line 410
    :cond_0
    const-string v0, "IMS: IMS_RILA"

    const-string v1, "IMS CommandsInterface of RILJ is null !!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public turnOffIms(Landroid/os/Message;)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 500
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDefaultCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDefaultCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/CommandsInterface;->setIMSEnabled(ZLandroid/os/Message;)V

    .line 505
    :goto_0
    return-void

    .line 503
    :cond_0
    const-string v0, "IMS: IMS_RILA"

    const-string v1, "IMS CommandsInterface of RILJ is null !!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public turnOnIms(Landroid/os/Message;)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 492
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDefaultCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDefaultCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/CommandsInterface;->setIMSEnabled(ZLandroid/os/Message;)V

    .line 497
    :goto_0
    return-void

    .line 495
    :cond_0
    const-string v0, "IMS: IMS_RILA"

    const-string v1, "IMS CommandsInterface of RILJ is null !!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unregisterForNotAvailable(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1437
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDefaultCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v0, :cond_0

    .line 1438
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDefaultCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForNotAvailable(Landroid/os/Handler;)V

    .line 1442
    :goto_0
    return-void

    .line 1440
    :cond_0
    const-string v0, "IMS: IMS_RILA"

    const-string v1, "mDefaultCi is null when unregisterForNotAvailable"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unregisterForOffOrNotAvailable(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1453
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDefaultCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v0, :cond_0

    .line 1454
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDefaultCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 1458
    :goto_0
    return-void

    .line 1456
    :cond_0
    const-string v0, "IMS: IMS_RILA"

    const-string v1, "mDefaultCi is null when unregisterForOffOrNotAvailable"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateImsRilAdapterCi(Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 3
    .param p1, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 1461
    const-string v0, "IMS: IMS_RILA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateImsRilAdapterCi : ci = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1462
    if-eqz p1, :cond_0

    .line 1463
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDefaultCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 1465
    :cond_0
    return-void
.end method
