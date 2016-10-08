.class public final Lcom/mediatek/bluetooth/BleGattUuid$Service;
.super Ljava/lang/Object;
.source "BleGattUuid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/BleGattUuid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Service"
.end annotation


# static fields
.field public static final ALERT_NOTIFICATION:Ljava/util/UUID;

.field public static final CURRENT_TIME:Ljava/util/UUID;

.field public static final IMMEDIATE_ALERT:Ljava/util/UUID;

.field public static final LINK_LOST:Ljava/util/UUID;

.field public static final NEXT_DST_CHANGE:Ljava/util/UUID;

.field public static final REFERENCE_TIME_UPDATE:Ljava/util/UUID;

.field public static final TX_POWER:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-string v0, "00001805-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/mediatek/bluetooth/BleGattUuid$Service;->CURRENT_TIME:Ljava/util/UUID;

    .line 64
    const-string v0, "00001807-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/mediatek/bluetooth/BleGattUuid$Service;->NEXT_DST_CHANGE:Ljava/util/UUID;

    .line 70
    const-string v0, "00001806-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/mediatek/bluetooth/BleGattUuid$Service;->REFERENCE_TIME_UPDATE:Ljava/util/UUID;

    .line 76
    const-string v0, "00001802-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/mediatek/bluetooth/BleGattUuid$Service;->IMMEDIATE_ALERT:Ljava/util/UUID;

    .line 82
    const-string v0, "00001803-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/mediatek/bluetooth/BleGattUuid$Service;->LINK_LOST:Ljava/util/UUID;

    .line 88
    const-string v0, "00001804-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/mediatek/bluetooth/BleGattUuid$Service;->TX_POWER:Ljava/util/UUID;

    .line 90
    const-string v0, "00001811-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/mediatek/bluetooth/BleGattUuid$Service;->ALERT_NOTIFICATION:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
