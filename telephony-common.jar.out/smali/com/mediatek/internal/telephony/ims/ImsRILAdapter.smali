.class public Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;
.super Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;
.source "ImsRILAdapter.java"

# interfaces
.implements Lcom/mediatek/internal/telephony/ims/ImsCommandsInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$ImsRILReceiver;,
        Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$ImsRILSender;,
        Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$dtmfQueueHandler;
    }
.end annotation


# static fields
.field private static final DEFAULT_WAKE_LOCK_TIMEOUT:I = 0xea60

.field private static final EVENT_AT_CMD_DONE:I = 0x64

.field static final EVENT_SEND:I = 0x1

.field static final EVENT_WAKE_LOCK_TIMEOUT:I = 0x2

.field static final IMS_RILA_LOGD:Z = true

.field static final IMS_RILA_LOG_TAG:Ljava/lang/String; = "IMS_RILA"

.field private static final IMS_VIDEO_CALL:I = 0x15

.field private static final IMS_VIDEO_CONF:I = 0x17

.field private static final IMS_VIDEO_CONF_PARTS:I = 0x19

.field private static final IMS_VOICE_CALL:I = 0x14

.field private static final IMS_VOICE_CONF:I = 0x16

.field private static final IMS_VOICE_CONF_PARTS:I = 0x18

.field private static final INVALID_CALL_MODE:I = 0xff

.field private static final MAX_BYTE_COUNT:I = 0x100

.field static final MAX_CONNECTIONS:I = 0x7

.field static final PROPERTY_WAKE_LOCK_TIMEOUT:Ljava/lang/String; = "ro.ril.wake_lock_timeout"

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

.field private mDtmfReqQueue:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$dtmfQueueHandler;

.field private mHandler:Landroid/os/Handler;

.field private mMoCall:Lcom/mediatek/internal/telephony/ims/MoCallInfo;

.field mReceiver:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$ImsRILReceiver;

.field mReceiverThread:Ljava/lang/Thread;

.field mRequestList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/mediatek/internal/telephony/ims/RILRequest;",
            ">;"
        }
    .end annotation
.end field

.field mSender:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$ImsRILSender;

.field mSenderThread:Landroid/os/HandlerThread;

.field mSocket:Landroid/net/LocalSocket;

.field mWakeLock:Landroid/os/PowerManager$WakeLock;

.field mWakeLockCount:I

.field final mWakeLockTimeout:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 446
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;-><init>(Landroid/content/Context;)V

    .line 312
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mRequestList:Landroid/util/SparseArray;

    .line 346
    iput-object v3, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mMoCall:Lcom/mediatek/internal/telephony/ims/MoCallInfo;

    .line 347
    iput-object v3, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mConferenceCallDialInfo:Lcom/mediatek/internal/telephony/ims/ConferenceCallDialInfo;

    .line 352
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mCallConnections:Ljava/util/HashMap;

    .line 354
    new-instance v2, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$1;

    invoke-direct {v2, p0}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$1;-><init>(Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;)V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mHandler:Landroid/os/Handler;

    .line 441
    new-instance v2, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$dtmfQueueHandler;

    invoke-direct {v2, p0}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$dtmfQueueHandler;-><init>(Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;)V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$dtmfQueueHandler;

    .line 447
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mContext:Landroid/content/Context;

    .line 448
    const-string v2, "IMS_RILA"

    const-string v3, "IMS:ImsRILAdapter constructor"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    const-string v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 451
    .local v1, "pm":Landroid/os/PowerManager;
    const/4 v2, 0x1

    const-string v3, "IMS_RILA"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 452
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 453
    const-string v2, "ro.ril.wake_lock_timeout"

    const v3, 0xea60

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mWakeLockTimeout:I

    .line 455
    iput v4, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mWakeLockCount:I

    .line 458
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "ImsRILSender"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mSenderThread:Landroid/os/HandlerThread;

    .line 459
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mSenderThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 460
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mSenderThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 461
    .local v0, "looper":Landroid/os/Looper;
    new-instance v2, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$ImsRILSender;

    invoke-direct {v2, p0, v0}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$ImsRILSender;-><init>(Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mSender:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$ImsRILSender;

    .line 464
    new-instance v2, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$ImsRILReceiver;

    invoke-direct {v2, p0}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$ImsRILReceiver;-><init>(Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;)V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mReceiver:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$ImsRILReceiver;

    .line 465
    new-instance v2, Ljava/lang/Thread;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mReceiver:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$ImsRILReceiver;

    const-string v4, "ImsRILReceiver"

    invoke-direct {v2, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mReceiverThread:Ljava/lang/Thread;

    .line 466
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mReceiverThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 468
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .prologue
    .line 296
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->handleAtCmdResponseAndDial(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 296
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    .prologue
    .line 296
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->decrementWakeLock()V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;I)Lcom/mediatek/internal/telephony/ims/RILRequest;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 296
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->findAndRemoveRequestFromList(I)Lcom/mediatek/internal/telephony/ims/RILRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    .prologue
    .line 296
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->clearWakeLock()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Ljava/io/InputStream;[B)I
    .locals 1
    .param p0, "x0"    # Ljava/io/InputStream;
    .param p1, "x1"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 296
    invoke-static {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->readRilMessage(Ljava/io/InputStream;[B)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;Landroid/os/Parcel;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;
    .param p1, "x1"    # Landroid/os/Parcel;

    .prologue
    .line 296
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->processResponse(Landroid/os/Parcel;)V

    return-void
.end method

.method private acquireWakeLock()V
    .locals 6

    .prologue
    .line 1172
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 1173
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1174
    iget v1, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mWakeLockCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mWakeLockCount:I

    .line 1176
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mSender:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$ImsRILSender;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$ImsRILSender;->removeMessages(I)V

    .line 1177
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mSender:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$ImsRILSender;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$ImsRILSender;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1178
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mSender:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$ImsRILSender;

    iget v3, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mWakeLockTimeout:I

    int-to-long v4, v3

    invoke-virtual {v1, v0, v4, v5}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$ImsRILSender;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1179
    monitor-exit v2

    .line 1180
    return-void

    .line 1179
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private checkMoMSSubPermission(Ljava/lang/String;)Z
    .locals 7
    .param p1, "subPermission"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 2411
    :try_start_0
    const-string v5, "mobile"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2412
    .local v0, "binder":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/mediatek/common/mom/IMobileManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/mom/IMobileManagerService;

    move-result-object v2

    .line 2413
    .local v2, "mMobileManager":Lcom/mediatek/common/mom/IMobileManagerService;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-interface {v2, p1, v5}, Lcom/mediatek/common/mom/IMobileManagerService;->checkPermission(Ljava/lang/String;I)I

    move-result v3

    .line 2414
    .local v3, "result":I
    if-eqz v3, :cond_0

    .line 2415
    const-string v5, "[Error]Subpermission is not granted!!"

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2423
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v2    # "mMobileManager":Lcom/mediatek/common/mom/IMobileManagerService;
    .end local v3    # "result":I
    :goto_0
    return v4

    .line 2418
    :catch_0
    move-exception v1

    .line 2419
    .local v1, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[Error]Failed to chcek permission: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    goto :goto_0

    .line 2423
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "binder":Landroid/os/IBinder;
    .restart local v2    # "mMobileManager":Lcom/mediatek/common/mom/IMobileManagerService;
    .restart local v3    # "result":I
    :cond_0
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private clearWakeLock()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1196
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 1197
    :try_start_0
    iget v2, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mWakeLockCount:I

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-nez v2, :cond_0

    monitor-exit v1

    .line 1202
    :goto_0
    return v0

    .line 1198
    :cond_0
    const-string v0, "IMS_RILA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NOTE: mWakeLockCount is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mWakeLockCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "at time of clearing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mWakeLockCount:I

    .line 1200
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1201
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mSender:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$ImsRILSender;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$ImsRILSender;->removeMessages(I)V

    .line 1202
    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_0

    .line 1203
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private decrementWakeLock()V
    .locals 3

    .prologue
    .line 1183
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 1184
    :try_start_0
    iget v0, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mWakeLockCount:I

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    .line 1185
    iget v0, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mWakeLockCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mWakeLockCount:I

    .line 1191
    :goto_0
    monitor-exit v1

    .line 1192
    return-void

    .line 1187
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mWakeLockCount:I

    .line 1188
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1189
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mSender:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$ImsRILSender;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$ImsRILSender;->removeMessages(I)V

    goto :goto_0

    .line 1191
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private declared-synchronized executeCommandResponse(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "atCmdLine"    # Ljava/lang/String;

    .prologue
    .line 2345
    monitor-enter p0

    :try_start_0
    const-string v0, ""

    .line 2346
    .local v0, "atCmdResult":Ljava/lang/String;
    const/4 v3, 0x2

    new-array v1, v3, [Ljava/lang/String;

    .line 2347
    .local v1, "cmd":[Ljava/lang/String;
    const/4 v3, 0x0

    aput-object p1, v1, v3

    .line 2348
    const/4 v3, 0x1

    const-string v4, ""

    aput-object v4, v1, v3

    .line 2350
    const-string v3, "IMS_RILA"

    const-string v4, "IMS: invokeOemRilRequestRaw() "

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2353
    :try_start_1
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2358
    :goto_0
    monitor-exit p0

    return-object v0

    .line 2355
    :catch_0
    move-exception v2

    .line 2356
    .local v2, "ex":Ljava/lang/NullPointerException;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2345
    .end local v0    # "atCmdResult":Ljava/lang/String;
    .end local v1    # "cmd":[Ljava/lang/String;
    .end local v2    # "ex":Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private findAndRemoveRequestFromList(I)Lcom/mediatek/internal/telephony/ims/RILRequest;
    .locals 4
    .param p1, "serial"    # I

    .prologue
    .line 1447
    const/4 v1, 0x0

    .line 1448
    .local v1, "rr":Lcom/mediatek/internal/telephony/ims/RILRequest;
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v3

    .line 1449
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/mediatek/internal/telephony/ims/RILRequest;

    move-object v1, v0

    .line 1450
    if-eqz v1, :cond_0

    .line 1451
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1453
    :cond_0
    monitor-exit v3

    .line 1455
    return-object v1

    .line 1453
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private getRadioStateFromInt(I)Lcom/mediatek/internal/telephony/ims/ImsCommandsInterface$RadioState;
    .locals 4
    .param p1, "stateInt"    # I

    .prologue
    .line 2667
    sparse-switch p1, :sswitch_data_0

    .line 2673
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized IMS_RIL_RadioState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2668
    :sswitch_0
    sget-object v0, Lcom/mediatek/internal/telephony/ims/ImsCommandsInterface$RadioState;->RADIO_OFF:Lcom/mediatek/internal/telephony/ims/ImsCommandsInterface$RadioState;

    .line 2676
    .local v0, "state":Lcom/mediatek/internal/telephony/ims/ImsCommandsInterface$RadioState;
    :goto_0
    return-object v0

    .line 2669
    .end local v0    # "state":Lcom/mediatek/internal/telephony/ims/ImsCommandsInterface$RadioState;
    :sswitch_1
    sget-object v0, Lcom/mediatek/internal/telephony/ims/ImsCommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/mediatek/internal/telephony/ims/ImsCommandsInterface$RadioState;

    .restart local v0    # "state":Lcom/mediatek/internal/telephony/ims/ImsCommandsInterface$RadioState;
    goto :goto_0

    .line 2670
    .end local v0    # "state":Lcom/mediatek/internal/telephony/ims/ImsCommandsInterface$RadioState;
    :sswitch_2
    sget-object v0, Lcom/mediatek/internal/telephony/ims/ImsCommandsInterface$RadioState;->RADIO_ON:Lcom/mediatek/internal/telephony/ims/ImsCommandsInterface$RadioState;

    .restart local v0    # "state":Lcom/mediatek/internal/telephony/ims/ImsCommandsInterface$RadioState;
    goto :goto_0

    .line 2667
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0xa -> :sswitch_2
    .end sparse-switch
.end method

.method private handleAtCmdResponseAndDial(Landroid/os/AsyncResult;)V
    .locals 6
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v5, 0x0

    .line 2363
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mMoCall:Lcom/mediatek/internal/telephony/ims/MoCallInfo;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mConferenceCallDialInfo:Lcom/mediatek/internal/telephony/ims/ConferenceCallDialInfo;

    if-nez v1, :cond_0

    .line 2364
    const-string v1, "IMS_RILA"

    const-string v2, "IMS: mMoCall is null when calling"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2396
    :goto_0
    return-void

    .line 2369
    :cond_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mConferenceCallDialInfo:Lcom/mediatek/internal/telephony/ims/ConferenceCallDialInfo;

    if-eqz v1, :cond_1

    .line 2370
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mConferenceCallDialInfo:Lcom/mediatek/internal/telephony/ims/ConferenceCallDialInfo;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/ims/ConferenceCallDialInfo;->mParticipants:[Ljava/lang/String;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mConferenceCallDialInfo:Lcom/mediatek/internal/telephony/ims/ConferenceCallDialInfo;

    iget v2, v2, Lcom/mediatek/internal/telephony/ims/ConferenceCallDialInfo;->mClirMode:I

    iget-object v3, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mConferenceCallDialInfo:Lcom/mediatek/internal/telephony/ims/ConferenceCallDialInfo;

    iget-boolean v3, v3, Lcom/mediatek/internal/telephony/ims/ConferenceCallDialInfo;->mIsVideoCall:Z

    iget-object v4, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mConferenceCallDialInfo:Lcom/mediatek/internal/telephony/ims/ConferenceCallDialInfo;

    iget-object v4, v4, Lcom/mediatek/internal/telephony/ims/ConferenceCallDialInfo;->mResult:Landroid/os/Message;

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->conferenceDial([Ljava/lang/String;IZLandroid/os/Message;)V

    .line 2394
    :goto_1
    iput-object v5, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mMoCall:Lcom/mediatek/internal/telephony/ims/MoCallInfo;

    .line 2395
    iput-object v5, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mConferenceCallDialInfo:Lcom/mediatek/internal/telephony/ims/ConferenceCallDialInfo;

    goto :goto_0

    .line 2375
    :cond_1
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mMoCall:Lcom/mediatek/internal/telephony/ims/MoCallInfo;

    iget-boolean v1, v1, Lcom/mediatek/internal/telephony/ims/MoCallInfo;->mIsVideoCall:Z

    if-eqz v1, :cond_2

    .line 2376
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mMoCall:Lcom/mediatek/internal/telephony/ims/MoCallInfo;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/ims/MoCallInfo;->mCallee:Ljava/lang/String;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mMoCall:Lcom/mediatek/internal/telephony/ims/MoCallInfo;

    iget v2, v2, Lcom/mediatek/internal/telephony/ims/MoCallInfo;->mClirMode:I

    iget-object v3, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mMoCall:Lcom/mediatek/internal/telephony/ims/MoCallInfo;

    iget-object v3, v3, Lcom/mediatek/internal/telephony/ims/MoCallInfo;->mResult:Landroid/os/Message;

    invoke-virtual {p0, v1, v2, v5, v3}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->vtDial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V

    goto :goto_1

    .line 2378
    :cond_2
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mMoCall:Lcom/mediatek/internal/telephony/ims/MoCallInfo;

    iget-boolean v1, v1, Lcom/mediatek/internal/telephony/ims/MoCallInfo;->mIsVideoCall:Z

    if-eqz v1, :cond_3

    .line 2379
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mMoCall:Lcom/mediatek/internal/telephony/ims/MoCallInfo;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/ims/MoCallInfo;->mCallee:Ljava/lang/String;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mMoCall:Lcom/mediatek/internal/telephony/ims/MoCallInfo;

    iget v2, v2, Lcom/mediatek/internal/telephony/ims/MoCallInfo;->mClirMode:I

    iget-object v3, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mMoCall:Lcom/mediatek/internal/telephony/ims/MoCallInfo;

    iget-object v3, v3, Lcom/mediatek/internal/telephony/ims/MoCallInfo;->mResult:Landroid/os/Message;

    invoke-virtual {p0, v1, v2, v5, v3}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->vtDial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V

    goto :goto_1

    .line 2381
    :cond_3
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mMoCall:Lcom/mediatek/internal/telephony/ims/MoCallInfo;

    iget-boolean v1, v1, Lcom/mediatek/internal/telephony/ims/MoCallInfo;->mIsEmergency:Z

    if-eqz v1, :cond_4

    .line 2382
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mMoCall:Lcom/mediatek/internal/telephony/ims/MoCallInfo;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/ims/MoCallInfo;->mCallee:Ljava/lang/String;

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->getServiceCategoryFromEcc(Ljava/lang/String;)I

    move-result v0

    .line 2383
    .local v0, "serviceCategory":I
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->setEccServiceCategory(I)V

    .line 2384
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mMoCall:Lcom/mediatek/internal/telephony/ims/MoCallInfo;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/ims/MoCallInfo;->mCallee:Ljava/lang/String;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mMoCall:Lcom/mediatek/internal/telephony/ims/MoCallInfo;

    iget v2, v2, Lcom/mediatek/internal/telephony/ims/MoCallInfo;->mClirMode:I

    iget-object v3, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mMoCall:Lcom/mediatek/internal/telephony/ims/MoCallInfo;

    iget-object v3, v3, Lcom/mediatek/internal/telephony/ims/MoCallInfo;->mResult:Landroid/os/Message;

    invoke-virtual {p0, v1, v2, v5, v3}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->emergencyDial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V

    goto :goto_1

    .line 2387
    .end local v0    # "serviceCategory":I
    :cond_4
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mMoCall:Lcom/mediatek/internal/telephony/ims/MoCallInfo;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/ims/MoCallInfo;->mCallee:Ljava/lang/String;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mMoCall:Lcom/mediatek/internal/telephony/ims/MoCallInfo;

    iget v2, v2, Lcom/mediatek/internal/telephony/ims/MoCallInfo;->mClirMode:I

    iget-object v3, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mMoCall:Lcom/mediatek/internal/telephony/ims/MoCallInfo;

    iget-object v3, v3, Lcom/mediatek/internal/telephony/ims/MoCallInfo;->mResult:Landroid/os/Message;

    invoke-virtual {p0, v1, v2, v3}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->dial(Ljava/lang/String;ILandroid/os/Message;)V

    goto :goto_1
.end method

.method private handleChldRelatedRequest(Lcom/mediatek/internal/telephony/ims/RILRequest;)V
    .locals 9
    .param p1, "rr"    # Lcom/mediatek/internal/telephony/ims/RILRequest;

    .prologue
    const/4 v8, 0x1

    .line 2434
    iget-object v6, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$dtmfQueueHandler;

    monitor-enter v6

    .line 2435
    :try_start_0
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$dtmfQueueHandler;

    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$dtmfQueueHandler;->size()I

    move-result v2

    .line 2437
    .local v2, "queueSize":I
    if-lez v2, :cond_4

    .line 2438
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$dtmfQueueHandler;

    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$dtmfQueueHandler;->get()Lcom/mediatek/internal/telephony/ims/RILRequest;

    move-result-object v3

    .line 2439
    .local v3, "rr2":Lcom/mediatek/internal/telephony/ims/RILRequest;
    iget v5, v3, Lcom/mediatek/internal/telephony/ims/RILRequest;->mRequest:I

    const/16 v7, 0x31

    if-ne v5, v7, :cond_3

    .line 2442
    const-string v5, "DTMF queue isn\'t 0, send stop dtmf and pending switch"

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2444
    if-le v2, v8, :cond_0

    .line 2445
    const/4 v1, 0x2

    .line 2450
    .local v1, "j":I
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "queue size  "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$dtmfQueueHandler;

    invoke-virtual {v7}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$dtmfQueueHandler;->size()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2452
    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_1
    if-lt v0, v1, :cond_1

    .line 2453
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$dtmfQueueHandler;

    invoke-virtual {v5, v0}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$dtmfQueueHandler;->remove(I)V

    .line 2452
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 2448
    .end local v0    # "i":I
    .end local v1    # "j":I
    :cond_0
    const/4 v1, 0x1

    .restart local v1    # "j":I
    goto :goto_0

    .line 2456
    .restart local v0    # "i":I
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "queue size  after "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$dtmfQueueHandler;

    invoke-virtual {v7}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$dtmfQueueHandler;->size()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2458
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$dtmfQueueHandler;

    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$dtmfQueueHandler;->size()I

    move-result v5

    if-ne v5, v8, :cond_2

    .line 2460
    const/16 v5, 0x32

    const/4 v7, 0x0

    invoke-static {v5, v7}, Lcom/mediatek/internal/telephony/ims/RILRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/internal/telephony/ims/RILRequest;

    move-result-object v4

    .line 2461
    .local v4, "rr3":Lcom/mediatek/internal/telephony/ims/RILRequest;
    const-string v5, "add dummy stop dtmf request"

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2462
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$dtmfQueueHandler;

    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$dtmfQueueHandler;->stop()V

    .line 2463
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$dtmfQueueHandler;

    invoke-virtual {v5, v4}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$dtmfQueueHandler;->add(Lcom/mediatek/internal/telephony/ims/RILRequest;)V

    .line 2476
    .end local v4    # "rr3":Lcom/mediatek/internal/telephony/ims/RILRequest;
    :cond_2
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$dtmfQueueHandler;

    invoke-virtual {v5, p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$dtmfQueueHandler;->setPendingRequest(Lcom/mediatek/internal/telephony/ims/RILRequest;)V

    .line 2482
    .end local v0    # "i":I
    .end local v1    # "j":I
    .end local v3    # "rr2":Lcom/mediatek/internal/telephony/ims/RILRequest;
    :goto_2
    monitor-exit v6

    .line 2483
    return-void

    .line 2469
    .restart local v3    # "rr2":Lcom/mediatek/internal/telephony/ims/RILRequest;
    :cond_3
    const-string v5, "DTMF queue isn\'t 0, first request is STOP, penging switch"

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2471
    const/4 v1, 0x1

    .line 2472
    .restart local v1    # "j":I
    add-int/lit8 v0, v2, -0x1

    .restart local v0    # "i":I
    :goto_3
    if-lt v0, v1, :cond_2

    .line 2473
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$dtmfQueueHandler;

    invoke-virtual {v5, v0}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$dtmfQueueHandler;->remove(I)V

    .line 2472
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 2478
    .end local v0    # "i":I
    .end local v1    # "j":I
    .end local v3    # "rr2":Lcom/mediatek/internal/telephony/ims/RILRequest;
    :cond_4
    const-string v5, "DTMF queue is 0, send switch Immediately"

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2479
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$dtmfQueueHandler;

    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$dtmfQueueHandler;->setSendChldRequest()V

    .line 2480
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->send(Lcom/mediatek/internal/telephony/ims/RILRequest;)V

    goto :goto_2

    .line 2482
    .end local v2    # "queueSize":I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method private processResponse(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 1224
    const-string v2, "IMS_RILA"

    const-string v3, " IMS processResponse()"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1227
    .local v1, "type":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1228
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->processUnsolicited(Landroid/os/Parcel;)V

    .line 1237
    :cond_0
    :goto_0
    return-void

    .line 1229
    :cond_1
    if-nez v1, :cond_0

    .line 1230
    const-string v2, "IMS_RILA"

    const-string v3, "IMS: receive the RESPONSE_SOLICITED !!"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->processSolicited(Landroid/os/Parcel;)Lcom/mediatek/internal/telephony/ims/RILRequest;

    move-result-object v0

    .line 1232
    .local v0, "rr":Lcom/mediatek/internal/telephony/ims/RILRequest;
    if-eqz v0, :cond_0

    .line 1233
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ims/RILRequest;->release()V

    .line 1234
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->decrementWakeLock()V

    goto :goto_0
.end method

.method private processSolicited(Landroid/os/Parcel;)Lcom/mediatek/internal/telephony/ims/RILRequest;
    .locals 11
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v7, 0x0

    .line 1242
    const/4 v1, 0x0

    .line 1244
    .local v1, "found":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1245
    .local v5, "serial":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1249
    .local v0, "error":I
    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->findAndRemoveRequestFromList(I)Lcom/mediatek/internal/telephony/ims/RILRequest;

    move-result-object v3

    .line 1251
    .local v3, "rr":Lcom/mediatek/internal/telephony/ims/RILRequest;
    if-nez v3, :cond_1

    .line 1252
    const-string v8, "IMS_RILA"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unexpected solicited response! sn: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " error: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v7

    .line 1443
    .end local v3    # "rr":Lcom/mediatek/internal/telephony/ims/RILRequest;
    :cond_0
    :goto_0
    return-object v3

    .line 1259
    .restart local v3    # "rr":Lcom/mediatek/internal/telephony/ims/RILRequest;
    :cond_1
    iget v8, v3, Lcom/mediatek/internal/telephony/ims/RILRequest;->mRequest:I

    const/16 v9, 0x31

    if-eq v8, v9, :cond_2

    iget v8, v3, Lcom/mediatek/internal/telephony/ims/RILRequest;->mRequest:I

    const/16 v9, 0x32

    if-ne v8, v9, :cond_4

    .line 1261
    :cond_2
    iget-object v8, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$dtmfQueueHandler;

    monitor-enter v8

    .line 1262
    :try_start_0
    iget-object v9, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$dtmfQueueHandler;

    invoke-virtual {v9, v3}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$dtmfQueueHandler;->remove(Lcom/mediatek/internal/telephony/ims/RILRequest;)V

    .line 1263
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "remove first item in dtmf queue done, size = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$dtmfQueueHandler;

    invoke-virtual {v10}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$dtmfQueueHandler;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1264
    iget-object v9, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$dtmfQueueHandler;

    invoke-virtual {v9}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$dtmfQueueHandler;->size()I

    move-result v9

    if-lez v9, :cond_8

    .line 1265
    iget-object v9, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$dtmfQueueHandler;

    invoke-virtual {v9}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$dtmfQueueHandler;->get()Lcom/mediatek/internal/telephony/ims/RILRequest;

    move-result-object v4

    .line 1266
    .local v4, "rr2":Lcom/mediatek/internal/telephony/ims/RILRequest;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "> "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v4, Lcom/mediatek/internal/telephony/ims/RILRequest;->mRequest:I

    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1267
    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->send(Lcom/mediatek/internal/telephony/ims/RILRequest;)V

    .line 1276
    .end local v4    # "rr2":Lcom/mediatek/internal/telephony/ims/RILRequest;
    :cond_3
    :goto_1
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1279
    :cond_4
    const/4 v2, 0x0

    .line 1282
    .local v2, "ret":Ljava/lang/Object;
    iget v8, v3, Lcom/mediatek/internal/telephony/ims/RILRequest;->mRequest:I

    const/16 v9, 0xf

    if-eq v8, v9, :cond_5

    iget v8, v3, Lcom/mediatek/internal/telephony/ims/RILRequest;->mRequest:I

    const/16 v9, 0x10

    if-eq v8, v9, :cond_5

    iget v8, v3, Lcom/mediatek/internal/telephony/ims/RILRequest;->mRequest:I

    const/16 v9, 0x34

    if-eq v8, v9, :cond_5

    iget v8, v3, Lcom/mediatek/internal/telephony/ims/RILRequest;->mRequest:I

    const/16 v9, 0x48

    if-ne v8, v9, :cond_6

    .line 1286
    :cond_5
    const-string v8, "clear mIsSendChldRequest"

    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1287
    iget-object v8, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$dtmfQueueHandler;

    invoke-virtual {v8}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$dtmfQueueHandler;->resetSendChldRequest()V

    .line 1291
    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v8

    if-lez v8, :cond_9

    .line 1293
    :cond_7
    :try_start_1
    iget v8, v3, Lcom/mediatek/internal/telephony/ims/RILRequest;->mRequest:I

    sparse-switch v8, :sswitch_data_0

    .line 1406
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unrecognized solicited response: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v3, Lcom/mediatek/internal/telephony/ims/RILRequest;->mRequest:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 1408
    :catch_0
    move-exception v6

    .line 1411
    .local v6, "tr":Ljava/lang/Throwable;
    const-string v8, "IMS_RILA"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "< "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v3, Lcom/mediatek/internal/telephony/ims/RILRequest;->mRequest:I

    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " exception, possible invalid RIL response"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v6}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1415
    iget-object v8, v3, Lcom/mediatek/internal/telephony/ims/RILRequest;->mResult:Landroid/os/Message;

    if-eqz v8, :cond_0

    .line 1416
    iget-object v8, v3, Lcom/mediatek/internal/telephony/ims/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v8, v7, v6}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1417
    iget-object v7, v3, Lcom/mediatek/internal/telephony/ims/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1269
    .end local v2    # "ret":Ljava/lang/Object;
    .end local v6    # "tr":Ljava/lang/Throwable;
    :cond_8
    :try_start_2
    iget-object v9, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$dtmfQueueHandler;

    invoke-virtual {v9}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$dtmfQueueHandler;->getPendingRequest()Lcom/mediatek/internal/telephony/ims/RILRequest;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 1270
    const-string v9, "send pending switch request"

    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1271
    iget-object v9, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$dtmfQueueHandler;

    invoke-virtual {v9}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$dtmfQueueHandler;->getPendingRequest()Lcom/mediatek/internal/telephony/ims/RILRequest;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->send(Lcom/mediatek/internal/telephony/ims/RILRequest;)V

    .line 1272
    iget-object v9, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$dtmfQueueHandler;

    invoke-virtual {v9}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$dtmfQueueHandler;->setSendChldRequest()V

    .line 1273
    iget-object v9, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$dtmfQueueHandler;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$dtmfQueueHandler;->setPendingRequest(Lcom/mediatek/internal/telephony/ims/RILRequest;)V

    goto/16 :goto_1

    .line 1276
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    .line 1295
    .restart local v2    # "ret":Ljava/lang/Object;
    :sswitch_0
    :try_start_3
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v2

    .line 1423
    .end local v2    # "ret":Ljava/lang/Object;
    :cond_9
    :goto_2
    iget v8, v3, Lcom/mediatek/internal/telephony/ims/RILRequest;->mRequest:I

    const/16 v9, 0x81

    if-ne v8, v9, :cond_a

    .line 1426
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Response to RIL_REQUEST_SHUTDOWN received. Error is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Setting Radio State to Unavailable regardless of error."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1428
    sget-object v8, Lcom/mediatek/internal/telephony/ims/ImsCommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/mediatek/internal/telephony/ims/ImsCommandsInterface$RadioState;

    invoke-virtual {p0, v8}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->setRadioState(Lcom/mediatek/internal/telephony/ims/ImsCommandsInterface$RadioState;)V

    .line 1431
    :cond_a
    if-eqz v0, :cond_b

    .line 1432
    invoke-virtual {v3, v0, v2}, Lcom/mediatek/internal/telephony/ims/RILRequest;->onError(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1296
    .restart local v2    # "ret":Ljava/lang/Object;
    :sswitch_1
    :try_start_4
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_2

    .line 1297
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_2

    .line 1298
    :sswitch_3
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_2

    .line 1299
    :sswitch_4
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_2

    .line 1300
    :sswitch_5
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_2

    .line 1301
    :sswitch_6
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_2

    .line 1302
    :sswitch_7
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_2

    .line 1303
    :sswitch_8
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_2

    .line 1304
    :sswitch_9
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_2

    .line 1305
    :sswitch_a
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_2

    .line 1306
    :sswitch_b
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_2

    .line 1307
    :sswitch_c
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_2

    .line 1308
    :sswitch_d
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_2

    .line 1309
    :sswitch_e
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_2

    .line 1310
    :sswitch_f
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_2

    .line 1311
    :sswitch_10
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_2

    .line 1312
    :sswitch_11
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_2

    .line 1313
    :sswitch_12
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_2

    .line 1314
    :sswitch_13
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_2

    .line 1315
    :sswitch_14
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_2

    .line 1316
    :sswitch_15
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_2

    .line 1317
    :sswitch_16
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_2

    .line 1318
    :sswitch_17
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_2

    .line 1319
    :sswitch_18
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_2

    .line 1320
    :sswitch_19
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_2

    .line 1321
    :sswitch_1a
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_2

    .line 1322
    :sswitch_1b
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_2

    .line 1323
    :sswitch_1c
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_2

    .line 1324
    :sswitch_1d
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_2

    .line 1325
    :sswitch_1e
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_2

    .line 1326
    :sswitch_1f
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_2

    .line 1327
    :sswitch_20
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_2

    .line 1328
    :sswitch_21
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_2

    .line 1329
    :sswitch_22
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_2

    .line 1330
    :sswitch_23
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_2

    .line 1331
    :sswitch_24
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_2

    .line 1332
    :sswitch_25
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_2

    .line 1333
    :sswitch_26
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_2

    .line 1334
    :sswitch_27
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_2

    .line 1335
    :sswitch_28
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseRaw(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_2

    .line 1336
    :sswitch_29
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_2

    .line 1337
    :sswitch_2a
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_2

    .line 1338
    :sswitch_2b
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_2

    .line 1339
    :sswitch_2c
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_2

    .line 1340
    :sswitch_2d
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_2

    .line 1341
    :sswitch_2e
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_2

    .line 1342
    :sswitch_2f
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_2

    .line 1343
    :sswitch_30
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_2

    .line 1344
    :sswitch_31
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_2

    .line 1345
    :sswitch_32
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_2

    .line 1346
    :sswitch_33
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_2

    .line 1347
    :sswitch_34
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_2

    .line 1348
    :sswitch_35
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_2

    .line 1349
    :sswitch_36
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_2

    .line 1350
    :sswitch_37
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_2

    .line 1351
    :sswitch_38
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_2

    .line 1353
    :sswitch_39
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_2

    .line 1354
    :sswitch_3a
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_2

    .line 1355
    :sswitch_3b
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_2

    .line 1356
    :sswitch_3c
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_2

    .line 1357
    :sswitch_3d
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_2

    .line 1358
    :sswitch_3e
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_2

    .line 1361
    :sswitch_3f
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_2

    .line 1364
    :sswitch_40
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_2

    .line 1365
    :sswitch_41
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_2

    .line 1366
    :sswitch_42
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_2

    .line 1369
    :sswitch_43
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1370
    :sswitch_44
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1371
    :sswitch_45
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_2

    .line 1372
    :sswitch_46
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_2

    .line 1373
    :sswitch_47
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_2

    .line 1377
    :sswitch_48
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_2

    .line 1378
    :sswitch_49
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_2

    .line 1379
    :sswitch_4a
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_2

    .line 1383
    :sswitch_4b
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_2

    .line 1384
    :sswitch_4c
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_2

    .line 1386
    :sswitch_4d
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_2

    .line 1387
    :sswitch_4e
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_2

    .line 1390
    :sswitch_4f
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_2

    .line 1393
    :sswitch_50
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_2

    .line 1395
    :sswitch_51
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_2

    .line 1397
    :sswitch_52
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_2

    .line 1401
    :sswitch_53
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_2

    .line 1402
    :sswitch_54
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v2

    goto/16 :goto_2

    .line 1435
    .end local v2    # "ret":Ljava/lang/Object;
    :cond_b
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "< "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v3, Lcom/mediatek/internal/telephony/ims/RILRequest;->mRequest:I

    invoke-static {v9}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v3, Lcom/mediatek/internal/telephony/ims/RILRequest;->mRequest:I

    invoke-static {v9, v2}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1438
    iget-object v8, v3, Lcom/mediatek/internal/telephony/ims/RILRequest;->mResult:Landroid/os/Message;

    if-eqz v8, :cond_0

    .line 1439
    iget-object v8, v3, Lcom/mediatek/internal/telephony/ims/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v8, v2, v7}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1440
    iget-object v7, v3, Lcom/mediatek/internal/telephony/ims/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1293
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xb -> :sswitch_1
        0xc -> :sswitch_2
        0xd -> :sswitch_3
        0xf -> :sswitch_4
        0x10 -> :sswitch_5
        0x11 -> :sswitch_6
        0x12 -> :sswitch_7
        0x14 -> :sswitch_8
        0x15 -> :sswitch_9
        0x16 -> :sswitch_a
        0x17 -> :sswitch_b
        0x18 -> :sswitch_c
        0x1d -> :sswitch_d
        0x1e -> :sswitch_e
        0x1f -> :sswitch_f
        0x20 -> :sswitch_10
        0x22 -> :sswitch_11
        0x23 -> :sswitch_12
        0x24 -> :sswitch_13
        0x25 -> :sswitch_14
        0x26 -> :sswitch_15
        0x27 -> :sswitch_16
        0x28 -> :sswitch_17
        0x2a -> :sswitch_18
        0x2b -> :sswitch_19
        0x2c -> :sswitch_1a
        0x2d -> :sswitch_1b
        0x2e -> :sswitch_1c
        0x2f -> :sswitch_1d
        0x31 -> :sswitch_1f
        0x32 -> :sswitch_20
        0x33 -> :sswitch_21
        0x34 -> :sswitch_22
        0x35 -> :sswitch_23
        0x36 -> :sswitch_24
        0x37 -> :sswitch_25
        0x38 -> :sswitch_26
        0x3a -> :sswitch_27
        0x3b -> :sswitch_28
        0x3c -> :sswitch_29
        0x3d -> :sswitch_2a
        0x3e -> :sswitch_2b
        0x3f -> :sswitch_2c
        0x40 -> :sswitch_2d
        0x42 -> :sswitch_2e
        0x48 -> :sswitch_2f
        0x4c -> :sswitch_30
        0x50 -> :sswitch_31
        0x51 -> :sswitch_32
        0x63 -> :sswitch_33
        0x6c -> :sswitch_34
        0x6e -> :sswitch_35
        0x6f -> :sswitch_36
        0x70 -> :sswitch_38
        0x80 -> :sswitch_37
        0x7d0 -> :sswitch_48
        0x7d1 -> :sswitch_49
        0x7d2 -> :sswitch_4a
        0x7e4 -> :sswitch_4d
        0x807 -> :sswitch_4c
        0x80d -> :sswitch_4e
        0x821 -> :sswitch_1e
        0x824 -> :sswitch_39
        0x825 -> :sswitch_3a
        0x826 -> :sswitch_3b
        0x827 -> :sswitch_3c
        0x828 -> :sswitch_3d
        0x829 -> :sswitch_3e
        0x82e -> :sswitch_4b
        0x83a -> :sswitch_43
        0x83b -> :sswitch_44
        0x83c -> :sswitch_45
        0x83d -> :sswitch_46
        0x83e -> :sswitch_3f
        0x841 -> :sswitch_52
        0x842 -> :sswitch_40
        0x843 -> :sswitch_41
        0x844 -> :sswitch_42
        0x845 -> :sswitch_4f
        0x84a -> :sswitch_50
        0x84b -> :sswitch_53
        0x84c -> :sswitch_54
        0x84d -> :sswitch_51
        0x84f -> :sswitch_47
    .end sparse-switch
.end method

.method private processUnsolicited(Landroid/os/Parcel;)V
    .locals 27
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 2037
    const-string v22, "IMS_RILA"

    const-string v23, " IMS processUnsolicited !!"

    invoke-static/range {v22 .. v23}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2040
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 2041
    .local v16, "response":I
    sparse-switch v16, :sswitch_data_0

    .line 2067
    :try_start_0
    new-instance v22, Ljava/lang/RuntimeException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Unrecognized unsol response: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v22
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2069
    :catch_0
    move-exception v21

    .line 2070
    .local v21, "tr":Ljava/lang/Throwable;
    const-string v22, "IMS_RILA"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Exception processing unsol response: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "Exception:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2342
    .end local v21    # "tr":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void

    .line 2042
    :sswitch_0
    :try_start_1
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v17

    .line 2075
    .local v17, "ret":Ljava/lang/Object;
    :goto_1
    sparse-switch v16, :sswitch_data_1

    goto :goto_0

    .line 2078
    :sswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->getRadioStateFromInt(I)Lcom/mediatek/internal/telephony/ims/ImsCommandsInterface$RadioState;

    move-result-object v13

    .line 2079
    .local v13, "newState":Lcom/mediatek/internal/telephony/ims/ImsCommandsInterface$RadioState;
    invoke-virtual {v13}, Lcom/mediatek/internal/telephony/ims/ImsCommandsInterface$RadioState;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->unsljLogMore(ILjava/lang/String;)V

    .line 2081
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->switchToRadioState(Lcom/mediatek/internal/telephony/ims/ImsCommandsInterface$RadioState;)V

    goto :goto_0

    .line 2043
    .end local v13    # "newState":Lcom/mediatek/internal/telephony/ims/ImsCommandsInterface$RadioState;
    .end local v17    # "ret":Ljava/lang/Object;
    :sswitch_2
    :try_start_2
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    .restart local v17    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 2044
    .end local v17    # "ret":Ljava/lang/Object;
    :sswitch_3
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    .restart local v17    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 2045
    .end local v17    # "ret":Ljava/lang/Object;
    :sswitch_4
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    .restart local v17    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 2046
    .end local v17    # "ret":Ljava/lang/Object;
    :sswitch_5
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    .restart local v17    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 2047
    .end local v17    # "ret":Ljava/lang/Object;
    :sswitch_6
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    .restart local v17    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 2048
    .end local v17    # "ret":Ljava/lang/Object;
    :sswitch_7
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    .restart local v17    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 2049
    .end local v17    # "ret":Ljava/lang/Object;
    :sswitch_8
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    .restart local v17    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 2050
    .end local v17    # "ret":Ljava/lang/Object;
    :sswitch_9
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    .restart local v17    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 2051
    .end local v17    # "ret":Ljava/lang/Object;
    :sswitch_a
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    .restart local v17    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 2052
    .end local v17    # "ret":Ljava/lang/Object;
    :sswitch_b
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    .restart local v17    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 2053
    .end local v17    # "ret":Ljava/lang/Object;
    :sswitch_c
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    .restart local v17    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 2054
    .end local v17    # "ret":Ljava/lang/Object;
    :sswitch_d
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    .restart local v17    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 2055
    .end local v17    # "ret":Ljava/lang/Object;
    :sswitch_e
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseCallRing(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    .restart local v17    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 2056
    .end local v17    # "ret":Ljava/lang/Object;
    :sswitch_f
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseSuppServiceNotification(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    .restart local v17    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 2057
    .end local v17    # "ret":Ljava/lang/Object;
    :sswitch_10
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    .restart local v17    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 2058
    .end local v17    # "ret":Ljava/lang/Object;
    :sswitch_11
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    .restart local v17    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 2060
    .end local v17    # "ret":Ljava/lang/Object;
    :sswitch_12
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    .restart local v17    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 2061
    .end local v17    # "ret":Ljava/lang/Object;
    :sswitch_13
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    .restart local v17    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 2062
    .end local v17    # "ret":Ljava/lang/Object;
    :sswitch_14
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    .restart local v17    # "ret":Ljava/lang/Object;
    goto/16 :goto_1

    .line 2064
    .end local v17    # "ret":Ljava/lang/Object;
    :sswitch_15
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    .restart local v17    # "ret":Ljava/lang/Object;
    goto/16 :goto_1

    .line 2065
    .end local v17    # "ret":Ljava/lang/Object;
    :sswitch_16
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v17

    .restart local v17    # "ret":Ljava/lang/Object;
    goto/16 :goto_1

    .line 2085
    :sswitch_17
    if-eqz v17, :cond_0

    .line 2088
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->unsljLog(I)V

    .line 2089
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mCallInfoRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v22, v0

    if-eqz v22, :cond_1

    .line 2090
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mCallInfoRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v22, v0

    new-instance v23, Landroid/os/AsyncResult;

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v17

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v22 .. v23}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2093
    :cond_1
    check-cast v17, [Ljava/lang/String;

    .end local v17    # "ret":Ljava/lang/Object;
    move-object/from16 v5, v17

    check-cast v5, [Ljava/lang/String;

    .line 2095
    .local v5, "callInfo":[Ljava/lang/String;
    const/16 v22, 0x0

    aget-object v22, v5, v22

    if-eqz v22, :cond_2

    const/16 v22, 0x1

    aget-object v22, v5, v22

    if-nez v22, :cond_3

    .line 2096
    :cond_2
    const-string v22, "RIL_UNSOL_CALL_INFO_INDICATION something wrong"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2100
    :cond_3
    const/16 v22, 0x1

    aget-object v22, v5, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 2101
    .local v12, "msgType":I
    const/16 v22, 0x0

    aget-object v22, v5, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 2102
    .local v4, "callId":I
    const/16 v6, 0xff

    .line 2103
    .local v6, "callMode":I
    const/4 v11, 0x0

    .line 2104
    .local v11, "isConferenceCall":Z
    const/16 v22, 0x5

    aget-object v22, v5, v22

    if-eqz v22, :cond_4

    const/16 v22, 0x5

    aget-object v22, v5, v22

    const-string v23, ""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_4

    .line 2105
    const/16 v22, 0x5

    aget-object v22, v5, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 2108
    :cond_4
    const/16 v22, 0x16

    move/from16 v0, v22

    if-eq v6, v0, :cond_5

    const/16 v22, 0x17

    move/from16 v0, v22

    if-eq v6, v0, :cond_5

    const/16 v22, 0x18

    move/from16 v0, v22

    if-eq v6, v0, :cond_5

    const/16 v22, 0x19

    move/from16 v0, v22

    if-ne v6, v0, :cond_6

    .line 2112
    :cond_5
    const/4 v11, 0x1

    .line 2116
    :cond_6
    sparse-switch v12, :sswitch_data_2

    goto/16 :goto_0

    .line 2119
    :sswitch_18
    sget-object v20, Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;->INCOMING:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    .line 2120
    .local v20, "state":Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mCallConnections:Ljava/util/HashMap;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v23, v5, v23

    new-instance v24, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;

    const/16 v25, 0x0

    aget-object v25, v5, v25

    const/16 v26, 0x6

    aget-object v26, v5, v26

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v11, v3}, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/mediatek/internal/telephony/ims/ImsCallInfo$State;)V

    invoke-virtual/range {v22 .. v24}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 2127
    .end local v20    # "state":Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;
    :sswitch_19
    sget-object v20, Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;->ALERTING:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    .line 2128
    .restart local v20    # "state":Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mCallConnections:Ljava/util/HashMap;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v23, v5, v23

    new-instance v24, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;

    const/16 v25, 0x0

    aget-object v25, v5, v25

    const/16 v26, 0x6

    aget-object v26, v5, v26

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v11, v3}, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/mediatek/internal/telephony/ims/ImsCallInfo$State;)V

    invoke-virtual/range {v22 .. v24}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 2135
    .end local v20    # "state":Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;
    :sswitch_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mCallConnections:Ljava/util/HashMap;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v23, v5, v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;

    .line 2136
    .local v10, "imsCallInfo":Lcom/mediatek/internal/telephony/ims/ImsCallInfo;
    iput-boolean v11, v10, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;->mIsConference:Z

    .line 2137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mCallConnections:Ljava/util/HashMap;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v23, v5, v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 2142
    .end local v10    # "imsCallInfo":Lcom/mediatek/internal/telephony/ims/ImsCallInfo;
    :sswitch_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mCallConnections:Ljava/util/HashMap;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v23, v5, v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;

    .line 2143
    .restart local v10    # "imsCallInfo":Lcom/mediatek/internal/telephony/ims/ImsCallInfo;
    sget-object v22, Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;->HOLDING:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    move-object/from16 v0, v22

    iput-object v0, v10, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;->mState:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    .line 2144
    iput-boolean v11, v10, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;->mIsConference:Z

    .line 2145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mCallConnections:Ljava/util/HashMap;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v23, v5, v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 2150
    .end local v10    # "imsCallInfo":Lcom/mediatek/internal/telephony/ims/ImsCallInfo;
    :sswitch_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mCallConnections:Ljava/util/HashMap;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v23, v5, v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;

    .line 2151
    .restart local v10    # "imsCallInfo":Lcom/mediatek/internal/telephony/ims/ImsCallInfo;
    sget-object v22, Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;->ACTIVE:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    move-object/from16 v0, v22

    iput-object v0, v10, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;->mState:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    .line 2152
    iput-boolean v11, v10, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;->mIsConference:Z

    .line 2153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mCallConnections:Ljava/util/HashMap;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v23, v5, v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 2157
    .end local v10    # "imsCallInfo":Lcom/mediatek/internal/telephony/ims/ImsCallInfo;
    :sswitch_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mCallConnections:Ljava/util/HashMap;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v23, v5, v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 2164
    .end local v4    # "callId":I
    .end local v5    # "callInfo":[Ljava/lang/String;
    .end local v6    # "callMode":I
    .end local v11    # "isConferenceCall":Z
    .end local v12    # "msgType":I
    .restart local v17    # "ret":Ljava/lang/Object;
    :sswitch_1e
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->unsljLog(I)V

    .line 2165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mCallStateRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    .line 2166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mCallStateRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v22, v0

    new-instance v23, Landroid/os/AsyncResult;

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-direct/range {v23 .. v26}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v22 .. v23}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2171
    :sswitch_1f
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->unsljLog(I)V

    .line 2172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mImsRegistrationInfoRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    .line 2173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mImsRegistrationInfoRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v22, v0

    new-instance v23, Landroid/os/AsyncResult;

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v17

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v22 .. v23}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2177
    :sswitch_20
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->unsljLogvRet(ILjava/lang/Object;)V

    .line 2178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mIncomingCallIndicationRegistrant:Landroid/os/Registrant;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    .line 2179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mIncomingCallIndicationRegistrant:Landroid/os/Registrant;

    move-object/from16 v22, v0

    new-instance v23, Landroid/os/AsyncResult;

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v17

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v22 .. v23}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2183
    :sswitch_21
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->unsljLogvRet(ILjava/lang/Object;)V

    .line 2184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    .line 2185
    check-cast v17, [I

    .end local v17    # "ret":Ljava/lang/Object;
    check-cast v17, [I

    const/16 v22, 0x0

    aget v22, v17, v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_7

    const/4 v14, 0x1

    .line 2186
    .local v14, "playtone":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v22, v0

    new-instance v23, Landroid/os/AsyncResult;

    const/16 v24, 0x0

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    const/16 v26, 0x0

    invoke-direct/range {v23 .. v26}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v22 .. v23}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2185
    .end local v14    # "playtone":Z
    :cond_7
    const/4 v14, 0x0

    goto :goto_2

    .line 2191
    .restart local v17    # "ret":Ljava/lang/Object;
    :sswitch_22
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->unsljLogvRet(ILjava/lang/Object;)V

    move-object/from16 v22, v17

    .line 2193
    check-cast v22, [Ljava/lang/String;

    check-cast v22, [Ljava/lang/String;

    const/16 v23, 0x0

    aget-object v22, v22, v23

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .local v19, "simCipherStatus":I
    move-object/from16 v22, v17

    .line 2194
    check-cast v22, [Ljava/lang/String;

    check-cast v22, [Ljava/lang/String;

    const/16 v23, 0x1

    aget-object v22, v22, v23

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .local v18, "sessionStatus":I
    move-object/from16 v22, v17

    .line 2195
    check-cast v22, [Ljava/lang/String;

    check-cast v22, [Ljava/lang/String;

    const/16 v23, 0x2

    aget-object v22, v22, v23

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 2196
    .local v8, "csStatus":I
    check-cast v17, [Ljava/lang/String;

    .end local v17    # "ret":Ljava/lang/Object;
    check-cast v17, [Ljava/lang/String;

    const/16 v22, 0x3

    aget-object v22, v17, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 2198
    .local v15, "psStatus":I
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "RIL_UNSOL_CIPHER_INDICATION :"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2200
    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v7, v0, [I

    .line 2202
    .local v7, "cipherResult":[I
    const/16 v22, 0x0

    aput v19, v7, v22

    .line 2203
    const/16 v22, 0x1

    aput v8, v7, v22

    .line 2204
    const/16 v22, 0x2

    aput v15, v7, v22

    .line 2206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mCipherIndicationRegistrant:Landroid/os/RegistrantList;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    .line 2207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mCipherIndicationRegistrant:Landroid/os/RegistrantList;

    move-object/from16 v22, v0

    new-instance v23, Landroid/os/AsyncResult;

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v7, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v22 .. v23}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2212
    .end local v7    # "cipherResult":[I
    .end local v8    # "csStatus":I
    .end local v15    # "psStatus":I
    .end local v18    # "sessionStatus":I
    .end local v19    # "simCipherStatus":I
    .restart local v17    # "ret":Ljava/lang/Object;
    :sswitch_23
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->unsljLogvRet(ILjava/lang/Object;)V

    .line 2213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mEpsNetworkFeatureSupportRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    .line 2214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mEpsNetworkFeatureSupportRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v22, v0

    new-instance v23, Landroid/os/AsyncResult;

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v17

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v22 .. v23}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2221
    :sswitch_24
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->unsljLog(I)V

    .line 2222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mEconfSrvccRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    .line 2223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mEconfSrvccRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v22, v0

    new-instance v23, Landroid/os/AsyncResult;

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v17

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v22 .. v23}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2229
    :sswitch_25
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->unsljLog(I)V

    .line 2230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mEconfResultRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    .line 2231
    const-string v22, "Notify ECONF result"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    move-object/from16 v22, v17

    .line 2232
    check-cast v22, [Ljava/lang/String;

    move-object/from16 v9, v22

    check-cast v9, [Ljava/lang/String;

    .line 2233
    .local v9, "econfResult":[Ljava/lang/String;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "ECONF result = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v23, 0x3

    aget-object v23, v9, v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mEconfResultRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v22, v0

    new-instance v23, Landroid/os/AsyncResult;

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v17

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v22 .. v23}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2238
    .end local v9    # "econfResult":[Ljava/lang/String;
    :sswitch_26
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->unsljLog(I)V

    .line 2239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mEpsNetworkFeatureInfoRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    .line 2240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mEpsNetworkFeatureInfoRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v22, v0

    new-instance v23, Landroid/os/AsyncResult;

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v17

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v22 .. v23}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2245
    :sswitch_27
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->unsljLog(I)V

    .line 2246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mSrvccHandoverInfoIndicationRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    .line 2247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mSrvccHandoverInfoIndicationRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v22, v0

    new-instance v23, Landroid/os/AsyncResult;

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v17

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v22 .. v23}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2254
    :sswitch_28
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 2255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDedicateBearerActivatedRegistrant:Landroid/os/RegistrantList;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    .line 2256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDedicateBearerActivatedRegistrant:Landroid/os/RegistrantList;

    move-object/from16 v22, v0

    new-instance v23, Landroid/os/AsyncResult;

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v17

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v22 .. v23}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2260
    :sswitch_29
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 2261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDedicateBearerModifiedRegistrant:Landroid/os/RegistrantList;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    .line 2262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDedicateBearerModifiedRegistrant:Landroid/os/RegistrantList;

    move-object/from16 v22, v0

    new-instance v23, Landroid/os/AsyncResult;

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v17

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v22 .. v23}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2266
    :sswitch_2a
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 2267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDedicateBearerDeactivatedRegistrant:Landroid/os/RegistrantList;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    .line 2268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDedicateBearerDeactivatedRegistrant:Landroid/os/RegistrantList;

    move-object/from16 v22, v0

    new-instance v23, Landroid/os/AsyncResult;

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v17

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v22 .. v23}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2273
    :sswitch_2b
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->unsljLogvRet(ILjava/lang/Object;)V

    .line 2275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mSpeechCodecInfoRegistrant:Landroid/os/Registrant;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    .line 2276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mSpeechCodecInfoRegistrant:Landroid/os/Registrant;

    move-object/from16 v22, v0

    new-instance v23, Landroid/os/AsyncResult;

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v17

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v22 .. v23}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2281
    :sswitch_2c
    const-string v22, "IMS_RILA"

    const-string v23, "IMS: receive RIL_UNSOL_CALL_RING"

    invoke-static/range {v22 .. v23}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2282
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 2284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mRingRegistrant:Landroid/os/Registrant;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    .line 2285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mRingRegistrant:Landroid/os/Registrant;

    move-object/from16 v22, v0

    new-instance v23, Landroid/os/AsyncResult;

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v17

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v22 .. v23}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2290
    :sswitch_2d
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 2291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mSsnRegistrant:Landroid/os/Registrant;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    .line 2292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mSsnRegistrant:Landroid/os/Registrant;

    move-object/from16 v22, v0

    new-instance v23, Landroid/os/AsyncResult;

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v17

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v22 .. v23}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2297
    :sswitch_2e
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 2298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mSrvccStateRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    .line 2299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mSrvccStateRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v22, v0

    new-instance v23, Landroid/os/AsyncResult;

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v17

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v22 .. v23}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2304
    :sswitch_2f
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 2305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mCallProgressIndicatorRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    .line 2306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mCallProgressIndicatorRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v22, v0

    new-instance v23, Landroid/os/AsyncResult;

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v17

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v22 .. v23}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2311
    :sswitch_30
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->unsljLog(I)V

    .line 2312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mImsEnableDoneRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    .line 2313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mImsEnableDoneRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto/16 :goto_0

    .line 2317
    :sswitch_31
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->unsljLog(I)V

    .line 2318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mImsDisableDoneRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    .line 2319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mImsDisableDoneRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto/16 :goto_0

    .line 2324
    :sswitch_32
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->unsljLog(I)V

    .line 2326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mImsEnableStartRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    .line 2327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mImsEnableStartRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto/16 :goto_0

    .line 2332
    :sswitch_33
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->unsljLog(I)V

    .line 2334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mImsDisableStartRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    .line 2335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mImsDisableStartRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto/16 :goto_0

    .line 2041
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

    .line 2075
    :sswitch_data_1
    .sparse-switch
        0x3e8 -> :sswitch_1
        0x3e9 -> :sswitch_1e
        0x3f3 -> :sswitch_2d
        0x3fa -> :sswitch_2c
        0x405 -> :sswitch_21
        0x40f -> :sswitch_2e
        0xbd6 -> :sswitch_24
        0xbd7 -> :sswitch_30
        0xbd8 -> :sswitch_31
        0xbd9 -> :sswitch_1f
        0xbda -> :sswitch_28
        0xbdb -> :sswitch_29
        0xbdc -> :sswitch_2a
        0xbde -> :sswitch_25
        0xbe2 -> :sswitch_20
        0xbe3 -> :sswitch_22
        0xbe8 -> :sswitch_23
        0xbe9 -> :sswitch_17
        0xbea -> :sswitch_26
        0xbeb -> :sswitch_27
        0xbec -> :sswitch_2b
        0xbf1 -> :sswitch_2f
        0xbf8 -> :sswitch_32
        0xbf9 -> :sswitch_33
    .end sparse-switch

    .line 2116
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

    .line 896
    const/4 v2, 0x0

    .line 897
    .local v2, "offset":I
    const/4 v3, 0x4

    .line 899
    .local v3, "remaining":I
    :cond_0
    invoke-virtual {p0, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 901
    .local v0, "countRead":I
    if-gez v0, :cond_1

    .line 902
    const-string v5, "IMS_RILA"

    const-string v6, "Hit EOS reading message length"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 931
    :goto_0
    return v1

    .line 906
    :cond_1
    add-int/2addr v2, v0

    .line 907
    sub-int/2addr v3, v0

    .line 908
    if-gtz v3, :cond_0

    .line 910
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

    .line 916
    .local v1, "messageLength":I
    const/4 v2, 0x0

    .line 917
    move v3, v1

    .line 919
    :cond_2
    invoke-virtual {p0, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 921
    if-gez v0, :cond_3

    .line 922
    const-string v5, "IMS_RILA"

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

    .line 924
    goto :goto_0

    .line 927
    :cond_3
    add-int/2addr v2, v0

    .line 928
    sub-int/2addr v3, v0

    .line 929
    if-gtz v3, :cond_2

    goto :goto_0
.end method

.method static requestToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "request"    # I

    .prologue
    .line 1647
    sparse-switch p0, :sswitch_data_0

    .line 1967
    const-string v0, "<unknown request>"

    :goto_0
    return-object v0

    .line 1648
    :sswitch_0
    const-string v0, "GET_SIM_STATUS"

    goto :goto_0

    .line 1649
    :sswitch_1
    const-string v0, "ENTER_SIM_PIN"

    goto :goto_0

    .line 1650
    :sswitch_2
    const-string v0, "ENTER_SIM_PUK"

    goto :goto_0

    .line 1651
    :sswitch_3
    const-string v0, "ENTER_SIM_PIN2"

    goto :goto_0

    .line 1652
    :sswitch_4
    const-string v0, "ENTER_SIM_PUK2"

    goto :goto_0

    .line 1653
    :sswitch_5
    const-string v0, "CHANGE_SIM_PIN"

    goto :goto_0

    .line 1654
    :sswitch_6
    const-string v0, "CHANGE_SIM_PIN2"

    goto :goto_0

    .line 1655
    :sswitch_7
    const-string v0, "ENTER_NETWORK_DEPERSONALIZATION"

    goto :goto_0

    .line 1656
    :sswitch_8
    const-string v0, "GET_CURRENT_CALLS"

    goto :goto_0

    .line 1657
    :sswitch_9
    const-string v0, "DIAL"

    goto :goto_0

    .line 1658
    :sswitch_a
    const-string v0, "GET_IMSI"

    goto :goto_0

    .line 1659
    :sswitch_b
    const-string v0, "HANGUP"

    goto :goto_0

    .line 1660
    :sswitch_c
    const-string v0, "HANGUP_WAITING_OR_BACKGROUND"

    goto :goto_0

    .line 1661
    :sswitch_d
    const-string v0, "HANGUP_FOREGROUND_RESUME_BACKGROUND"

    goto :goto_0

    .line 1662
    :sswitch_e
    const-string v0, "REQUEST_SWITCH_WAITING_OR_HOLDING_AND_ACTIVE"

    goto :goto_0

    .line 1663
    :sswitch_f
    const-string v0, "CONFERENCE"

    goto :goto_0

    .line 1664
    :sswitch_10
    const-string v0, "UDUB"

    goto :goto_0

    .line 1665
    :sswitch_11
    const-string v0, "LAST_CALL_FAIL_CAUSE"

    goto :goto_0

    .line 1666
    :sswitch_12
    const-string v0, "SIGNAL_STRENGTH"

    goto :goto_0

    .line 1667
    :sswitch_13
    const-string v0, "VOICE_REGISTRATION_STATE"

    goto :goto_0

    .line 1668
    :sswitch_14
    const-string v0, "DATA_REGISTRATION_STATE"

    goto :goto_0

    .line 1669
    :sswitch_15
    const-string v0, "OPERATOR"

    goto :goto_0

    .line 1670
    :sswitch_16
    const-string v0, "RADIO_POWER"

    goto :goto_0

    .line 1671
    :sswitch_17
    const-string v0, "DTMF"

    goto :goto_0

    .line 1672
    :sswitch_18
    const-string v0, "SEND_SMS"

    goto :goto_0

    .line 1673
    :sswitch_19
    const-string v0, "SEND_SMS_EXPECT_MORE"

    goto :goto_0

    .line 1674
    :sswitch_1a
    const-string v0, "SETUP_DATA_CALL"

    goto :goto_0

    .line 1675
    :sswitch_1b
    const-string v0, "SIM_IO"

    goto :goto_0

    .line 1676
    :sswitch_1c
    const-string v0, "SEND_USSD"

    goto :goto_0

    .line 1677
    :sswitch_1d
    const-string v0, "CANCEL_USSD"

    goto :goto_0

    .line 1678
    :sswitch_1e
    const-string v0, "GET_CLIR"

    goto :goto_0

    .line 1679
    :sswitch_1f
    const-string v0, "SET_CLIR"

    goto :goto_0

    .line 1680
    :sswitch_20
    const-string v0, "QUERY_CALL_FORWARD_STATUS"

    goto :goto_0

    .line 1681
    :sswitch_21
    const-string v0, "SET_CALL_FORWARD"

    goto :goto_0

    .line 1682
    :sswitch_22
    const-string v0, "QUERY_CALL_WAITING"

    goto :goto_0

    .line 1683
    :sswitch_23
    const-string v0, "SET_CALL_WAITING"

    goto :goto_0

    .line 1684
    :sswitch_24
    const-string v0, "SMS_ACKNOWLEDGE"

    goto :goto_0

    .line 1685
    :sswitch_25
    const-string v0, "GET_IMEI"

    goto :goto_0

    .line 1686
    :sswitch_26
    const-string v0, "GET_IMEISV"

    goto :goto_0

    .line 1687
    :sswitch_27
    const-string v0, "ANSWER"

    goto :goto_0

    .line 1688
    :sswitch_28
    const-string v0, "DEACTIVATE_DATA_CALL"

    goto :goto_0

    .line 1689
    :sswitch_29
    const-string v0, "QUERY_FACILITY_LOCK"

    goto :goto_0

    .line 1690
    :sswitch_2a
    const-string v0, "SET_FACILITY_LOCK"

    goto/16 :goto_0

    .line 1691
    :sswitch_2b
    const-string v0, "CHANGE_BARRING_PASSWORD"

    goto/16 :goto_0

    .line 1692
    :sswitch_2c
    const-string v0, "QUERY_NETWORK_SELECTION_MODE"

    goto/16 :goto_0

    .line 1693
    :sswitch_2d
    const-string v0, "SET_NETWORK_SELECTION_AUTOMATIC"

    goto/16 :goto_0

    .line 1694
    :sswitch_2e
    const-string v0, "SET_NETWORK_SELECTION_MANUAL"

    goto/16 :goto_0

    .line 1695
    :sswitch_2f
    const-string v0, "QUERY_AVAILABLE_NETWORKS "

    goto/16 :goto_0

    .line 1696
    :sswitch_30
    const-string v0, "ABORT_QUERY_AVAILABLE_NETWORKS"

    goto/16 :goto_0

    .line 1697
    :sswitch_31
    const-string v0, "DTMF_START"

    goto/16 :goto_0

    .line 1698
    :sswitch_32
    const-string v0, "DTMF_STOP"

    goto/16 :goto_0

    .line 1699
    :sswitch_33
    const-string v0, "BASEBAND_VERSION"

    goto/16 :goto_0

    .line 1700
    :sswitch_34
    const-string v0, "SEPARATE_CONNECTION"

    goto/16 :goto_0

    .line 1701
    :sswitch_35
    const-string v0, "SET_MUTE"

    goto/16 :goto_0

    .line 1702
    :sswitch_36
    const-string v0, "GET_MUTE"

    goto/16 :goto_0

    .line 1703
    :sswitch_37
    const-string v0, "QUERY_CLIP"

    goto/16 :goto_0

    .line 1704
    :sswitch_38
    const-string v0, "LAST_DATA_CALL_FAIL_CAUSE"

    goto/16 :goto_0

    .line 1705
    :sswitch_39
    const-string v0, "DATA_CALL_LIST"

    goto/16 :goto_0

    .line 1706
    :sswitch_3a
    const-string v0, "RESET_RADIO"

    goto/16 :goto_0

    .line 1707
    :sswitch_3b
    const-string v0, "OEM_HOOK_RAW"

    goto/16 :goto_0

    .line 1708
    :sswitch_3c
    const-string v0, "OEM_HOOK_STRINGS"

    goto/16 :goto_0

    .line 1709
    :sswitch_3d
    const-string v0, "SCREEN_STATE"

    goto/16 :goto_0

    .line 1710
    :sswitch_3e
    const-string v0, "SET_SUPP_SVC_NOTIFICATION"

    goto/16 :goto_0

    .line 1711
    :sswitch_3f
    const-string v0, "WRITE_SMS_TO_SIM"

    goto/16 :goto_0

    .line 1712
    :sswitch_40
    const-string v0, "DELETE_SMS_ON_SIM"

    goto/16 :goto_0

    .line 1713
    :sswitch_41
    const-string v0, "SET_BAND_MODE"

    goto/16 :goto_0

    .line 1714
    :sswitch_42
    const-string v0, "QUERY_AVAILABLE_BAND_MODE"

    goto/16 :goto_0

    .line 1715
    :sswitch_43
    const-string v0, "REQUEST_STK_GET_PROFILE"

    goto/16 :goto_0

    .line 1716
    :sswitch_44
    const-string v0, "REQUEST_STK_SET_PROFILE"

    goto/16 :goto_0

    .line 1717
    :sswitch_45
    const-string v0, "REQUEST_STK_SEND_ENVELOPE_COMMAND"

    goto/16 :goto_0

    .line 1718
    :sswitch_46
    const-string v0, "REQUEST_STK_SEND_TERMINAL_RESPONSE"

    goto/16 :goto_0

    .line 1719
    :sswitch_47
    const-string v0, "REQUEST_STK_HANDLE_CALL_SETUP_REQUESTED_FROM_SIM"

    goto/16 :goto_0

    .line 1720
    :sswitch_48
    const-string v0, "REQUEST_EXPLICIT_CALL_TRANSFER"

    goto/16 :goto_0

    .line 1721
    :sswitch_49
    const-string v0, "REQUEST_SET_PREFERRED_NETWORK_TYPE"

    goto/16 :goto_0

    .line 1722
    :sswitch_4a
    const-string v0, "REQUEST_GET_PREFERRED_NETWORK_TYPE"

    goto/16 :goto_0

    .line 1723
    :sswitch_4b
    const-string v0, "REQUEST_GET_NEIGHBORING_CELL_IDS"

    goto/16 :goto_0

    .line 1724
    :sswitch_4c
    const-string v0, "REQUEST_SET_LOCATION_UPDATES"

    goto/16 :goto_0

    .line 1725
    :sswitch_4d
    const-string v0, "RIL_REQUEST_CDMA_SET_SUBSCRIPTION_SOURCE"

    goto/16 :goto_0

    .line 1726
    :sswitch_4e
    const-string v0, "RIL_REQUEST_CDMA_SET_ROAMING_PREFERENCE"

    goto/16 :goto_0

    .line 1727
    :sswitch_4f
    const-string v0, "RIL_REQUEST_CDMA_QUERY_ROAMING_PREFERENCE"

    goto/16 :goto_0

    .line 1728
    :sswitch_50
    const-string v0, "RIL_REQUEST_SET_TTY_MODE"

    goto/16 :goto_0

    .line 1729
    :sswitch_51
    const-string v0, "RIL_REQUEST_QUERY_TTY_MODE"

    goto/16 :goto_0

    .line 1730
    :sswitch_52
    const-string v0, "RIL_REQUEST_CDMA_SET_PREFERRED_VOICE_PRIVACY_MODE"

    goto/16 :goto_0

    .line 1731
    :sswitch_53
    const-string v0, "RIL_REQUEST_CDMA_QUERY_PREFERRED_VOICE_PRIVACY_MODE"

    goto/16 :goto_0

    .line 1732
    :sswitch_54
    const-string v0, "RIL_REQUEST_CDMA_FLASH"

    goto/16 :goto_0

    .line 1733
    :sswitch_55
    const-string v0, "RIL_REQUEST_CDMA_BURST_DTMF"

    goto/16 :goto_0

    .line 1734
    :sswitch_56
    const-string v0, "RIL_REQUEST_CDMA_SEND_SMS"

    goto/16 :goto_0

    .line 1735
    :sswitch_57
    const-string v0, "RIL_REQUEST_CDMA_SMS_ACKNOWLEDGE"

    goto/16 :goto_0

    .line 1736
    :sswitch_58
    const-string v0, "RIL_REQUEST_GSM_GET_BROADCAST_CONFIG"

    goto/16 :goto_0

    .line 1737
    :sswitch_59
    const-string v0, "RIL_REQUEST_GSM_SET_BROADCAST_CONFIG"

    goto/16 :goto_0

    .line 1738
    :sswitch_5a
    const-string v0, "RIL_REQUEST_CDMA_GET_BROADCAST_CONFIG"

    goto/16 :goto_0

    .line 1739
    :sswitch_5b
    const-string v0, "RIL_REQUEST_CDMA_SET_BROADCAST_CONFIG"

    goto/16 :goto_0

    .line 1740
    :sswitch_5c
    const-string v0, "RIL_REQUEST_GSM_BROADCAST_ACTIVATION"

    goto/16 :goto_0

    .line 1741
    :sswitch_5d
    const-string v0, "RIL_REQUEST_CDMA_VALIDATE_AND_WRITE_AKEY"

    goto/16 :goto_0

    .line 1742
    :sswitch_5e
    const-string v0, "RIL_REQUEST_CDMA_BROADCAST_ACTIVATION"

    goto/16 :goto_0

    .line 1743
    :sswitch_5f
    const-string v0, "RIL_REQUEST_CDMA_SUBSCRIPTION"

    goto/16 :goto_0

    .line 1744
    :sswitch_60
    const-string v0, "RIL_REQUEST_CDMA_WRITE_SMS_TO_RUIM"

    goto/16 :goto_0

    .line 1745
    :sswitch_61
    const-string v0, "RIL_REQUEST_CDMA_DELETE_SMS_ON_RUIM"

    goto/16 :goto_0

    .line 1746
    :sswitch_62
    const-string v0, "RIL_REQUEST_DEVICE_IDENTITY"

    goto/16 :goto_0

    .line 1747
    :sswitch_63
    const-string v0, "RIL_REQUEST_GET_SMSC_ADDRESS"

    goto/16 :goto_0

    .line 1748
    :sswitch_64
    const-string v0, "RIL_REQUEST_SET_SMSC_ADDRESS"

    goto/16 :goto_0

    .line 1749
    :sswitch_65
    const-string v0, "REQUEST_EXIT_EMERGENCY_CALLBACK_MODE"

    goto/16 :goto_0

    .line 1750
    :sswitch_66
    const-string v0, "RIL_REQUEST_REPORT_SMS_MEMORY_STATUS"

    goto/16 :goto_0

    .line 1751
    :sswitch_67
    const-string v0, "RIL_REQUEST_REPORT_STK_SERVICE_IS_RUNNING"

    goto/16 :goto_0

    .line 1752
    :sswitch_68
    const-string v0, "RIL_REQUEST_CDMA_GET_SUBSCRIPTION_SOURCE"

    goto/16 :goto_0

    .line 1753
    :sswitch_69
    const-string v0, "RIL_REQUEST_ISIM_AUTHENTICATION"

    goto/16 :goto_0

    .line 1754
    :sswitch_6a
    const-string v0, "RIL_REQUEST_ACKNOWLEDGE_INCOMING_GSM_SMS_WITH_PDU"

    goto/16 :goto_0

    .line 1755
    :sswitch_6b
    const-string v0, "RIL_REQUEST_STK_SEND_ENVELOPE_WITH_STATUS"

    goto/16 :goto_0

    .line 1756
    :sswitch_6c
    const-string v0, "RIL_REQUEST_VOICE_RADIO_TECH"

    goto/16 :goto_0

    .line 1757
    :sswitch_6d
    const-string v0, "RIL_REQUEST_GET_CELL_INFO_LIST"

    goto/16 :goto_0

    .line 1758
    :sswitch_6e
    const-string v0, "RIL_REQUEST_SET_CELL_INFO_LIST_RATE"

    goto/16 :goto_0

    .line 1759
    :sswitch_6f
    const-string v0, "RIL_REQUEST_SET_INITIAL_ATTACH_APN"

    goto/16 :goto_0

    .line 1760
    :sswitch_70
    const-string v0, "RIL_REQUEST_SET_DATA_PROFILE"

    goto/16 :goto_0

    .line 1761
    :sswitch_71
    const-string v0, "RIL_REQUEST_IMS_REGISTRATION_STATE"

    goto/16 :goto_0

    .line 1762
    :sswitch_72
    const-string v0, "RIL_REQUEST_IMS_SEND_SMS"

    goto/16 :goto_0

    .line 1763
    :sswitch_73
    const-string v0, "RIL_REQUEST_SIM_TRANSMIT_APDU_BASIC"

    goto/16 :goto_0

    .line 1764
    :sswitch_74
    const-string v0, "RIL_REQUEST_SIM_OPEN_CHANNEL"

    goto/16 :goto_0

    .line 1765
    :sswitch_75
    const-string v0, "RIL_REQUEST_SIM_CLOSE_CHANNEL"

    goto/16 :goto_0

    .line 1766
    :sswitch_76
    const-string v0, "RIL_REQUEST_SIM_TRANSMIT_APDU_CHANNEL"

    goto/16 :goto_0

    .line 1767
    :sswitch_77
    const-string v0, "RIL_REQUEST_NV_READ_ITEM"

    goto/16 :goto_0

    .line 1768
    :sswitch_78
    const-string v0, "RIL_REQUEST_NV_WRITE_ITEM"

    goto/16 :goto_0

    .line 1769
    :sswitch_79
    const-string v0, "RIL_REQUEST_NV_WRITE_CDMA_PRL"

    goto/16 :goto_0

    .line 1770
    :sswitch_7a
    const-string v0, "RIL_REQUEST_NV_RESET_CONFIG"

    goto/16 :goto_0

    .line 1771
    :sswitch_7b
    const-string v0, "RIL_REQUEST_SET_UICC_SUBSCRIPTION"

    goto/16 :goto_0

    .line 1772
    :sswitch_7c
    const-string v0, "RIL_REQUEST_ALLOW_DATA"

    goto/16 :goto_0

    .line 1773
    :sswitch_7d
    const-string v0, "GET_HARDWARE_CONFIG"

    goto/16 :goto_0

    .line 1774
    :sswitch_7e
    const-string v0, "RIL_REQUEST_SIM_AUTHENTICATION"

    goto/16 :goto_0

    .line 1775
    :sswitch_7f
    const-string v0, "RIL_REQUEST_SHUTDOWN"

    goto/16 :goto_0

    .line 1777
    :sswitch_80
    const-string v0, "RIL_REQUEST_SET_RADIO_CAPABILITY"

    goto/16 :goto_0

    .line 1779
    :sswitch_81
    const-string v0, "RIL_REQUEST_GET_RADIO_CAPABILITY"

    goto/16 :goto_0

    .line 1781
    :sswitch_82
    const-string v0, "HANGUP_ALL"

    goto/16 :goto_0

    .line 1782
    :sswitch_83
    const-string v0, "FORCE_RELEASE_CALL"

    goto/16 :goto_0

    .line 1783
    :sswitch_84
    const-string v0, "SET_CALL_INDICATION"

    goto/16 :goto_0

    .line 1784
    :sswitch_85
    const-string v0, "EMERGENCY_DIAL"

    goto/16 :goto_0

    .line 1785
    :sswitch_86
    const-string v0, "SET_ECC_SERVICE_CATEGORY"

    goto/16 :goto_0

    .line 1786
    :sswitch_87
    const-string v0, "SET_ECC_LIST"

    goto/16 :goto_0

    .line 1789
    :sswitch_88
    const-string v0, "SET_SPEECH_CODEC_INFO"

    goto/16 :goto_0

    .line 1792
    :sswitch_89
    const-string v0, "RIL_REQUEST_VT_DIAL"

    goto/16 :goto_0

    .line 1793
    :sswitch_8a
    const-string v0, "VOICE_ACCEPT"

    goto/16 :goto_0

    .line 1794
    :sswitch_8b
    const-string v0, "RIL_REQUEST_REPLACE_VT_CALL"

    goto/16 :goto_0

    .line 1798
    :sswitch_8c
    const-string v0, "RIL_REQUEST_ADD_IMS_CONFERENCE_CALL_MEMBER"

    goto/16 :goto_0

    .line 1799
    :sswitch_8d
    const-string v0, "RIL_REQUEST_REMOVE_IMS_CONFERENCE_CALL_MEMBER"

    goto/16 :goto_0

    .line 1800
    :sswitch_8e
    const-string v0, "RIL_REQUEST_DIAL_WITH_SIP_URI"

    goto/16 :goto_0

    .line 1801
    :sswitch_8f
    const-string v0, "RIL_REQUEST_RESUNME_CALL"

    goto/16 :goto_0

    .line 1802
    :sswitch_90
    const-string v0, "RIL_REQUEST_HOLD_CALL"

    goto/16 :goto_0

    .line 1806
    :sswitch_91
    const-string v0, "GET_COLP"

    goto/16 :goto_0

    .line 1807
    :sswitch_92
    const-string v0, "SET_COLP"

    goto/16 :goto_0

    .line 1808
    :sswitch_93
    const-string v0, "GET_COLR"

    goto/16 :goto_0

    .line 1812
    :sswitch_94
    const-string v0, "QUERY_SIM_NETWORK_LOCK"

    goto/16 :goto_0

    .line 1813
    :sswitch_95
    const-string v0, "SET_SIM_NETWORK_LOCK"

    goto/16 :goto_0

    .line 1816
    :sswitch_96
    const-string v0, "RIL_REQUEST_GENERAL_SIM_AUTH"

    goto/16 :goto_0

    .line 1817
    :sswitch_97
    const-string v0, "RIL_REQUEST_OPEN_ICC_APPLICATION"

    goto/16 :goto_0

    .line 1818
    :sswitch_98
    const-string v0, "RIL_REQUEST_GET_ICC_APPLICATION_STATUS"

    goto/16 :goto_0

    .line 1819
    :sswitch_99
    const-string v0, "SIM_IO_EX"

    goto/16 :goto_0

    .line 1822
    :sswitch_9a
    const-string v0, "RIL_REQUEST_QUERY_PHB_STORAGE_INFO"

    goto/16 :goto_0

    .line 1823
    :sswitch_9b
    const-string v0, "RIL_REQUEST_WRITE_PHB_ENTRY"

    goto/16 :goto_0

    .line 1824
    :sswitch_9c
    const-string v0, "RIL_REQUEST_READ_PHB_ENTRY"

    goto/16 :goto_0

    .line 1825
    :sswitch_9d
    const-string v0, "RIL_REQUEST_QUERY_UPB_CAPABILITY"

    goto/16 :goto_0

    .line 1826
    :sswitch_9e
    const-string v0, "RIL_REQUEST_EDIT_UPB_ENTRY"

    goto/16 :goto_0

    .line 1827
    :sswitch_9f
    const-string v0, "RIL_REQUEST_DELETE_UPB_ENTRY"

    goto/16 :goto_0

    .line 1828
    :sswitch_a0
    const-string v0, "RIL_REQUEST_READ_UPB_GAS_LIST"

    goto/16 :goto_0

    .line 1829
    :sswitch_a1
    const-string v0, "RIL_REQUEST_READ_UPB_GRP"

    goto/16 :goto_0

    .line 1830
    :sswitch_a2
    const-string v0, "RIL_REQUEST_WRITE_UPB_GRP"

    goto/16 :goto_0

    .line 1831
    :sswitch_a3
    const-string v0, "RIL_REQUEST_GET_PHB_STRING_LENGTH"

    goto/16 :goto_0

    .line 1832
    :sswitch_a4
    const-string v0, "RIL_REQUEST_GET_PHB_MEM_STORAGE"

    goto/16 :goto_0

    .line 1833
    :sswitch_a5
    const-string v0, "RIL_REQUEST_SET_PHB_MEM_STORAGE"

    goto/16 :goto_0

    .line 1834
    :sswitch_a6
    const-string v0, "RIL_REQUEST_READ_PHB_ENTRY_EXT"

    goto/16 :goto_0

    .line 1835
    :sswitch_a7
    const-string v0, "RIL_REQUEST_WRITE_PHB_ENTRY_EXT"

    goto/16 :goto_0

    .line 1839
    :sswitch_a8
    const-string v0, "SET_NETWORK_SELECTION_MANUAL_WITH_ACT"

    goto/16 :goto_0

    .line 1840
    :sswitch_a9
    const-string v0, "RIL_REQUEST_GET_POL_CAPABILITY"

    goto/16 :goto_0

    .line 1841
    :sswitch_aa
    const-string v0, "RIL_REQUEST_GET_POL_LIST"

    goto/16 :goto_0

    .line 1842
    :sswitch_ab
    const-string v0, "RIL_REQUEST_SET_POL_ENTRY"

    goto/16 :goto_0

    .line 1843
    :sswitch_ac
    const-string v0, "RIL_REQUEST_SET_TRM"

    goto/16 :goto_0

    .line 1844
    :sswitch_ad
    const-string v0, "QUERY_AVAILABLE_NETWORKS_WITH_ACT"

    goto/16 :goto_0

    .line 1846
    :sswitch_ae
    const-string v0, "RIL_REQUEST_GET_FEMTOCELL_LIST"

    goto/16 :goto_0

    .line 1847
    :sswitch_af
    const-string v0, "RIL_REQUEST_ABORT_FEMTOCELL_LIST"

    goto/16 :goto_0

    .line 1848
    :sswitch_b0
    const-string v0, "RIL_REQUEST_SELECT_FEMTOCELL"

    goto/16 :goto_0

    .line 1851
    :sswitch_b1
    const-string v0, "RIL_REQUEST_STK_EVDL_CALL_BY_AP"

    goto/16 :goto_0

    .line 1852
    :sswitch_b2
    const-string v0, "RIL_REQUEST_QUERY_MODEM_TYPE"

    goto/16 :goto_0

    .line 1853
    :sswitch_b3
    const-string v0, "RIL_REQUEST_STORE_MODEM_TYPE"

    goto/16 :goto_0

    .line 1854
    :sswitch_b4
    const-string v0, "SIM_GET_ATR"

    goto/16 :goto_0

    .line 1855
    :sswitch_b5
    const-string v0, "SIM_OPEN_CHANNEL_WITH_SW"

    goto/16 :goto_0

    .line 1857
    :sswitch_b6
    const-string v0, "RIL_REQUEST_SETUP_DEDICATE_DATA_CALL"

    goto/16 :goto_0

    .line 1858
    :sswitch_b7
    const-string v0, "RIL_REQUEST_DEACTIVATE_DEDICATE_DATA_CALL"

    goto/16 :goto_0

    .line 1859
    :sswitch_b8
    const-string v0, "RIL_REQUEST_MODIFY_DATA_CALL"

    goto/16 :goto_0

    .line 1860
    :sswitch_b9
    const-string v0, "RIL_REQUEST_ABORT_SETUP_DATA_CALL"

    goto/16 :goto_0

    .line 1861
    :sswitch_ba
    const-string v0, "RIL_REQUEST_PCSCF_DISCOVERY_PCO"

    goto/16 :goto_0

    .line 1862
    :sswitch_bb
    const-string v0, "RIL_REQUEST_CLEAR_DATA_BEARER"

    goto/16 :goto_0

    .line 1865
    :sswitch_bc
    const-string v0, "RIL_REQUEST_SET_IMS_ENABLE"

    goto/16 :goto_0

    .line 1868
    :sswitch_bd
    const-string v0, "RIL_REQUEST_SET_SCRI"

    goto/16 :goto_0

    .line 1869
    :sswitch_be
    const-string v0, "RIL_REQUEST_SET_FD_MODE"

    goto/16 :goto_0

    .line 1871
    :sswitch_bf
    const-string v0, "RIL_REQUEST_GET_SMS_PARAMS"

    goto/16 :goto_0

    .line 1872
    :sswitch_c0
    const-string v0, "RIL_REQUEST_SET_SMS_PARAMS"

    goto/16 :goto_0

    .line 1873
    :sswitch_c1
    const-string v0, "RIL_REQUEST_GET_SMS_SIM_MEM_STATUS"

    goto/16 :goto_0

    .line 1874
    :sswitch_c2
    const-string v0, "RIL_REQUEST_SET_ETWS"

    goto/16 :goto_0

    .line 1876
    :sswitch_c3
    const-string v0, "RIL_REQUEST_SET_CB_CHANNEL_CONFIG_INFO"

    goto/16 :goto_0

    .line 1878
    :sswitch_c4
    const-string v0, "RIL_REQUEST_SET_CB_LANGUAGE_CONFIG_INFO"

    goto/16 :goto_0

    .line 1879
    :sswitch_c5
    const-string v0, "RIL_REQUEST_GET_CB_CONFIG_INFO"

    goto/16 :goto_0

    .line 1880
    :sswitch_c6
    const-string v0, "RIL_REQUEST_REMOVE_CB_MESSAGE"

    goto/16 :goto_0

    .line 1882
    :sswitch_c7
    const-string v0, "RIL_REQUEST_SET_DATA_CENTRIC"

    goto/16 :goto_0

    .line 1884
    :sswitch_c8
    const-string v0, "MODEM_POWEROFF"

    goto/16 :goto_0

    .line 1885
    :sswitch_c9
    const-string v0, "MODEM_POWERON"

    goto/16 :goto_0

    .line 1887
    :sswitch_ca
    const-string v0, "RIL_REQUEST_SET_DATA_ON_TO_MD"

    goto/16 :goto_0

    .line 1888
    :sswitch_cb
    const-string v0, "RIL_REQUEST_SET_REMOVE_RESTRICT_EUTRAN_MODE"

    goto/16 :goto_0

    .line 1889
    :sswitch_cc
    const-string v0, "RIL_REQUEST_BTSIM_CONNECT"

    goto/16 :goto_0

    .line 1890
    :sswitch_cd
    const-string v0, "RIL_REQUEST_BTSIM_DISCONNECT_OR_POWEROFF"

    goto/16 :goto_0

    .line 1891
    :sswitch_ce
    const-string v0, "RIL_REQUEST_BTSIM_POWERON_OR_RESETSIM"

    goto/16 :goto_0

    .line 1892
    :sswitch_cf
    const-string v0, "RIL_REQUEST_SEND_BTSIM_TRANSFERAPDU"

    goto/16 :goto_0

    .line 1895
    :sswitch_d0
    const-string v0, "RIL_REQUEST_CONFERENCE_DIAL"

    goto/16 :goto_0

    .line 1897
    :sswitch_d1
    const-string v0, "RIL_REQUEST_RELOAD_MODEM_TYPE"

    goto/16 :goto_0

    .line 1899
    :sswitch_d2
    const-string v0, "RIL_REQUEST_SET_IMS_CALL_STATUS"

    goto/16 :goto_0

    .line 1903
    :sswitch_d3
    const-string v0, "RIL_REQUEST_SET_SRVCC_CALL_CONTEXT_TRANSFER"

    goto/16 :goto_0

    .line 1904
    :sswitch_d4
    const-string v0, "RIL_REQUEST_UPDATE_IMS_REGISTRATION_STATUS"

    goto/16 :goto_0

    .line 1908
    :sswitch_d5
    const-string v0, "RIL_REQUEST_CONFIG_MODEM_STATUS"

    goto/16 :goto_0

    .line 1910
    :sswitch_d6
    const-string v0, "RIL_REQUEST_GET_NITZ_TIME"

    goto/16 :goto_0

    .line 1911
    :sswitch_d7
    const-string v0, "RIL_REQUEST_QUERY_UIM_INSERTED"

    goto/16 :goto_0

    .line 1912
    :sswitch_d8
    const-string v0, "RIL_REQUEST_SWITCH_HPF"

    goto/16 :goto_0

    .line 1913
    :sswitch_d9
    const-string v0, "RIL_REQUEST_SET_AVOID_SYS"

    goto/16 :goto_0

    .line 1914
    :sswitch_da
    const-string v0, "RIL_REQUEST_QUERY_AVOID_SYS"

    goto/16 :goto_0

    .line 1915
    :sswitch_db
    const-string v0, "RIL_REQUEST_QUERY_CDMA_NETWORK_INFO"

    goto/16 :goto_0

    .line 1916
    :sswitch_dc
    const-string v0, "RIL_REQUEST_GET_LOCAL_INFO"

    goto/16 :goto_0

    .line 1917
    :sswitch_dd
    const-string v0, "RIL_REQUEST_UTK_REFRESH"

    goto/16 :goto_0

    .line 1919
    :sswitch_de
    const-string v0, "RIL_REQUEST_QUERY_SMS_AND_PHONEBOOK_STATUS"

    goto/16 :goto_0

    .line 1921
    :sswitch_df
    const-string v0, "RIL_REQUEST_QUERY_NETWORK_REGISTRATION"

    goto/16 :goto_0

    .line 1922
    :sswitch_e0
    const-string v0, "RIL_REQUEST_AGPS_TCP_CONNIND"

    goto/16 :goto_0

    .line 1923
    :sswitch_e1
    const-string v0, "RIL_REQUEST_AGPS_SET_MPC_IPPORT"

    goto/16 :goto_0

    .line 1924
    :sswitch_e2
    const-string v0, "RIL_REQUEST_AGPS_GET_MPC_IPPORT"

    goto/16 :goto_0

    .line 1925
    :sswitch_e3
    const-string v0, "RIL_REQUEST_SET_MEID"

    goto/16 :goto_0

    .line 1926
    :sswitch_e4
    const-string v0, "RIL_REQUEST_SET_ETS_DEV"

    goto/16 :goto_0

    .line 1927
    :sswitch_e5
    const-string v0, "RIL_REQUEST_WRITE_MDN"

    goto/16 :goto_0

    .line 1928
    :sswitch_e6
    const-string v0, "RIL_REQUEST_SET_VIA_TRM"

    goto/16 :goto_0

    .line 1929
    :sswitch_e7
    const-string v0, "RIL_REQUEST_SET_ARSI_THRESHOLD"

    goto/16 :goto_0

    .line 1930
    :sswitch_e8
    const-string v0, "RIL_REQUEST_QUERY_UTK_MENU_FROM_MD"

    goto/16 :goto_0

    .line 1931
    :sswitch_e9
    const-string v0, "RIL_REQUEST_QUERY_STK_MENU_FROM_MD"

    goto/16 :goto_0

    .line 1934
    :sswitch_ea
    const-string v0, "RIL_REQUEST_SET_ACTIVE_PS_SLOT"

    goto/16 :goto_0

    .line 1936
    :sswitch_eb
    const-string v0, "RIL_REQUEST_CONFIRM_INTER_3GPP_IRAT_CHANGE"

    goto/16 :goto_0

    .line 1938
    :sswitch_ec
    const-string v0, "RIL_REQUEST_DEACTIVATE_LINK_DOWN_PDN"

    goto/16 :goto_0

    .line 1942
    :sswitch_ed
    const-string v0, "RIL_REQUEST_SET_SVLTE_RAT_MODE"

    goto/16 :goto_0

    .line 1946
    :sswitch_ee
    const-string v0, "RIL_REQUEST_SET_REG_SUSPEND_ENABLED"

    goto/16 :goto_0

    .line 1947
    :sswitch_ef
    const-string v0, "RIL_REQUEST_RESUME_REGISTRATION"

    goto/16 :goto_0

    .line 1949
    :sswitch_f0
    const-string v0, "RIL_REQUEST_SET_REG_SUSPEND_ENABLED_CDMA"

    goto/16 :goto_0

    .line 1951
    :sswitch_f1
    const-string v0, "RIL_REQUEST_RESUME_REGISTRATION_CDMA"

    goto/16 :goto_0

    .line 1953
    :sswitch_f2
    const-string v0, "RIL_REQUEST_CONFIG_EVDO_MODE"

    goto/16 :goto_0

    .line 1957
    :sswitch_f3
    const-string v0, "RIL_REQUEST_SET_STK_UTK_MODE"

    goto/16 :goto_0

    .line 1961
    :sswitch_f4
    const-string v0, "RIL_UNSOL_CDMA_SIGNAL_FADE"

    goto/16 :goto_0

    .line 1964
    :sswitch_f5
    const-string v0, "RIL_UNSOL_CDMA_TONE_SIGNALS"

    goto/16 :goto_0

    .line 1966
    :sswitch_f6
    const-string v0, "RIL_REQUEST_SWITCH_ANTENNA"

    goto/16 :goto_0

    .line 1647
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0x9 -> :sswitch_8
        0xa -> :sswitch_9
        0xb -> :sswitch_a
        0xc -> :sswitch_b
        0xd -> :sswitch_c
        0xe -> :sswitch_d
        0xf -> :sswitch_e
        0x10 -> :sswitch_f
        0x11 -> :sswitch_10
        0x12 -> :sswitch_11
        0x13 -> :sswitch_12
        0x14 -> :sswitch_13
        0x15 -> :sswitch_14
        0x16 -> :sswitch_15
        0x17 -> :sswitch_16
        0x18 -> :sswitch_17
        0x19 -> :sswitch_18
        0x1a -> :sswitch_19
        0x1b -> :sswitch_1a
        0x1c -> :sswitch_1b
        0x1d -> :sswitch_1c
        0x1e -> :sswitch_1d
        0x1f -> :sswitch_1e
        0x20 -> :sswitch_1f
        0x21 -> :sswitch_20
        0x22 -> :sswitch_21
        0x23 -> :sswitch_22
        0x24 -> :sswitch_23
        0x25 -> :sswitch_24
        0x26 -> :sswitch_25
        0x27 -> :sswitch_26
        0x28 -> :sswitch_27
        0x29 -> :sswitch_28
        0x2a -> :sswitch_29
        0x2b -> :sswitch_2a
        0x2c -> :sswitch_2b
        0x2d -> :sswitch_2c
        0x2e -> :sswitch_2d
        0x2f -> :sswitch_2e
        0x30 -> :sswitch_2f
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x44 -> :sswitch_44
        0x45 -> :sswitch_45
        0x46 -> :sswitch_46
        0x47 -> :sswitch_47
        0x48 -> :sswitch_48
        0x49 -> :sswitch_49
        0x4a -> :sswitch_4a
        0x4b -> :sswitch_4b
        0x4c -> :sswitch_4c
        0x4d -> :sswitch_4d
        0x4e -> :sswitch_4e
        0x4f -> :sswitch_4f
        0x50 -> :sswitch_50
        0x51 -> :sswitch_51
        0x52 -> :sswitch_52
        0x53 -> :sswitch_53
        0x54 -> :sswitch_54
        0x55 -> :sswitch_55
        0x56 -> :sswitch_5d
        0x57 -> :sswitch_56
        0x58 -> :sswitch_57
        0x59 -> :sswitch_58
        0x5a -> :sswitch_59
        0x5b -> :sswitch_5c
        0x5c -> :sswitch_5a
        0x5d -> :sswitch_5b
        0x5e -> :sswitch_5e
        0x5f -> :sswitch_5f
        0x60 -> :sswitch_60
        0x61 -> :sswitch_61
        0x62 -> :sswitch_62
        0x63 -> :sswitch_65
        0x64 -> :sswitch_63
        0x65 -> :sswitch_64
        0x66 -> :sswitch_66
        0x67 -> :sswitch_67
        0x68 -> :sswitch_68
        0x69 -> :sswitch_69
        0x6a -> :sswitch_6a
        0x6b -> :sswitch_6b
        0x6c -> :sswitch_6c
        0x6d -> :sswitch_6d
        0x6e -> :sswitch_6e
        0x6f -> :sswitch_6f
        0x70 -> :sswitch_71
        0x71 -> :sswitch_72
        0x72 -> :sswitch_73
        0x73 -> :sswitch_74
        0x74 -> :sswitch_75
        0x75 -> :sswitch_76
        0x76 -> :sswitch_77
        0x77 -> :sswitch_78
        0x78 -> :sswitch_79
        0x79 -> :sswitch_7a
        0x7a -> :sswitch_7b
        0x7b -> :sswitch_7c
        0x7c -> :sswitch_7d
        0x7d -> :sswitch_7e
        0x80 -> :sswitch_70
        0x81 -> :sswitch_7f
        0x82 -> :sswitch_81
        0x83 -> :sswitch_80
        0x7d0 -> :sswitch_91
        0x7d1 -> :sswitch_92
        0x7d2 -> :sswitch_93
        0x7da -> :sswitch_c8
        0x7dc -> :sswitch_9a
        0x7dd -> :sswitch_9b
        0x7de -> :sswitch_9c
        0x7e2 -> :sswitch_94
        0x7e3 -> :sswitch_95
        0x7e4 -> :sswitch_bd
        0x7e5 -> :sswitch_cc
        0x7e6 -> :sswitch_cd
        0x7e7 -> :sswitch_ce
        0x7e8 -> :sswitch_cf
        0x7e9 -> :sswitch_a8
        0x7ec -> :sswitch_c9
        0x7ed -> :sswitch_c1
        0x7f0 -> :sswitch_a9
        0x7f1 -> :sswitch_aa
        0x7f2 -> :sswitch_ab
        0x7f3 -> :sswitch_9d
        0x7f4 -> :sswitch_9e
        0x7f5 -> :sswitch_9f
        0x7f6 -> :sswitch_a0
        0x7f7 -> :sswitch_a1
        0x7f8 -> :sswitch_a2
        0x7fb -> :sswitch_ac
        0x7fe -> :sswitch_a3
        0x7ff -> :sswitch_a4
        0x800 -> :sswitch_a5
        0x801 -> :sswitch_a6
        0x802 -> :sswitch_a7
        0x803 -> :sswitch_bf
        0x804 -> :sswitch_c0
        0x807 -> :sswitch_b4
        0x808 -> :sswitch_c3
        0x809 -> :sswitch_c4
        0x80a -> :sswitch_c5
        0x80c -> :sswitch_c2
        0x80d -> :sswitch_be
        0x80f -> :sswitch_b5
        0x810 -> :sswitch_ee
        0x811 -> :sswitch_ef
        0x812 -> :sswitch_b3
        0x813 -> :sswitch_b2
        0x81b -> :sswitch_b1
        0x81c -> :sswitch_ae
        0x81d -> :sswitch_af
        0x81e -> :sswitch_b0
        0x821 -> :sswitch_30
        0x824 -> :sswitch_82
        0x825 -> :sswitch_83
        0x826 -> :sswitch_84
        0x827 -> :sswitch_85
        0x828 -> :sswitch_86
        0x829 -> :sswitch_87
        0x82a -> :sswitch_96
        0x82b -> :sswitch_97
        0x82c -> :sswitch_98
        0x82d -> :sswitch_99
        0x82e -> :sswitch_bc
        0x82f -> :sswitch_ad
        0x832 -> :sswitch_b6
        0x833 -> :sswitch_b7
        0x834 -> :sswitch_b8
        0x835 -> :sswitch_b9
        0x836 -> :sswitch_ba
        0x837 -> :sswitch_bb
        0x838 -> :sswitch_c6
        0x839 -> :sswitch_c7
        0x83a -> :sswitch_8c
        0x83b -> :sswitch_8d
        0x83c -> :sswitch_8e
        0x83d -> :sswitch_8f
        0x83e -> :sswitch_88
        0x83f -> :sswitch_ca
        0x840 -> :sswitch_cb
        0x841 -> :sswitch_d2
        0x842 -> :sswitch_89
        0x843 -> :sswitch_8a
        0x844 -> :sswitch_8b
        0x845 -> :sswitch_d5
        0x846 -> :sswitch_ea
        0x847 -> :sswitch_eb
        0x848 -> :sswitch_ed
        0x84a -> :sswitch_d0
        0x84b -> :sswitch_d3
        0x84c -> :sswitch_d4
        0x84d -> :sswitch_d1
        0x84e -> :sswitch_ec
        0x84f -> :sswitch_90
        0x850 -> :sswitch_f3
        0x851 -> :sswitch_f6
        0xfa0 -> :sswitch_d6
        0xfa1 -> :sswitch_d7
        0xfa2 -> :sswitch_d8
        0xfa3 -> :sswitch_d9
        0xfa4 -> :sswitch_da
        0xfa5 -> :sswitch_db
        0xfa6 -> :sswitch_dc
        0xfa7 -> :sswitch_dd
        0xfa8 -> :sswitch_de
        0xfa9 -> :sswitch_df
        0xfaa -> :sswitch_e0
        0xfab -> :sswitch_e1
        0xfac -> :sswitch_e2
        0xfad -> :sswitch_e3
        0xfae -> :sswitch_f1
        0xfaf -> :sswitch_f0
        0xfb0 -> :sswitch_e4
        0xfb1 -> :sswitch_e5
        0xfb2 -> :sswitch_e6
        0xfb3 -> :sswitch_e7
        0xfb6 -> :sswitch_f2
        0xfb7 -> :sswitch_e8
        0xfb8 -> :sswitch_e9
        0x1394 -> :sswitch_f4
        0x1395 -> :sswitch_f5
    .end sparse-switch
.end method

.method private responseCallRing(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 3
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 1506
    const/4 v1, 0x4

    new-array v0, v1, [C

    .line 1508
    .local v0, "response":[C
    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 1509
    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 1510
    const/4 v1, 0x2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 1511
    const/4 v1, 0x3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 1513
    return-object v0
.end method

.method private responseInts(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 4
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 1493
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1495
    .local v1, "numInts":I
    new-array v2, v1, [I

    .line 1497
    .local v2, "response":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1498
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aput v3, v2, v0

    .line 1497
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1501
    :cond_0
    return-object v2
.end method

.method private responseRaw(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 1484
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 1486
    .local v0, "response":[B
    return-object v0
.end method

.method private responseString(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 1465
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1467
    .local v0, "response":Ljava/lang/String;
    return-object v0
.end method

.method private responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 1474
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 1476
    .local v0, "response":[Ljava/lang/String;
    return-object v0
.end method

.method private responseSuppServiceNotification(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 1518
    new-instance v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/SuppServiceNotification;-><init>()V

    .line 1520
    .local v0, "notification":Lcom/android/internal/telephony/gsm/SuppServiceNotification;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->notificationType:I

    .line 1521
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    .line 1522
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->index:I

    .line 1523
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->type:I

    .line 1524
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->number:Ljava/lang/String;

    .line 1526
    return-object v0
.end method

.method static responseToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "request"    # I

    .prologue
    .line 1531
    sparse-switch p0, :sswitch_data_0

    .line 1642
    const-string v0, "<unknown response>"

    :goto_0
    return-object v0

    .line 1532
    :sswitch_0
    const-string v0, "UNSOL_RESPONSE_RADIO_STATE_CHANGED"

    goto :goto_0

    .line 1533
    :sswitch_1
    const-string v0, "UNSOL_RESPONSE_CALL_STATE_CHANGED"

    goto :goto_0

    .line 1534
    :sswitch_2
    const-string v0, "UNSOL_RESPONSE_VOICE_NETWORK_STATE_CHANGED"

    goto :goto_0

    .line 1535
    :sswitch_3
    const-string v0, "UNSOL_RESPONSE_NEW_SMS"

    goto :goto_0

    .line 1536
    :sswitch_4
    const-string v0, "UNSOL_RESPONSE_NEW_SMS_STATUS_REPORT"

    goto :goto_0

    .line 1537
    :sswitch_5
    const-string v0, "UNSOL_RESPONSE_NEW_SMS_ON_SIM"

    goto :goto_0

    .line 1538
    :sswitch_6
    const-string v0, "UNSOL_ON_USSD"

    goto :goto_0

    .line 1539
    :sswitch_7
    const-string v0, "UNSOL_ON_USSD_REQUEST"

    goto :goto_0

    .line 1540
    :sswitch_8
    const-string v0, "UNSOL_NITZ_TIME_RECEIVED"

    goto :goto_0

    .line 1541
    :sswitch_9
    const-string v0, "UNSOL_SIGNAL_STRENGTH"

    goto :goto_0

    .line 1542
    :sswitch_a
    const-string v0, "UNSOL_DATA_CALL_LIST_CHANGED"

    goto :goto_0

    .line 1543
    :sswitch_b
    const-string v0, "UNSOL_SUPP_SVC_NOTIFICATION"

    goto :goto_0

    .line 1544
    :sswitch_c
    const-string v0, "UNSOL_STK_SESSION_END"

    goto :goto_0

    .line 1545
    :sswitch_d
    const-string v0, "UNSOL_STK_PROACTIVE_COMMAND"

    goto :goto_0

    .line 1546
    :sswitch_e
    const-string v0, "UNSOL_STK_EVENT_NOTIFY"

    goto :goto_0

    .line 1547
    :sswitch_f
    const-string v0, "UNSOL_STK_CALL_SETUP"

    goto :goto_0

    .line 1548
    :sswitch_10
    const-string v0, "UNSOL_SIM_SMS_STORAGE_FULL"

    goto :goto_0

    .line 1549
    :sswitch_11
    const-string v0, "UNSOL_SIM_REFRESH"

    goto :goto_0

    .line 1550
    :sswitch_12
    const-string v0, "UNSOL_CALL_RING"

    goto :goto_0

    .line 1551
    :sswitch_13
    const-string v0, "UNSOL_RESPONSE_SIM_STATUS_CHANGED"

    goto :goto_0

    .line 1552
    :sswitch_14
    const-string v0, "UNSOL_RESPONSE_CDMA_NEW_SMS"

    goto :goto_0

    .line 1553
    :sswitch_15
    const-string v0, "UNSOL_RESPONSE_NEW_BROADCAST_SMS"

    goto :goto_0

    .line 1554
    :sswitch_16
    const-string v0, "UNSOL_CDMA_RUIM_SMS_STORAGE_FULL"

    goto :goto_0

    .line 1555
    :sswitch_17
    const-string v0, "UNSOL_RESTRICTED_STATE_CHANGED"

    goto :goto_0

    .line 1556
    :sswitch_18
    const-string v0, "UNSOL_ENTER_EMERGENCY_CALLBACK_MODE"

    goto :goto_0

    .line 1557
    :sswitch_19
    const-string v0, "UNSOL_CDMA_CALL_WAITING"

    goto :goto_0

    .line 1558
    :sswitch_1a
    const-string v0, "UNSOL_CDMA_OTA_PROVISION_STATUS"

    goto :goto_0

    .line 1559
    :sswitch_1b
    const-string v0, "UNSOL_CDMA_INFO_REC"

    goto :goto_0

    .line 1560
    :sswitch_1c
    const-string v0, "UNSOL_OEM_HOOK_RAW"

    goto :goto_0

    .line 1561
    :sswitch_1d
    const-string v0, "UNSOL_RINGBACK_TONE"

    goto :goto_0

    .line 1562
    :sswitch_1e
    const-string v0, "UNSOL_RESEND_INCALL_MUTE"

    goto :goto_0

    .line 1563
    :sswitch_1f
    const-string v0, "CDMA_SUBSCRIPTION_SOURCE_CHANGED"

    goto :goto_0

    .line 1564
    :sswitch_20
    const-string v0, "UNSOL_CDMA_PRL_CHANGED"

    goto :goto_0

    .line 1565
    :sswitch_21
    const-string v0, "UNSOL_EXIT_EMERGENCY_CALLBACK_MODE"

    goto :goto_0

    .line 1566
    :sswitch_22
    const-string v0, "UNSOL_RIL_CONNECTED"

    goto :goto_0

    .line 1567
    :sswitch_23
    const-string v0, "UNSOL_VOICE_RADIO_TECH_CHANGED"

    goto :goto_0

    .line 1568
    :sswitch_24
    const-string v0, "UNSOL_CELL_INFO_LIST"

    goto :goto_0

    .line 1570
    :sswitch_25
    const-string v0, "UNSOL_RESPONSE_IMS_NETWORK_STATE_CHANGED"

    goto :goto_0

    .line 1572
    :sswitch_26
    const-string v0, "RIL_UNSOL_UICC_SUBSCRIPTION_STATUS_CHANGED"

    goto :goto_0

    .line 1574
    :sswitch_27
    const-string v0, "UNSOL_SRVCC_STATE_NOTIFY"

    goto :goto_0

    .line 1576
    :sswitch_28
    const-string v0, "UNSOL_SIP_CALL_PROGRESS_INDICATOR"

    goto :goto_0

    .line 1577
    :sswitch_29
    const-string v0, "RIL_UNSOL_HARDWARE_CONFIG_CHANGED"

    goto :goto_0

    .line 1579
    :sswitch_2a
    const-string v0, "UNSOL_CALL_FORWARDING"

    goto/16 :goto_0

    .line 1580
    :sswitch_2b
    const-string v0, "UNSOL_CRSS_NOTIFICATION"

    goto/16 :goto_0

    .line 1581
    :sswitch_2c
    const-string v0, "UNSOL_INCOMING_CALL_INDICATION"

    goto/16 :goto_0

    .line 1582
    :sswitch_2d
    const-string v0, "RIL_UNSOL_CIPHER_INDICATION"

    goto/16 :goto_0

    .line 1583
    :sswitch_2e
    const-string v0, "RIL_UNSOL_CNAP"

    goto/16 :goto_0

    .line 1584
    :sswitch_2f
    const-string v0, "UNSOL_SPEECH_CODEC_INFO"

    goto/16 :goto_0

    .line 1587
    :sswitch_30
    const-string v0, "RIL_UNSOL_APPLICATION_SESSION_ID_CHANGED"

    goto/16 :goto_0

    .line 1589
    :sswitch_31
    const-string v0, "UNSOL_SIM_MISSING"

    goto/16 :goto_0

    .line 1590
    :sswitch_32
    const-string v0, "UNSOL_VIRTUAL_SIM_ON"

    goto/16 :goto_0

    .line 1591
    :sswitch_33
    const-string v0, "UNSOL_VIRTUAL_SIM_ON_OFF"

    goto/16 :goto_0

    .line 1592
    :sswitch_34
    const-string v0, "UNSOL_SIM_RECOVERY"

    goto/16 :goto_0

    .line 1593
    :sswitch_35
    const-string v0, "UNSOL_SIM_PLUG_OUT"

    goto/16 :goto_0

    .line 1594
    :sswitch_36
    const-string v0, "UNSOL_SIM_PLUG_IN"

    goto/16 :goto_0

    .line 1595
    :sswitch_37
    const-string v0, "RIL_UNSOL_SIM_COMMON_SLOT_NO_CHANGED"

    goto/16 :goto_0

    .line 1596
    :sswitch_38
    const-string v0, "RIL_UNSOL_DATA_ALLOWED"

    goto/16 :goto_0

    .line 1597
    :sswitch_39
    const-string v0, "UNSOL_PHB_READY_NOTIFICATION"

    goto/16 :goto_0

    .line 1598
    :sswitch_3a
    const-string v0, "UNSOL_IMEI_LOCK"

    goto/16 :goto_0

    .line 1599
    :sswitch_3b
    const-string v0, "UNSOL_ACMT_INFO"

    goto/16 :goto_0

    .line 1600
    :sswitch_3c
    const-string v0, "UNSOL_RESPONSE_PS_NETWORK_STATE_CHANGED"

    goto/16 :goto_0

    .line 1601
    :sswitch_3d
    const-string v0, "UNSOL_RESPONSE_MMRR_STATUS_CHANGED"

    goto/16 :goto_0

    .line 1602
    :sswitch_3e
    const-string v0, "UNSOL_NEIGHBORING_CELL_INFO"

    goto/16 :goto_0

    .line 1603
    :sswitch_3f
    const-string v0, "UNSOL_NETWORK_INFO"

    goto/16 :goto_0

    .line 1604
    :sswitch_40
    const-string v0, "RIL_UNSOL_IMS_ENABLE_DONE"

    goto/16 :goto_0

    .line 1605
    :sswitch_41
    const-string v0, "RIL_UNSOL_IMS_DISABLE_DONE"

    goto/16 :goto_0

    .line 1606
    :sswitch_42
    const-string v0, "RIL_UNSOL_IMS_REGISTRATION_INFO"

    goto/16 :goto_0

    .line 1607
    :sswitch_43
    const-string v0, "RIL_UNSOL_STK_SETUP_MENU_RESET"

    goto/16 :goto_0

    .line 1608
    :sswitch_44
    const-string v0, "RIL_UNSOL_RESPONSE_PLMN_CHANGED"

    goto/16 :goto_0

    .line 1609
    :sswitch_45
    const-string v0, "RIL_UNSOL_RESPONSE_REGISTRATION_SUSPENDED"

    goto/16 :goto_0

    .line 1611
    :sswitch_46
    const-string v0, "RIL_UNSOL_DEDICATE_BEARER_ACTIVATED"

    goto/16 :goto_0

    .line 1612
    :sswitch_47
    const-string v0, "RIL_UNSOL_DEDICATE_BEARER_MODIFIED"

    goto/16 :goto_0

    .line 1614
    :sswitch_48
    const-string v0, "RIL_UNSOL_MELOCK_NOTIFICATION"

    goto/16 :goto_0

    .line 1617
    :sswitch_49
    const-string v0, "RIL_UNSOL_SCRI_RESULT"

    goto/16 :goto_0

    .line 1618
    :sswitch_4a
    const-string v0, "RIL_UNSOL_STK_EVDL_CALL"

    goto/16 :goto_0

    .line 1619
    :sswitch_4b
    const-string v0, "RIL_UNSOL_STK_CALL_CTRL"

    goto/16 :goto_0

    .line 1622
    :sswitch_4c
    const-string v0, "RIL_UNSOL_ECONF_SRVCC_INDICATION"

    goto/16 :goto_0

    .line 1624
    :sswitch_4d
    const-string v0, "RIL_UNSOL_ECONF_RESULT_INDICATION"

    goto/16 :goto_0

    .line 1626
    :sswitch_4e
    const-string v0, "RIL_UNSOL_CALL_INFO_INDICATION"

    goto/16 :goto_0

    .line 1629
    :sswitch_4f
    const-string v0, "RIL_UNSOL_VOLTE_EPS_NETWORK_FEATURE_INFO"

    goto/16 :goto_0

    .line 1630
    :sswitch_50
    const-string v0, "RIL_UNSOL_SRVCC_HANDOVER_INFO_INDICATION"

    goto/16 :goto_0

    .line 1632
    :sswitch_51
    const-string v0, "RIL_UNSOL_RAC_UPDATE"

    goto/16 :goto_0

    .line 1633
    :sswitch_52
    const-string v0, "RIL_UNSOL_REMOVE_RESTRICT_EUTRAN"

    goto/16 :goto_0

    .line 1636
    :sswitch_53
    const-string v0, "RIL_UNSOL_MD_STATE_CHANGE"

    goto/16 :goto_0

    .line 1638
    :sswitch_54
    const-string v0, "UNSOL_STK_CC_ALPHA_NOTIFY"

    goto/16 :goto_0

    .line 1640
    :sswitch_55
    const-string v0, "RIL_UNSOL_IMS_ENABLE_START"

    goto/16 :goto_0

    .line 1641
    :sswitch_56
    const-string v0, "RIL_UNSOL_IMS_DISABLE_START"

    goto/16 :goto_0

    .line 1531
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
    .line 1459
    const/4 v0, 0x0

    return-object v0
.end method

.method static retToString(ILjava/lang/Object;)Ljava/lang/String;
    .locals 9
    .param p0, "req"    # I
    .param p1, "ret"    # Ljava/lang/Object;

    .prologue
    .line 1973
    if-nez p1, :cond_0

    const-string v4, ""

    .line 2007
    .end local p1    # "ret":Ljava/lang/Object;
    :goto_0
    return-object v4

    .line 1978
    .restart local p1    # "ret":Ljava/lang/Object;
    :cond_0
    instance-of v7, p1, [I

    if-eqz v7, :cond_2

    .line 1979
    check-cast p1, [I

    .end local p1    # "ret":Ljava/lang/Object;
    move-object v2, p1

    check-cast v2, [I

    .line 1980
    .local v2, "intArray":[I
    array-length v3, v2

    .line 1981
    .local v3, "length":I
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "{"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1982
    .local v5, "sb":Ljava/lang/StringBuilder;
    if-lez v3, :cond_1

    .line 1983
    const/4 v0, 0x0

    .line 1984
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    aget v7, v2, v0

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1985
    :goto_1
    if-ge v1, v3, :cond_1

    .line 1986
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

    .line 1989
    .end local v1    # "i":I
    :cond_1
    const-string v7, "}"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1990
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1991
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

    .line 1992
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "ret":Ljava/lang/Object;
    move-object v6, p1

    check-cast v6, [Ljava/lang/String;

    .line 1993
    .local v6, "strings":[Ljava/lang/String;
    array-length v3, v6

    .line 1994
    .restart local v3    # "length":I
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "{"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1995
    .restart local v5    # "sb":Ljava/lang/StringBuilder;
    if-lez v3, :cond_3

    .line 1996
    const/4 v0, 0x0

    .line 1997
    .restart local v0    # "i":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aget-object v7, v6, v0

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1998
    :goto_2
    if-ge v1, v3, :cond_3

    .line 1999
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

    .line 2002
    .end local v1    # "i":I
    :cond_3
    const-string v7, "}"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2003
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2004
    .restart local v4    # "s":Ljava/lang/String;
    goto :goto_0

    .line 2005
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
    .line 2011
    const-string v0, "IMS_RILA"

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

    .line 2013
    return-void
.end method

.method private riljLogv(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 2016
    const-string v0, "IMS_RILA"

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

    .line 2018
    return-void
.end method

.method private send(Lcom/mediatek/internal/telephony/ims/RILRequest;)V
    .locals 3
    .param p1, "rr"    # Lcom/mediatek/internal/telephony/ims/RILRequest;

    .prologue
    const/4 v2, 0x1

    .line 1209
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mSocket:Landroid/net/LocalSocket;

    if-nez v1, :cond_0

    .line 1210
    const/4 v1, 0x0

    invoke-virtual {p1, v2, v1}, Lcom/mediatek/internal/telephony/ims/RILRequest;->onError(ILjava/lang/Object;)V

    .line 1211
    invoke-virtual {p1}, Lcom/mediatek/internal/telephony/ims/RILRequest;->release()V

    .line 1220
    :goto_0
    return-void

    .line 1215
    :cond_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mSender:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$ImsRILSender;

    invoke-virtual {v1, v2, p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$ImsRILSender;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1217
    .local v0, "msg":Landroid/os/Message;
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->acquireWakeLock()V

    .line 1219
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private switchToRadioState(Lcom/mediatek/internal/telephony/ims/ImsCommandsInterface$RadioState;)V
    .locals 0
    .param p1, "newState"    # Lcom/mediatek/internal/telephony/ims/ImsCommandsInterface$RadioState;

    .prologue
    .line 2660
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->setRadioState(Lcom/mediatek/internal/telephony/ims/ImsCommandsInterface$RadioState;)V

    .line 2661
    return-void
.end method

.method private unsljLog(I)V
    .locals 2
    .param p1, "response"    # I

    .prologue
    .line 2021
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

    .line 2022
    return-void
.end method

.method private unsljLogMore(ILjava/lang/String;)V
    .locals 2
    .param p1, "response"    # I
    .param p2, "more"    # Ljava/lang/String;

    .prologue
    .line 2025
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

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2026
    return-void
.end method

.method private unsljLogRet(ILjava/lang/Object;)V
    .locals 2
    .param p1, "response"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .prologue
    .line 2029
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

    .line 2030
    return-void
.end method

.method private unsljLogvRet(ILjava/lang/Object;)V
    .locals 2
    .param p1, "response"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .prologue
    .line 2033
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

    .line 2034
    return-void
.end method


# virtual methods
.method public accept()V
    .locals 3

    .prologue
    .line 528
    const/16 v1, 0x28

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/ims/RILRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/internal/telephony/ims/RILRequest;

    move-result-object v0

    .line 531
    .local v0, "rr":Lcom/mediatek/internal/telephony/ims/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/mediatek/internal/telephony/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 533
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->send(Lcom/mediatek/internal/telephony/ims/RILRequest;)V

    .line 535
    return-void
.end method

.method public acceptVtCallWithVoiceOnly(ILandroid/os/Message;)V
    .locals 3
    .param p1, "callId"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 2635
    const/16 v1, 0x843

    invoke-static {v1, p2}, Lcom/mediatek/internal/telephony/ims/RILRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/internal/telephony/ims/RILRequest;

    move-result-object v0

    .line 2637
    .local v0, "rr":Lcom/mediatek/internal/telephony/ims/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/mediatek/internal/telephony/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2640
    iget-object v1, v0, Lcom/mediatek/internal/telephony/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2641
    iget-object v1, v0, Lcom/mediatek/internal/telephony/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2643
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->send(Lcom/mediatek/internal/telephony/ims/RILRequest;)V

    .line 2644
    return-void
.end method

.method public addConferenceMember(ILjava/lang/String;ILandroid/os/Message;)V
    .locals 3
    .param p1, "confCallId"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "callIdToAdd"    # I
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 727
    const/16 v1, 0x83a

    invoke-static {v1, p4}, Lcom/mediatek/internal/telephony/ims/RILRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/internal/telephony/ims/RILRequest;

    move-result-object v0

    .line 729
    .local v0, "rr":Lcom/mediatek/internal/telephony/ims/RILRequest;
    iget-object v1, v0, Lcom/mediatek/internal/telephony/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 730
    iget-object v1, v0, Lcom/mediatek/internal/telephony/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 731
    iget-object v1, v0, Lcom/mediatek/internal/telephony/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 732
    iget-object v1, v0, Lcom/mediatek/internal/telephony/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 734
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/mediatek/internal/telephony/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 735
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->send(Lcom/mediatek/internal/telephony/ims/RILRequest;)V

    .line 736
    return-void
.end method

.method public conferenceDial([Ljava/lang/String;IZLandroid/os/Message;)V
    .locals 9
    .param p1, "participants"    # [Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "isVideoCall"    # Z
    .param p4, "result"    # Landroid/os/Message;

    .prologue
    .line 2552
    const/16 v6, 0x84a

    invoke-static {v6, p4}, Lcom/mediatek/internal/telephony/ims/RILRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/internal/telephony/ims/RILRequest;

    move-result-object v5

    .line 2554
    .local v5, "rr":Lcom/mediatek/internal/telephony/ims/RILRequest;
    array-length v2, p1

    .line 2561
    .local v2, "numberOfParticipants":I
    add-int/lit8 v6, v2, 0x2

    add-int/lit8 v3, v6, 0x1

    .line 2562
    .local v3, "numberOfStrings":I
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 2565
    .local v4, "participantList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v6, "IMS_RILA"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "conferenceDial: numberOfParticipants "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "numberOfStrings:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2569
    iget-object v6, v5, Lcom/mediatek/internal/telephony/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v6, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2571
    if-eqz p3, :cond_0

    .line 2572
    iget-object v6, v5, Lcom/mediatek/internal/telephony/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2577
    :goto_0
    iget-object v6, v5, Lcom/mediatek/internal/telephony/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2579
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2580
    .local v0, "dialNumber":Ljava/lang/String;
    iget-object v6, v5, Lcom/mediatek/internal/telephony/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2582
    const-string v6, "IMS_RILA"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "conferenceDial: dialnumber "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2574
    .end local v0    # "dialNumber":Ljava/lang/String;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    iget-object v6, v5, Lcom/mediatek/internal/telephony/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 2585
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-object v6, v5, Lcom/mediatek/internal/telephony/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2587
    const-string v6, "IMS_RILA"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "conferenceDial: clirMode "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2591
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v5, Lcom/mediatek/internal/telephony/ims/RILRequest;->mRequest:I

    invoke-static {v7}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2594
    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->send(Lcom/mediatek/internal/telephony/ims/RILRequest;)V

    .line 2596
    return-void
.end method

.method public dial(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 2488
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V

    .line 2489
    return-void
.end method

.method public dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .param p4, "result"    # Landroid/os/Message;

    .prologue
    .line 2493
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2494
    const/16 v1, 0xa

    invoke-static {v1, p4}, Lcom/mediatek/internal/telephony/ims/RILRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/internal/telephony/ims/RILRequest;

    move-result-object v0

    .line 2496
    .local v0, "rr":Lcom/mediatek/internal/telephony/ims/RILRequest;
    iget-object v1, v0, Lcom/mediatek/internal/telephony/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2497
    iget-object v1, v0, Lcom/mediatek/internal/telephony/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2499
    if-nez p3, :cond_0

    .line 2500
    iget-object v1, v0, Lcom/mediatek/internal/telephony/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2508
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/mediatek/internal/telephony/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2510
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->send(Lcom/mediatek/internal/telephony/ims/RILRequest;)V

    .line 2518
    :goto_1
    return-void

    .line 2502
    :cond_0
    iget-object v1, v0, Lcom/mediatek/internal/telephony/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2503
    iget-object v1, v0, Lcom/mediatek/internal/telephony/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2504
    iget-object v1, v0, Lcom/mediatek/internal/telephony/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getDcs()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2505
    iget-object v1, v0, Lcom/mediatek/internal/telephony/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    .line 2512
    .end local v0    # "rr":Lcom/mediatek/internal/telephony/ims/RILRequest;
    :cond_1
    const/16 v1, 0x83c

    invoke-static {v1, p4}, Lcom/mediatek/internal/telephony/ims/RILRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/internal/telephony/ims/RILRequest;

    move-result-object v0

    .line 2514
    .restart local v0    # "rr":Lcom/mediatek/internal/telephony/ims/RILRequest;
    iget-object v1, v0, Lcom/mediatek/internal/telephony/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2515
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/mediatek/internal/telephony/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2516
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->send(Lcom/mediatek/internal/telephony/ims/RILRequest;)V

    goto :goto_1
.end method

.method public emergencyDial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .param p4, "result"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 2522
    const/16 v1, 0x827

    invoke-static {v1, p4}, Lcom/mediatek/internal/telephony/ims/RILRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/internal/telephony/ims/RILRequest;

    move-result-object v0

    .line 2524
    .local v0, "rr":Lcom/mediatek/internal/telephony/ims/RILRequest;
    iget-object v1, v0, Lcom/mediatek/internal/telephony/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2525
    iget-object v1, v0, Lcom/mediatek/internal/telephony/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2526
    iget-object v1, v0, Lcom/mediatek/internal/telephony/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2528
    if-nez p3, :cond_0

    .line 2529
    iget-object v1, v0, Lcom/mediatek/internal/telephony/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2537
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/mediatek/internal/telephony/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2539
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->send(Lcom/mediatek/internal/telephony/ims/RILRequest;)V

    .line 2540
    return-void

    .line 2531
    :cond_0
    iget-object v1, v0, Lcom/mediatek/internal/telephony/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2532
    iget-object v1, v0, Lcom/mediatek/internal/telephony/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2533
    iget-object v1, v0, Lcom/mediatek/internal/telephony/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getDcs()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2534
    iget-object v1, v0, Lcom/mediatek/internal/telephony/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0
.end method

.method public getCallInfo(Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;)Lcom/mediatek/internal/telephony/ims/ImsCallInfo;
    .locals 6
    .param p1, "state"    # Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    .prologue
    .line 838
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

    .line 839
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/internal/telephony/ims/ImsCallInfo;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;

    .line 840
    .local v0, "callInfo":Lcom/mediatek/internal/telephony/ims/ImsCallInfo;
    const-string v3, "IMS_RILA"

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

    .line 842
    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;->mState:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    if-ne v3, p1, :cond_0

    .line 846
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
    .line 828
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mCallConnections:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;

    return-object v0
.end method

.method public getLastCallFailCause(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 802
    const/16 v1, 0x12

    invoke-static {v1, p1}, Lcom/mediatek/internal/telephony/ims/RILRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/internal/telephony/ims/RILRequest;

    move-result-object v0

    .line 805
    .local v0, "rr":Lcom/mediatek/internal/telephony/ims/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/mediatek/internal/telephony/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 807
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->send(Lcom/mediatek/internal/telephony/ims/RILRequest;)V

    .line 808
    return-void
.end method

.method public hangupAllCall(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 815
    const/16 v1, 0x824

    invoke-static {v1, p1}, Lcom/mediatek/internal/telephony/ims/RILRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/internal/telephony/ims/RILRequest;

    move-result-object v0

    .line 817
    .local v0, "rr":Lcom/mediatek/internal/telephony/ims/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/mediatek/internal/telephony/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 819
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->send(Lcom/mediatek/internal/telephony/ims/RILRequest;)V

    .line 820
    return-void
.end method

.method public hold(ILandroid/os/Message;)V
    .locals 3
    .param p1, "callId"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 571
    const/16 v1, 0x84f

    invoke-static {v1, p2}, Lcom/mediatek/internal/telephony/ims/RILRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/internal/telephony/ims/RILRequest;

    move-result-object v0

    .line 573
    .local v0, "rr":Lcom/mediatek/internal/telephony/ims/RILRequest;
    iget-object v1, v0, Lcom/mediatek/internal/telephony/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 574
    iget-object v1, v0, Lcom/mediatek/internal/telephony/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 577
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/mediatek/internal/telephony/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 579
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->send(Lcom/mediatek/internal/telephony/ims/RILRequest;)V

    .line 580
    return-void
.end method

.method public inviteParticipants(ILjava/lang/String;Landroid/os/Message;)V
    .locals 5
    .param p1, "confCallId"    # I
    .param p2, "participant"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 760
    const/4 v3, -0x1

    .line 762
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

    .line 763
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/internal/telephony/ims/ImsCallInfo;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;

    .line 764
    .local v0, "callInfo":Lcom/mediatek/internal/telephony/ims/ImsCallInfo;
    iget-object v4, v0, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;->mCallNum:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 765
    iget-object v4, v0, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;->mCallId:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 770
    .end local v0    # "callInfo":Lcom/mediatek/internal/telephony/ims/ImsCallInfo;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/internal/telephony/ims/ImsCallInfo;>;"
    :cond_1
    invoke-virtual {p0, p1, p2, v3, p3}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->addConferenceMember(ILjava/lang/String;ILandroid/os/Message;)V

    .line 771
    return-void
.end method

.method public invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "strings"    # [Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 879
    const/16 v1, 0x3c

    invoke-static {v1, p2}, Lcom/mediatek/internal/telephony/ims/RILRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/internal/telephony/ims/RILRequest;

    move-result-object v0

    .line 882
    .local v0, "rr":Lcom/mediatek/internal/telephony/ims/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/mediatek/internal/telephony/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 884
    iget-object v1, v0, Lcom/mediatek/internal/telephony/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 886
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->send(Lcom/mediatek/internal/telephony/ims/RILRequest;)V

    .line 887
    return-void
.end method

.method public merge(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 602
    invoke-static {}, Lcom/mediatek/common/mom/MobileManagerUtils;->isSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 603
    const-string v1, "sub-permission.MAKE_CONFERENCE_CALL"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->checkMoMSSubPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 617
    :goto_0
    return-void

    .line 609
    :cond_0
    const/16 v1, 0x10

    invoke-static {v1, p1}, Lcom/mediatek/internal/telephony/ims/RILRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/internal/telephony/ims/RILRequest;

    move-result-object v0

    .line 612
    .local v0, "rr":Lcom/mediatek/internal/telephony/ims/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/mediatek/internal/telephony/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 615
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->handleChldRelatedRequest(Lcom/mediatek/internal/telephony/ims/RILRequest;)V

    goto :goto_0
.end method

.method public reject(I)V
    .locals 3
    .param p1, "callId"    # I

    .prologue
    .line 538
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IMS reject : callId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 540
    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/ims/RILRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/internal/telephony/ims/RILRequest;

    move-result-object v0

    .line 542
    .local v0, "rr":Lcom/mediatek/internal/telephony/ims/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/mediatek/internal/telephony/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 545
    iget-object v1, v0, Lcom/mediatek/internal/telephony/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 546
    iget-object v1, v0, Lcom/mediatek/internal/telephony/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 548
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->send(Lcom/mediatek/internal/telephony/ims/RILRequest;)V

    .line 549
    return-void
.end method

.method public removeConferenceMember(ILjava/lang/String;ILandroid/os/Message;)V
    .locals 3
    .param p1, "confCallId"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "callIdToRemove"    # I
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 739
    const/16 v1, 0x83b

    invoke-static {v1, p4}, Lcom/mediatek/internal/telephony/ims/RILRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/internal/telephony/ims/RILRequest;

    move-result-object v0

    .line 741
    .local v0, "rr":Lcom/mediatek/internal/telephony/ims/RILRequest;
    iget-object v1, v0, Lcom/mediatek/internal/telephony/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 742
    iget-object v1, v0, Lcom/mediatek/internal/telephony/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 743
    iget-object v1, v0, Lcom/mediatek/internal/telephony/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 744
    iget-object v1, v0, Lcom/mediatek/internal/telephony/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 746
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/mediatek/internal/telephony/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 747
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->send(Lcom/mediatek/internal/telephony/ims/RILRequest;)V

    .line 748
    return-void
.end method

.method public removeParticipants(ILjava/lang/String;Landroid/os/Message;)V
    .locals 5
    .param p1, "confCallId"    # I
    .param p2, "participant"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 782
    const/4 v3, -0x1

    .line 784
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

    .line 785
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/internal/telephony/ims/ImsCallInfo;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;

    .line 786
    .local v0, "callInfo":Lcom/mediatek/internal/telephony/ims/ImsCallInfo;
    iget-object v4, v0, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;->mCallNum:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 787
    iget-object v4, v0, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;->mCallId:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 792
    .end local v0    # "callInfo":Lcom/mediatek/internal/telephony/ims/ImsCallInfo;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/internal/telephony/ims/ImsCallInfo;>;"
    :cond_1
    invoke-virtual {p0, p1, p2, v3, p3}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->removeConferenceMember(ILjava/lang/String;ILandroid/os/Message;)V

    .line 793
    return-void
.end method

.method public replaceVtCall(ILandroid/os/Message;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 2647
    const/16 v1, 0x844

    invoke-static {v1, p2}, Lcom/mediatek/internal/telephony/ims/RILRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/internal/telephony/ims/RILRequest;

    move-result-object v0

    .line 2650
    .local v0, "rr":Lcom/mediatek/internal/telephony/ims/RILRequest;
    iget-object v1, v0, Lcom/mediatek/internal/telephony/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2651
    iget-object v1, v0, Lcom/mediatek/internal/telephony/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2653
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/mediatek/internal/telephony/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2655
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->send(Lcom/mediatek/internal/telephony/ims/RILRequest;)V

    .line 2656
    return-void
.end method

.method public resume(ILandroid/os/Message;)V
    .locals 3
    .param p1, "callId"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 588
    const/16 v1, 0x83d

    invoke-static {v1, p2}, Lcom/mediatek/internal/telephony/ims/RILRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/internal/telephony/ims/RILRequest;

    move-result-object v0

    .line 590
    .local v0, "rr":Lcom/mediatek/internal/telephony/ims/RILRequest;
    iget-object v1, v0, Lcom/mediatek/internal/telephony/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 591
    iget-object v1, v0, Lcom/mediatek/internal/telephony/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 594
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/mediatek/internal/telephony/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 596
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->send(Lcom/mediatek/internal/telephony/ims/RILRequest;)V

    .line 597
    return-void
.end method

.method public sendDtmf(CLandroid/os/Message;)V
    .locals 3
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 620
    const/16 v1, 0x18

    invoke-static {v1, p2}, Lcom/mediatek/internal/telephony/ims/RILRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/internal/telephony/ims/RILRequest;

    move-result-object v0

    .line 623
    .local v0, "rr":Lcom/mediatek/internal/telephony/ims/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/mediatek/internal/telephony/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 625
    iget-object v1, v0, Lcom/mediatek/internal/telephony/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 627
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->send(Lcom/mediatek/internal/telephony/ims/RILRequest;)V

    .line 629
    return-void
.end method

.method public sendWfcProfileInfo(I)V
    .locals 5
    .param p1, "wfcPreference"    # I

    .prologue
    const/4 v4, 0x0

    .line 871
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    .line 872
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

    .line 873
    const/4 v1, 0x1

    const-string v2, ""

    aput-object v2, v0, v1

    .line 874
    const-string v1, "IMS_RILA"

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

    .line 875
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 876
    return-void
.end method

.method public setCallIndication(III)V
    .locals 3
    .param p1, "mode"    # I
    .param p2, "callId"    # I
    .param p3, "seqNum"    # I

    .prologue
    .line 689
    const/16 v1, 0x826

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/ims/RILRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/internal/telephony/ims/RILRequest;

    move-result-object v0

    .line 692
    .local v0, "rr":Lcom/mediatek/internal/telephony/ims/RILRequest;
    iget-object v1, v0, Lcom/mediatek/internal/telephony/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 693
    iget-object v1, v0, Lcom/mediatek/internal/telephony/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 694
    iget-object v1, v0, Lcom/mediatek/internal/telephony/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 695
    iget-object v1, v0, Lcom/mediatek/internal/telephony/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 697
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/mediatek/internal/telephony/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 700
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->send(Lcom/mediatek/internal/telephony/ims/RILRequest;)V

    .line 702
    return-void
.end method

.method public setEccServiceCategory(I)V
    .locals 3
    .param p1, "serviceCategory"    # I

    .prologue
    .line 2600
    const/16 v1, 0x828

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/ims/RILRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/internal/telephony/ims/RILRequest;

    move-result-object v0

    .line 2602
    .local v0, "rr":Lcom/mediatek/internal/telephony/ims/RILRequest;
    iget-object v1, v0, Lcom/mediatek/internal/telephony/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2603
    iget-object v1, v0, Lcom/mediatek/internal/telephony/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2605
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/mediatek/internal/telephony/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2608
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->send(Lcom/mediatek/internal/telephony/ims/RILRequest;)V

    .line 2609
    return-void
.end method

.method public setMute(ZLandroid/os/Message;)V
    .locals 4
    .param p1, "enableMute"    # Z
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 471
    const/16 v2, 0x35

    invoke-static {v2, p2}, Lcom/mediatek/internal/telephony/ims/RILRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/internal/telephony/ims/RILRequest;

    move-result-object v0

    .line 474
    .local v0, "rr":Lcom/mediatek/internal/telephony/ims/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/mediatek/internal/telephony/ims/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 477
    iget-object v2, v0, Lcom/mediatek/internal/telephony/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 478
    iget-object v2, v0, Lcom/mediatek/internal/telephony/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 480
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->send(Lcom/mediatek/internal/telephony/ims/RILRequest;)V

    .line 481
    return-void

    .line 478
    :cond_0
    const/4 v1, 0x0

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
    .line 495
    const-string v6, "DIALSOURCE_IMS"

    .line 497
    .local v6, "atCmdString":Ljava/lang/String;
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mMoCall:Lcom/mediatek/internal/telephony/ims/MoCallInfo;

    if-eqz v0, :cond_0

    const-string v0, "IMS_RILA"

    const-string v1, "IMS: mMoCall is not null when dial !!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    :cond_0
    new-instance v0, Lcom/mediatek/internal/telephony/ims/MoCallInfo;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/internal/telephony/ims/MoCallInfo;-><init>(Ljava/lang/String;IZZLandroid/os/Message;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mMoCall:Lcom/mediatek/internal/telephony/ims/MoCallInfo;

    .line 501
    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->executeCommandResponse(Ljava/lang/String;)Ljava/lang/String;

    .line 502
    return-void
.end method

.method public startConference([Ljava/lang/String;IZLandroid/os/Message;)V
    .locals 3
    .param p1, "participants"    # [Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "isVideoCall"    # Z
    .param p4, "result"    # Landroid/os/Message;

    .prologue
    .line 515
    const-string v0, "DIALSOURCE_IMS"

    .line 517
    .local v0, "atCmdString":Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mConferenceCallDialInfo:Lcom/mediatek/internal/telephony/ims/ConferenceCallDialInfo;

    if-eqz v1, :cond_0

    .line 518
    const-string v1, "IMS_RILA"

    const-string v2, "IMS: ConferenceCallDialInfo is not null when dial !!"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    :cond_0
    new-instance v1, Lcom/mediatek/internal/telephony/ims/ConferenceCallDialInfo;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/mediatek/internal/telephony/ims/ConferenceCallDialInfo;-><init>([Ljava/lang/String;IZLandroid/os/Message;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mConferenceCallDialInfo:Lcom/mediatek/internal/telephony/ims/ConferenceCallDialInfo;

    .line 524
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->executeCommandResponse(Ljava/lang/String;)Ljava/lang/String;

    .line 525
    return-void
.end method

.method public startDtmf(CLandroid/os/Message;)V
    .locals 4
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 640
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$dtmfQueueHandler;

    monitor-enter v2

    .line 641
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$dtmfQueueHandler;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$dtmfQueueHandler;->hasSendChldRequest()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$dtmfQueueHandler;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$dtmfQueueHandler;->size()I

    move-result v1

    iget-object v3, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$dtmfQueueHandler;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v3, 0x20

    if-ge v1, v3, :cond_0

    .line 642
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$dtmfQueueHandler;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$dtmfQueueHandler;->isStart()Z

    move-result v1

    if-nez v1, :cond_1

    .line 643
    const/16 v1, 0x31

    invoke-static {v1, p2}, Lcom/mediatek/internal/telephony/ims/RILRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/internal/telephony/ims/RILRequest;

    move-result-object v0

    .line 645
    .local v0, "rr":Lcom/mediatek/internal/telephony/ims/RILRequest;
    iget-object v1, v0, Lcom/mediatek/internal/telephony/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 646
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$dtmfQueueHandler;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$dtmfQueueHandler;->start()V

    .line 647
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$dtmfQueueHandler;

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$dtmfQueueHandler;->add(Lcom/mediatek/internal/telephony/ims/RILRequest;)V

    .line 648
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$dtmfQueueHandler;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$dtmfQueueHandler;->size()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 649
    const-string v1, "send start dtmf"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 650
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v0, Lcom/mediatek/internal/telephony/ims/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 651
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->send(Lcom/mediatek/internal/telephony/ims/RILRequest;)V

    .line 657
    .end local v0    # "rr":Lcom/mediatek/internal/telephony/ims/RILRequest;
    :cond_0
    :goto_0
    monitor-exit v2

    .line 659
    return-void

    .line 654
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DTMF status conflict, want to start DTMF when status is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$dtmfQueueHandler;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$dtmfQueueHandler;->isStart()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    goto :goto_0

    .line 657
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public stopDtmf(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 669
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$dtmfQueueHandler;

    monitor-enter v2

    .line 670
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$dtmfQueueHandler;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$dtmfQueueHandler;->hasSendChldRequest()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$dtmfQueueHandler;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$dtmfQueueHandler;->size()I

    move-result v1

    iget-object v3, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$dtmfQueueHandler;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v3, 0x20

    if-ge v1, v3, :cond_0

    .line 671
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$dtmfQueueHandler;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$dtmfQueueHandler;->isStart()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 672
    const/16 v1, 0x32

    invoke-static {v1, p1}, Lcom/mediatek/internal/telephony/ims/RILRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/internal/telephony/ims/RILRequest;

    move-result-object v0

    .line 674
    .local v0, "rr":Lcom/mediatek/internal/telephony/ims/RILRequest;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$dtmfQueueHandler;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$dtmfQueueHandler;->stop()V

    .line 675
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$dtmfQueueHandler;

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$dtmfQueueHandler;->add(Lcom/mediatek/internal/telephony/ims/RILRequest;)V

    .line 676
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$dtmfQueueHandler;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$dtmfQueueHandler;->size()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 677
    const-string v1, "send stop dtmf"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 678
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v0, Lcom/mediatek/internal/telephony/ims/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 679
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->send(Lcom/mediatek/internal/telephony/ims/RILRequest;)V

    .line 685
    .end local v0    # "rr":Lcom/mediatek/internal/telephony/ims/RILRequest;
    :cond_0
    :goto_0
    monitor-exit v2

    .line 687
    return-void

    .line 682
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DTMF status conflict, want to start DTMF when status is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$dtmfQueueHandler;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$dtmfQueueHandler;->isStart()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    goto :goto_0

    .line 685
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public swap(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 854
    const/16 v1, 0xf

    invoke-static {v1, p1}, Lcom/mediatek/internal/telephony/ims/RILRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/internal/telephony/ims/RILRequest;

    move-result-object v0

    .line 858
    .local v0, "rr":Lcom/mediatek/internal/telephony/ims/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/mediatek/internal/telephony/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 861
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->handleChldRelatedRequest(Lcom/mediatek/internal/telephony/ims/RILRequest;)V

    .line 864
    return-void
.end method

.method public terminate(I)V
    .locals 3
    .param p1, "callId"    # I

    .prologue
    .line 552
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IMS terminate : callId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 554
    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/ims/RILRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/internal/telephony/ims/RILRequest;

    move-result-object v0

    .line 556
    .local v0, "rr":Lcom/mediatek/internal/telephony/ims/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/mediatek/internal/telephony/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 559
    iget-object v1, v0, Lcom/mediatek/internal/telephony/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 560
    iget-object v1, v0, Lcom/mediatek/internal/telephony/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 562
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->send(Lcom/mediatek/internal/telephony/ims/RILRequest;)V

    .line 563
    return-void
.end method

.method public turnOffIms(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 715
    const/16 v1, 0x82e

    invoke-static {v1, p1}, Lcom/mediatek/internal/telephony/ims/RILRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/internal/telephony/ims/RILRequest;

    move-result-object v0

    .line 717
    .local v0, "rr":Lcom/mediatek/internal/telephony/ims/RILRequest;
    iget-object v1, v0, Lcom/mediatek/internal/telephony/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 718
    iget-object v1, v0, Lcom/mediatek/internal/telephony/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 720
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/mediatek/internal/telephony/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 721
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->send(Lcom/mediatek/internal/telephony/ims/RILRequest;)V

    .line 723
    return-void
.end method

.method public turnOnIms(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 705
    const/16 v1, 0x82e

    invoke-static {v1, p1}, Lcom/mediatek/internal/telephony/ims/RILRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/internal/telephony/ims/RILRequest;

    move-result-object v0

    .line 707
    .local v0, "rr":Lcom/mediatek/internal/telephony/ims/RILRequest;
    iget-object v1, v0, Lcom/mediatek/internal/telephony/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 708
    iget-object v1, v0, Lcom/mediatek/internal/telephony/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 710
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/mediatek/internal/telephony/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 711
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->send(Lcom/mediatek/internal/telephony/ims/RILRequest;)V

    .line 712
    return-void
.end method

.method public vtDial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .param p4, "result"    # Landroid/os/Message;

    .prologue
    .line 2614
    const/16 v1, 0x842

    invoke-static {v1, p4}, Lcom/mediatek/internal/telephony/ims/RILRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/internal/telephony/ims/RILRequest;

    move-result-object v0

    .line 2616
    .local v0, "rr":Lcom/mediatek/internal/telephony/ims/RILRequest;
    iget-object v1, v0, Lcom/mediatek/internal/telephony/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2617
    iget-object v1, v0, Lcom/mediatek/internal/telephony/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2619
    if-nez p3, :cond_0

    .line 2620
    iget-object v1, v0, Lcom/mediatek/internal/telephony/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2628
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/mediatek/internal/telephony/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2630
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->send(Lcom/mediatek/internal/telephony/ims/RILRequest;)V

    .line 2631
    return-void

    .line 2622
    :cond_0
    iget-object v1, v0, Lcom/mediatek/internal/telephony/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2623
    iget-object v1, v0, Lcom/mediatek/internal/telephony/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2624
    iget-object v1, v0, Lcom/mediatek/internal/telephony/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getDcs()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2625
    iget-object v1, v0, Lcom/mediatek/internal/telephony/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0
.end method
