.class public Lcom/mediatek/anrappframeworks/ANRAppFrameworks;
.super Ljava/lang/Object;
.source "ANRAppFrameworks.java"

# interfaces
.implements Lcom/mediatek/anrappmanager/IFrameworks;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActivityManagerDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    const-string v0, "android.app.IActivityManager"

    return-object v0
.end method

.method public looperGetQueue(Landroid/os/Looper;)Landroid/os/MessageQueue;
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 32
    invoke-virtual {p1}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    return-object v0
.end method

.method public messageQueueDumpMessageQueue(Landroid/os/MessageQueue;)Ljava/lang/String;
    .locals 1
    .param p1, "messageQueue"    # Landroid/os/MessageQueue;

    .prologue
    .line 36
    invoke-virtual {p1}, Landroid/os/MessageQueue;->dumpMessageQueue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public serviceManagerGetService(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public systemClockCurrentTimeMicro()J
    .locals 2

    .prologue
    .line 28
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v0

    return-wide v0
.end method
