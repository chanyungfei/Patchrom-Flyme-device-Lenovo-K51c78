.class Lcom/mediatek/bluetooth/BluetoothDun$1;
.super Ljava/lang/Object;
.source "BluetoothDun.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/BluetoothDun;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/bluetooth/BluetoothDun;


# direct methods
.method constructor <init>(Lcom/mediatek/bluetooth/BluetoothDun;)V
    .locals 0

    .prologue
    .line 327
    iput-object p1, p0, Lcom/mediatek/bluetooth/BluetoothDun$1;->this$0:Lcom/mediatek/bluetooth/BluetoothDun;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 330
    const-string v0, "Proxy object connected"

    # invokes: Lcom/mediatek/bluetooth/BluetoothDun;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/mediatek/bluetooth/BluetoothDun;->access$000(Ljava/lang/String;)V

    .line 331
    invoke-static {p2}, Lcom/mediatek/bluetooth/IBluetoothDun$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/bluetooth/IBluetoothDun;

    move-result-object v0

    # setter for: Lcom/mediatek/bluetooth/BluetoothDun;->mService:Lcom/mediatek/bluetooth/IBluetoothDun;
    invoke-static {v0}, Lcom/mediatek/bluetooth/BluetoothDun;->access$102(Lcom/mediatek/bluetooth/IBluetoothDun;)Lcom/mediatek/bluetooth/IBluetoothDun;

    .line 333
    iget-object v0, p0, Lcom/mediatek/bluetooth/BluetoothDun$1;->this$0:Lcom/mediatek/bluetooth/BluetoothDun;

    # getter for: Lcom/mediatek/bluetooth/BluetoothDun;->mServiceListener:Lcom/mediatek/bluetooth/BluetoothDun$ServiceListener;
    invoke-static {v0}, Lcom/mediatek/bluetooth/BluetoothDun;->access$200(Lcom/mediatek/bluetooth/BluetoothDun;)Lcom/mediatek/bluetooth/BluetoothDun$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/mediatek/bluetooth/BluetoothDun$1;->this$0:Lcom/mediatek/bluetooth/BluetoothDun;

    # getter for: Lcom/mediatek/bluetooth/BluetoothDun;->mServiceListener:Lcom/mediatek/bluetooth/BluetoothDun$ServiceListener;
    invoke-static {v0}, Lcom/mediatek/bluetooth/BluetoothDun;->access$200(Lcom/mediatek/bluetooth/BluetoothDun;)Lcom/mediatek/bluetooth/BluetoothDun$ServiceListener;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/bluetooth/BluetoothDun$1;->this$0:Lcom/mediatek/bluetooth/BluetoothDun;

    invoke-interface {v0, v1}, Lcom/mediatek/bluetooth/BluetoothDun$ServiceListener;->onServiceConnected(Lcom/mediatek/bluetooth/BluetoothDun;)V

    .line 336
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 338
    const-string v0, "Proxy object disconnected"

    # invokes: Lcom/mediatek/bluetooth/BluetoothDun;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/mediatek/bluetooth/BluetoothDun;->access$000(Ljava/lang/String;)V

    .line 339
    const/4 v0, 0x0

    # setter for: Lcom/mediatek/bluetooth/BluetoothDun;->mService:Lcom/mediatek/bluetooth/IBluetoothDun;
    invoke-static {v0}, Lcom/mediatek/bluetooth/BluetoothDun;->access$102(Lcom/mediatek/bluetooth/IBluetoothDun;)Lcom/mediatek/bluetooth/IBluetoothDun;

    .line 340
    iget-object v0, p0, Lcom/mediatek/bluetooth/BluetoothDun$1;->this$0:Lcom/mediatek/bluetooth/BluetoothDun;

    # getter for: Lcom/mediatek/bluetooth/BluetoothDun;->mServiceListener:Lcom/mediatek/bluetooth/BluetoothDun$ServiceListener;
    invoke-static {v0}, Lcom/mediatek/bluetooth/BluetoothDun;->access$200(Lcom/mediatek/bluetooth/BluetoothDun;)Lcom/mediatek/bluetooth/BluetoothDun$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/mediatek/bluetooth/BluetoothDun$1;->this$0:Lcom/mediatek/bluetooth/BluetoothDun;

    # getter for: Lcom/mediatek/bluetooth/BluetoothDun;->mServiceListener:Lcom/mediatek/bluetooth/BluetoothDun$ServiceListener;
    invoke-static {v0}, Lcom/mediatek/bluetooth/BluetoothDun;->access$200(Lcom/mediatek/bluetooth/BluetoothDun;)Lcom/mediatek/bluetooth/BluetoothDun$ServiceListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/bluetooth/BluetoothDun$ServiceListener;->onServiceDisconnected()V

    .line 343
    :cond_0
    return-void
.end method
