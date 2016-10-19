.class public Lcom/mediatek/bluetooth/BleFindMeProfile;
.super Lcom/mediatek/bluetooth/BleProfile;
.source "BleFindMeProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/bluetooth/BleFindMeProfile$ProfileCallback;
    }
.end annotation


# static fields
.field public static final ALERT_LEVEL_HIGH:I = 0x2

.field public static final ALERT_LEVEL_MILD:I = 0x1

.field public static final ALERT_LEVEL_NO:I = 0x0

.field private static final ALERT_LEVEL_OFFSET:I = 0x0

.field private static final DBG:Z = true

.field private static final LEVEL_MAX:I = 0x2

.field private static final LEVEL_MIN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BleFindMeProfile"

.field private static final VDBG:Z = true


# instance fields
.field private mCallback:Lcom/mediatek/bluetooth/IBleGattCallback;

.field private final mDevice:Landroid/bluetooth/BluetoothDevice;

.field private final mGattClientIf:Lcom/mediatek/bluetooth/IBleGatt;

.field private mProfileCallback:Lcom/mediatek/bluetooth/BleFindMeProfile$ProfileCallback;

.field private final mProfileID:I


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothDevice;Lcom/mediatek/bluetooth/IBleGatt;)V
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "gattClient"    # Lcom/mediatek/bluetooth/IBleGatt;

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/mediatek/bluetooth/BleProfile;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/bluetooth/BleFindMeProfile;->mProfileID:I

    .line 93
    new-instance v0, Lcom/mediatek/bluetooth/BleFindMeProfile$1;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/BleFindMeProfile$1;-><init>(Lcom/mediatek/bluetooth/BleFindMeProfile;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/BleFindMeProfile;->mCallback:Lcom/mediatek/bluetooth/IBleGattCallback;

    .line 154
    iput-object p1, p0, Lcom/mediatek/bluetooth/BleFindMeProfile;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 155
    iput-object p2, p0, Lcom/mediatek/bluetooth/BleFindMeProfile;->mGattClientIf:Lcom/mediatek/bluetooth/IBleGatt;

    .line 156
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/bluetooth/BleFindMeProfile;)Lcom/mediatek/bluetooth/BleFindMeProfile$ProfileCallback;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/bluetooth/BleFindMeProfile;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/mediatek/bluetooth/BleFindMeProfile;->mProfileCallback:Lcom/mediatek/bluetooth/BleFindMeProfile$ProfileCallback;

    return-object v0
.end method


# virtual methods
.method final close()V
    .locals 2

    .prologue
    .line 173
    const-string v0, "BleFindMeProfile"

    const-string v1, "close()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v0, p0, Lcom/mediatek/bluetooth/BleFindMeProfile;->mGattClientIf:Lcom/mediatek/bluetooth/IBleGatt;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/mediatek/bluetooth/IBleGatt;->unregisterClientCallback(I)V

    .line 175
    return-void
.end method

.method public final findTarget(I)Z
    .locals 10
    .param p1, "level"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 211
    const-string v6, "BleFindMeProfile"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "findTarget: this.mGattClientIf = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/bluetooth/BleFindMeProfile;->mGattClientIf:Lcom/mediatek/bluetooth/IBleGatt;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", this.mProfileID = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", level = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v6, p0, Lcom/mediatek/bluetooth/BleFindMeProfile;->mGattClientIf:Lcom/mediatek/bluetooth/IBleGatt;

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 215
    if-ltz p1, :cond_0

    const/4 v6, 0x2

    if-ge v6, p1, :cond_2

    .line 216
    :cond_0
    const-string v6, "BleFindMeProfile"

    const-string v7, "Invalid level"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_1
    :goto_0
    return v5

    .line 220
    :cond_2
    iget-object v6, p0, Lcom/mediatek/bluetooth/BleFindMeProfile;->mGattClientIf:Lcom/mediatek/bluetooth/IBleGatt;

    sget-object v7, Lcom/mediatek/bluetooth/BleGattUuid$Service;->IMMEDIATE_ALERT:Ljava/util/UUID;

    invoke-interface {v6, v7}, Lcom/mediatek/bluetooth/IBleGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v3

    .line 222
    .local v3, "gattService":Landroid/bluetooth/BluetoothGattService;
    if-eqz v3, :cond_1

    .line 226
    sget-object v6, Lcom/mediatek/bluetooth/BleGattUuid$Char;->ALERT_LEVEL:Ljava/util/UUID;

    invoke-virtual {v3, v6}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    .line 228
    .local v0, "alertLevel":Landroid/bluetooth/BluetoothGattCharacteristic;
    if-eqz v0, :cond_1

    .line 232
    const-string v6, "BleFindMeProfile"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "-> Service:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v8

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothGattService;->getInstanceId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :try_start_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "getDevice"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 236
    .local v4, "method":Ljava/lang/reflect/Method;
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 237
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 238
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    const-string v6, "BleFindMeProfile"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "-> Device:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "method":Ljava/lang/reflect/Method;
    :goto_1
    const-string v6, "BleFindMeProfile"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "-> Char InstanceID:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getInstanceId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    const-string v6, "BleFindMeProfile"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "-> Char Properties:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    const-string v6, "BleFindMeProfile"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "-> Char Permissions:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getPermissions()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-virtual {v0, v9}, Landroid/bluetooth/BluetoothGattCharacteristic;->setWriteType(I)V

    .line 248
    const/16 v6, 0x11

    invoke-virtual {v0, p1, v6, v5}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue(III)Z

    .line 250
    iget-object v6, p0, Lcom/mediatek/bluetooth/BleFindMeProfile;->mGattClientIf:Lcom/mediatek/bluetooth/IBleGatt;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v6, v5, v0}, Lcom/mediatek/bluetooth/IBleGatt;->writeCharacteristic(ILandroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v5

    goto/16 :goto_0

    .line 239
    :catch_0
    move-exception v2

    .line 240
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "BleFindMeProfile"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public final getDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/mediatek/bluetooth/BleFindMeProfile;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method final open()V
    .locals 3

    .prologue
    .line 166
    const-string v0, "BleFindMeProfile"

    const-string v1, "open()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v0, p0, Lcom/mediatek/bluetooth/BleFindMeProfile;->mGattClientIf:Lcom/mediatek/bluetooth/IBleGatt;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/mediatek/bluetooth/BleFindMeProfile;->mCallback:Lcom/mediatek/bluetooth/IBleGattCallback;

    invoke-interface {v0, v1, v2}, Lcom/mediatek/bluetooth/IBleGatt;->registerClientCallback(ILcom/mediatek/bluetooth/IBleGattCallback;)V

    .line 168
    return-void
.end method

.method public final registerProfileCallback(Lcom/mediatek/bluetooth/BleFindMeProfile$ProfileCallback;)Z
    .locals 1
    .param p1, "callback"    # Lcom/mediatek/bluetooth/BleFindMeProfile$ProfileCallback;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/mediatek/bluetooth/BleFindMeProfile;->mProfileCallback:Lcom/mediatek/bluetooth/BleFindMeProfile$ProfileCallback;

    .line 189
    const/4 v0, 0x1

    return v0
.end method
