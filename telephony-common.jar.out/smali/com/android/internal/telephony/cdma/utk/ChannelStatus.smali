.class Lcom/android/internal/telephony/cdma/utk/ChannelStatus;
.super Ljava/lang/Object;
.source "CommandDetails.java"


# instance fields
.field private mId:I

.field private mStatus:I

.field private mStatusInfo:I

.field private mType:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "chId"    # I
    .param p3, "status"    # I
    .param p4, "info"    # I

    .prologue
    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    iput p1, p0, Lcom/android/internal/telephony/cdma/utk/ChannelStatus;->mType:I

    .line 248
    iput p2, p0, Lcom/android/internal/telephony/cdma/utk/ChannelStatus;->mId:I

    .line 249
    iput p3, p0, Lcom/android/internal/telephony/cdma/utk/ChannelStatus;->mStatus:I

    .line 250
    iput p4, p0, Lcom/android/internal/telephony/cdma/utk/ChannelStatus;->mStatusInfo:I

    .line 251
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/cdma/utk/ChannelStatus;)V
    .locals 1
    .param p1, "s"    # Lcom/android/internal/telephony/cdma/utk/ChannelStatus;

    .prologue
    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    iget v0, p1, Lcom/android/internal/telephony/cdma/utk/ChannelStatus;->mType:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/utk/ChannelStatus;->mType:I

    .line 255
    iget v0, p1, Lcom/android/internal/telephony/cdma/utk/ChannelStatus;->mId:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/utk/ChannelStatus;->mId:I

    .line 256
    iget v0, p1, Lcom/android/internal/telephony/cdma/utk/ChannelStatus;->mStatus:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/utk/ChannelStatus;->mStatus:I

    .line 257
    iget v0, p1, Lcom/android/internal/telephony/cdma/utk/ChannelStatus;->mStatusInfo:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/utk/ChannelStatus;->mStatusInfo:I

    .line 258
    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    .line 281
    iget v0, p0, Lcom/android/internal/telephony/cdma/utk/ChannelStatus;->mId:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 265
    iget v0, p0, Lcom/android/internal/telephony/cdma/utk/ChannelStatus;->mStatus:I

    return v0
.end method

.method public getStatusInfo()I
    .locals 1

    .prologue
    .line 273
    iget v0, p0, Lcom/android/internal/telephony/cdma/utk/ChannelStatus;->mStatusInfo:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 277
    iget v0, p0, Lcom/android/internal/telephony/cdma/utk/ChannelStatus;->mType:I

    return v0
.end method

.method public setStatus(I)V
    .locals 0
    .param p1, "s"    # I

    .prologue
    .line 261
    iput p1, p0, Lcom/android/internal/telephony/cdma/utk/ChannelStatus;->mStatus:I

    .line 262
    return-void
.end method

.method public setStatusInfo(I)V
    .locals 0
    .param p1, "si"    # I

    .prologue
    .line 269
    iput p1, p0, Lcom/android/internal/telephony/cdma/utk/ChannelStatus;->mStatusInfo:I

    .line 270
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChannelStatus: mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cdma/utk/ChannelStatus;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cdma/utk/ChannelStatus;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cdma/utk/ChannelStatus;->mStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mStatusInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cdma/utk/ChannelStatus;->mStatusInfo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToBuffer(Ljava/io/ByteArrayOutputStream;)V
    .locals 6
    .param p1, "buf"    # Ljava/io/ByteArrayOutputStream;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 317
    const/4 v2, 0x4

    new-array v0, v2, [B

    .line 318
    .local v0, "data":[B
    iget v1, p0, Lcom/android/internal/telephony/cdma/utk/ChannelStatus;->mId:I

    .line 319
    .local v1, "s":I
    iget v2, p0, Lcom/android/internal/telephony/cdma/utk/ChannelStatus;->mType:I

    packed-switch v2, :pswitch_data_0

    .line 342
    const-string v2, "ChannelStatus"

    const-string v3, " not support channel type"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    :cond_0
    :goto_0
    return-void

    .line 322
    :pswitch_0
    iget v2, p0, Lcom/android/internal/telephony/cdma/utk/ChannelStatus;->mStatus:I

    if-nez v2, :cond_2

    .line 346
    :cond_1
    :goto_1
    if-eqz v0, :cond_0

    .line 347
    sget-object v2, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->CHANNEL_STATUS:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->value()I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v4

    .line 348
    aput-byte v3, v0, v5

    .line 349
    int-to-byte v2, v1

    aput-byte v2, v0, v3

    .line 350
    const/4 v2, 0x3

    iget v3, p0, Lcom/android/internal/telephony/cdma/utk/ChannelStatus;->mStatusInfo:I

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 352
    array-length v2, v0

    invoke-virtual {p1, v0, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 324
    :cond_2
    iget v2, p0, Lcom/android/internal/telephony/cdma/utk/ChannelStatus;->mStatus:I

    if-ne v2, v3, :cond_3

    .line 325
    or-int/lit16 v1, v1, 0x80

    goto :goto_1

    .line 327
    :cond_3
    const/4 v0, 0x0

    .line 329
    goto :goto_1

    .line 331
    :pswitch_1
    iget v2, p0, Lcom/android/internal/telephony/cdma/utk/ChannelStatus;->mStatus:I

    if-eqz v2, :cond_1

    .line 333
    iget v2, p0, Lcom/android/internal/telephony/cdma/utk/ChannelStatus;->mStatus:I

    if-ne v2, v3, :cond_4

    .line 334
    or-int/lit16 v1, v1, 0x80

    goto :goto_1

    .line 335
    :cond_4
    iget v2, p0, Lcom/android/internal/telephony/cdma/utk/ChannelStatus;->mStatus:I

    if-ne v2, v5, :cond_5

    .line 336
    or-int/lit8 v1, v1, 0x40

    goto :goto_1

    .line 338
    :cond_5
    const/4 v0, 0x0

    .line 340
    goto :goto_1

    .line 319
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
