.class Lcom/mediatek/bluetooth/BluetoothMap$1;
.super Ljava/lang/Object;
.source "BluetoothMap.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/BluetoothMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/bluetooth/BluetoothMap;


# direct methods
.method constructor <init>(Lcom/mediatek/bluetooth/BluetoothMap;)V
    .locals 0

    .prologue
    .line 310
    iput-object p1, p0, Lcom/mediatek/bluetooth/BluetoothMap$1;->this$0:Lcom/mediatek/bluetooth/BluetoothMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 312
    const-string v0, "Proxy object connected"

    # invokes: Lcom/mediatek/bluetooth/BluetoothMap;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/mediatek/bluetooth/BluetoothMap;->access$000(Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Lcom/mediatek/bluetooth/BluetoothMap$1;->this$0:Lcom/mediatek/bluetooth/BluetoothMap;

    invoke-static {p2}, Lcom/mediatek/bluetooth/IBluetoothMap$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/bluetooth/IBluetoothMap;

    move-result-object v1

    # setter for: Lcom/mediatek/bluetooth/BluetoothMap;->mService:Lcom/mediatek/bluetooth/IBluetoothMap;
    invoke-static {v0, v1}, Lcom/mediatek/bluetooth/BluetoothMap;->access$102(Lcom/mediatek/bluetooth/BluetoothMap;Lcom/mediatek/bluetooth/IBluetoothMap;)Lcom/mediatek/bluetooth/IBluetoothMap;

    .line 314
    iget-object v0, p0, Lcom/mediatek/bluetooth/BluetoothMap$1;->this$0:Lcom/mediatek/bluetooth/BluetoothMap;

    # getter for: Lcom/mediatek/bluetooth/BluetoothMap;->mListener:Lcom/mediatek/bluetooth/BluetoothMap$ServiceListener;
    invoke-static {v0}, Lcom/mediatek/bluetooth/BluetoothMap;->access$200(Lcom/mediatek/bluetooth/BluetoothMap;)Lcom/mediatek/bluetooth/BluetoothMap$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/mediatek/bluetooth/BluetoothMap$1;->this$0:Lcom/mediatek/bluetooth/BluetoothMap;

    # getter for: Lcom/mediatek/bluetooth/BluetoothMap;->mListener:Lcom/mediatek/bluetooth/BluetoothMap$ServiceListener;
    invoke-static {v0}, Lcom/mediatek/bluetooth/BluetoothMap;->access$200(Lcom/mediatek/bluetooth/BluetoothMap;)Lcom/mediatek/bluetooth/BluetoothMap$ServiceListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/bluetooth/BluetoothMap$ServiceListener;->onServiceConnected()V

    .line 317
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 319
    const-string v0, "Proxy object disconnected"

    # invokes: Lcom/mediatek/bluetooth/BluetoothMap;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/mediatek/bluetooth/BluetoothMap;->access$000(Ljava/lang/String;)V

    .line 320
    iget-object v0, p0, Lcom/mediatek/bluetooth/BluetoothMap$1;->this$0:Lcom/mediatek/bluetooth/BluetoothMap;

    const/4 v1, 0x0

    # setter for: Lcom/mediatek/bluetooth/BluetoothMap;->mService:Lcom/mediatek/bluetooth/IBluetoothMap;
    invoke-static {v0, v1}, Lcom/mediatek/bluetooth/BluetoothMap;->access$102(Lcom/mediatek/bluetooth/BluetoothMap;Lcom/mediatek/bluetooth/IBluetoothMap;)Lcom/mediatek/bluetooth/IBluetoothMap;

    .line 321
    iget-object v0, p0, Lcom/mediatek/bluetooth/BluetoothMap$1;->this$0:Lcom/mediatek/bluetooth/BluetoothMap;

    # getter for: Lcom/mediatek/bluetooth/BluetoothMap;->mListener:Lcom/mediatek/bluetooth/BluetoothMap$ServiceListener;
    invoke-static {v0}, Lcom/mediatek/bluetooth/BluetoothMap;->access$200(Lcom/mediatek/bluetooth/BluetoothMap;)Lcom/mediatek/bluetooth/BluetoothMap$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/mediatek/bluetooth/BluetoothMap$1;->this$0:Lcom/mediatek/bluetooth/BluetoothMap;

    # getter for: Lcom/mediatek/bluetooth/BluetoothMap;->mListener:Lcom/mediatek/bluetooth/BluetoothMap$ServiceListener;
    invoke-static {v0}, Lcom/mediatek/bluetooth/BluetoothMap;->access$200(Lcom/mediatek/bluetooth/BluetoothMap;)Lcom/mediatek/bluetooth/BluetoothMap$ServiceListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/bluetooth/BluetoothMap$ServiceListener;->onServiceDisconnected()V

    .line 324
    :cond_0
    return-void
.end method
