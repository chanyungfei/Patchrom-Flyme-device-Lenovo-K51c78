.class public interface abstract Lcom/mediatek/bluetooth/BleProximityProfile$ProfileCallback;
.super Ljava/lang/Object;
.source "BleProximityProfile.java"

# interfaces
.implements Lcom/mediatek/bluetooth/BleProfile$BleProfileCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/BleProximityProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ProfileCallback"
.end annotation


# virtual methods
.method public abstract onLinkLostAlertLevelSet(ILandroid/bluetooth/BluetoothDevice;)V
.end method

.method public abstract onRssiRead(IILandroid/bluetooth/BluetoothDevice;)V
.end method

.method public abstract onTxPowerRead(IILandroid/bluetooth/BluetoothDevice;)V
.end method
