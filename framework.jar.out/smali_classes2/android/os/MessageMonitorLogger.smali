.class public Landroid/os/MessageMonitorLogger;
.super Lcom/mediatek/anrappmanager/MessageLogger;
.source "MessageMonitorLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/MessageMonitorLogger$MessageLoggerCallbacks;,
        Landroid/os/MessageMonitorLogger$MsgLoggerHandler;,
        Landroid/os/MessageMonitorLogger$MonitorMSGInfo;,
        Landroid/os/MessageMonitorLogger$MSGLoggerInfo;
    }
.end annotation


# static fields
.field public static final DISABLE_MONITOR_EXECUTION_TIMEOUT_MSG:I = -0x1

.field public static final DISABLE_MONITOR_PENDING_TIMEOUT_MSG:I = -0x1

.field private static final IS_USER_BUILD:Z

.field public static final START_MONITOR_EXECUTION_TIMEOUT_MSG:I = 0xbb9

.field public static final START_MONITOR_PENDING_TIMEOUT_MSG:I = 0xbba

.field private static final TAG:Ljava/lang/String; = "MessageMonitorLogger"

.field public static mHandleThread:Landroid/os/HandlerThread;

.field private static mMessageLoggerCallbacks:Landroid/os/MessageMonitorLogger$MessageLoggerCallbacks;

.field public static mMsgLoggerHandler:Landroid/os/MessageMonitorLogger$MsgLoggerHandler;

.field public static monitorMsg:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Landroid/os/Message;",
            "Landroid/os/MessageMonitorLogger$MonitorMSGInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected static sEnableLooperLog:Z

.field protected static sMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/MessageMonitorLogger$MSGLoggerInfo;",
            "Landroid/os/MessageMonitorLogger;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mInstance:Landroid/os/MessageMonitorLogger;

.field private mMessageLoggerWrapper:Lcom/mediatek/msglogger/MessageLoggerWrapper;

.field protected mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/os/MessageMonitorLogger;->sMap:Ljava/util/HashMap;

    .line 24
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroid/os/MessageMonitorLogger;->monitorMsg:Ljava/util/concurrent/ConcurrentHashMap;

    .line 30
    const/4 v0, 0x0

    sput-object v0, Landroid/os/MessageMonitorLogger;->mMsgLoggerHandler:Landroid/os/MessageMonitorLogger$MsgLoggerHandler;

    .line 34
    const-string v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "userdebug"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/os/MessageMonitorLogger;->IS_USER_BUILD:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 106
    new-instance v3, Lcom/mediatek/anrappframeworks/ANRAppFrameworks;

    invoke-direct {v3}, Lcom/mediatek/anrappframeworks/ANRAppFrameworks;-><init>()V

    invoke-direct {p0, v3}, Lcom/mediatek/anrappmanager/MessageLogger;-><init>(Lcom/mediatek/anrappmanager/IFrameworks;)V

    .line 26
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/os/MessageMonitorLogger;->mMessageLoggerWrapper:Lcom/mediatek/msglogger/MessageLoggerWrapper;

    .line 107
    iput-object p1, p0, Landroid/os/MessageMonitorLogger;->mName:Ljava/lang/String;

    .line 108
    iput-object p0, p0, Landroid/os/MessageMonitorLogger;->mInstance:Landroid/os/MessageMonitorLogger;

    .line 109
    const-string v3, "msgmonitorservice"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 110
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/mediatek/msgmonitorservice/IMessageLogger$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/msgmonitorservice/IMessageLogger;

    move-result-object v2

    .line 113
    .local v2, "msgLoggerManager":Lcom/mediatek/msgmonitorservice/IMessageLogger;
    :try_start_0
    new-instance v3, Lcom/mediatek/msglogger/MessageLoggerWrapper;

    iget-object v4, p0, Landroid/os/MessageMonitorLogger;->mInstance:Landroid/os/MessageMonitorLogger;

    invoke-direct {v3, v4}, Lcom/mediatek/msglogger/MessageLoggerWrapper;-><init>(Landroid/os/MessageMonitorLogger;)V

    iput-object v3, p0, Landroid/os/MessageMonitorLogger;->mMessageLoggerWrapper:Lcom/mediatek/msglogger/MessageLoggerWrapper;

    .line 114
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v4

    iget-object v5, p0, Landroid/os/MessageMonitorLogger;->mMessageLoggerWrapper:Lcom/mediatek/msglogger/MessageLoggerWrapper;

    invoke-interface {v2, p1, v3, v4, v5}, Lcom/mediatek/msgmonitorservice/IMessageLogger;->registerMsgLogger(Ljava/lang/String;IILcom/mediatek/msgmonitorservice/IMessageLoggerWrapper;)V

    .line 115
    const-string v3, "MessageMonitorLogger"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Register message logger successfully name= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :goto_0
    sget-object v3, Landroid/os/MessageMonitorLogger;->mHandleThread:Landroid/os/HandlerThread;

    if-nez v3, :cond_0

    .line 121
    new-instance v3, Landroid/os/HandlerThread;

    const-string v4, "MSGLoggerMonitorThread"

    invoke-direct {v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v3, Landroid/os/MessageMonitorLogger;->mHandleThread:Landroid/os/HandlerThread;

    .line 122
    sget-object v3, Landroid/os/MessageMonitorLogger;->mHandleThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 123
    new-instance v3, Landroid/os/MessageMonitorLogger$MsgLoggerHandler;

    sget-object v4, Landroid/os/MessageMonitorLogger;->mHandleThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Landroid/os/MessageMonitorLogger$MsgLoggerHandler;-><init>(Landroid/os/MessageMonitorLogger;Landroid/os/Looper;)V

    sput-object v3, Landroid/os/MessageMonitorLogger;->mMsgLoggerHandler:Landroid/os/MessageMonitorLogger$MsgLoggerHandler;

    .line 127
    :goto_1
    return-void

    .line 116
    :catch_0
    move-exception v1

    .line 117
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "MessageMonitorLogger"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Register message logger fail "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 125
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v3, "MessageMonitorLogger"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Message Monitor HandlerThread has exist "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/MessageMonitorLogger;->mHandleThread:Landroid/os/HandlerThread;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method static synthetic access$000()Landroid/os/MessageMonitorLogger$MessageLoggerCallbacks;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Landroid/os/MessageMonitorLogger;->mMessageLoggerCallbacks:Landroid/os/MessageMonitorLogger$MessageLoggerCallbacks;

    return-object v0
.end method

.method public static createMessageLogger(ZLjava/lang/String;Landroid/os/MessageMonitorLogger$MessageLoggerCallbacks;)Landroid/os/MessageMonitorLogger;
    .locals 5
    .param p0, "mValue"    # Z
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/os/MessageMonitorLogger$MessageLoggerCallbacks;

    .prologue
    .line 133
    sget-boolean v4, Landroid/os/MessageMonitorLogger;->IS_USER_BUILD:Z

    if-nez v4, :cond_2

    .line 134
    sput-boolean p0, Landroid/os/MessageMonitorLogger;->sEnableLooperLog:Z

    .line 135
    sput-object p2, Landroid/os/MessageMonitorLogger;->mMessageLoggerCallbacks:Landroid/os/MessageMonitorLogger$MessageLoggerCallbacks;

    .line 137
    sget-object v4, Landroid/os/MessageMonitorLogger;->sMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 138
    .local v0, "iter":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 139
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/MessageMonitorLogger$MSGLoggerInfo;

    .line 140
    .local v1, "key":Landroid/os/MessageMonitorLogger$MSGLoggerInfo;
    iget-object v4, v1, Landroid/os/MessageMonitorLogger$MSGLoggerInfo;->msgLoggerName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 141
    sget-object v4, Landroid/os/MessageMonitorLogger;->sMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    .end local v1    # "key":Landroid/os/MessageMonitorLogger$MSGLoggerInfo;
    :cond_1
    new-instance v2, Landroid/os/MessageMonitorLogger;

    invoke-direct {v2, p1}, Landroid/os/MessageMonitorLogger;-><init>(Ljava/lang/String;)V

    .line 148
    .local v2, "logger":Landroid/os/MessageMonitorLogger;
    new-instance v3, Landroid/os/MessageMonitorLogger$MSGLoggerInfo;

    invoke-direct {v3}, Landroid/os/MessageMonitorLogger$MSGLoggerInfo;-><init>()V

    .line 149
    .local v3, "msgLoggerInfo":Landroid/os/MessageMonitorLogger$MSGLoggerInfo;
    iput-object p1, v3, Landroid/os/MessageMonitorLogger$MSGLoggerInfo;->msgLoggerName:Ljava/lang/String;

    .line 150
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    iput v4, v3, Landroid/os/MessageMonitorLogger$MSGLoggerInfo;->msgLoggerPid:I

    .line 151
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v4

    iput v4, v3, Landroid/os/MessageMonitorLogger$MSGLoggerInfo;->msgLoggerTid:I

    .line 152
    sget-object v4, Landroid/os/MessageMonitorLogger;->sMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .end local v0    # "iter":Ljava/util/Iterator;
    .end local v2    # "logger":Landroid/os/MessageMonitorLogger;
    .end local v3    # "msgLoggerInfo":Landroid/os/MessageMonitorLogger$MSGLoggerInfo;
    :goto_0
    return-object v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getMsgLoggerHandler()Landroid/os/Handler;
    .locals 2

    .prologue
    .line 199
    sget-object v0, Landroid/os/MessageMonitorLogger;->mMsgLoggerHandler:Landroid/os/MessageMonitorLogger$MsgLoggerHandler;

    if-eqz v0, :cond_0

    .line 200
    sget-object v0, Landroid/os/MessageMonitorLogger;->mMsgLoggerHandler:Landroid/os/MessageMonitorLogger$MsgLoggerHandler;

    .line 203
    :goto_0
    return-object v0

    .line 202
    :cond_0
    const-string v0, "MessageMonitorLogger"

    const-string v1, "Monitor message handler is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dumpAllMessageHistory()V
    .locals 2

    .prologue
    .line 187
    sget-object v1, Landroid/os/MessageMonitorLogger;->sMap:Ljava/util/HashMap;

    if-nez v1, :cond_1

    .line 192
    :cond_0
    return-void

    .line 189
    :cond_1
    sget-object v1, Landroid/os/MessageMonitorLogger;->sMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 190
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/MessageMonitorLogger;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 191
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/MessageMonitorLogger;

    invoke-virtual {v1}, Landroid/os/MessageMonitorLogger;->dump()V

    goto :goto_0
.end method

.method public dumpMessageHistory(Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 160
    sget-object v3, Landroid/os/MessageMonitorLogger;->sMap:Ljava/util/HashMap;

    if-nez v3, :cond_1

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    sget-object v3, Landroid/os/MessageMonitorLogger;->sMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 164
    .local v0, "iter":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 165
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/MessageMonitorLogger$MSGLoggerInfo;

    .line 166
    .local v1, "key":Landroid/os/MessageMonitorLogger$MSGLoggerInfo;
    iget-object v3, v1, Landroid/os/MessageMonitorLogger$MSGLoggerInfo;->msgLoggerName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 167
    sget-object v3, Landroid/os/MessageMonitorLogger;->sMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/MessageMonitorLogger;

    .line 168
    .local v2, "logger":Landroid/os/MessageMonitorLogger;
    if-eqz v2, :cond_0

    .line 169
    invoke-virtual {v2}, Landroid/os/MessageMonitorLogger;->dump()V

    goto :goto_0
.end method

.method public unregisterMsgLogger(Ljava/lang/String;)V
    .locals 3
    .param p1, "msgLoggerName"    # Ljava/lang/String;

    .prologue
    .line 176
    sget-object v2, Landroid/os/MessageMonitorLogger;->sMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 177
    .local v0, "iter":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 178
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/MessageMonitorLogger$MSGLoggerInfo;

    .line 179
    .local v1, "key":Landroid/os/MessageMonitorLogger$MSGLoggerInfo;
    iget-object v2, v1, Landroid/os/MessageMonitorLogger$MSGLoggerInfo;->msgLoggerName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 180
    sget-object v2, Landroid/os/MessageMonitorLogger;->sMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    .end local v1    # "key":Landroid/os/MessageMonitorLogger$MSGLoggerInfo;
    :cond_1
    return-void
.end method
