.class Lcom/mediatek/bluetooth/BluetoothPrxm$1;
.super Ljava/lang/Object;
.source "BluetoothPrxm.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/BluetoothPrxm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/bluetooth/BluetoothPrxm;


# direct methods
.method constructor <init>(Lcom/mediatek/bluetooth/BluetoothPrxm;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/mediatek/bluetooth/BluetoothPrxm$1;->this$0:Lcom/mediatek/bluetooth/BluetoothPrxm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/mediatek/bluetooth/BluetoothPrxm$1;->this$0:Lcom/mediatek/bluetooth/BluetoothPrxm;

    invoke-static {p2}, Lcom/mediatek/bluetooth/IBluetoothPrxm$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/bluetooth/IBluetoothPrxm;

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/bluetooth/BluetoothPrxm;->mService:Lcom/mediatek/bluetooth/IBluetoothPrxm;

    .line 71
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/mediatek/bluetooth/BluetoothPrxm$1;->this$0:Lcom/mediatek/bluetooth/BluetoothPrxm;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/mediatek/bluetooth/BluetoothPrxm;->mService:Lcom/mediatek/bluetooth/IBluetoothPrxm;

    .line 75
    return-void
.end method
