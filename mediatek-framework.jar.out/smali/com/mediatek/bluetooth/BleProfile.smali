.class public abstract Lcom/mediatek/bluetooth/BleProfile;
.super Ljava/lang/Object;
.source "BleProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/bluetooth/BleProfile$BleProfileCallback;
    }
.end annotation


# static fields
.field public static final ANP:I = 0x3

.field public static final FMP:I = 0x0

.field public static final PASP:I = 0x4

.field public static final PXP:I = 0x1

.field public static final TIP:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    return-void
.end method


# virtual methods
.method abstract close()V
.end method

.method public abstract getDevice()Landroid/bluetooth/BluetoothDevice;
.end method

.method abstract open()V
.end method
