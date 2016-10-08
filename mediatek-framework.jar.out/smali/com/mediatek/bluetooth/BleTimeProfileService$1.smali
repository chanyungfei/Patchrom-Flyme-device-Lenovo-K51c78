.class Lcom/mediatek/bluetooth/BleTimeProfileService$1;
.super Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;
.source "BleTimeProfileService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/BleTimeProfileService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/bluetooth/BleTimeProfileService;


# direct methods
.method constructor <init>(Lcom/mediatek/bluetooth/BleTimeProfileService;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/mediatek/bluetooth/BleTimeProfileService$1;->this$0:Lcom/mediatek/bluetooth/BleTimeProfileService;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothStateChange(Z)V
    .locals 4
    .param p1, "up"    # Z

    .prologue
    .line 70
    const-string v1, "BleTimeProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBluetoothStateChange: up = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    if-eqz p1, :cond_1

    .line 72
    iget-object v1, p0, Lcom/mediatek/bluetooth/BleTimeProfileService$1;->this$0:Lcom/mediatek/bluetooth/BleTimeProfileService;

    # getter for: Lcom/mediatek/bluetooth/BleTimeProfileService;->mConnection:Landroid/content/ServiceConnection;
    invoke-static {v1}, Lcom/mediatek/bluetooth/BleTimeProfileService;->access$000(Lcom/mediatek/bluetooth/BleTimeProfileService;)Landroid/content/ServiceConnection;

    move-result-object v2

    monitor-enter v2

    .line 74
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/BleTimeProfileService$1;->this$0:Lcom/mediatek/bluetooth/BleTimeProfileService;

    # getter for: Lcom/mediatek/bluetooth/BleTimeProfileService;->mService:Lcom/mediatek/bluetoothle/tip/ITimeProfileService;
    invoke-static {v1}, Lcom/mediatek/bluetooth/BleTimeProfileService;->access$100(Lcom/mediatek/bluetooth/BleTimeProfileService;)Lcom/mediatek/bluetoothle/tip/ITimeProfileService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 75
    const-string v1, "BleTimeProfileService"

    const-string v3, "Binding service..."

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v1, p0, Lcom/mediatek/bluetooth/BleTimeProfileService$1;->this$0:Lcom/mediatek/bluetooth/BleTimeProfileService;

    invoke-virtual {v1}, Lcom/mediatek/bluetooth/BleTimeProfileService;->doBind()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    :cond_0
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 83
    :cond_1
    return-void

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "re":Ljava/lang/Exception;
    const-string v1, "BleTimeProfileService"

    const-string v3, ""

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 81
    .end local v0    # "re":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
