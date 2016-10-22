.class public Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;
.super Lcom/mediatek/internal/telephony/ltedc/DefaultRilDcArbitrator;
.source "SvlteRilArbitrator.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PHONE"

.field private static final MSG_SUSPEND_DATA_REQUEST:I = 0x0

.field private static final PS_REQUEST_QUEUE_THREAD_NAME:Ljava/lang/String; = "PsRequestQueueThread"


# instance fields
.field private mMainHandler:Landroid/os/Handler;

.field private mPsRequestQueueHandler:Landroid/os/Handler;

.field private mPsRequestQueueThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/PhoneBase;)V
    .locals 3
    .param p1, "ltePhone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p2, "nonLtePhone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/ltedc/DefaultRilDcArbitrator;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/PhoneBase;)V

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RilDcArbitrator: lteRil = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", non-lteRIL = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;->mNonLtePhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;->log(Ljava/lang/String;)V

    .line 79
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "PsRequestQueueThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;->mPsRequestQueueThread:Landroid/os/HandlerThread;

    .line 80
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;->mPsRequestQueueThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 82
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;->mPsRequestQueueThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 83
    .local v0, "looper":Landroid/os/Looper;
    new-instance v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator$1;

    invoke-direct {v1, p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator$1;-><init>(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;->mPsRequestQueueHandler:Landroid/os/Handler;

    .line 95
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;->mMainHandler:Landroid/os/Handler;

    .line 96
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;->suspendDataRequestInner()V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;)Lcom/android/internal/telephony/CommandsInterface;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;->mPsCi:Lcom/android/internal/telephony/CommandsInterface;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;)Lcom/android/internal/telephony/CommandsInterface;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;->mPsCi:Lcom/android/internal/telephony/CommandsInterface;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;)Lcom/android/internal/telephony/CommandsInterface;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;->mPsCi:Lcom/android/internal/telephony/CommandsInterface;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;)Lcom/android/internal/telephony/CommandsInterface;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;->mPsCi:Lcom/android/internal/telephony/CommandsInterface;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;)Lcom/android/internal/telephony/CommandsInterface;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;->mPsCi:Lcom/android/internal/telephony/CommandsInterface;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;)Lcom/android/internal/telephony/CommandsInterface;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;->mPsCi:Lcom/android/internal/telephony/CommandsInterface;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private enqueuePsRequest(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 247
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;->mPsRequestQueueHandler:Landroid/os/Handler;

    new-instance v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator$8;

    invoke-direct {v1, p0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator$8;-><init>(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 253
    return-void
.end method

.method private suspendDataRequestInner()V
    .locals 3

    .prologue
    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "suspendDataRequestInner E: mPsCi = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;->mPsCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;->log(Ljava/lang/String;)V

    .line 115
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;->mPsRequestQueueThread:Landroid/os/HandlerThread;

    monitor-enter v2

    .line 117
    :try_start_0
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;->mSuspendDataRequest:Z

    if-nez v1, :cond_0

    .line 119
    const-string v1, "mSuspendDataRequest is false, ignore suspend."

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    :goto_0
    return-void

    .line 122
    :cond_0
    :try_start_2
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;->mPsRequestQueueThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 126
    :goto_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "suspendDataRequestInner X: mPsCi = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;->mPsCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "ie":Ljava/lang/InterruptedException;
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 126
    .end local v0    # "ie":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method


# virtual methods
.method public deactivateDataCall(IILandroid/os/Message;)V
    .locals 2
    .param p1, "cid"    # I
    .param p2, "reason"    # I
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deactivateDataCall: mSuspendDataRequest = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;->mSuspendDataRequest:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mPsCi = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;->mPsCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;->log(Ljava/lang/String;)V

    .line 172
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;->mSuspendDataRequest:Z

    if-eqz v0, :cond_0

    .line 173
    new-instance v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator$3;-><init>(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;IILandroid/os/Message;)V

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;->enqueuePsRequest(Ljava/lang/Runnable;)V

    .line 182
    :goto_0
    return-void

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;->mPsCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->deactivateDataCall(IILandroid/os/Message;)V

    goto :goto_0
.end method

.method public dial(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;->mNonLtePhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->dial(Ljava/lang/String;ILandroid/os/Message;)V

    .line 101
    return-void
.end method

.method public getDataCallList(Landroid/os/Message;)V
    .locals 2
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDataCallList: mSuspendDataRequest = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;->mSuspendDataRequest:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPsCi = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;->mPsCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;->log(Ljava/lang/String;)V

    .line 220
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;->mSuspendDataRequest:Z

    if-eqz v0, :cond_0

    .line 221
    new-instance v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator$6;

    invoke-direct {v0, p0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator$6;-><init>(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;Landroid/os/Message;)V

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;->enqueuePsRequest(Ljava/lang/Runnable;)V

    .line 230
    :goto_0
    return-void

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;->mPsCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getDataCallList(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public getDataRegistrationState(Landroid/os/Message;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 234
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;->mSuspendDataRequest:Z

    if-eqz v0, :cond_0

    .line 235
    new-instance v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator$7;

    invoke-direct {v0, p0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator$7;-><init>(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;Landroid/os/Message;)V

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;->enqueuePsRequest(Ljava/lang/Runnable;)V

    .line 244
    :goto_0
    return-void

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;->mPsCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getDataRegistrationState(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public getLastDataCallFailCause(Landroid/os/Message;)V
    .locals 2
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getLastDataCallFailCause: mSuspendDataRequest = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;->mSuspendDataRequest:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPsCi = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;->mPsCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;->log(Ljava/lang/String;)V

    .line 204
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;->mSuspendDataRequest:Z

    if-eqz v0, :cond_0

    .line 205
    new-instance v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator$5;

    invoke-direct {v0, p0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator$5;-><init>(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;Landroid/os/Message;)V

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;->enqueuePsRequest(Ljava/lang/Runnable;)V

    .line 214
    :goto_0
    return-void

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;->mPsCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getLastDataCallFailCause(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 299
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IRAT_SvlteRilArbitrator] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    return-void
.end method

.method public resumeDataRilRequest()V
    .locals 2

    .prologue
    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resumeDataRequest: mPsCi = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;->mPsCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;->log(Ljava/lang/String;)V

    .line 133
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;->mSuspendDataRequest:Z

    .line 134
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;->mPsRequestQueueThread:Landroid/os/HandlerThread;

    monitor-enter v1

    .line 135
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;->mPsRequestQueueThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 136
    monitor-exit v1

    .line 137
    return-void

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public sendEnvelope(Ljava/lang/String;Landroid/os/Message;II)V
    .locals 1
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;
    .param p3, "cmdType"    # I
    .param p4, "mMutliSimType"    # I

    .prologue
    .line 277
    const/4 v0, 0x1

    if-ne v0, p4, :cond_0

    .line 278
    const-string v0, "send envelope command through mNonLtePhone"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;->log(Ljava/lang/String;)V

    .line 279
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;->mNonLtePhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V

    .line 291
    :goto_0
    return-void

    .line 280
    :cond_0
    const/4 v0, 0x2

    if-ne v0, p4, :cond_2

    .line 281
    const/4 v0, 0x3

    if-ne v0, p3, :cond_1

    .line 282
    const-string v0, "send envelope command through mLtePhone"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;->log(Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 285
    :cond_1
    const-string v0, "send envelope command through mNonLtePhone"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;->log(Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;->mNonLtePhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 289
    :cond_2
    const-string v0, "Invalid multiSimType! "

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public sendTerminalResponse(Ljava/lang/String;Landroid/os/Message;II)V
    .locals 2
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;
    .param p3, "cmdType"    # I
    .param p4, "mMutliSimType"    # I

    .prologue
    const/4 v1, 0x1

    .line 258
    if-ne v1, p4, :cond_0

    .line 259
    const-string v0, "send terminal response through mNonLtePhone"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;->log(Ljava/lang/String;)V

    .line 260
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;->mNonLtePhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->sendTerminalResponse(Ljava/lang/String;Landroid/os/Message;)V

    .line 272
    :goto_0
    return-void

    .line 261
    :cond_0
    const/4 v0, 0x2

    if-ne v0, p4, :cond_2

    .line 262
    if-ne v1, p3, :cond_1

    .line 263
    const-string v0, "send terminal response through mLtePhone"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;->log(Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->sendTerminalResponse(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 266
    :cond_1
    const-string v0, "send terminal response through mNonLtePhone"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;->log(Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;->mNonLtePhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->sendTerminalResponse(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 270
    :cond_2
    const-string v0, "Invalid multiSimType! "

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setDataAllowed(ZLandroid/os/Message;)V
    .locals 2
    .param p1, "allowed"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDataAllowed: mSuspendDataRequest = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;->mSuspendDataRequest:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mPsCi = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;->mPsCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", allowed = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;->log(Ljava/lang/String;)V

    .line 188
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;->mSuspendDataRequest:Z

    if-eqz v0, :cond_0

    .line 189
    new-instance v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator$4;-><init>(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;ZLandroid/os/Message;)V

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;->enqueuePsRequest(Ljava/lang/Runnable;)V

    .line 198
    :goto_0
    return-void

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;->mPsCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setDataAllowed(ZLandroid/os/Message;)V

    goto :goto_0
.end method

.method public setupDataCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 11
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
    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setupDataCall: mSuspendDataRequest = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;->mSuspendDataRequest:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mPsCi = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;->mPsCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", apn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;->log(Ljava/lang/String;)V

    .line 153
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;->mSuspendDataRequest:Z

    if-eqz v0, :cond_0

    .line 154
    new-instance v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator$2;-><init>(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;->enqueuePsRequest(Ljava/lang/Runnable;)V

    .line 165
    :goto_0
    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;->mPsCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Lcom/android/internal/telephony/CommandsInterface;->setupDataCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public suspendDataRilRequest()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "suspendDataRequest: mPsCi = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;->mPsCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;->log(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;->mPsRequestQueueHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 109
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;->mPsRequestQueueHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;->mSuspendDataRequest:Z

    .line 111
    return-void
.end method

.method public updatePsCi(Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 2
    .param p1, "psCi"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updatePsCi: mPsCi = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;->mPsCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", psCi = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;->log(Ljava/lang/String;)V

    .line 142
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;->mPsCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 143
    return-void
.end method
