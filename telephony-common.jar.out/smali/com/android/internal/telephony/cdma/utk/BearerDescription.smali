.class Lcom/android/internal/telephony/cdma/utk/BearerDescription;
.super Lcom/android/internal/telephony/cdma/utk/ValueObject;
.source "CommandDetails.java"


# instance fields
.field public bearerParams:[B

.field public bearerType:I

.field public dataLen:I


# direct methods
.method constructor <init>(II[B)V
    .locals 1
    .param p1, "len"    # I
    .param p2, "type"    # I
    .param p3, "bparams"    # [B

    .prologue
    const/4 v0, 0x0

    .line 145
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/utk/ValueObject;-><init>()V

    .line 137
    iput v0, p0, Lcom/android/internal/telephony/cdma/utk/BearerDescription;->dataLen:I

    .line 138
    iput v0, p0, Lcom/android/internal/telephony/cdma/utk/BearerDescription;->bearerType:I

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/BearerDescription;->bearerParams:[B

    .line 146
    iput p1, p0, Lcom/android/internal/telephony/cdma/utk/BearerDescription;->dataLen:I

    .line 147
    iput p2, p0, Lcom/android/internal/telephony/cdma/utk/BearerDescription;->bearerType:I

    .line 148
    iput-object p3, p0, Lcom/android/internal/telephony/cdma/utk/BearerDescription;->bearerParams:[B

    .line 149
    return-void
.end method


# virtual methods
.method getTag()Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;
    .locals 1

    .prologue
    .line 142
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->BEARER_DESCRIPTION:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BearerDescription: dataLen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cdma/utk/BearerDescription;->dataLen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bearerType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cdma/utk/BearerDescription;->bearerType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bearerParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BearerDescription;->bearerParams:[B

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToBuffer(Ljava/io/ByteArrayOutputStream;)V
    .locals 3
    .param p1, "buf"    # Ljava/io/ByteArrayOutputStream;

    .prologue
    .line 152
    if-nez p1, :cond_1

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->BEARER_DESCRIPTION:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->value()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 161
    iget v0, p0, Lcom/android/internal/telephony/cdma/utk/BearerDescription;->dataLen:I

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 162
    iget v0, p0, Lcom/android/internal/telephony/cdma/utk/BearerDescription;->bearerType:I

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 163
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/BearerDescription;->bearerParams:[B

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/BearerDescription;->bearerParams:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/BearerDescription;->bearerParams:[B

    array-length v2, v2

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0
.end method
