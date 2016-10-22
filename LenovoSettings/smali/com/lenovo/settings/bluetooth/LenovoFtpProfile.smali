.class public Lcom/lenovo/settings/bluetooth/LenovoFtpProfile;
.super Lcom/lenovoframework/adapter/essential/LenovoFtpProileAdapter;
.source "LenovoFtpProfile.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/lenovoframework/adapter/essential/LenovoFtpProileAdapter;-><init>(Landroid/content/Context;)V

    .line 14
    return-void
.end method


# virtual methods
.method public getDrawableResource(Landroid/bluetooth/BluetoothClass;)I
    .locals 1
    .param p1, "btClass"    # Landroid/bluetooth/BluetoothClass;

    .prologue
    .line 30
    const v0, 0x7f020054

    return v0
.end method

.method public getNameResource(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 17
    const v0, 0x7f0c0187

    return v0
.end method

.method public getSummaryResourceForDevice(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/lenovo/settings/bluetooth/LenovoFtpProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 22
    .local v0, "state":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 23
    const v1, 0x7f0c0189

    .line 25
    :goto_0
    return v1

    :cond_0
    const v1, 0x7f0c0188

    goto :goto_0
.end method
