.class public Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;
.super Ljava/lang/Object;
.source "WifiP2pFastConnectInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "WifiP2pFastConnectInfo"

.field private static final connectCredentialPattern:Ljava/util/regex/Pattern;


# instance fields
.field public authType:Ljava/lang/String;

.field public deviceAddress:Ljava/lang/String;

.field public encrType:Ljava/lang/String;

.field public gcIpAddress:Ljava/lang/String;

.field public goIpAddress:Ljava/lang/String;

.field public networkId:I

.field public psk:Ljava/lang/String;

.field public ssid:Ljava/lang/String;

.field public wfdDeviceType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    const-string/jumbo v0, "ssid=(DIRECT-[0-9a-zA-Z]{2}) auth_type=(0x[0-9]{4}) encr_type=(0x[0-9]{4}) psk=([0-9a-zA-Z]{8,63})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->connectCredentialPattern:Ljava/util/regex/Pattern;

    .line 171
    new-instance v0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo$1;

    invoke-direct {v0}, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo$1;-><init>()V

    sput-object v0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->networkId:I

    .line 44
    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->deviceAddress:Ljava/lang/String;

    .line 50
    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->ssid:Ljava/lang/String;

    .line 56
    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->authType:Ljava/lang/String;

    .line 62
    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->encrType:Ljava/lang/String;

    .line 68
    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->psk:Ljava/lang/String;

    .line 74
    const-string v0, "192.168.49.1"

    iput-object v0, p0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->goIpAddress:Ljava/lang/String;

    .line 80
    const-string v0, "192.168.49.2"

    iput-object v0, p0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->gcIpAddress:Ljava/lang/String;

    .line 85
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->wfdDeviceType:I

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;)V
    .locals 1
    .param p1, "source"    # Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->networkId:I

    .line 44
    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->deviceAddress:Ljava/lang/String;

    .line 50
    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->ssid:Ljava/lang/String;

    .line 56
    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->authType:Ljava/lang/String;

    .line 62
    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->encrType:Ljava/lang/String;

    .line 68
    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->psk:Ljava/lang/String;

    .line 74
    const-string v0, "192.168.49.1"

    iput-object v0, p0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->goIpAddress:Ljava/lang/String;

    .line 80
    const-string v0, "192.168.49.2"

    iput-object v0, p0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->gcIpAddress:Ljava/lang/String;

    .line 85
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->wfdDeviceType:I

    .line 127
    if-eqz p1, :cond_0

    .line 128
    iget v0, p1, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->networkId:I

    iput v0, p0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->networkId:I

    .line 129
    iget-object v0, p1, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->deviceAddress:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->deviceAddress:Ljava/lang/String;

    .line 130
    iget-object v0, p1, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->ssid:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->ssid:Ljava/lang/String;

    .line 131
    iget-object v0, p1, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->authType:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->authType:Ljava/lang/String;

    .line 132
    iget-object v0, p1, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->encrType:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->encrType:Ljava/lang/String;

    .line 133
    iget-object v0, p1, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->psk:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->psk:Ljava/lang/String;

    .line 134
    iget-object v0, p1, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->gcIpAddress:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->gcIpAddress:Ljava/lang/String;

    .line 135
    iget v0, p1, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->wfdDeviceType:I

    iput v0, p0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->wfdDeviceType:I

    .line 137
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 7
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x4

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v3, -0x1

    iput v3, p0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->networkId:I

    .line 44
    const-string v3, ""

    iput-object v3, p0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->deviceAddress:Ljava/lang/String;

    .line 50
    const-string v3, ""

    iput-object v3, p0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->ssid:Ljava/lang/String;

    .line 56
    const-string v3, ""

    iput-object v3, p0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->authType:Ljava/lang/String;

    .line 62
    const-string v3, ""

    iput-object v3, p0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->encrType:Ljava/lang/String;

    .line 68
    const-string v3, ""

    iput-object v3, p0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->psk:Ljava/lang/String;

    .line 74
    const-string v3, "192.168.49.1"

    iput-object v3, p0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->goIpAddress:Ljava/lang/String;

    .line 80
    const-string v3, "192.168.49.2"

    iput-object v3, p0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->gcIpAddress:Ljava/lang/String;

    .line 85
    const/4 v3, 0x0

    iput v3, p0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->wfdDeviceType:I

    .line 105
    const-string v3, "[ \n]"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 107
    .local v2, "tokens":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 109
    .local v0, "isMatch":Z
    const-string v3, "WifiP2pFastConnectInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cedential string is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    array-length v3, v2

    if-ge v3, v6, :cond_0

    .line 111
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Malformed Credential String1"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 114
    :cond_0
    sget-object v3, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->connectCredentialPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 115
    .local v1, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-nez v3, :cond_1

    .line 116
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Malformed Credential String2"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 119
    :cond_1
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->ssid:Ljava/lang/String;

    .line 120
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->authType:Ljava/lang/String;

    .line 121
    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->encrType:Ljava/lang/String;

    .line 122
    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->psk:Ljava/lang/String;

    .line 123
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 140
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 141
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    const-string/jumbo v1, "networkId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->networkId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 142
    const-string v1, " deviceAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 143
    const-string v1, " ssid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->ssid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 144
    const-string v1, " auth_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->authType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 145
    const-string v1, " encr_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->encrType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 146
    const-string v1, " psk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->psk:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 147
    const-string v1, " gcIpAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->gcIpAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 148
    const-string v1, " goIpAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->goIpAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 149
    const-string v1, " wfdDeviceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->wfdDeviceType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 150
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 160
    iget v0, p0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->networkId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    iget-object v0, p0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->deviceAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->ssid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->authType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->encrType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->psk:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->gcIpAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 167
    iget v0, p0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->wfdDeviceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    return-void
.end method
