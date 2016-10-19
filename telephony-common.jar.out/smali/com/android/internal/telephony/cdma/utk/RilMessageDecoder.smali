.class Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;
.super Lcom/android/internal/util/StateMachine;
.source "RilMessageDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder$1;,
        Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder$StateCmdParamsReady;,
        Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder$StateStart;
    }
.end annotation


# static fields
.field private static final CMD_PARAMS_READY:I = 0x2

.field private static final CMD_START:I = 0x1

.field private static sInstanceSim1:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

.field private static sInstanceSim2:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;


# instance fields
.field private mCaller:Landroid/os/Handler;

.field private mCmdParamsFactory:Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;

.field private mCurrentRilMessage:Lcom/android/internal/telephony/cdma/utk/RilMessage;

.field private mPhoneId:I

.field private mStateCmdParamsReady:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder$StateCmdParamsReady;

.field private mStateStart:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder$StateStart;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    sput-object v0, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->sInstanceSim1:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

    .line 41
    sput-object v0, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->sInstanceSim2:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

    return-void
.end method

.method private constructor <init>(Landroid/os/Handler;Lcom/android/internal/telephony/uicc/IccFileHandler;I)V
    .locals 2
    .param p1, "caller"    # Landroid/os/Handler;
    .param p2, "fh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;
    .param p3, "phoneId"    # I

    .prologue
    const/4 v1, 0x0

    .line 112
    const-string v0, "RilMessageDecoder"

    invoke-direct {p0, v0}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 42
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->mCmdParamsFactory:Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;

    .line 43
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->mCurrentRilMessage:Lcom/android/internal/telephony/cdma/utk/RilMessage;

    .line 44
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->mCaller:Landroid/os/Handler;

    .line 48
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder$StateStart;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder$StateStart;-><init>(Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->mStateStart:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder$StateStart;

    .line 49
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder$StateCmdParamsReady;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder$StateCmdParamsReady;-><init>(Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->mStateCmdParamsReady:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder$StateCmdParamsReady;

    .line 114
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->mStateStart:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder$StateStart;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->addState(Lcom/android/internal/util/State;)V

    .line 115
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->mStateCmdParamsReady:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder$StateCmdParamsReady;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->addState(Lcom/android/internal/util/State;)V

    .line 116
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->mStateStart:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder$StateStart;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->setInitialState(Lcom/android/internal/util/State;)V

    .line 118
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->mCaller:Landroid/os/Handler;

    .line 119
    iput p3, p0, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->mPhoneId:I

    .line 120
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->mCaller:Landroid/os/Handler;

    check-cast v0, Lcom/android/internal/telephony/cdma/utk/UtkService;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/utk/UtkService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, p2, v0}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->getInstance(Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;Lcom/android/internal/telephony/uicc/IccFileHandler;Landroid/content/Context;)Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->mCmdParamsFactory:Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;

    .line 122
    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;Lcom/android/internal/telephony/cdma/utk/RilMessage;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;
    .param p1, "x1"    # Lcom/android/internal/telephony/cdma/utk/RilMessage;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->decodeMessageParams(Lcom/android/internal/telephony/cdma/utk/RilMessage;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;)Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder$StateCmdParamsReady;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->mStateCmdParamsReady:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder$StateCmdParamsReady;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;)Lcom/android/internal/telephony/cdma/utk/RilMessage;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->mCurrentRilMessage:Lcom/android/internal/telephony/cdma/utk/RilMessage;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;Lcom/android/internal/telephony/cdma/utk/RilMessage;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;
    .param p1, "x1"    # Lcom/android/internal/telephony/cdma/utk/RilMessage;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->sendCmdForExecution(Lcom/android/internal/telephony/cdma/utk/RilMessage;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;)Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder$StateStart;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->mStateStart:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder$StateStart;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method private decodeMessageParams(Lcom/android/internal/telephony/cdma/utk/RilMessage;)Z
    .locals 5
    .param p1, "rilMsg"    # Lcom/android/internal/telephony/cdma/utk/RilMessage;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->mCurrentRilMessage:Lcom/android/internal/telephony/cdma/utk/RilMessage;

    .line 174
    iget v3, p1, Lcom/android/internal/telephony/cdma/utk/RilMessage;->mId:I

    sparse-switch v3, :sswitch_data_0

    .line 213
    const/4 v0, 0x0

    .line 216
    .local v0, "decodingStarted":Z
    :goto_0
    return v0

    .line 177
    .end local v0    # "decodingStarted":Z
    :sswitch_0
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->mCurrentRilMessage:Lcom/android/internal/telephony/cdma/utk/RilMessage;

    sget-object v4, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    iput-object v4, v3, Lcom/android/internal/telephony/cdma/utk/RilMessage;->mResCode:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    .line 178
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->mCurrentRilMessage:Lcom/android/internal/telephony/cdma/utk/RilMessage;

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->sendCmdForExecution(Lcom/android/internal/telephony/cdma/utk/RilMessage;)V

    .line 179
    const/4 v0, 0x0

    .line 180
    .restart local v0    # "decodingStarted":Z
    goto :goto_0

    .line 186
    .end local v0    # "decodingStarted":Z
    :sswitch_1
    const/4 v2, 0x0

    .line 188
    .local v2, "rawData":[B
    :try_start_0
    iget-object v3, p1, Lcom/android/internal/telephony/cdma/utk/RilMessage;->mData:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 197
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rawData = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    if-nez v2, :cond_0

    .line 199
    const-string v3, "rawData is null"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->mCmdParamsFactory:Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;

    invoke-static {v2}, Lcom/android/internal/telephony/cdma/utk/BerTlv;->decode([B)Lcom/android/internal/telephony/cdma/utk/BerTlv;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->make(Lcom/android/internal/telephony/cdma/utk/BerTlv;)V
    :try_end_1
    .catch Lcom/android/internal/telephony/cdma/utk/ResultException; {:try_start_1 .. :try_end_1} :catch_1

    .line 203
    const/4 v0, 0x1

    .restart local v0    # "decodingStarted":Z
    goto :goto_0

    .line 189
    .end local v0    # "decodingStarted":Z
    :catch_0
    move-exception v1

    .line 191
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "decodeMessageParams dropping zombie messages"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    const/4 v0, 0x0

    .line 193
    .restart local v0    # "decodingStarted":Z
    goto :goto_0

    .line 204
    .end local v0    # "decodingStarted":Z
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 206
    .local v1, "e":Lcom/android/internal/telephony/cdma/utk/ResultException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "decodeMessageParams: caught ResultException e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->mCurrentRilMessage:Lcom/android/internal/telephony/cdma/utk/RilMessage;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/ResultException;->result()Lcom/android/internal/telephony/cdma/utk/ResultCode;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/cdma/utk/RilMessage;->mResCode:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    .line 208
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->mCurrentRilMessage:Lcom/android/internal/telephony/cdma/utk/RilMessage;

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->sendCmdForExecution(Lcom/android/internal/telephony/cdma/utk/RilMessage;)V

    .line 209
    const/4 v0, 0x0

    .line 211
    .restart local v0    # "decodingStarted":Z
    goto :goto_0

    .line 174
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_1
        0x4 -> :sswitch_0
        0x5 -> :sswitch_1
        0x1e -> :sswitch_1
    .end sparse-switch
.end method

.method public static declared-synchronized getInstance(Landroid/os/Handler;Lcom/android/internal/telephony/uicc/IccFileHandler;I)Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;
    .locals 4
    .param p0, "caller"    # Landroid/os/Handler;
    .param p1, "fh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;
    .param p2, "phoneId"    # I

    .prologue
    .line 60
    const-class v1, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

    monitor-enter v1

    if-nez p2, :cond_1

    .line 61
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->sInstanceSim1:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

    if-nez v0, :cond_0

    .line 62
    const-string v0, "RilMessageDecoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Create RilMessageDecoder instance"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;-><init>(Landroid/os/Handler;Lcom/android/internal/telephony/uicc/IccFileHandler;I)V

    sput-object v0, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->sInstanceSim1:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

    .line 64
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->sInstanceSim1:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->start()V

    .line 66
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->sInstanceSim1:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    :goto_0
    monitor-exit v1

    return-object v0

    .line 67
    :cond_1
    const/4 v0, 0x1

    if-ne v0, p2, :cond_3

    .line 68
    :try_start_1
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->sInstanceSim2:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

    if-nez v0, :cond_2

    .line 69
    const-string v0, "RilMessageDecoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Create RilMessageDecoder instance"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;-><init>(Landroid/os/Handler;Lcom/android/internal/telephony/uicc/IccFileHandler;I)V

    sput-object v0, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->sInstanceSim2:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

    .line 71
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->sInstanceSim2:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->start()V

    .line 73
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->sInstanceSim2:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

    goto :goto_0

    .line 75
    :cond_3
    const-string v0, "RilMessageDecoder"

    const-string v2, "Invalid phone Id and just return null"

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    const/4 v0, 0x0

    goto :goto_0

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private sendCmdForExecution(Lcom/android/internal/telephony/cdma/utk/RilMessage;)V
    .locals 4
    .param p1, "rilMsg"    # Lcom/android/internal/telephony/cdma/utk/RilMessage;

    .prologue
    .line 106
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->mCaller:Landroid/os/Handler;

    const/16 v2, 0xa

    new-instance v3, Lcom/android/internal/telephony/cdma/utk/RilMessage;

    invoke-direct {v3, p1}, Lcom/android/internal/telephony/cdma/utk/RilMessage;-><init>(Lcom/android/internal/telephony/cdma/utk/RilMessage;)V

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 108
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 109
    return-void
.end method


# virtual methods
.method public dispose(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    const/4 v2, 0x0

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "decodeMessageParams: dispose obj"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    if-nez p1, :cond_0

    .line 222
    sput-object v2, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->sInstanceSim1:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

    .line 226
    :goto_0
    return-void

    .line 224
    :cond_0
    sput-object v2, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->sInstanceSim2:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

    goto :goto_0
.end method

.method public getPhoneId()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->mPhoneId:I

    return v0
.end method

.method public sendMsgParamsDecoded(Lcom/android/internal/telephony/cdma/utk/ResultCode;Lcom/android/internal/telephony/cdma/utk/CommandParams;)V
    .locals 2
    .param p1, "resCode"    # Lcom/android/internal/telephony/cdma/utk/ResultCode;
    .param p2, "cmdParams"    # Lcom/android/internal/telephony/cdma/utk/CommandParams;

    .prologue
    .line 99
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 100
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/utk/ResultCode;->value()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 101
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 102
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->sendMessage(Landroid/os/Message;)V

    .line 103
    return-void
.end method

.method public sendStartDecodingMessageParams(Lcom/android/internal/telephony/cdma/utk/RilMessage;)V
    .locals 2
    .param p1, "rilMsg"    # Lcom/android/internal/telephony/cdma/utk/RilMessage;

    .prologue
    .line 87
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 88
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 89
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->sendMessage(Landroid/os/Message;)V

    .line 90
    return-void
.end method
