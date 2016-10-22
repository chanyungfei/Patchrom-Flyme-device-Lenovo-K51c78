.class Lcom/mediatek/sensorhub/SensorHubService$ResultReceiver;
.super Ljava/lang/Object;
.source "SensorHubService.java"

# interfaces
.implements Landroid/app/PendingIntent$OnFinished;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/sensorhub/SensorHubService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ResultReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/sensorhub/SensorHubService;


# direct methods
.method constructor <init>(Lcom/mediatek/sensorhub/SensorHubService;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/mediatek/sensorhub/SensorHubService$ResultReceiver;->this$0:Lcom/mediatek/sensorhub/SensorHubService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSendFinished(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "pi"    # Landroid/app/PendingIntent;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resultCode"    # I
    .param p4, "resultData"    # Ljava/lang/String;
    .param p5, "resultExtras"    # Landroid/os/Bundle;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/mediatek/sensorhub/SensorHubService$ResultReceiver;->this$0:Lcom/mediatek/sensorhub/SensorHubService;

    # getter for: Lcom/mediatek/sensorhub/SensorHubService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/mediatek/sensorhub/SensorHubService;->access$000(Lcom/mediatek/sensorhub/SensorHubService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/sensorhub/SensorHubService$ResultReceiver;->this$0:Lcom/mediatek/sensorhub/SensorHubService;

    # operator-- for: Lcom/mediatek/sensorhub/SensorHubService;->mBroadcastRefCount:I
    invoke-static {v0}, Lcom/mediatek/sensorhub/SensorHubService;->access$110(Lcom/mediatek/sensorhub/SensorHubService;)I

    .line 49
    sget-boolean v0, Lcom/mediatek/sensorhub/SensorHubService;->LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "SensorHubService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSendFinished: wlCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/sensorhub/SensorHubService$ResultReceiver;->this$0:Lcom/mediatek/sensorhub/SensorHubService;

    # getter for: Lcom/mediatek/sensorhub/SensorHubService;->mBroadcastRefCount:I
    invoke-static {v3}, Lcom/mediatek/sensorhub/SensorHubService;->access$100(Lcom/mediatek/sensorhub/SensorHubService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/mediatek/sensorhub/SensorHubService$ResultReceiver;->this$0:Lcom/mediatek/sensorhub/SensorHubService;

    # getter for: Lcom/mediatek/sensorhub/SensorHubService;->mBroadcastRefCount:I
    invoke-static {v0}, Lcom/mediatek/sensorhub/SensorHubService;->access$100(Lcom/mediatek/sensorhub/SensorHubService;)I

    move-result v0

    if-nez v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/mediatek/sensorhub/SensorHubService$ResultReceiver;->this$0:Lcom/mediatek/sensorhub/SensorHubService;

    # getter for: Lcom/mediatek/sensorhub/SensorHubService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/mediatek/sensorhub/SensorHubService;->access$200(Lcom/mediatek/sensorhub/SensorHubService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 53
    :cond_1
    monitor-exit v1

    .line 54
    return-void

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
