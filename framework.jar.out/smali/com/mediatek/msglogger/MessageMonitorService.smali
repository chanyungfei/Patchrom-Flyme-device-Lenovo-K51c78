.class public Lcom/mediatek/msglogger/MessageMonitorService;
.super Lcom/mediatek/msgmonitorservice/IMessageLogger$Stub;
.source "MessageMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/msglogger/MessageMonitorService$MessageMonitorHandler;,
        Lcom/mediatek/msglogger/MessageMonitorService$MSGLoggerDeathRecipient;
    }
.end annotation


# static fields
.field protected static final DUMP_ALL_MSG_HISTORY:I = 0x7d2

.field protected static final DUMP_CALL_STACK:I = 0x7d4

.field protected static final DUMP_MSG_HISTORY_BY_NAME:I = 0x7d3

.field protected static final REGISTER_MSG_LOGGER:I = 0x7d0

.field private static final SIGNAL_STKFLT:I = 0x10

.field static final TAG:Ljava/lang/String; = "MessageMonitorService"

.field protected static final UNREGISTER_MSG_LOGGER:I = 0x7d1

.field private static mHandleThread:Landroid/os/HandlerThread;

.field protected static sMSGLoggerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/MessageMonitorLogger$MSGLoggerInfo;",
            "Lcom/mediatek/msgmonitorservice/IMessageLoggerWrapper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mMsgMonitorHandler:Lcom/mediatek/msglogger/MessageMonitorService$MessageMonitorHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mediatek/msglogger/MessageMonitorService;->sMSGLoggerMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/mediatek/msgmonitorservice/IMessageLogger$Stub;-><init>()V

    .line 34
    sget-object v0, Lcom/mediatek/msglogger/MessageMonitorService;->mHandleThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MessageMonitorServiceThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/mediatek/msglogger/MessageMonitorService;->mHandleThread:Landroid/os/HandlerThread;

    .line 36
    sget-object v0, Lcom/mediatek/msglogger/MessageMonitorService;->mHandleThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 37
    new-instance v0, Lcom/mediatek/msglogger/MessageMonitorService$MessageMonitorHandler;

    sget-object v1, Lcom/mediatek/msglogger/MessageMonitorService;->mHandleThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mediatek/msglogger/MessageMonitorService$MessageMonitorHandler;-><init>(Lcom/mediatek/msglogger/MessageMonitorService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mediatek/msglogger/MessageMonitorService;->mMsgMonitorHandler:Lcom/mediatek/msglogger/MessageMonitorService$MessageMonitorHandler;

    .line 38
    const-string v0, "MessageMonitorService"

    const-string v1, "Create MessageMonitorServiceThread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :goto_0
    return-void

    .line 40
    :cond_0
    const-string v0, "MessageMonitorService"

    const-string v1, "MessageMonitorServiceThread has exist. "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public dumpAllMessageHistory(I)V
    .locals 4
    .param p1, "pid"    # I

    .prologue
    .line 94
    iget-object v1, p0, Lcom/mediatek/msglogger/MessageMonitorService;->mMsgMonitorHandler:Lcom/mediatek/msglogger/MessageMonitorService$MessageMonitorHandler;

    const/16 v2, 0x7d2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/mediatek/msglogger/MessageMonitorService$MessageMonitorHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 95
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/mediatek/msglogger/MessageMonitorService;->mMsgMonitorHandler:Lcom/mediatek/msglogger/MessageMonitorService$MessageMonitorHandler;

    invoke-virtual {v1, v0}, Lcom/mediatek/msglogger/MessageMonitorService$MessageMonitorHandler;->sendMessage(Landroid/os/Message;)Z

    .line 96
    return-void
.end method

.method public dumpCallStack(I)V
    .locals 4
    .param p1, "pid"    # I

    .prologue
    .line 104
    iget-object v1, p0, Lcom/mediatek/msglogger/MessageMonitorService;->mMsgMonitorHandler:Lcom/mediatek/msglogger/MessageMonitorService$MessageMonitorHandler;

    const/16 v2, 0x7d4

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/mediatek/msglogger/MessageMonitorService$MessageMonitorHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 105
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/mediatek/msglogger/MessageMonitorService;->mMsgMonitorHandler:Lcom/mediatek/msglogger/MessageMonitorService$MessageMonitorHandler;

    invoke-virtual {v1, v0}, Lcom/mediatek/msglogger/MessageMonitorService$MessageMonitorHandler;->sendMessage(Landroid/os/Message;)Z

    .line 106
    return-void
.end method

.method public dumpMSGHistorybyName(Ljava/lang/String;)V
    .locals 3
    .param p1, "msgLoggerName"    # Ljava/lang/String;

    .prologue
    .line 99
    iget-object v1, p0, Lcom/mediatek/msglogger/MessageMonitorService;->mMsgMonitorHandler:Lcom/mediatek/msglogger/MessageMonitorService$MessageMonitorHandler;

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2, p1}, Lcom/mediatek/msglogger/MessageMonitorService$MessageMonitorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 100
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/mediatek/msglogger/MessageMonitorService;->mMsgMonitorHandler:Lcom/mediatek/msglogger/MessageMonitorService$MessageMonitorHandler;

    invoke-virtual {v1, v0}, Lcom/mediatek/msglogger/MessageMonitorService$MessageMonitorHandler;->sendMessage(Landroid/os/Message;)Z

    .line 101
    return-void
.end method

.method public registerMsgLogger(Ljava/lang/String;IILcom/mediatek/msgmonitorservice/IMessageLoggerWrapper;)V
    .locals 6
    .param p1, "msgLoggerName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "tid"    # I
    .param p4, "callback"    # Lcom/mediatek/msgmonitorservice/IMessageLoggerWrapper;

    .prologue
    .line 73
    const-string v3, "MessageMonitorService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RegisterMsgLogger "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    new-instance v2, Landroid/os/MessageMonitorLogger$MSGLoggerInfo;

    invoke-direct {v2}, Landroid/os/MessageMonitorLogger$MSGLoggerInfo;-><init>()V

    .line 75
    .local v2, "msgLoggerInfo":Landroid/os/MessageMonitorLogger$MSGLoggerInfo;
    iput-object p1, v2, Landroid/os/MessageMonitorLogger$MSGLoggerInfo;->msgLoggerName:Ljava/lang/String;

    .line 76
    iput p2, v2, Landroid/os/MessageMonitorLogger$MSGLoggerInfo;->msgLoggerPid:I

    .line 77
    iput p3, v2, Landroid/os/MessageMonitorLogger$MSGLoggerInfo;->msgLoggerTid:I

    .line 78
    sget-object v3, Lcom/mediatek/msglogger/MessageMonitorService;->sMSGLoggerMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    new-instance v1, Lcom/mediatek/msglogger/MessageMonitorService$MSGLoggerDeathRecipient;

    invoke-direct {v1, p0, p1}, Lcom/mediatek/msglogger/MessageMonitorService$MSGLoggerDeathRecipient;-><init>(Lcom/mediatek/msglogger/MessageMonitorService;Ljava/lang/String;)V

    .line 82
    .local v1, "mDeathRecipient":Lcom/mediatek/msglogger/MessageMonitorService$MSGLoggerDeathRecipient;
    :try_start_0
    invoke-interface {p4}, Lcom/mediatek/msgmonitorservice/IMessageLoggerWrapper;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :goto_0
    return-void

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "MessageMonitorService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RegisterMsgLogger:linkToDeath Failed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unregisterMsgLogger(Ljava/lang/String;)V
    .locals 3
    .param p1, "msgLoggerName"    # Ljava/lang/String;

    .prologue
    .line 89
    iget-object v1, p0, Lcom/mediatek/msglogger/MessageMonitorService;->mMsgMonitorHandler:Lcom/mediatek/msglogger/MessageMonitorService$MessageMonitorHandler;

    const/16 v2, 0x7d1

    invoke-virtual {v1, v2, p1}, Lcom/mediatek/msglogger/MessageMonitorService$MessageMonitorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 90
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/mediatek/msglogger/MessageMonitorService;->mMsgMonitorHandler:Lcom/mediatek/msglogger/MessageMonitorService$MessageMonitorHandler;

    invoke-virtual {v1, v0}, Lcom/mediatek/msglogger/MessageMonitorService$MessageMonitorHandler;->sendMessage(Landroid/os/Message;)Z

    .line 91
    return-void
.end method
