.class Lcom/android/internal/telephony/cdma/utk/ReceiveDataResponseData;
.super Lcom/android/internal/telephony/cdma/utk/ResponseData;
.source "ResponseData.java"


# instance fields
.field data:[B

.field remaining:I


# direct methods
.method constructor <init>([BI)V
    .locals 3
    .param p1, "d"    # [B
    .param p2, "remain"    # I

    .prologue
    const/4 v2, 0x0

    .line 423
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/utk/ResponseData;-><init>()V

    .line 419
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/ReceiveDataResponseData;->data:[B

    .line 420
    iput v2, p0, Lcom/android/internal/telephony/cdma/utk/ReceiveDataResponseData;->remaining:I

    .line 425
    if-eqz p1, :cond_0

    .line 426
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/ReceiveDataResponseData;->data:[B

    .line 427
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/ReceiveDataResponseData;->data:[B

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 430
    :cond_0
    iput p2, p0, Lcom/android/internal/telephony/cdma/utk/ReceiveDataResponseData;->remaining:I

    .line 431
    return-void
.end method


# virtual methods
.method public format(Ljava/io/ByteArrayOutputStream;)V
    .locals 4
    .param p1, "buf"    # Ljava/io/ByteArrayOutputStream;

    .prologue
    const/16 v3, 0xff

    const/4 v2, 0x0

    .line 435
    if-nez p1, :cond_0

    .line 459
    :goto_0
    return-void

    .line 440
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->CHANNEL_DATA:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->value()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 441
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/ReceiveDataResponseData;->data:[B

    if-eqz v0, :cond_2

    .line 442
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/ReceiveDataResponseData;->data:[B

    array-length v0, v0

    const/16 v1, 0x80

    if-lt v0, v1, :cond_1

    .line 443
    const/16 v0, 0x81

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 445
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/ReceiveDataResponseData;->data:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 446
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/ReceiveDataResponseData;->data:[B

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/ReceiveDataResponseData;->data:[B

    array-length v1, v1

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 452
    :goto_1
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->CHANNEL_DATA_LENGTH:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->value()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 453
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 454
    iget v0, p0, Lcom/android/internal/telephony/cdma/utk/ReceiveDataResponseData;->remaining:I

    if-le v0, v3, :cond_3

    .line 455
    invoke-virtual {p1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 448
    :cond_2
    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    .line 457
    :cond_3
    iget v0, p0, Lcom/android/internal/telephony/cdma/utk/ReceiveDataResponseData;->remaining:I

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0
.end method
