.class public Landroid/net/wifi/WifiShareInfo;
.super Ljava/lang/Object;
.source "WifiShareInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/WifiShareInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public key_mgmt:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field public psk:Ljava/lang/String;

.field public ssid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    new-instance v0, Landroid/net/wifi/WifiShareInfo$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiShareInfo$1;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiShareInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiShareInfo;)V
    .locals 1
    .param p1, "source"    # Landroid/net/wifi/WifiShareInfo;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    if-eqz p1, :cond_0

    .line 29
    iget-object v0, p1, Landroid/net/wifi/WifiShareInfo;->password:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/WifiShareInfo;->password:Ljava/lang/String;

    .line 30
    iget-object v0, p1, Landroid/net/wifi/WifiShareInfo;->ssid:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/WifiShareInfo;->ssid:Ljava/lang/String;

    .line 31
    iget-object v0, p1, Landroid/net/wifi/WifiShareInfo;->psk:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/WifiShareInfo;->psk:Ljava/lang/String;

    .line 32
    iget-object v0, p1, Landroid/net/wifi/WifiShareInfo;->key_mgmt:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/WifiShareInfo;->key_mgmt:Ljava/lang/String;

    .line 34
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "wifiSsid"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "psk"    # Ljava/lang/String;
    .param p4, "key_mgmt"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p2, p0, Landroid/net/wifi/WifiShareInfo;->password:Ljava/lang/String;

    .line 21
    iput-object p1, p0, Landroid/net/wifi/WifiShareInfo;->ssid:Ljava/lang/String;

    .line 22
    iput-object p3, p0, Landroid/net/wifi/WifiShareInfo;->psk:Ljava/lang/String;

    .line 23
    iput-object p4, p0, Landroid/net/wifi/WifiShareInfo;->key_mgmt:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 38
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 40
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "SSID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiShareInfo;->ssid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", PASSWORD: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiShareInfo;->password:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "PSK:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiShareInfo;->psk:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "KEY_MGMT:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiShareInfo;->key_mgmt:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 64
    iget-object v0, p0, Landroid/net/wifi/WifiShareInfo;->ssid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Landroid/net/wifi/WifiShareInfo;->password:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Landroid/net/wifi/WifiShareInfo;->psk:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Landroid/net/wifi/WifiShareInfo;->key_mgmt:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    return-void
.end method
