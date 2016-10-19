.class Lcom/android/internal/telephony/cdma/utk/UtkTimerManagementData;
.super Ljava/lang/Object;
.source "UtkService.java"


# instance fields
.field private mBcdData:[B

.field private mCaller:Landroid/os/Handler;

.field private mId:I

.field private mRemaining:J


# direct methods
.method constructor <init>(Landroid/os/Handler;I[B)V
    .locals 8
    .param p1, "caller"    # Landroid/os/Handler;
    .param p2, "id"    # I
    .param p3, "data"    # [B

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput v4, p0, Lcom/android/internal/telephony/cdma/utk/UtkTimerManagementData;->mId:I

    .line 105
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkTimerManagementData;->mBcdData:[B

    .line 106
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/internal/telephony/cdma/utk/UtkTimerManagementData;->mRemaining:J

    .line 107
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkTimerManagementData;->mCaller:Landroid/os/Handler;

    .line 110
    const-string v1, "UtkTimerManagementData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iput p2, p0, Lcom/android/internal/telephony/cdma/utk/UtkTimerManagementData;->mId:I

    .line 113
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/utk/UtkTimerManagementData;->mCaller:Landroid/os/Handler;

    .line 115
    if-eqz p3, :cond_0

    array-length v1, p3

    if-ne v1, v5, :cond_0

    .line 116
    new-array v1, v5, [B

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkTimerManagementData;->mBcdData:[B

    .line 117
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkTimerManagementData;->mBcdData:[B

    invoke-static {p3, v4, v1, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 119
    invoke-static {p3}, Lcom/android/internal/telephony/cdma/utk/UtkService;->bcdToDigit([B)[B

    move-result-object v0

    .line 121
    .local v0, "digit":[B
    const-string v1, "UtkTimerManagementData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " bcd="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    if-eqz v0, :cond_0

    .line 123
    const-string v1, "UtkTimerManagementData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " convert to digit="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-byte v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-byte v3, v0, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-byte v3, v0, v7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    aget-byte v1, v0, v4

    mul-int/lit16 v1, v1, 0xe10

    int-to-long v2, v1

    aget-byte v1, v0, v6

    mul-int/lit16 v1, v1, 0x258

    int-to-long v4, v1

    add-long/2addr v2, v4

    aget-byte v1, v0, v7

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/internal/telephony/cdma/utk/UtkTimerManagementData;->mRemaining:J

    .line 130
    .end local v0    # "digit":[B
    :cond_0
    const-string v1, "UtkTimerManagementData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mRemaining="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/android/internal/telephony/cdma/utk/UtkTimerManagementData;->mRemaining:J

    long-to-int v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method private handleTimerExpiration()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 147
    const-string v5, "UtkTimerManagementData"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleTimerExpiration="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/cdma/utk/UtkTimerManagementData;->mId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 152
    .local v0, "buf":Ljava/io/ByteArrayOutputStream;
    const/16 v5, 0xd7

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 155
    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 158
    sget-object v5, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->value()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 159
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 160
    const/16 v5, 0x82

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 161
    const/16 v5, 0x81

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 164
    sget-object v5, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->TIMER_IDENTIFIER:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->value()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 165
    invoke-virtual {v0, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 166
    iget v5, p0, Lcom/android/internal/telephony/cdma/utk/UtkTimerManagementData;->mId:I

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 169
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/utk/UtkTimerManagementData;->mBcdData:[B

    if-eqz v5, :cond_0

    .line 170
    sget-object v5, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->TIMER_VALUE:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->value()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 171
    invoke-virtual {v0, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 173
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/utk/UtkTimerManagementData;->mBcdData:[B

    invoke-virtual {v0, v5, v8, v10}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 176
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 179
    .local v4, "rawData":[B
    array-length v5, v4

    add-int/lit8 v2, v5, -0x2

    .line 180
    .local v2, "len":I
    int-to-byte v5, v2

    aput-byte v5, v4, v9

    .line 182
    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 185
    .local v1, "hexString":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/utk/UtkTimerManagementData;->mCaller:Landroid/os/Handler;

    const/16 v6, 0x1a

    invoke-virtual {v5, v6, v8, v8, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 187
    .local v3, "m":Landroid/os/Message;
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/utk/UtkTimerManagementData;->mCaller:Landroid/os/Handler;

    invoke-virtual {v5, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 188
    return-void
.end method


# virtual methods
.method public getRemaining()J
    .locals 2

    .prologue
    .line 142
    iget-wide v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkTimerManagementData;->mRemaining:J

    return-wide v0
.end method

.method public getTimerId()I
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkTimerManagementData;->mId:I

    return v0
.end method

.method public timerTick()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 134
    iget-wide v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkTimerManagementData;->mRemaining:J

    cmp-long v0, v0, v4

    if-ltz v0, :cond_0

    .line 135
    iget-wide v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkTimerManagementData;->mRemaining:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkTimerManagementData;->mRemaining:J

    .line 137
    :cond_0
    iget-wide v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkTimerManagementData;->mRemaining:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    .line 138
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/utk/UtkTimerManagementData;->handleTimerExpiration()V

    .line 140
    :cond_1
    return-void
.end method
