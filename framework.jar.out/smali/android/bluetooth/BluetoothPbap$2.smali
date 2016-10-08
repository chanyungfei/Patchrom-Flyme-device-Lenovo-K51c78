.class Landroid/bluetooth/BluetoothPbap$2;
.super Ljava/lang/Object;
.source "BluetoothPbap.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothPbap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothPbap;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothPbap;)V
    .locals 0

    .prologue
    .line 309
    iput-object p1, p0, Landroid/bluetooth/BluetoothPbap$2;->this$0:Landroid/bluetooth/BluetoothPbap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 311
    iget-object v0, p0, Landroid/bluetooth/BluetoothPbap$2;->this$0:Landroid/bluetooth/BluetoothPbap;

    # getter for: Landroid/bluetooth/BluetoothPbap;->mConnection:Landroid/content/ServiceConnection;
    invoke-static {v0}, Landroid/bluetooth/BluetoothPbap;->access$000(Landroid/bluetooth/BluetoothPbap;)Landroid/content/ServiceConnection;

    move-result-object v1

    monitor-enter v1

    .line 312
    :try_start_0
    const-string v0, "Proxy object connected"

    # invokes: Landroid/bluetooth/BluetoothPbap;->log(Ljava/lang/String;)V
    invoke-static {v0}, Landroid/bluetooth/BluetoothPbap;->access$300(Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Landroid/bluetooth/BluetoothPbap$2;->this$0:Landroid/bluetooth/BluetoothPbap;

    invoke-static {p2}, Landroid/bluetooth/IBluetoothPbap$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothPbap;

    move-result-object v2

    # setter for: Landroid/bluetooth/BluetoothPbap;->mService:Landroid/bluetooth/IBluetoothPbap;
    invoke-static {v0, v2}, Landroid/bluetooth/BluetoothPbap;->access$102(Landroid/bluetooth/BluetoothPbap;Landroid/bluetooth/IBluetoothPbap;)Landroid/bluetooth/IBluetoothPbap;

    .line 314
    iget-object v0, p0, Landroid/bluetooth/BluetoothPbap$2;->this$0:Landroid/bluetooth/BluetoothPbap;

    # getter for: Landroid/bluetooth/BluetoothPbap;->mServiceListener:Landroid/bluetooth/BluetoothPbap$ServiceListener;
    invoke-static {v0}, Landroid/bluetooth/BluetoothPbap;->access$400(Landroid/bluetooth/BluetoothPbap;)Landroid/bluetooth/BluetoothPbap$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Landroid/bluetooth/BluetoothPbap$2;->this$0:Landroid/bluetooth/BluetoothPbap;

    # getter for: Landroid/bluetooth/BluetoothPbap;->mServiceListener:Landroid/bluetooth/BluetoothPbap$ServiceListener;
    invoke-static {v0}, Landroid/bluetooth/BluetoothPbap;->access$400(Landroid/bluetooth/BluetoothPbap;)Landroid/bluetooth/BluetoothPbap$ServiceListener;

    move-result-object v0

    iget-object v2, p0, Landroid/bluetooth/BluetoothPbap$2;->this$0:Landroid/bluetooth/BluetoothPbap;

    invoke-interface {v0, v2}, Landroid/bluetooth/BluetoothPbap$ServiceListener;->onServiceConnected(Landroid/bluetooth/BluetoothPbap;)V

    .line 317
    :cond_0
    monitor-exit v1

    .line 318
    return-void

    .line 317
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
    .line 320
    iget-object v0, p0, Landroid/bluetooth/BluetoothPbap$2;->this$0:Landroid/bluetooth/BluetoothPbap;

    # getter for: Landroid/bluetooth/BluetoothPbap;->mConnection:Landroid/content/ServiceConnection;
    invoke-static {v0}, Landroid/bluetooth/BluetoothPbap;->access$000(Landroid/bluetooth/BluetoothPbap;)Landroid/content/ServiceConnection;

    move-result-object v1

    monitor-enter v1

    .line 321
    :try_start_0
    const-string v0, "Proxy object disconnected"

    # invokes: Landroid/bluetooth/BluetoothPbap;->log(Ljava/lang/String;)V
    invoke-static {v0}, Landroid/bluetooth/BluetoothPbap;->access$300(Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Landroid/bluetooth/BluetoothPbap$2;->this$0:Landroid/bluetooth/BluetoothPbap;

    const/4 v2, 0x0

    # setter for: Landroid/bluetooth/BluetoothPbap;->mService:Landroid/bluetooth/IBluetoothPbap;
    invoke-static {v0, v2}, Landroid/bluetooth/BluetoothPbap;->access$102(Landroid/bluetooth/BluetoothPbap;Landroid/bluetooth/IBluetoothPbap;)Landroid/bluetooth/IBluetoothPbap;

    .line 323
    iget-object v0, p0, Landroid/bluetooth/BluetoothPbap$2;->this$0:Landroid/bluetooth/BluetoothPbap;

    # getter for: Landroid/bluetooth/BluetoothPbap;->mServiceListener:Landroid/bluetooth/BluetoothPbap$ServiceListener;
    invoke-static {v0}, Landroid/bluetooth/BluetoothPbap;->access$400(Landroid/bluetooth/BluetoothPbap;)Landroid/bluetooth/BluetoothPbap$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Landroid/bluetooth/BluetoothPbap$2;->this$0:Landroid/bluetooth/BluetoothPbap;

    # getter for: Landroid/bluetooth/BluetoothPbap;->mServiceListener:Landroid/bluetooth/BluetoothPbap$ServiceListener;
    invoke-static {v0}, Landroid/bluetooth/BluetoothPbap;->access$400(Landroid/bluetooth/BluetoothPbap;)Landroid/bluetooth/BluetoothPbap$ServiceListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/bluetooth/BluetoothPbap$ServiceListener;->onServiceDisconnected()V

    .line 326
    :cond_0
    monitor-exit v1

    .line 327
    return-void

    .line 326
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
