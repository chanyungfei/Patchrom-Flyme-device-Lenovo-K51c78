.class Lcom/mediatek/bluetooth/BleProximityProfileService$1;
.super Ljava/lang/Object;
.source "BleProximityProfileService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/BleProximityProfileService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/bluetooth/BleProximityProfileService;


# direct methods
.method constructor <init>(Lcom/mediatek/bluetooth/BleProximityProfileService;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lcom/mediatek/bluetooth/BleProximityProfileService$1;->this$0:Lcom/mediatek/bluetooth/BleProximityProfileService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 257
    iget-object v0, p0, Lcom/mediatek/bluetooth/BleProximityProfileService$1;->this$0:Lcom/mediatek/bluetooth/BleProximityProfileService;

    invoke-static {p2}, Lcom/mediatek/bluetoothle/pxp/IProximityProfileService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/bluetoothle/pxp/IProximityProfileService;

    move-result-object v1

    # setter for: Lcom/mediatek/bluetooth/BleProximityProfileService;->mService:Lcom/mediatek/bluetoothle/pxp/IProximityProfileService;
    invoke-static {v0, v1}, Lcom/mediatek/bluetooth/BleProximityProfileService;->access$002(Lcom/mediatek/bluetooth/BleProximityProfileService;Lcom/mediatek/bluetoothle/pxp/IProximityProfileService;)Lcom/mediatek/bluetoothle/pxp/IProximityProfileService;

    .line 259
    const-string v0, "BleProximityProfileService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Proxy object connected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/bluetooth/BleProximityProfileService$1;->this$0:Lcom/mediatek/bluetooth/BleProximityProfileService;

    # getter for: Lcom/mediatek/bluetooth/BleProximityProfileService;->mService:Lcom/mediatek/bluetoothle/pxp/IProximityProfileService;
    invoke-static {v2}, Lcom/mediatek/bluetooth/BleProximityProfileService;->access$000(Lcom/mediatek/bluetooth/BleProximityProfileService;)Lcom/mediatek/bluetoothle/pxp/IProximityProfileService;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", proxy:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/bluetooth/BleProximityProfileService$1;->this$0:Lcom/mediatek/bluetooth/BleProximityProfileService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object v0, p0, Lcom/mediatek/bluetooth/BleProximityProfileService$1;->this$0:Lcom/mediatek/bluetooth/BleProximityProfileService;

    # getter for: Lcom/mediatek/bluetooth/BleProximityProfileService;->mServiceListener:Lcom/mediatek/bluetooth/BleProfileService$ProfileServiceListener;
    invoke-static {v0}, Lcom/mediatek/bluetooth/BleProximityProfileService;->access$100(Lcom/mediatek/bluetooth/BleProximityProfileService;)Lcom/mediatek/bluetooth/BleProfileService$ProfileServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/mediatek/bluetooth/BleProximityProfileService$1;->this$0:Lcom/mediatek/bluetooth/BleProximityProfileService;

    # getter for: Lcom/mediatek/bluetooth/BleProximityProfileService;->mServiceListener:Lcom/mediatek/bluetooth/BleProfileService$ProfileServiceListener;
    invoke-static {v0}, Lcom/mediatek/bluetooth/BleProximityProfileService;->access$100(Lcom/mediatek/bluetooth/BleProximityProfileService;)Lcom/mediatek/bluetooth/BleProfileService$ProfileServiceListener;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/mediatek/bluetooth/BleProximityProfileService$1;->this$0:Lcom/mediatek/bluetooth/BleProximityProfileService;

    invoke-interface {v0, v1, v2}, Lcom/mediatek/bluetooth/BleProfileService$ProfileServiceListener;->onServiceConnected(ILcom/mediatek/bluetooth/BleProfileService;)V

    .line 266
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 270
    const-string v0, "BleProximityProfileService"

    const-string v1, "Proxy object disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object v0, p0, Lcom/mediatek/bluetooth/BleProximityProfileService$1;->this$0:Lcom/mediatek/bluetooth/BleProximityProfileService;

    const/4 v1, 0x0

    # setter for: Lcom/mediatek/bluetooth/BleProximityProfileService;->mService:Lcom/mediatek/bluetoothle/pxp/IProximityProfileService;
    invoke-static {v0, v1}, Lcom/mediatek/bluetooth/BleProximityProfileService;->access$002(Lcom/mediatek/bluetooth/BleProximityProfileService;Lcom/mediatek/bluetoothle/pxp/IProximityProfileService;)Lcom/mediatek/bluetoothle/pxp/IProximityProfileService;

    .line 273
    iget-object v0, p0, Lcom/mediatek/bluetooth/BleProximityProfileService$1;->this$0:Lcom/mediatek/bluetooth/BleProximityProfileService;

    # getter for: Lcom/mediatek/bluetooth/BleProximityProfileService;->mServiceListener:Lcom/mediatek/bluetooth/BleProfileService$ProfileServiceListener;
    invoke-static {v0}, Lcom/mediatek/bluetooth/BleProximityProfileService;->access$100(Lcom/mediatek/bluetooth/BleProximityProfileService;)Lcom/mediatek/bluetooth/BleProfileService$ProfileServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/mediatek/bluetooth/BleProximityProfileService$1;->this$0:Lcom/mediatek/bluetooth/BleProximityProfileService;

    # getter for: Lcom/mediatek/bluetooth/BleProximityProfileService;->mServiceListener:Lcom/mediatek/bluetooth/BleProfileService$ProfileServiceListener;
    invoke-static {v0}, Lcom/mediatek/bluetooth/BleProximityProfileService;->access$100(Lcom/mediatek/bluetooth/BleProximityProfileService;)Lcom/mediatek/bluetooth/BleProfileService$ProfileServiceListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/mediatek/bluetooth/BleProfileService$ProfileServiceListener;->onServiceDisconnected(I)V

    .line 276
    :cond_0
    return-void
.end method
