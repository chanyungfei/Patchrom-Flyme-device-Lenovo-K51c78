.class public Landroid/net/wifi/p2p/WifiP2pConfig;
.super Ljava/lang/Object;
.source "WifiP2pConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/p2p/WifiP2pConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAX_GROUP_OWNER_INTENT:I = 0xf

.field public static final MIN_GROUP_OWNER_INTENT:I


# instance fields
.field public deviceAddress:Ljava/lang/String;

.field public groupOwnerIntent:I

.field public netId:I

.field private preferOperFreq:I

.field public wps:Landroid/net/wifi/WpsInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 163
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pConfig$1;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pConfig$1;-><init>()V

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    .line 57
    iput v1, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->groupOwnerIntent:I

    .line 60
    const/4 v0, -0x2

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->netId:I

    .line 64
    iput v1, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->preferOperFreq:I

    .line 69
    new-instance v0, Landroid/net/wifi/WpsInfo;

    invoke-direct {v0}, Landroid/net/wifi/WpsInfo;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    .line 70
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    const/4 v1, 0x0

    iput v1, v0, Landroid/net/wifi/WpsInfo;->setup:I

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/p2p/WifiP2pConfig;)V
    .locals 2
    .param p1, "source"    # Landroid/net/wifi/p2p/WifiP2pConfig;

    .prologue
    const/4 v1, -0x1

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    .line 57
    iput v1, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->groupOwnerIntent:I

    .line 60
    const/4 v0, -0x2

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->netId:I

    .line 64
    iput v1, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->preferOperFreq:I

    .line 146
    if-eqz p1, :cond_0

    .line 147
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    .line 148
    new-instance v0, Landroid/net/wifi/WpsInfo;

    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    invoke-direct {v0, v1}, Landroid/net/wifi/WpsInfo;-><init>(Landroid/net/wifi/WpsInfo;)V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    .line 149
    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->groupOwnerIntent:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->groupOwnerIntent:I

    .line 150
    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->netId:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->netId:I

    .line 152
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 9
    .param p1, "supplicantEvent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v4, ""

    iput-object v4, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    .line 57
    iput v5, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->groupOwnerIntent:I

    .line 60
    const/4 v4, -0x2

    iput v4, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->netId:I

    .line 64
    iput v5, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->preferOperFreq:I

    .line 80
    const-string v4, " "

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 82
    .local v3, "tokens":[Ljava/lang/String;
    array-length v4, v3

    if-lt v4, v6, :cond_0

    aget-object v4, v3, v7

    const-string v5, "P2P-GO-NEG-REQUEST"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 83
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Malformed supplicant event"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 86
    :cond_1
    aget-object v4, v3, v8

    iput-object v4, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    .line 87
    new-instance v4, Landroid/net/wifi/WpsInfo;

    invoke-direct {v4}, Landroid/net/wifi/WpsInfo;-><init>()V

    iput-object v4, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    .line 89
    array-length v4, v3

    if-le v4, v6, :cond_2

    .line 90
    aget-object v4, v3, v6

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 93
    .local v2, "nameVal":[Ljava/lang/String;
    const/4 v4, 0x1

    :try_start_0
    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 98
    .local v0, "devPasswdId":I
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 112
    :pswitch_0
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v7, v4, Landroid/net/wifi/WpsInfo;->setup:I

    .line 116
    .end local v0    # "devPasswdId":I
    .end local v2    # "nameVal":[Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 94
    .restart local v2    # "nameVal":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 95
    .local v1, "e":Ljava/lang/NumberFormatException;
    const/4 v0, 0x0

    .restart local v0    # "devPasswdId":I
    goto :goto_0

    .line 101
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :pswitch_1
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v8, v4, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_1

    .line 105
    :pswitch_2
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v7, v4, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_1

    .line 109
    :pswitch_3
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v6, v4, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_1

    .line 98
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method public getPreferOperFreq()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->preferOperFreq:I

    return v0
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 75
    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setPreferOperFreq(I)V
    .locals 0
    .param p1, "freq"    # I

    .prologue
    .line 121
    iput p1, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->preferOperFreq:I

    .line 122
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 131
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 132
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    const-string v1, "\n address: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 133
    const-string v1, "\n wps: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 134
    const-string v1, "\n groupOwnerIntent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->groupOwnerIntent:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 135
    const-string v1, "\n persist: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->netId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 136
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 156
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 158
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->groupOwnerIntent:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->netId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    return-void
.end method
