.class final Landroid/bluetooth/BluetoothDevice$1;
.super Landroid/bluetooth/IBluetoothManagerCallback$Stub;
.source "BluetoothDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 605
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothManagerCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothServiceDown()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 619
    # getter for: Landroid/bluetooth/BluetoothDevice;->sServiceLock:Ljava/util/concurrent/locks/ReadWriteLock;
    invoke-static {}, Landroid/bluetooth/BluetoothDevice;->access$000()Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 620
    const/4 v0, 0x0

    # setter for: Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;
    invoke-static {v0}, Landroid/bluetooth/BluetoothDevice;->access$102(Landroid/bluetooth/IBluetooth;)Landroid/bluetooth/IBluetooth;

    .line 622
    # getter for: Landroid/bluetooth/BluetoothDevice;->sServiceLock:Ljava/util/concurrent/locks/ReadWriteLock;
    invoke-static {}, Landroid/bluetooth/BluetoothDevice;->access$000()Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 623
    return-void
.end method

.method public onBluetoothServiceUp(Landroid/bluetooth/IBluetooth;)V
    .locals 1
    .param p1, "bluetoothService"    # Landroid/bluetooth/IBluetooth;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 610
    # getter for: Landroid/bluetooth/BluetoothDevice;->sServiceLock:Ljava/util/concurrent/locks/ReadWriteLock;
    invoke-static {}, Landroid/bluetooth/BluetoothDevice;->access$000()Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 611
    # setter for: Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;
    invoke-static {p1}, Landroid/bluetooth/BluetoothDevice;->access$102(Landroid/bluetooth/IBluetooth;)Landroid/bluetooth/IBluetooth;

    .line 613
    # getter for: Landroid/bluetooth/BluetoothDevice;->sServiceLock:Ljava/util/concurrent/locks/ReadWriteLock;
    invoke-static {}, Landroid/bluetooth/BluetoothDevice;->access$000()Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 614
    return-void
.end method
