.class public interface abstract Lcom/mediatek/bluetooth/BleFindMeProfile$ProfileCallback;
.super Ljava/lang/Object;
.source "BleFindMeProfile.java"

# interfaces
.implements Lcom/mediatek/bluetooth/BleProfile$BleProfileCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/BleFindMeProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ProfileCallback"
.end annotation


# virtual methods
.method public abstract onTargetAlerted(Landroid/bluetooth/BluetoothDevice;Z)V
.end method
