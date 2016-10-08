.class Lcom/mediatek/bluetooth/BleTimeProfileService$2;
.super Ljava/lang/Object;
.source "BleTimeProfileService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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
    .line 86
    iput-object p1, p0, Lcom/mediatek/bluetooth/BleTimeProfileService$2;->this$0:Lcom/mediatek/bluetooth/BleTimeProfileService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 89
    const-string v0, "BleTimeProfileService"

    const-string v1, "Proxy object connected"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v0, p0, Lcom/mediatek/bluetooth/BleTimeProfileService$2;->this$0:Lcom/mediatek/bluetooth/BleTimeProfileService;

    invoke-static {p2}, Lcom/mediatek/bluetoothle/tip/ITimeProfileService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/bluetoothle/tip/ITimeProfileService;

    move-result-object v1

    # setter for: Lcom/mediatek/bluetooth/BleTimeProfileService;->mService:Lcom/mediatek/bluetoothle/tip/ITimeProfileService;
    invoke-static {v0, v1}, Lcom/mediatek/bluetooth/BleTimeProfileService;->access$102(Lcom/mediatek/bluetooth/BleTimeProfileService;Lcom/mediatek/bluetoothle/tip/ITimeProfileService;)Lcom/mediatek/bluetoothle/tip/ITimeProfileService;

    .line 91
    iget-object v0, p0, Lcom/mediatek/bluetooth/BleTimeProfileService$2;->this$0:Lcom/mediatek/bluetooth/BleTimeProfileService;

    # getter for: Lcom/mediatek/bluetooth/BleTimeProfileService;->mServiceListener:Lcom/mediatek/bluetooth/BleProfileService$ProfileServiceListener;
    invoke-static {v0}, Lcom/mediatek/bluetooth/BleTimeProfileService;->access$200(Lcom/mediatek/bluetooth/BleTimeProfileService;)Lcom/mediatek/bluetooth/BleProfileService$ProfileServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/mediatek/bluetooth/BleTimeProfileService$2;->this$0:Lcom/mediatek/bluetooth/BleTimeProfileService;

    # getter for: Lcom/mediatek/bluetooth/BleTimeProfileService;->mServiceListener:Lcom/mediatek/bluetooth/BleProfileService$ProfileServiceListener;
    invoke-static {v0}, Lcom/mediatek/bluetooth/BleTimeProfileService;->access$200(Lcom/mediatek/bluetooth/BleTimeProfileService;)Lcom/mediatek/bluetooth/BleProfileService$ProfileServiceListener;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/mediatek/bluetooth/BleTimeProfileService$2;->this$0:Lcom/mediatek/bluetooth/BleTimeProfileService;

    invoke-interface {v0, v1, v2}, Lcom/mediatek/bluetooth/BleProfileService$ProfileServiceListener;->onServiceConnected(ILcom/mediatek/bluetooth/BleProfileService;)V

    .line 95
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 99
    const-string v0, "BleTimeProfileService"

    const-string v1, "Proxy object disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v0, p0, Lcom/mediatek/bluetooth/BleTimeProfileService$2;->this$0:Lcom/mediatek/bluetooth/BleTimeProfileService;

    const/4 v1, 0x0

    # setter for: Lcom/mediatek/bluetooth/BleTimeProfileService;->mService:Lcom/mediatek/bluetoothle/tip/ITimeProfileService;
    invoke-static {v0, v1}, Lcom/mediatek/bluetooth/BleTimeProfileService;->access$102(Lcom/mediatek/bluetooth/BleTimeProfileService;Lcom/mediatek/bluetoothle/tip/ITimeProfileService;)Lcom/mediatek/bluetoothle/tip/ITimeProfileService;

    .line 101
    iget-object v0, p0, Lcom/mediatek/bluetooth/BleTimeProfileService$2;->this$0:Lcom/mediatek/bluetooth/BleTimeProfileService;

    # getter for: Lcom/mediatek/bluetooth/BleTimeProfileService;->mServiceListener:Lcom/mediatek/bluetooth/BleProfileService$ProfileServiceListener;
    invoke-static {v0}, Lcom/mediatek/bluetooth/BleTimeProfileService;->access$200(Lcom/mediatek/bluetooth/BleTimeProfileService;)Lcom/mediatek/bluetooth/BleProfileService$ProfileServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/mediatek/bluetooth/BleTimeProfileService$2;->this$0:Lcom/mediatek/bluetooth/BleTimeProfileService;

    # getter for: Lcom/mediatek/bluetooth/BleTimeProfileService;->mServiceListener:Lcom/mediatek/bluetooth/BleProfileService$ProfileServiceListener;
    invoke-static {v0}, Lcom/mediatek/bluetooth/BleTimeProfileService;->access$200(Lcom/mediatek/bluetooth/BleTimeProfileService;)Lcom/mediatek/bluetooth/BleProfileService$ProfileServiceListener;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/mediatek/bluetooth/BleProfileService$ProfileServiceListener;->onServiceDisconnected(I)V

    .line 104
    :cond_0
    return-void
.end method
