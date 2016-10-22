.class Lcom/mediatek/bluetooth/BleDeviceManager$1;
.super Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;
.source "BleDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/BleDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/bluetooth/BleDeviceManager;


# direct methods
.method constructor <init>(Lcom/mediatek/bluetooth/BleDeviceManager;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/mediatek/bluetooth/BleDeviceManager$1;->this$0:Lcom/mediatek/bluetooth/BleDeviceManager;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothStateChange(Z)V
    .locals 4
    .param p1, "up"    # Z

    .prologue
    .line 78
    const-string v1, "BleDeviceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBluetoothStateChange: up="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    if-eqz p1, :cond_1

    .line 81
    iget-object v1, p0, Lcom/mediatek/bluetooth/BleDeviceManager$1;->this$0:Lcom/mediatek/bluetooth/BleDeviceManager;

    # getter for: Lcom/mediatek/bluetooth/BleDeviceManager;->mConnection:Landroid/content/ServiceConnection;
    invoke-static {v1}, Lcom/mediatek/bluetooth/BleDeviceManager;->access$000(Lcom/mediatek/bluetooth/BleDeviceManager;)Landroid/content/ServiceConnection;

    move-result-object v2

    monitor-enter v2

    .line 83
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/BleDeviceManager$1;->this$0:Lcom/mediatek/bluetooth/BleDeviceManager;

    # getter for: Lcom/mediatek/bluetooth/BleDeviceManager;->mService:Lcom/mediatek/bluetooth/IBleDeviceManager;
    invoke-static {v1}, Lcom/mediatek/bluetooth/BleDeviceManager;->access$100(Lcom/mediatek/bluetooth/BleDeviceManager;)Lcom/mediatek/bluetooth/IBleDeviceManager;

    move-result-object v1

    if-nez v1, :cond_0

    .line 84
    const-string v1, "BleDeviceManager"

    const-string v3, "Binding service..."

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v1, p0, Lcom/mediatek/bluetooth/BleDeviceManager$1;->this$0:Lcom/mediatek/bluetooth/BleDeviceManager;

    invoke-virtual {v1}, Lcom/mediatek/bluetooth/BleDeviceManager;->doBind()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    :cond_0
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 92
    :cond_1
    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "re":Ljava/lang/SecurityException;
    const-string v1, "BleDeviceManager"

    const-string v3, ""

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 90
    .end local v0    # "re":Ljava/lang/SecurityException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
