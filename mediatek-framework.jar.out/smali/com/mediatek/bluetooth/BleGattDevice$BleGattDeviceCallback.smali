.class public interface abstract Lcom/mediatek/bluetooth/BleGattDevice$BleGattDeviceCallback;
.super Ljava/lang/Object;
.source "BleGattDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/BleGattDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BleGattDeviceCallback"
.end annotation


# virtual methods
.method public abstract onConnectionStateChange(Lcom/mediatek/bluetooth/BleGattDevice;II)V
.end method

.method public abstract onServicesDiscovered(Lcom/mediatek/bluetooth/BleGattDevice;I)V
.end method
