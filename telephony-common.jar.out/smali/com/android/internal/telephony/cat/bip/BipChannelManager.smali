.class Lcom/android/internal/telephony/cat/bip/BipChannelManager;
.super Ljava/lang/Object;
.source "BipChannelManager.java"


# static fields
.field public static final MAXCHANNELID:I = 0x7

.field public static final MAXPSCID:I = 0x5

.field public static final MAXUICCSERVIER:I = 0x2


# instance fields
.field private mBipChannelStatus:[I

.field private mChannelIdPool:B

.field private mChannels:[Lcom/android/internal/telephony/cat/bip/Channel;

.field private mCurrentOccupiedPSCh:B

.field private mCurrentOccupiedUICCSerCh:B


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x7

    const/4 v2, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-byte v2, p0, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->mChannelIdPool:B

    .line 62
    iput-object v4, p0, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->mChannels:[Lcom/android/internal/telephony/cat/bip/Channel;

    .line 63
    iput-byte v2, p0, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->mCurrentOccupiedPSCh:B

    .line 64
    iput-byte v2, p0, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->mCurrentOccupiedUICCSerCh:B

    .line 65
    iput-object v4, p0, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->mBipChannelStatus:[I

    .line 68
    new-array v1, v3, [I

    iput-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->mBipChannelStatus:[I

    .line 69
    new-array v1, v3, [Lcom/android/internal/telephony/cat/bip/Channel;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->mChannels:[Lcom/android/internal/telephony/cat/bip/Channel;

    .line 70
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 71
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->mChannels:[Lcom/android/internal/telephony/cat/bip/Channel;

    aput-object v4, v1, v0

    .line 72
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->mBipChannelStatus:[I

    aput v2, v1, v0

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    :cond_0
    return-void
.end method


# virtual methods
.method public acquireChannelId(I)I
    .locals 8
    .param p1, "protocolType"    # I

    .prologue
    const/4 v7, 0x3

    const/4 v1, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 92
    const/4 v0, 0x0

    .line 93
    .local v0, "i":B
    const-string v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "acquireChannelId, protocolType "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",occupied "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-byte v4, p0, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->mCurrentOccupiedPSCh:B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-byte v4, p0, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->mCurrentOccupiedUICCSerCh:B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    if-ne v7, p1, :cond_0

    iget-byte v2, p0, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->mCurrentOccupiedUICCSerCh:B

    if-le v6, v2, :cond_2

    :cond_0
    if-eq v5, p1, :cond_1

    if-ne v6, p1, :cond_3

    :cond_1
    const/4 v2, 0x5

    iget-byte v3, p0, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->mCurrentOccupiedPSCh:B

    if-gt v2, v3, :cond_3

    .line 111
    :cond_2
    :goto_0
    return v1

    .line 99
    :cond_3
    const/4 v0, 0x0

    :goto_1
    const/4 v2, 0x7

    if-ge v0, v2, :cond_2

    .line 100
    iget-byte v2, p0, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->mChannelIdPool:B

    shl-int v3, v5, v0

    and-int/2addr v2, v3

    if-nez v2, :cond_7

    .line 101
    iget-byte v1, p0, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->mChannelIdPool:B

    shl-int v2, v5, v0

    int-to-byte v2, v2

    or-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->mChannelIdPool:B

    .line 102
    if-ne v7, p1, :cond_5

    .line 103
    iget-byte v1, p0, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->mCurrentOccupiedUICCSerCh:B

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->mCurrentOccupiedUICCSerCh:B

    .line 107
    :cond_4
    :goto_2
    const-string v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "acquireChannelId, mChannelIdPool "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->mChannelIdPool:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    add-int/lit8 v1, v0, 0x1

    goto :goto_0

    .line 104
    :cond_5
    if-eq v5, p1, :cond_6

    if-ne v6, p1, :cond_4

    .line 106
    :cond_6
    iget-byte v1, p0, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->mCurrentOccupiedPSCh:B

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->mCurrentOccupiedPSCh:B

    goto :goto_2

    .line 99
    :cond_7
    add-int/lit8 v2, v0, 0x1

    int-to-byte v0, v2

    goto :goto_1
.end method

.method public addChannel(ILcom/android/internal/telephony/cat/bip/Channel;)I
    .locals 4
    .param p1, "cId"    # I
    .param p2, "ch"    # Lcom/android/internal/telephony/cat/bip/Channel;

    .prologue
    .line 179
    const-string v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BCM-addChannel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    if-lez p1, :cond_0

    .line 182
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->mChannels:[Lcom/android/internal/telephony/cat/bip/Channel;

    add-int/lit8 v2, p1, -0x1

    aput-object p2, v1, v2

    .line 183
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->mBipChannelStatus:[I

    add-int/lit8 v2, p1, -0x1

    const/4 v3, 0x4

    aput v3, v1, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    .end local p1    # "cId":I
    :goto_0
    return p1

    .line 184
    .restart local p1    # "cId":I
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IndexOutOfBoundsException addChannel cId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const/4 p1, -0x1

    goto :goto_0

    .line 189
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_0
    const-string v1, "[BIP]"

    const-string v2, "No free channel id."

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getBipChannelStatus(I)I
    .locals 2
    .param p1, "cId"    # I

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->mBipChannelStatus:[I

    add-int/lit8 v1, p1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method public getChannel(I)Lcom/android/internal/telephony/cat/bip/Channel;
    .locals 4
    .param p1, "cId"    # I

    .prologue
    .line 196
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->mChannels:[Lcom/android/internal/telephony/cat/bip/Channel;

    add-int/lit8 v2, p1, -0x1

    aget-object v1, v1, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :goto_0
    return-object v1

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IndexOutOfBoundsException getChannel cId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFreeChannelId()I
    .locals 3

    .prologue
    .line 81
    const/4 v0, 0x0

    .line 83
    .local v0, "i":I
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x7

    if-ge v0, v1, :cond_1

    .line 84
    iget-byte v1, p0, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->mChannelIdPool:B

    const/4 v2, 0x1

    shl-int/2addr v2, v0

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    .line 85
    add-int/lit8 v1, v0, 0x1

    .line 88
    :goto_1
    return v1

    .line 83
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isChannelIdOccupied(I)Z
    .locals 4
    .param p1, "cId"    # I

    .prologue
    const/4 v0, 0x1

    .line 77
    const-string v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isChannelIdOccupied, mChannelIdPool "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->mChannelIdPool:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-byte v1, p0, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->mChannelIdPool:B

    add-int/lit8 v2, p1, -0x1

    shl-int v2, v0, v2

    and-int/2addr v1, v2

    if-lez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isClientChannelOpened()Z
    .locals 5

    .prologue
    .line 230
    const/4 v1, 0x0

    .line 232
    .local v1, "i":I
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x7

    if-ge v1, v2, :cond_1

    .line 233
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->mChannels:[Lcom/android/internal/telephony/cat/bip/Channel;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->mChannels:[Lcom/android/internal/telephony/cat/bip/Channel;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->mChannels:[Lcom/android/internal/telephony/cat/bip/Channel;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/android/internal/telephony/cat/bip/Channel;->mProtocolType:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v2, v2, 0x3

    if-eqz v2, :cond_0

    .line 235
    const/4 v2, 0x1

    .line 240
    :goto_1
    return v2

    .line 232
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 237
    :catch_0
    move-exception v0

    .line 238
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isClientChannelOpened channel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public releaseChannelId(I)V
    .locals 6
    .param p1, "cId"    # I

    .prologue
    const/4 v5, 0x1

    .line 141
    const/4 v1, -0x1

    .line 144
    .local v1, "protocolType":I
    :try_start_0
    iget-byte v2, p0, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->mChannelIdPool:B

    add-int/lit8 v3, p1, -0x1

    int-to-byte v3, v3

    shl-int v3, v5, v3

    and-int/2addr v2, v3

    if-nez v2, :cond_0

    .line 145
    const-string v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "releaseChannelId, cId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has been released."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :goto_0
    return-void

    .line 148
    :cond_0
    if-gtz p1, :cond_1

    .line 149
    const-string v2, "[BIP]"

    const-string v3, "cId==0, it\'s no valid cid."

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IndexOutOfBoundsException releaseChannelId cId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-byte v4, p0, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->mChannelIdPool:B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 152
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->mChannels:[Lcom/android/internal/telephony/cat/bip/Channel;

    add-int/lit8 v3, p1, -0x1

    aget-object v2, v2, v3

    if-eqz v2, :cond_2

    .line 153
    iget-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->mChannels:[Lcom/android/internal/telephony/cat/bip/Channel;

    add-int/lit8 v3, p1, -0x1

    aget-object v2, v2, v3

    iget v1, v2, Lcom/android/internal/telephony/cat/bip/Channel;->mProtocolType:I

    .line 159
    const/4 v2, 0x3

    if-ne v2, v1, :cond_3

    iget-byte v2, p0, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->mCurrentOccupiedUICCSerCh:B

    if-lez v2, :cond_3

    .line 160
    iget-byte v2, p0, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->mCurrentOccupiedUICCSerCh:B

    add-int/lit8 v2, v2, -0x1

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->mCurrentOccupiedUICCSerCh:B

    .line 167
    :goto_1
    iget-byte v2, p0, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->mChannelIdPool:B

    add-int/lit8 v3, p1, -0x1

    int-to-byte v3, v3

    shl-int v3, v5, v3

    xor-int/lit8 v3, v3, -0x1

    int-to-byte v3, v3

    and-int/2addr v2, v3

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->mChannelIdPool:B

    .line 168
    const-string v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "releaseChannelId, cId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",protocolType"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",occupied "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-byte v4, p0, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->mCurrentOccupiedPSCh:B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-byte v4, p0, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->mCurrentOccupiedUICCSerCh:B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-byte v4, p0, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->mChannelIdPool:B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 155
    :cond_2
    const-string v2, "[BIP]"

    const-string v3, "channel object is null."

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 161
    :cond_3
    if-eq v5, v1, :cond_4

    const/4 v2, 0x2

    if-ne v2, v1, :cond_5

    :cond_4
    iget-byte v2, p0, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->mCurrentOccupiedPSCh:B

    if-lez v2, :cond_5

    .line 163
    iget-byte v2, p0, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->mCurrentOccupiedPSCh:B

    add-int/lit8 v2, v2, -0x1

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->mCurrentOccupiedPSCh:B

    goto :goto_1

    .line 165
    :cond_5
    const-string v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "releaseChannelId, bad parameters.cId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-byte v4, p0, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->mChannelIdPool:B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public releaseChannelId(II)V
    .locals 5
    .param p1, "cId"    # I
    .param p2, "protocolType"    # I

    .prologue
    const/4 v4, 0x1

    .line 115
    :try_start_0
    iget-byte v1, p0, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->mChannelIdPool:B

    add-int/lit8 v2, p1, -0x1

    int-to-byte v2, v2

    shl-int v2, v4, v2

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    .line 116
    const-string v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "releaseChannelId, cId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has been released."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :goto_0
    return-void

    .line 119
    :cond_0
    if-gtz p1, :cond_1

    .line 120
    const-string v1, "[BIP]"

    const-string v2, "cId==0, it\'s no valid cid."

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IndexOutOfBoundsException releaseChannelId cId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->mChannelIdPool:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 124
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_1
    const/4 v1, 0x3

    if-ne v1, p2, :cond_2

    :try_start_1
    iget-byte v1, p0, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->mCurrentOccupiedUICCSerCh:B

    if-ltz v1, :cond_2

    .line 125
    iget-byte v1, p0, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->mCurrentOccupiedUICCSerCh:B

    add-int/lit8 v1, v1, -0x1

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->mCurrentOccupiedUICCSerCh:B

    .line 132
    :goto_1
    iget-byte v1, p0, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->mChannelIdPool:B

    add-int/lit8 v2, p1, -0x1

    int-to-byte v2, v2

    shl-int v2, v4, v2

    xor-int/lit8 v2, v2, -0x1

    int-to-byte v2, v2

    and-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->mChannelIdPool:B

    .line 133
    const-string v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "releaseChannelId, cId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",protocolType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",occupied "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->mCurrentOccupiedPSCh:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->mCurrentOccupiedUICCSerCh:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->mChannelIdPool:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 126
    :cond_2
    if-eq v4, p2, :cond_3

    const/4 v1, 0x2

    if-ne v1, p2, :cond_4

    :cond_3
    iget-byte v1, p0, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->mCurrentOccupiedPSCh:B

    if-ltz v1, :cond_4

    .line 128
    iget-byte v1, p0, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->mCurrentOccupiedPSCh:B

    add-int/lit8 v1, v1, -0x1

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->mCurrentOccupiedPSCh:B

    goto :goto_1

    .line 130
    :cond_4
    const-string v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "releaseChannelId, bad parameters.cId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->mChannelIdPool:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public removeChannel(I)I
    .locals 5
    .param p1, "cId"    # I

    .prologue
    .line 215
    const-string v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BCM-removeChannel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->releaseChannelId(I)V

    .line 218
    iget-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->mChannels:[Lcom/android/internal/telephony/cat/bip/Channel;

    add-int/lit8 v3, p1, -0x1

    const/4 v4, 0x0

    aput-object v4, v2, v3

    .line 219
    iget-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->mBipChannelStatus:[I

    add-int/lit8 v3, p1, -0x1

    const/4 v4, 0x2

    aput v4, v2, v3
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 220
    const/4 v2, 0x1

    .line 226
    :goto_0
    return v2

    .line 221
    :catch_0
    move-exception v0

    .line 222
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IndexOutOfBoundsException removeChannel cId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 223
    :catch_1
    move-exception v1

    .line 224
    .local v1, "e1":Ljava/lang/NullPointerException;
    const-string v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeChannel channel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setBipChannelStatus(II)V
    .locals 4
    .param p1, "cId"    # I
    .param p2, "status"    # I

    .prologue
    .line 209
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->mBipChannelStatus:[I

    add-int/lit8 v2, p1, -0x1

    aput p2, v1, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    :goto_0
    return-void

    .line 210
    :catch_0
    move-exception v0

    .line 211
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IndexOutOfBoundsException setBipChannelStatus cId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateBipChannelStatus(II)V
    .locals 5
    .param p1, "cId"    # I
    .param p2, "chStatus"    # I

    .prologue
    .line 244
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->mChannels:[Lcom/android/internal/telephony/cat/bip/Channel;

    add-int/lit8 v3, p1, -0x1

    aget-object v2, v2, v3

    iput p2, v2, Lcom/android/internal/telephony/cat/bip/Channel;->mChannelStatus:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 250
    :goto_0
    return-void

    .line 245
    :catch_0
    move-exception v0

    .line 246
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IndexOutOfBoundsException updateBipChannelStatus cId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 247
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_1
    move-exception v1

    .line 248
    .local v1, "e1":Ljava/lang/NullPointerException;
    const-string v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateBipChannelStatus id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateChannelStatus(II)V
    .locals 5
    .param p1, "cId"    # I
    .param p2, "chStatus"    # I

    .prologue
    .line 254
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->mChannels:[Lcom/android/internal/telephony/cat/bip/Channel;

    add-int/lit8 v3, p1, -0x1

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/android/internal/telephony/cat/bip/Channel;->mChannelStatusData:Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    iput p2, v2, Lcom/android/internal/telephony/cat/bip/ChannelStatus;->mChannelStatus:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 260
    :goto_0
    return-void

    .line 255
    :catch_0
    move-exception v0

    .line 256
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IndexOutOfBoundsException updateChannelStatus cId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 257
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_1
    move-exception v1

    .line 258
    .local v1, "e1":Ljava/lang/NullPointerException;
    const-string v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateChannelStatus id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateChannelStatusInfo(II)V
    .locals 5
    .param p1, "cId"    # I
    .param p2, "chStatusInfo"    # I

    .prologue
    .line 263
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->mChannels:[Lcom/android/internal/telephony/cat/bip/Channel;

    add-int/lit8 v3, p1, -0x1

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/android/internal/telephony/cat/bip/Channel;->mChannelStatusData:Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    iput p2, v2, Lcom/android/internal/telephony/cat/bip/ChannelStatus;->mChannelStatusInfo:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 269
    :goto_0
    return-void

    .line 264
    :catch_0
    move-exception v0

    .line 265
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IndexOutOfBoundsException updateChannelStatusInfo cId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 266
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_1
    move-exception v1

    .line 267
    .local v1, "e1":Ljava/lang/NullPointerException;
    const-string v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateChannelStatusInfo id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
