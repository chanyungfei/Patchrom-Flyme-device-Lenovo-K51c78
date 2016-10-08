.class Lcom/mediatek/bluetooth/BleGattDevice$2;
.super Ljava/lang/Object;
.source "BleGattDevice.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/bluetooth/BleGattDevice;-><init>(Landroid/content/Context;Lcom/mediatek/bluetooth/IBleDeviceManager;Landroid/bluetooth/BluetoothDevice;Lcom/mediatek/bluetooth/BleGattDevice$BleGattDeviceCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/bluetooth/BleGattDevice;


# direct methods
.method constructor <init>(Lcom/mediatek/bluetooth/BleGattDevice;)V
    .locals 0

    .prologue
    .line 301
    iput-object p1, p0, Lcom/mediatek/bluetooth/BleGattDevice$2;->this$0:Lcom/mediatek/bluetooth/BleGattDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 304
    const-string v0, "BleGattDevice"

    const-string v1, "BluetoothLe process died"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    return-void
.end method
