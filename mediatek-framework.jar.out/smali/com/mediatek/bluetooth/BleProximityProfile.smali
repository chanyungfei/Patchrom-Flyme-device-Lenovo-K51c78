.class public Lcom/mediatek/bluetooth/BleProximityProfile;
.super Lcom/mediatek/bluetooth/BleProfile;
.source "BleProximityProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/bluetooth/BleProximityProfile$ProfileCallback;
    }
.end annotation


# static fields
.field public static final ALERT_LEVEL_HIGH:I = 0x2

.field public static final ALERT_LEVEL_MILD:I = 0x1

.field public static final ALERT_LEVEL_NO:I = 0x0

.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "BleProximityProfile"

.field private static final VDBG:Z = true


# instance fields
.field mCallback:Lcom/mediatek/bluetooth/IBleGattCallback;

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mGattClientIf:Lcom/mediatek/bluetooth/IBleGatt;

.field private mProfileCallback:Lcom/mediatek/bluetooth/BleProximityProfile$ProfileCallback;

.field private mProfileID:I


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothDevice;Lcom/mediatek/bluetooth/IBleGatt;)V
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "gattClient"    # Lcom/mediatek/bluetooth/IBleGatt;

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/mediatek/bluetooth/BleProfile;-><init>()V

    .line 59
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/bluetooth/BleProximityProfile;->mProfileID:I

    .line 85
    new-instance v0, Lcom/mediatek/bluetooth/BleProximityProfile$1;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/BleProximityProfile$1;-><init>(Lcom/mediatek/bluetooth/BleProximityProfile;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/BleProximityProfile;->mCallback:Lcom/mediatek/bluetooth/IBleGattCallback;

    .line 156
    iput-object p1, p0, Lcom/mediatek/bluetooth/BleProximityProfile;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 157
    iput-object p2, p0, Lcom/mediatek/bluetooth/BleProximityProfile;->mGattClientIf:Lcom/mediatek/bluetooth/IBleGatt;

    .line 158
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/bluetooth/BleProximityProfile;)Lcom/mediatek/bluetooth/BleProximityProfile$ProfileCallback;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/bluetooth/BleProximityProfile;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/mediatek/bluetooth/BleProximityProfile;->mProfileCallback:Lcom/mediatek/bluetooth/BleProximityProfile$ProfileCallback;

    return-object v0
.end method


# virtual methods
.method close()V
    .locals 2

    .prologue
    .line 175
    const-string v0, "BleProximityProfile"

    const-string v1, "close()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v0, p0, Lcom/mediatek/bluetooth/BleProximityProfile;->mGattClientIf:Lcom/mediatek/bluetooth/IBleGatt;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/mediatek/bluetooth/IBleGatt;->unregisterClientCallback(I)V

    .line 177
    return-void
.end method

.method public getDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/mediatek/bluetooth/BleProximityProfile;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method open()V
    .locals 3

    .prologue
    .line 168
    const-string v0, "BleProximityProfile"

    const-string v1, "open()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v0, p0, Lcom/mediatek/bluetooth/BleProximityProfile;->mGattClientIf:Lcom/mediatek/bluetooth/IBleGatt;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/mediatek/bluetooth/BleProximityProfile;->mCallback:Lcom/mediatek/bluetooth/IBleGattCallback;

    invoke-interface {v0, v1, v2}, Lcom/mediatek/bluetooth/IBleGatt;->registerClientCallback(ILcom/mediatek/bluetooth/IBleGattCallback;)V

    .line 170
    return-void
.end method

.method public readRssi()Z
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/mediatek/bluetooth/BleProximityProfile;->mGattClientIf:Lcom/mediatek/bluetooth/IBleGatt;

    if-nez v0, :cond_0

    .line 196
    const/4 v0, 0x0

    .line 199
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetooth/BleProximityProfile;->mGattClientIf:Lcom/mediatek/bluetooth/IBleGatt;

    iget v1, p0, Lcom/mediatek/bluetooth/BleProximityProfile;->mProfileID:I

    invoke-interface {v0, v1}, Lcom/mediatek/bluetooth/IBleGatt;->readRemoteRssi(I)Z

    move-result v0

    goto :goto_0
.end method

.method public readTxPower()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 247
    const-string v3, "BleProximityProfile"

    const-string v4, "readTxPower"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v3, p0, Lcom/mediatek/bluetooth/BleProximityProfile;->mGattClientIf:Lcom/mediatek/bluetooth/IBleGatt;

    if-nez v3, :cond_0

    .line 270
    :goto_0
    return v2

    .line 253
    :cond_0
    const/4 v0, 0x0

    .line 255
    .local v0, "gattService":Landroid/bluetooth/BluetoothGattService;
    iget-object v3, p0, Lcom/mediatek/bluetooth/BleProximityProfile;->mGattClientIf:Lcom/mediatek/bluetooth/IBleGatt;

    sget-object v4, Lcom/mediatek/bluetooth/BleGattUuid$Service;->TX_POWER:Ljava/util/UUID;

    invoke-interface {v3, v4}, Lcom/mediatek/bluetooth/IBleGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    .line 257
    if-nez v0, :cond_1

    .line 258
    const-string v3, "BleProximityProfile"

    const-string v4, "readTxPower: gattService is null"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 262
    :cond_1
    sget-object v3, Lcom/mediatek/bluetooth/BleGattUuid$Char;->TX_POWER_LEVEL:Ljava/util/UUID;

    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    .line 265
    .local v1, "txPowerLevel":Landroid/bluetooth/BluetoothGattCharacteristic;
    if-nez v1, :cond_2

    .line 266
    const-string v3, "BleProximityProfile"

    const-string v4, "readTxPower: TxPower level is null"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 270
    :cond_2
    iget-object v2, p0, Lcom/mediatek/bluetooth/BleProximityProfile;->mGattClientIf:Lcom/mediatek/bluetooth/IBleGatt;

    iget v3, p0, Lcom/mediatek/bluetooth/BleProximityProfile;->mProfileID:I

    invoke-interface {v2, v3, v1}, Lcom/mediatek/bluetooth/IBleGatt;->readCharacteristic(ILandroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v2

    goto :goto_0
.end method

.method public registerProfileCallback(Lcom/mediatek/bluetooth/BleProximityProfile$ProfileCallback;)Z
    .locals 1
    .param p1, "callback"    # Lcom/mediatek/bluetooth/BleProximityProfile$ProfileCallback;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/mediatek/bluetooth/BleProximityProfile;->mProfileCallback:Lcom/mediatek/bluetooth/BleProximityProfile$ProfileCallback;

    .line 186
    const/4 v0, 0x1

    return v0
.end method

.method public setLinkLostAlertLevel(I)Z
    .locals 6
    .param p1, "level"    # I

    .prologue
    const/4 v2, 0x0

    .line 208
    const-string v3, "BleProximityProfile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setLinkLostAlertLevel:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v3, p0, Lcom/mediatek/bluetooth/BleProximityProfile;->mGattClientIf:Lcom/mediatek/bluetooth/IBleGatt;

    if-nez v3, :cond_1

    .line 238
    :cond_0
    :goto_0
    return v2

    .line 213
    :cond_1
    if-ltz p1, :cond_0

    const/4 v3, 0x2

    if-gt p1, v3, :cond_0

    .line 217
    const/4 v1, 0x0

    .line 219
    .local v1, "gattService":Landroid/bluetooth/BluetoothGattService;
    iget-object v3, p0, Lcom/mediatek/bluetooth/BleProximityProfile;->mGattClientIf:Lcom/mediatek/bluetooth/IBleGatt;

    sget-object v4, Lcom/mediatek/bluetooth/BleGattUuid$Service;->LINK_LOST:Ljava/util/UUID;

    invoke-interface {v3, v4}, Lcom/mediatek/bluetooth/IBleGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v1

    .line 221
    if-nez v1, :cond_2

    .line 222
    const-string v3, "BleProximityProfile"

    const-string v4, "setLinkLostAlertLevel: gattService is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 226
    :cond_2
    sget-object v3, Lcom/mediatek/bluetooth/BleGattUuid$Char;->ALERT_LEVEL:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    .line 229
    .local v0, "alertLevel":Landroid/bluetooth/BluetoothGattCharacteristic;
    if-nez v0, :cond_3

    .line 230
    const-string v3, "BleProximityProfile"

    const-string v4, "setLinkLostAlertLevel: alertLevel is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 234
    :cond_3
    const/4 v3, 0x1

    new-array v3, v3, [B

    int-to-byte v4, p1

    aput-byte v4, v3, v2

    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 238
    iget-object v2, p0, Lcom/mediatek/bluetooth/BleProximityProfile;->mGattClientIf:Lcom/mediatek/bluetooth/IBleGatt;

    iget v3, p0, Lcom/mediatek/bluetooth/BleProximityProfile;->mProfileID:I

    invoke-interface {v2, v3, v0}, Lcom/mediatek/bluetooth/IBleGatt;->writeCharacteristic(ILandroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v2

    goto :goto_0
.end method
