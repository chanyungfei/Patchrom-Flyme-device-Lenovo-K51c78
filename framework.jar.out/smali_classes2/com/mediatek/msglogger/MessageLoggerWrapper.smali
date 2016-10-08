.class public Lcom/mediatek/msglogger/MessageLoggerWrapper;
.super Lcom/mediatek/msgmonitorservice/IMessageLoggerWrapper$Stub;
.source "MessageLoggerWrapper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MessageLoggerWrapper"

.field protected static mMsgLogger:Landroid/os/MessageMonitorLogger;


# direct methods
.method public constructor <init>(Landroid/os/MessageMonitorLogger;)V
    .locals 0
    .param p1, "msgLogger"    # Landroid/os/MessageMonitorLogger;

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/mediatek/msgmonitorservice/IMessageLoggerWrapper$Stub;-><init>()V

    .line 13
    sput-object p1, Lcom/mediatek/msglogger/MessageLoggerWrapper;->mMsgLogger:Landroid/os/MessageMonitorLogger;

    .line 14
    return-void
.end method


# virtual methods
.method public dumpAllMessageHistory()V
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/mediatek/msglogger/MessageLoggerWrapper;->mMsgLogger:Landroid/os/MessageMonitorLogger;

    invoke-virtual {v0}, Landroid/os/MessageMonitorLogger;->dumpAllMessageHistory()V

    .line 22
    return-void
.end method

.method public dumpMSGHistorybyName(Ljava/lang/String;)V
    .locals 1
    .param p1, "msgLoggerName"    # Ljava/lang/String;

    .prologue
    .line 25
    sget-object v0, Lcom/mediatek/msglogger/MessageLoggerWrapper;->mMsgLogger:Landroid/os/MessageMonitorLogger;

    invoke-virtual {v0, p1}, Landroid/os/MessageMonitorLogger;->dumpMessageHistory(Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public unregisterMsgLogger(Ljava/lang/String;)V
    .locals 1
    .param p1, "msgLoggerName"    # Ljava/lang/String;

    .prologue
    .line 17
    sget-object v0, Lcom/mediatek/msglogger/MessageLoggerWrapper;->mMsgLogger:Landroid/os/MessageMonitorLogger;

    invoke-virtual {v0, p1}, Landroid/os/MessageMonitorLogger;->unregisterMsgLogger(Ljava/lang/String;)V

    .line 18
    return-void
.end method
