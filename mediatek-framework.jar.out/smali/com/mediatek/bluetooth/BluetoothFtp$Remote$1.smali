.class Lcom/mediatek/bluetooth/BluetoothFtp$Remote$1;
.super Ljava/lang/Object;
.source "BluetoothFtp.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/BluetoothFtp$Remote;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/bluetooth/BluetoothFtp$Remote;


# direct methods
.method constructor <init>(Lcom/mediatek/bluetooth/BluetoothFtp$Remote;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/mediatek/bluetooth/BluetoothFtp$Remote$1;->this$0:Lcom/mediatek/bluetooth/BluetoothFtp$Remote;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/mediatek/bluetooth/BluetoothFtp$Remote$1;->this$0:Lcom/mediatek/bluetooth/BluetoothFtp$Remote;

    invoke-static {p2}, Lcom/mediatek/bluetooth/IBluetoothFtpCtrl$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/bluetooth/IBluetoothFtpCtrl;

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/bluetooth/BluetoothFtp$Remote;->mService:Lcom/mediatek/bluetooth/IBluetoothFtpCtrl;

    .line 160
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/mediatek/bluetooth/BluetoothFtp$Remote$1;->this$0:Lcom/mediatek/bluetooth/BluetoothFtp$Remote;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/mediatek/bluetooth/BluetoothFtp$Remote;->mService:Lcom/mediatek/bluetooth/IBluetoothFtpCtrl;

    .line 164
    return-void
.end method
