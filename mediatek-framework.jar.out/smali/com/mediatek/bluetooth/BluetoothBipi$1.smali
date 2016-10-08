.class Lcom/mediatek/bluetooth/BluetoothBipi$1;
.super Ljava/lang/Object;
.source "BluetoothBipi.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/BluetoothBipi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/bluetooth/BluetoothBipi;


# direct methods
.method constructor <init>(Lcom/mediatek/bluetooth/BluetoothBipi;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/mediatek/bluetooth/BluetoothBipi$1;->this$0:Lcom/mediatek/bluetooth/BluetoothBipi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/mediatek/bluetooth/BluetoothBipi$1;->this$0:Lcom/mediatek/bluetooth/BluetoothBipi;

    invoke-static {p2}, Lcom/mediatek/bluetooth/IBluetoothBipi$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/bluetooth/IBluetoothBipi;

    move-result-object v1

    # setter for: Lcom/mediatek/bluetooth/BluetoothBipi;->mService:Lcom/mediatek/bluetooth/IBluetoothBipi;
    invoke-static {v0, v1}, Lcom/mediatek/bluetooth/BluetoothBipi;->access$002(Lcom/mediatek/bluetooth/BluetoothBipi;Lcom/mediatek/bluetooth/IBluetoothBipi;)Lcom/mediatek/bluetooth/IBluetoothBipi;

    .line 73
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/mediatek/bluetooth/BluetoothBipi$1;->this$0:Lcom/mediatek/bluetooth/BluetoothBipi;

    const/4 v1, 0x0

    # setter for: Lcom/mediatek/bluetooth/BluetoothBipi;->mService:Lcom/mediatek/bluetooth/IBluetoothBipi;
    invoke-static {v0, v1}, Lcom/mediatek/bluetooth/BluetoothBipi;->access$002(Lcom/mediatek/bluetooth/BluetoothBipi;Lcom/mediatek/bluetooth/IBluetoothBipi;)Lcom/mediatek/bluetooth/IBluetoothBipi;

    .line 76
    return-void
.end method
