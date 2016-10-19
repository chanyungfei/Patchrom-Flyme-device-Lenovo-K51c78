.class public final Lcom/mediatek/bluetooth/BleGattUuid$Desc;
.super Ljava/lang/Object;
.source "BleGattUuid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/BleGattUuid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Desc"
.end annotation


# static fields
.field public static final CLIENT_CHARACTERISTIC_CONFIG:Ljava/util/UUID;

.field public static final CLIENT_CHAR_CONFIG:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 170
    const-string v0, "00002902-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/mediatek/bluetooth/BleGattUuid$Desc;->CLIENT_CHAR_CONFIG:Ljava/util/UUID;

    .line 173
    const-string v0, "00002902-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/mediatek/bluetooth/BleGattUuid$Desc;->CLIENT_CHARACTERISTIC_CONFIG:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
