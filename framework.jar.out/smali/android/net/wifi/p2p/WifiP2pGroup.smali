.class public Landroid/net/wifi/p2p/WifiP2pGroup;
.super Ljava/lang/Object;
.source "WifiP2pGroup.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/p2p/WifiP2pGroup;",
            ">;"
        }
    .end annotation
.end field

.field public static final PERSISTENT_NET_ID:I = -0x2

.field private static final TAG:Ljava/lang/String; = "WifiP2pGroup"

.field public static final TEMPORARY_NET_ID:I = -0x1

.field private static final groupStartedPattern:Ljava/util/regex/Pattern;

.field private static final groupStartedPattern2:Ljava/util/regex/Pattern;


# instance fields
.field private mClients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/p2p/WifiP2pDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mFreq:I

.field private mInterface:Ljava/lang/String;

.field private mIsGroupOwner:Z

.field private mNetId:I

.field private mNetworkName:Ljava/lang/String;

.field private mOwner:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mPassphrase:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    const-string/jumbo v0, "ssid=\"(.+)\" freq=(\\d+) (?:psk=)?([0-9a-fA-F]{64})?(?:passphrase=)?(?:\"(.{0,63})\")? go_dev_addr=((?:[0-9a-f]{2}:){5}[0-9a-f]{2}) ?(\\[PERSISTENT\\])?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pGroup;->groupStartedPattern:Ljava/util/regex/Pattern;

    .line 89
    const-string v0, "go_dev_addr=((?:[0-9a-f]{2}:){5}[0-9a-f]{2}) ?(\\[PERSISTENT\\])?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pGroup;->groupStartedPattern2:Ljava/util/regex/Pattern;

    .line 368
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pGroup$1;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pGroup$1;-><init>()V

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mClients:Ljava/util/List;

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .locals 4
    .param p1, "source"    # Landroid/net/wifi/p2p/WifiP2pGroup;

    .prologue
    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mClients:Ljava/util/List;

    .line 340
    if-eqz p1, :cond_1

    .line 341
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mNetworkName:Ljava/lang/String;

    .line 342
    new-instance v2, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    iput-object v2, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mOwner:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 343
    iget-boolean v2, p1, Landroid/net/wifi/p2p/WifiP2pGroup;->mIsGroupOwner:Z

    iput-boolean v2, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mIsGroupOwner:Z

    .line 344
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getClientList()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .local v0, "d":Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mClients:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 345
    .end local v0    # "d":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getPassphrase()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mPassphrase:Ljava/lang/String;

    .line 346
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mInterface:Ljava/lang/String;

    .line 347
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkId()I

    move-result v2

    iput v2, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mNetId:I

    .line 348
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getFrequency()I

    move-result v2

    iput v2, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mFreq:I

    .line 350
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 13
    .param p1, "supplicantEvent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mClients:Ljava/util/List;

    .line 116
    const-string v10, " "

    invoke-virtual {p1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 118
    .local v9, "tokens":[Ljava/lang/String;
    array-length v10, v9

    const/4 v11, 0x3

    if-ge v10, v11, :cond_0

    .line 119
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "Malformed supplicant event"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 122
    :cond_0
    const/4 v10, 0x0

    aget-object v10, v9, v10

    const-string v11, "P2P-GROUP"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 123
    const/4 v10, 0x1

    aget-object v10, v9, v10

    iput-object v10, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mInterface:Ljava/lang/String;

    .line 124
    const/4 v10, 0x2

    aget-object v10, v9, v10

    const-string v11, "GO"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    iput-boolean v10, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mIsGroupOwner:Z

    .line 126
    sget-object v10, Landroid/net/wifi/p2p/WifiP2pGroup;->groupStartedPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v10, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 127
    .local v4, "match":Ljava/util/regex/Matcher;
    sget-object v10, Landroid/net/wifi/p2p/WifiP2pGroup;->groupStartedPattern2:Ljava/util/regex/Pattern;

    invoke-virtual {v10, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 129
    .local v5, "match2":Ljava/util/regex/Matcher;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 130
    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mNetworkName:Ljava/lang/String;

    .line 132
    const/4 v10, 0x2

    invoke-virtual {v4, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mFreq:I

    .line 134
    const/4 v10, 0x4

    invoke-virtual {v4, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mPassphrase:Ljava/lang/String;

    .line 135
    new-instance v10, Landroid/net/wifi/p2p/WifiP2pDevice;

    const/4 v11, 0x5

    invoke-virtual {v4, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Ljava/lang/String;)V

    iput-object v10, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mOwner:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 136
    const/4 v10, 0x6

    invoke-virtual {v4, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 137
    const/4 v10, -0x2

    iput v10, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mNetId:I

    .line 141
    :goto_0
    const-string v10, "WifiP2pGroup"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Normal match! frequency = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mFreq:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    .end local v4    # "match":Ljava/util/regex/Matcher;
    .end local v5    # "match2":Ljava/util/regex/Matcher;
    :cond_1
    :goto_1
    return-void

    .line 139
    .restart local v4    # "match":Ljava/util/regex/Matcher;
    .restart local v5    # "match2":Ljava/util/regex/Matcher;
    :cond_2
    const/4 v10, -0x1

    iput v10, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mNetId:I

    goto :goto_0

    .line 142
    :cond_3
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 143
    const-string v10, ""

    iput-object v10, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mNetworkName:Ljava/lang/String;

    .line 144
    const-string v10, ""

    iput-object v10, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mPassphrase:Ljava/lang/String;

    .line 145
    new-instance v10, Landroid/net/wifi/p2p/WifiP2pDevice;

    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Ljava/lang/String;)V

    iput-object v10, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mOwner:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 146
    const/4 v10, 0x2

    invoke-virtual {v5, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 147
    const/4 v10, -0x2

    iput v10, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mNetId:I

    .line 151
    :goto_2
    const-string v10, "WifiP2pGroup"

    const-string v11, "Not matched SSID, but matched device address!"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 149
    :cond_4
    const/4 v10, -0x1

    iput v10, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mNetId:I

    goto :goto_2

    .line 153
    :cond_5
    const-string v10, ""

    iput-object v10, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mNetworkName:Ljava/lang/String;

    .line 154
    const-string v10, ""

    iput-object v10, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mPassphrase:Ljava/lang/String;

    .line 155
    new-instance v10, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v10}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>()V

    iput-object v10, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mOwner:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 156
    const/4 v10, -0x1

    iput v10, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mNetId:I

    .line 157
    const-string v10, "WifiP2pGroup"

    const-string v11, "Match nothing!"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 159
    .end local v4    # "match":Ljava/util/regex/Matcher;
    .end local v5    # "match2":Ljava/util/regex/Matcher;
    :cond_6
    const/4 v10, 0x0

    aget-object v10, v9, v10

    const-string v11, "P2P-INVITATION-RECEIVED"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 160
    const/4 v7, 0x0

    .line 161
    .local v7, "sa":Ljava/lang/String;
    const/4 v10, -0x2

    iput v10, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mNetId:I

    .line 162
    move-object v0, v9

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_3
    if-ge v2, v3, :cond_1

    aget-object v8, v0, v2

    .line 163
    .local v8, "token":Ljava/lang/String;
    const-string v10, "="

    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 164
    .local v6, "nameValue":[Ljava/lang/String;
    array-length v10, v6

    const/4 v11, 0x2

    if-eq v10, v11, :cond_8

    .line 162
    :cond_7
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 166
    :cond_8
    const/4 v10, 0x0

    aget-object v10, v6, v10

    const-string/jumbo v11, "sa"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 167
    const/4 v10, 0x1

    aget-object v7, v6, v10

    .line 170
    new-instance v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>()V

    .line 171
    .local v1, "dev":Landroid/net/wifi/p2p/WifiP2pDevice;
    const/4 v10, 0x1

    aget-object v10, v6, v10

    iput-object v10, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 172
    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mClients:Ljava/util/List;

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 176
    .end local v1    # "dev":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_9
    const/4 v10, 0x0

    aget-object v10, v6, v10

    const-string v11, "go_dev_addr"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 177
    new-instance v10, Landroid/net/wifi/p2p/WifiP2pDevice;

    const/4 v11, 0x1

    aget-object v11, v6, v11

    invoke-direct {v10, v11}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Ljava/lang/String;)V

    iput-object v10, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mOwner:Landroid/net/wifi/p2p/WifiP2pDevice;

    goto :goto_4

    .line 181
    :cond_a
    const/4 v10, 0x0

    aget-object v10, v6, v10

    const-string/jumbo v11, "persistent"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 182
    new-instance v10, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v10, v7}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Ljava/lang/String;)V

    iput-object v10, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mOwner:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 183
    const/4 v10, 0x1

    aget-object v10, v6, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mNetId:I

    goto :goto_4

    .line 188
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v6    # "nameValue":[Ljava/lang/String;
    .end local v7    # "sa":Ljava/lang/String;
    .end local v8    # "token":Ljava/lang/String;
    :cond_b
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "Malformed supplicant event"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10
.end method


# virtual methods
.method public addClient(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 3
    .param p1, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 232
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mClients:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 233
    .local v0, "client":Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-virtual {v0, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 236
    .end local v0    # "client":Landroid/net/wifi/p2p/WifiP2pDevice;
    :goto_0
    return-void

    .line 235
    :cond_1
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mClients:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addClient(Ljava/lang/String;)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 227
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v0, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/net/wifi/p2p/WifiP2pGroup;->addClient(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 228
    return-void
.end method

.method public contains(Landroid/net/wifi/p2p/WifiP2pDevice;)Z
    .locals 1
    .param p1, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 260
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mOwner:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v0, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mClients:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 261
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 335
    const/4 v0, 0x0

    return v0
.end method

.method public getClientAmount()I
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mClients:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getClientList()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/net/wifi/p2p/WifiP2pDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 266
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mClients:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getFrequency()I
    .locals 1

    .prologue
    .line 308
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mFreq:I

    return v0
.end method

.method public getInterface()Ljava/lang/String;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mInterface:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkId()I
    .locals 1

    .prologue
    .line 295
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mNetId:I

    return v0
.end method

.method public getNetworkName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mNetworkName:Ljava/lang/String;

    return-object v0
.end method

.method public getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mOwner:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method public getPassphrase()Ljava/lang/String;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mPassphrase:Ljava/lang/String;

    return-object v0
.end method

.method public isClientListEmpty()Z
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mClients:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGroupOwner()Z
    .locals 1

    .prologue
    .line 212
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mIsGroupOwner:Z

    return v0
.end method

.method public removeClient(Landroid/net/wifi/p2p/WifiP2pDevice;)Z
    .locals 1
    .param p1, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 245
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mClients:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeClient(Ljava/lang/String;)Z
    .locals 2
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 240
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mClients:Ljava/util/List;

    new-instance v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v1, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setFrequency(I)V
    .locals 0
    .param p1, "mFreq"    # I

    .prologue
    .line 316
    iput p1, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mFreq:I

    .line 317
    return-void
.end method

.method public setInterface(Ljava/lang/String;)V
    .locals 0
    .param p1, "intf"    # Ljava/lang/String;

    .prologue
    .line 285
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mInterface:Ljava/lang/String;

    .line 286
    return-void
.end method

.method public setIsGroupOwner(Z)V
    .locals 0
    .param p1, "isGo"    # Z

    .prologue
    .line 207
    iput-boolean p1, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mIsGroupOwner:Z

    .line 208
    return-void
.end method

.method public setNetworkId(I)V
    .locals 0
    .param p1, "netId"    # I

    .prologue
    .line 300
    iput p1, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mNetId:I

    .line 301
    return-void
.end method

.method public setNetworkName(Ljava/lang/String;)V
    .locals 0
    .param p1, "networkName"    # Ljava/lang/String;

    .prologue
    .line 194
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mNetworkName:Ljava/lang/String;

    .line 195
    return-void
.end method

.method public setOwner(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 0
    .param p1, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 217
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mOwner:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 218
    return-void
.end method

.method public setPassphrase(Ljava/lang/String;)V
    .locals 0
    .param p1, "passphrase"    # Ljava/lang/String;

    .prologue
    .line 271
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mPassphrase:Ljava/lang/String;

    .line 272
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 320
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 321
    .local v2, "sbuf":Ljava/lang/StringBuffer;
    const-string/jumbo v3, "network: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mNetworkName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 322
    const-string v3, "\n isGO: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-boolean v4, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mIsGroupOwner:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 323
    const-string v3, "\n GO: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mOwner:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 324
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mClients:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 325
    .local v0, "client":Landroid/net/wifi/p2p/WifiP2pDevice;
    const-string v3, "\n Client: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 327
    .end local v0    # "client":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_0
    const-string v3, "\n interface: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mInterface:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 328
    const-string v3, "\n networkId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget v4, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mNetId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 329
    const-string v3, "\n frequency: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget v4, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mFreq:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 330
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 354
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mNetworkName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 355
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mOwner:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 356
    iget-boolean v2, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mIsGroupOwner:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 357
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mClients:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 358
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mClients:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 359
    .local v0, "client":Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_1

    .line 356
    .end local v0    # "client":Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 361
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mPassphrase:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 362
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mInterface:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 363
    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mNetId:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 364
    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mFreq:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 365
    return-void
.end method
