.class Lcom/mediatek/bluetooth/BluetoothSimap$1;
.super Ljava/lang/Object;
.source "BluetoothSimap.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/BluetoothSimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/bluetooth/BluetoothSimap;


# direct methods
.method constructor <init>(Lcom/mediatek/bluetooth/BluetoothSimap;)V
    .locals 0

    .prologue
    .line 370
    iput-object p1, p0, Lcom/mediatek/bluetooth/BluetoothSimap$1;->this$0:Lcom/mediatek/bluetooth/BluetoothSimap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 372
    const-string v0, "Proxy object connected"

    # invokes: Lcom/mediatek/bluetooth/BluetoothSimap;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/mediatek/bluetooth/BluetoothSimap;->access$000(Ljava/lang/String;)V

    .line 373
    iget-object v0, p0, Lcom/mediatek/bluetooth/BluetoothSimap$1;->this$0:Lcom/mediatek/bluetooth/BluetoothSimap;

    invoke-static {p2}, Lcom/mediatek/bluetooth/IBluetoothSimap$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/bluetooth/IBluetoothSimap;

    move-result-object v1

    # setter for: Lcom/mediatek/bluetooth/BluetoothSimap;->mService:Lcom/mediatek/bluetooth/IBluetoothSimap;
    invoke-static {v0, v1}, Lcom/mediatek/bluetooth/BluetoothSimap;->access$102(Lcom/mediatek/bluetooth/BluetoothSimap;Lcom/mediatek/bluetooth/IBluetoothSimap;)Lcom/mediatek/bluetooth/IBluetoothSimap;

    .line 374
    iget-object v0, p0, Lcom/mediatek/bluetooth/BluetoothSimap$1;->this$0:Lcom/mediatek/bluetooth/BluetoothSimap;

    # getter for: Lcom/mediatek/bluetooth/BluetoothSimap;->mServiceListener:Lcom/mediatek/bluetooth/BluetoothSimap$ServiceListener;
    invoke-static {v0}, Lcom/mediatek/bluetooth/BluetoothSimap;->access$200(Lcom/mediatek/bluetooth/BluetoothSimap;)Lcom/mediatek/bluetooth/BluetoothSimap$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/mediatek/bluetooth/BluetoothSimap$1;->this$0:Lcom/mediatek/bluetooth/BluetoothSimap;

    # getter for: Lcom/mediatek/bluetooth/BluetoothSimap;->mServiceListener:Lcom/mediatek/bluetooth/BluetoothSimap$ServiceListener;
    invoke-static {v0}, Lcom/mediatek/bluetooth/BluetoothSimap;->access$200(Lcom/mediatek/bluetooth/BluetoothSimap;)Lcom/mediatek/bluetooth/BluetoothSimap$ServiceListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/bluetooth/BluetoothSimap$ServiceListener;->onServiceConnected()V

    .line 377
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 379
    const-string v0, "Proxy object disconnected"

    # invokes: Lcom/mediatek/bluetooth/BluetoothSimap;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/mediatek/bluetooth/BluetoothSimap;->access$000(Ljava/lang/String;)V

    .line 380
    iget-object v0, p0, Lcom/mediatek/bluetooth/BluetoothSimap$1;->this$0:Lcom/mediatek/bluetooth/BluetoothSimap;

    const/4 v1, 0x0

    # setter for: Lcom/mediatek/bluetooth/BluetoothSimap;->mService:Lcom/mediatek/bluetooth/IBluetoothSimap;
    invoke-static {v0, v1}, Lcom/mediatek/bluetooth/BluetoothSimap;->access$102(Lcom/mediatek/bluetooth/BluetoothSimap;Lcom/mediatek/bluetooth/IBluetoothSimap;)Lcom/mediatek/bluetooth/IBluetoothSimap;

    .line 381
    iget-object v0, p0, Lcom/mediatek/bluetooth/BluetoothSimap$1;->this$0:Lcom/mediatek/bluetooth/BluetoothSimap;

    # getter for: Lcom/mediatek/bluetooth/BluetoothSimap;->mServiceListener:Lcom/mediatek/bluetooth/BluetoothSimap$ServiceListener;
    invoke-static {v0}, Lcom/mediatek/bluetooth/BluetoothSimap;->access$200(Lcom/mediatek/bluetooth/BluetoothSimap;)Lcom/mediatek/bluetooth/BluetoothSimap$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/mediatek/bluetooth/BluetoothSimap$1;->this$0:Lcom/mediatek/bluetooth/BluetoothSimap;

    # getter for: Lcom/mediatek/bluetooth/BluetoothSimap;->mServiceListener:Lcom/mediatek/bluetooth/BluetoothSimap$ServiceListener;
    invoke-static {v0}, Lcom/mediatek/bluetooth/BluetoothSimap;->access$200(Lcom/mediatek/bluetooth/BluetoothSimap;)Lcom/mediatek/bluetooth/BluetoothSimap$ServiceListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/bluetooth/BluetoothSimap$ServiceListener;->onServiceDisconnected()V

    .line 384
    :cond_0
    return-void
.end method
