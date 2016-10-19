.class final Lcom/mediatek/msglogger/MessageMonitorService$MSGLoggerDeathRecipient;
.super Ljava/lang/Object;
.source "MessageMonitorService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/msglogger/MessageMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MSGLoggerDeathRecipient"
.end annotation


# instance fields
.field final currentMSGLoggerName:Ljava/lang/String;

.field final synthetic this$0:Lcom/mediatek/msglogger/MessageMonitorService;


# direct methods
.method constructor <init>(Lcom/mediatek/msglogger/MessageMonitorService;Ljava/lang/String;)V
    .locals 3
    .param p2, "msgloggername"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/mediatek/msglogger/MessageMonitorService$MSGLoggerDeathRecipient;->this$0:Lcom/mediatek/msglogger/MessageMonitorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string v0, "MessageMonitorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MSGLoggerDeathRecipient :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iput-object p2, p0, Lcom/mediatek/msglogger/MessageMonitorService$MSGLoggerDeathRecipient;->currentMSGLoggerName:Ljava/lang/String;

    .line 50
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 6

    .prologue
    .line 54
    sget-object v3, Lcom/mediatek/msglogger/MessageMonitorService;->sMSGLoggerMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 56
    .local v1, "iter":Ljava/util/Iterator;
    :cond_0
    :try_start_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 58
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/MessageMonitorLogger$MSGLoggerInfo;

    .line 59
    .local v2, "key":Landroid/os/MessageMonitorLogger$MSGLoggerInfo;
    iget-object v3, p0, Lcom/mediatek/msglogger/MessageMonitorService$MSGLoggerDeathRecipient;->currentMSGLoggerName:Ljava/lang/String;

    iget-object v4, v2, Landroid/os/MessageMonitorLogger$MSGLoggerInfo;->msgLoggerName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 61
    const-string v3, "MessageMonitorService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MSGLoggerDeathRecipient - UnregisterMsgLogger:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/msglogger/MessageMonitorService$MSGLoggerDeathRecipient;->currentMSGLoggerName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    sget-object v3, Lcom/mediatek/msglogger/MessageMonitorService;->sMSGLoggerMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .end local v2    # "key":Landroid/os/MessageMonitorLogger$MSGLoggerInfo;
    :cond_1
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v3, "MessageMonitorService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MSGLoggerDeathRecipient - UnregisterMsgLogger fail "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
