.class public Lcom/mediatek/epdg/EpdgConfig;
.super Ljava/lang/Object;
.source "EpdgConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final AKA_AUTH_TYPE:I = 0x1

.field public static final AKA_ISIM_AUTH_TYPE:I = 0x3

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mediatek/epdg/EpdgConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final DSMIPV6_PROTOCOL:I = 0x1

.field public static final IPV4:I = 0x1

.field public static final IPV4V6:I = 0x3

.field public static final IPV6:I = 0x2

.field public static final NBM_PROTOCOL:I = 0x2

.field public static final SIM1:I = 0x1

.field public static final SIM2:I = 0x2

.field public static final SIM_AUTH_TYPE:I = 0x2


# instance fields
.field public accessIpType:I

.field public apnName:Ljava/lang/String;

.field public authType:I

.field public certPath:Ljava/lang/String;

.field public edpgServerAddress:Ljava/lang/String;

.field public epdgIpv4Address:Ljava/net/InetAddress;

.field public epdgIpv6Address:Ljava/net/InetAddress;

.field public espAlgo:Ljava/lang/String;

.field public ikeaAlgo:Ljava/lang/String;

.field public imsi:Ljava/lang/String;

.field public isHandOver:Z

.field public mcc:Ljava/lang/String;

.field public mnc:Ljava/lang/String;

.field public mobilityProtocol:I

.field public simIndex:I

.field public wifiInterface:Ljava/lang/String;

.field public wifiIpv4Address:Ljava/net/InetAddress;

.field public wifiIpv6Address:Ljava/net/InetAddress;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 125
    new-instance v0, Lcom/mediatek/epdg/EpdgConfig$1;

    invoke-direct {v0}, Lcom/mediatek/epdg/EpdgConfig$1;-><init>()V

    sput-object v0, Lcom/mediatek/epdg/EpdgConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/epdg/EpdgConfig;->apnName:Ljava/lang/String;

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/epdg/EpdgConfig;->imsi:Ljava/lang/String;

    .line 62
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/epdg/EpdgConfig;->mnc:Ljava/lang/String;

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/epdg/EpdgConfig;->mcc:Ljava/lang/String;

    .line 65
    iput v2, p0, Lcom/mediatek/epdg/EpdgConfig;->accessIpType:I

    .line 66
    iput v2, p0, Lcom/mediatek/epdg/EpdgConfig;->simIndex:I

    .line 67
    const-string/jumbo v0, "wifi.interface"

    const-string/jumbo v1, "wlan0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/epdg/EpdgConfig;->wifiInterface:Ljava/lang/String;

    .line 69
    iput v2, p0, Lcom/mediatek/epdg/EpdgConfig;->authType:I

    .line 70
    iput v2, p0, Lcom/mediatek/epdg/EpdgConfig;->mobilityProtocol:I

    .line 72
    iput-object v3, p0, Lcom/mediatek/epdg/EpdgConfig;->wifiIpv4Address:Ljava/net/InetAddress;

    .line 73
    iput-object v3, p0, Lcom/mediatek/epdg/EpdgConfig;->wifiIpv6Address:Ljava/net/InetAddress;

    .line 74
    iput-object v3, p0, Lcom/mediatek/epdg/EpdgConfig;->epdgIpv4Address:Ljava/net/InetAddress;

    .line 75
    iput-object v3, p0, Lcom/mediatek/epdg/EpdgConfig;->epdgIpv6Address:Ljava/net/InetAddress;

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/epdg/EpdgConfig;->isHandOver:Z

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/epdg/EpdgConfig;->edpgServerAddress:Ljava/lang/String;

    .line 80
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/epdg/EpdgConfig;->certPath:Ljava/lang/String;

    .line 81
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/epdg/EpdgConfig;->ikeaAlgo:Ljava/lang/String;

    .line 82
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/epdg/EpdgConfig;->espAlgo:Ljava/lang/String;

    .line 83
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 87
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 89
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "APN="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/epdg/EpdgConfig;->apnName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " IMSI="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/epdg/EpdgConfig;->imsi:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/epdg/EpdgConfig;->mnc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/epdg/EpdgConfig;->mcc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/epdg/EpdgConfig;->accessIpType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 92
    const-string v1, " WiFi:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/epdg/EpdgConfig;->wifiInterface:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/epdg/EpdgConfig;->wifiIpv4Address:Ljava/net/InetAddress;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/epdg/EpdgConfig;->wifiIpv6Address:Ljava/net/InetAddress;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 94
    const-string v1, " isHandover:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/epdg/EpdgConfig;->isHandOver:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 95
    const-string v1, " ePDG MIP:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/epdg/EpdgConfig;->epdgIpv4Address:Ljava/net/InetAddress;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/epdg/EpdgConfig;->epdgIpv6Address:Ljava/net/InetAddress;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 97
    const-string v1, " ePDG:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/epdg/EpdgConfig;->edpgServerAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    const-string v1, " Auth Type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/epdg/EpdgConfig;->authType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 99
    const-string v1, " SIM Index:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/epdg/EpdgConfig;->simIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 100
    const-string v1, " Protocol:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/epdg/EpdgConfig;->mobilityProtocol:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 101
    const-string v1, " Cert Path:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/epdg/EpdgConfig;->certPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 102
    const-string v1, " IKE Algo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/epdg/EpdgConfig;->ikeaAlgo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 103
    const-string v1, " ESP Algo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/epdg/EpdgConfig;->espAlgo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 105
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 115
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgConfig;->edpgServerAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    iget v0, p0, Lcom/mediatek/epdg/EpdgConfig;->authType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    iget v0, p0, Lcom/mediatek/epdg/EpdgConfig;->simIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    iget v0, p0, Lcom/mediatek/epdg/EpdgConfig;->mobilityProtocol:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgConfig;->certPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgConfig;->ikeaAlgo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgConfig;->espAlgo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    return-void
.end method
