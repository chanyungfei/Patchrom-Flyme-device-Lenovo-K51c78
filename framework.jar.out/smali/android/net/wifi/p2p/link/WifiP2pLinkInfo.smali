.class public Landroid/net/wifi/p2p/link/WifiP2pLinkInfo;
.super Ljava/lang/Object;
.source "WifiP2pLinkInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/p2p/link/WifiP2pLinkInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public interfaceAddress:Ljava/lang/String;

.field public linkInfo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    new-instance v0, Landroid/net/wifi/p2p/link/WifiP2pLinkInfo$1;

    invoke-direct {v0}, Landroid/net/wifi/p2p/link/WifiP2pLinkInfo$1;-><init>()V

    sput-object v0, Landroid/net/wifi/p2p/link/WifiP2pLinkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/p2p/link/WifiP2pLinkInfo;->interfaceAddress:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/p2p/link/WifiP2pLinkInfo;->linkInfo:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/p2p/link/WifiP2pLinkInfo;)V
    .locals 1
    .param p1, "source"    # Landroid/net/wifi/p2p/link/WifiP2pLinkInfo;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/p2p/link/WifiP2pLinkInfo;->interfaceAddress:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/p2p/link/WifiP2pLinkInfo;->linkInfo:Ljava/lang/String;

    .line 51
    if-eqz p1, :cond_0

    .line 52
    iget-object v0, p1, Landroid/net/wifi/p2p/link/WifiP2pLinkInfo;->interfaceAddress:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/p2p/link/WifiP2pLinkInfo;->interfaceAddress:Ljava/lang/String;

    .line 53
    iget-object v0, p1, Landroid/net/wifi/p2p/link/WifiP2pLinkInfo;->linkInfo:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/p2p/link/WifiP2pLinkInfo;->linkInfo:Ljava/lang/String;

    .line 55
    :cond_0
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
    .line 44
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 45
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    const-string v1, "interfaceAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/link/WifiP2pLinkInfo;->interfaceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 46
    const-string v1, " linkInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/link/WifiP2pLinkInfo;->linkInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 47
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
    iget-object v0, p0, Landroid/net/wifi/p2p/link/WifiP2pLinkInfo;->interfaceAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Landroid/net/wifi/p2p/link/WifiP2pLinkInfo;->linkInfo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    return-void
.end method
