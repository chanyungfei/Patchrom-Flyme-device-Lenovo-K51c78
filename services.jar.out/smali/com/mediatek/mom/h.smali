.class Lcom/mediatek/mom/h;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private p:Lcom/mediatek/mom/ListenerTriggerBase;

.field private q:Landroid/os/Message;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 49
    iput-object v0, p0, Lcom/mediatek/mom/h;->p:Lcom/mediatek/mom/ListenerTriggerBase;

    .line 50
    iput-object v0, p0, Lcom/mediatek/mom/h;->mHandler:Landroid/os/Handler;

    .line 51
    iput-object v0, p0, Lcom/mediatek/mom/h;->q:Landroid/os/Message;

    .line 53
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/mom/ListenerTriggerBase;Landroid/os/Handler;Landroid/os/Message;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MOMS-Trigger"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mediatek/mom/ListenerTriggerBase;->getControllerID()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 49
    iput-object v2, p0, Lcom/mediatek/mom/h;->p:Lcom/mediatek/mom/ListenerTriggerBase;

    .line 50
    iput-object v2, p0, Lcom/mediatek/mom/h;->mHandler:Landroid/os/Handler;

    .line 51
    iput-object v2, p0, Lcom/mediatek/mom/h;->q:Landroid/os/Message;

    .line 57
    iput-object p1, p0, Lcom/mediatek/mom/h;->p:Lcom/mediatek/mom/ListenerTriggerBase;

    .line 58
    iput-object p2, p0, Lcom/mediatek/mom/h;->mHandler:Landroid/os/Handler;

    .line 59
    iput-object p3, p0, Lcom/mediatek/mom/h;->q:Landroid/os/Message;

    .line 60
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 64
    .line 66
    const-string v0, "ListenerTriggerThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start trigger listener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/mom/h;->p:Lcom/mediatek/mom/ListenerTriggerBase;

    invoke-virtual {v2}, Lcom/mediatek/mom/ListenerTriggerBase;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v0, p0, Lcom/mediatek/mom/h;->p:Lcom/mediatek/mom/ListenerTriggerBase;

    invoke-virtual {v0}, Lcom/mediatek/mom/ListenerTriggerBase;->triggerListenerFunc()I

    move-result v0

    .line 69
    iget-object v1, p0, Lcom/mediatek/mom/h;->p:Lcom/mediatek/mom/ListenerTriggerBase;

    monitor-enter v1

    .line 70
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/mom/h;->p:Lcom/mediatek/mom/ListenerTriggerBase;

    invoke-virtual {v2}, Lcom/mediatek/mom/ListenerTriggerBase;->isTimeouted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 72
    iget-object v2, p0, Lcom/mediatek/mom/h;->p:Lcom/mediatek/mom/ListenerTriggerBase;

    invoke-virtual {v2}, Lcom/mediatek/mom/ListenerTriggerBase;->completed()V

    .line 73
    iget-object v2, p0, Lcom/mediatek/mom/h;->p:Lcom/mediatek/mom/ListenerTriggerBase;

    invoke-virtual {v2, v0}, Lcom/mediatek/mom/ListenerTriggerBase;->setResult(I)V

    .line 75
    iget-object v0, p0, Lcom/mediatek/mom/h;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/mediatek/mom/h;->q:Landroid/os/Message;

    invoke-virtual {v0, v2, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 77
    iget-object v0, p0, Lcom/mediatek/mom/h;->p:Lcom/mediatek/mom/ListenerTriggerBase;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 79
    iget-object v0, p0, Lcom/mediatek/mom/h;->p:Lcom/mediatek/mom/ListenerTriggerBase;

    invoke-virtual {v0}, Lcom/mediatek/mom/ListenerTriggerBase;->onTriggerListenerDone()V

    .line 81
    :cond_0
    monitor-exit v1

    .line 82
    return-void

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
