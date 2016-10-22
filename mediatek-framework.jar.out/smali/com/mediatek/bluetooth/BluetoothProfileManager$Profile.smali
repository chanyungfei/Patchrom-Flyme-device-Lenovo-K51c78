.class public final enum Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;
.super Ljava/lang/Enum;
.source "BluetoothProfileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/BluetoothProfileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Profile"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

.field public static final enum A2DP:Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

.field public static final enum AVRCP:Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

.field public static final enum BIP_INITIATOR:Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

.field public static final enum BIP_RESPONDER:Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

.field public static final enum BPP_SENDER:Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

.field public static final enum DUN:Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

.field public static final enum FTP_CLIENT:Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

.field public static final enum FTP_SERVER:Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

.field public static final enum HEADSET:Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

.field public static final enum HID:Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

.field public static final enum MAP_SERVER:Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

.field public static final enum OPP_CLIENT:Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

.field public static final enum OPP_SERVER:Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

.field public static final enum PAN_GN:Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

.field public static final enum PAN_NAP:Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

.field public static final enum PBAP:Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

.field public static final enum PRXM:Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

.field public static final enum PRXR:Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

.field public static final enum SIMAP:Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;


# instance fields
.field public final localizedString:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 119
    new-instance v0, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    const-string v1, "HEADSET"

    invoke-direct {v0, v1, v4, v4}, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->HEADSET:Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    .line 120
    new-instance v0, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    const-string v1, "A2DP"

    invoke-direct {v0, v1, v5, v5}, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->A2DP:Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    .line 121
    new-instance v0, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    const-string v1, "HID"

    invoke-direct {v0, v1, v6, v6}, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->HID:Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    .line 122
    new-instance v0, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    const-string v1, "FTP_CLIENT"

    invoke-direct {v0, v1, v7, v7}, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->FTP_CLIENT:Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    .line 123
    new-instance v0, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    const-string v1, "FTP_SERVER"

    invoke-direct {v0, v1, v8, v8}, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->FTP_SERVER:Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    .line 124
    new-instance v0, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    const-string v1, "BIP_INITIATOR"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->BIP_INITIATOR:Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    .line 125
    new-instance v0, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    const-string v1, "BIP_RESPONDER"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->BIP_RESPONDER:Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    .line 126
    new-instance v0, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    const-string v1, "BPP_SENDER"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->BPP_SENDER:Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    .line 127
    new-instance v0, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    const-string v1, "SIMAP"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->SIMAP:Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    .line 128
    new-instance v0, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    const-string v1, "PBAP"

    const/16 v2, 0x9

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->PBAP:Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    .line 129
    new-instance v0, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    const-string v1, "OPP_SERVER"

    const/16 v2, 0xa

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->OPP_SERVER:Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    .line 130
    new-instance v0, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    const-string v1, "OPP_CLIENT"

    const/16 v2, 0xb

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->OPP_CLIENT:Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    .line 131
    new-instance v0, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    const-string v1, "DUN"

    const/16 v2, 0xc

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->DUN:Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    .line 132
    new-instance v0, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    const-string v1, "AVRCP"

    const/16 v2, 0xd

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->AVRCP:Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    .line 133
    new-instance v0, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    const-string v1, "PRXM"

    const/16 v2, 0xe

    const/16 v3, 0xe

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->PRXM:Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    .line 134
    new-instance v0, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    const-string v1, "PRXR"

    const/16 v2, 0xf

    const/16 v3, 0xf

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->PRXR:Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    .line 135
    new-instance v0, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    const-string v1, "PAN_NAP"

    const/16 v2, 0x10

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->PAN_NAP:Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    .line 136
    new-instance v0, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    const-string v1, "PAN_GN"

    const/16 v2, 0x11

    const/16 v3, 0x11

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->PAN_GN:Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    .line 137
    new-instance v0, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    const-string v1, "MAP_SERVER"

    const/16 v2, 0x12

    const/16 v3, 0x12

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->MAP_SERVER:Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    .line 118
    const/16 v0, 0x13

    new-array v0, v0, [Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    sget-object v1, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->HEADSET:Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->A2DP:Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    aput-object v1, v0, v5

    sget-object v1, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->HID:Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    aput-object v1, v0, v6

    sget-object v1, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->FTP_CLIENT:Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    aput-object v1, v0, v7

    sget-object v1, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->FTP_SERVER:Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->BIP_INITIATOR:Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->BIP_RESPONDER:Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->BPP_SENDER:Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->SIMAP:Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->PBAP:Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->OPP_SERVER:Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->OPP_CLIENT:Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->DUN:Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->AVRCP:Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->PRXM:Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->PRXR:Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->PAN_NAP:Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->PAN_GN:Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->MAP_SERVER:Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->$VALUES:[Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "localizedString"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 141
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 142
    iput p3, p0, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->localizedString:I

    .line 143
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 118
    const-class v0, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    return-object v0
.end method

.method public static values()[Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->$VALUES:[Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    invoke-virtual {v0}, [Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    return-object v0
.end method
