.class Landroid/bluetooth/BluetoothPan$2;
.super Ljava/lang/Object;
.source "BluetoothPan.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothPan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothPan;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothPan;)V
    .locals 0

    .prologue
    .line 360
    iput-object p1, p0, Landroid/bluetooth/BluetoothPan$2;->this$0:Landroid/bluetooth/BluetoothPan;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 362
    iget-object v0, p0, Landroid/bluetooth/BluetoothPan$2;->this$0:Landroid/bluetooth/BluetoothPan;

    # getter for: Landroid/bluetooth/BluetoothPan;->mConnection:Landroid/content/ServiceConnection;
    invoke-static {v0}, Landroid/bluetooth/BluetoothPan;->access$000(Landroid/bluetooth/BluetoothPan;)Landroid/content/ServiceConnection;

    move-result-object v1

    monitor-enter v1

    .line 363
    :try_start_0
    const-string v0, "BluetoothPan"

    const-string v2, "BluetoothPAN Proxy object connected"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget-object v0, p0, Landroid/bluetooth/BluetoothPan$2;->this$0:Landroid/bluetooth/BluetoothPan;

    invoke-static {p2}, Landroid/bluetooth/IBluetoothPan$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothPan;

    move-result-object v2

    # setter for: Landroid/bluetooth/BluetoothPan;->mPanService:Landroid/bluetooth/IBluetoothPan;
    invoke-static {v0, v2}, Landroid/bluetooth/BluetoothPan;->access$102(Landroid/bluetooth/BluetoothPan;Landroid/bluetooth/IBluetoothPan;)Landroid/bluetooth/IBluetoothPan;

    .line 366
    iget-object v0, p0, Landroid/bluetooth/BluetoothPan$2;->this$0:Landroid/bluetooth/BluetoothPan;

    # getter for: Landroid/bluetooth/BluetoothPan;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;
    invoke-static {v0}, Landroid/bluetooth/BluetoothPan;->access$300(Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Landroid/bluetooth/BluetoothPan$2;->this$0:Landroid/bluetooth/BluetoothPan;

    # getter for: Landroid/bluetooth/BluetoothPan;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;
    invoke-static {v0}, Landroid/bluetooth/BluetoothPan;->access$300(Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    const/4 v2, 0x5

    iget-object v3, p0, Landroid/bluetooth/BluetoothPan$2;->this$0:Landroid/bluetooth/BluetoothPan;

    invoke-interface {v0, v2, v3}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V

    .line 370
    :cond_0
    monitor-exit v1

    .line 371
    return-void

    .line 370
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 373
    iget-object v0, p0, Landroid/bluetooth/BluetoothPan$2;->this$0:Landroid/bluetooth/BluetoothPan;

    # getter for: Landroid/bluetooth/BluetoothPan;->mConnection:Landroid/content/ServiceConnection;
    invoke-static {v0}, Landroid/bluetooth/BluetoothPan;->access$000(Landroid/bluetooth/BluetoothPan;)Landroid/content/ServiceConnection;

    move-result-object v1

    monitor-enter v1

    .line 374
    :try_start_0
    const-string v0, "BluetoothPan"

    const-string v2, "BluetoothPAN Proxy object disconnected"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget-object v0, p0, Landroid/bluetooth/BluetoothPan$2;->this$0:Landroid/bluetooth/BluetoothPan;

    const/4 v2, 0x0

    # setter for: Landroid/bluetooth/BluetoothPan;->mPanService:Landroid/bluetooth/IBluetoothPan;
    invoke-static {v0, v2}, Landroid/bluetooth/BluetoothPan;->access$102(Landroid/bluetooth/BluetoothPan;Landroid/bluetooth/IBluetoothPan;)Landroid/bluetooth/IBluetoothPan;

    .line 376
    iget-object v0, p0, Landroid/bluetooth/BluetoothPan$2;->this$0:Landroid/bluetooth/BluetoothPan;

    # getter for: Landroid/bluetooth/BluetoothPan;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;
    invoke-static {v0}, Landroid/bluetooth/BluetoothPan;->access$300(Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Landroid/bluetooth/BluetoothPan$2;->this$0:Landroid/bluetooth/BluetoothPan;

    # getter for: Landroid/bluetooth/BluetoothPan;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;
    invoke-static {v0}, Landroid/bluetooth/BluetoothPan;->access$300(Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    const/4 v2, 0x5

    invoke-interface {v0, v2}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceDisconnected(I)V

    .line 379
    :cond_0
    monitor-exit v1

    .line 380
    return-void

    .line 379
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
