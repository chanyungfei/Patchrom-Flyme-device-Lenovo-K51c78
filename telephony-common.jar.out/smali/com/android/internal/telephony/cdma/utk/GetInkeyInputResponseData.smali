.class Lcom/android/internal/telephony/cdma/utk/GetInkeyInputResponseData;
.super Lcom/android/internal/telephony/cdma/utk/ResponseData;
.source "ResponseData.java"


# static fields
.field protected static final GET_INKEY_NO:B = 0x0t

.field protected static final GET_INKEY_YES:B = 0x1t


# instance fields
.field public mInData:Ljava/lang/String;

.field private mIsPacked:Z

.field private mIsUcs2:Z

.field private mIsYesNo:Z

.field private mYesNoResponse:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 1
    .param p1, "inData"    # Ljava/lang/String;
    .param p2, "ucs2"    # Z
    .param p3, "packed"    # Z

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/utk/ResponseData;-><init>()V

    .line 164
    iput-boolean p2, p0, Lcom/android/internal/telephony/cdma/utk/GetInkeyInputResponseData;->mIsUcs2:Z

    .line 165
    iput-boolean p3, p0, Lcom/android/internal/telephony/cdma/utk/GetInkeyInputResponseData;->mIsPacked:Z

    .line 166
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/utk/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    .line 167
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/utk/GetInkeyInputResponseData;->mIsYesNo:Z

    .line 168
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "yesNoResponse"    # Z

    .prologue
    const/4 v0, 0x0

    .line 171
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/utk/ResponseData;-><init>()V

    .line 172
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/utk/GetInkeyInputResponseData;->mIsUcs2:Z

    .line 173
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/utk/GetInkeyInputResponseData;->mIsPacked:Z

    .line 174
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    .line 175
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/utk/GetInkeyInputResponseData;->mIsYesNo:Z

    .line 176
    iput-boolean p1, p0, Lcom/android/internal/telephony/cdma/utk/GetInkeyInputResponseData;->mYesNoResponse:Z

    .line 177
    return-void
.end method


# virtual methods
.method public format(Ljava/io/ByteArrayOutputStream;)V
    .locals 13
    .param p1, "buf"    # Ljava/io/ByteArrayOutputStream;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 181
    if-nez p1, :cond_1

    .line 241
    :cond_0
    return-void

    .line 186
    :cond_1
    sget-object v11, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-virtual {v11}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->value()I

    move-result v11

    or-int/lit16 v7, v11, 0x80

    .line 187
    .local v7, "tag":I
    invoke-virtual {p1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 191
    iget-boolean v11, p0, Lcom/android/internal/telephony/cdma/utk/GetInkeyInputResponseData;->mIsYesNo:Z

    if-eqz v11, :cond_4

    .line 192
    new-array v2, v9, [B

    .line 193
    .local v2, "data":[B
    iget-boolean v11, p0, Lcom/android/internal/telephony/cdma/utk/GetInkeyInputResponseData;->mYesNoResponse:Z

    if-eqz v11, :cond_3

    :goto_0
    aput-byte v9, v2, v10

    .line 220
    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "input data length="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v11, v2

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    array-length v9, v2

    const/16 v11, 0x7f

    if-lt v9, v11, :cond_2

    .line 222
    const-string v9, "add 0x81"

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    const/16 v9, 0x81

    invoke-virtual {p1, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 227
    :cond_2
    array-length v9, v2

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {p1, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 230
    iget-boolean v9, p0, Lcom/android/internal/telephony/cdma/utk/GetInkeyInputResponseData;->mIsUcs2:Z

    if-eqz v9, :cond_8

    .line 231
    const/16 v9, 0x8

    invoke-virtual {p1, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 238
    :goto_2
    move-object v0, v2

    .local v0, "arr$":[B
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_3
    if-ge v4, v5, :cond_0

    aget-byte v1, v0, v4

    .line 239
    .local v1, "b":B
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 238
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .end local v0    # "arr$":[B
    .end local v1    # "b":B
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_3
    move v9, v10

    .line 193
    goto :goto_0

    .line 194
    .end local v2    # "data":[B
    :cond_4
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/utk/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/utk/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_7

    .line 196
    :try_start_0
    iget-boolean v9, p0, Lcom/android/internal/telephony/cdma/utk/GetInkeyInputResponseData;->mIsUcs2:Z

    if-eqz v9, :cond_5

    .line 197
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/utk/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    const-string v11, "UTF-16BE"

    invoke-virtual {v9, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .restart local v2    # "data":[B
    goto :goto_1

    .line 198
    .end local v2    # "data":[B
    :cond_5
    iget-boolean v9, p0, Lcom/android/internal/telephony/cdma/utk/GetInkeyInputResponseData;->mIsPacked:Z

    if-eqz v9, :cond_6

    .line 199
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/utk/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v6

    .line 201
    .local v6, "size":I
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/utk/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v9, v11, v12}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;II)[B

    move-result-object v8

    .line 203
    .local v8, "tempData":[B
    new-array v2, v6, [B

    .line 207
    .restart local v2    # "data":[B
    const/4 v9, 0x1

    const/4 v11, 0x0

    invoke-static {v8, v9, v2, v11, v6}, Ljava/lang/System;->arraycopy([BI[BII)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 211
    .end local v2    # "data":[B
    .end local v6    # "size":I
    .end local v8    # "tempData":[B
    :catch_0
    move-exception v3

    .line 212
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    new-array v2, v10, [B

    .line 215
    .restart local v2    # "data":[B
    goto :goto_1

    .line 209
    .end local v2    # "data":[B
    .end local v3    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_6
    :try_start_1
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/utk/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    invoke-static {v9}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .restart local v2    # "data":[B
    goto/16 :goto_1

    .line 213
    .end local v2    # "data":[B
    :catch_1
    move-exception v3

    .line 214
    .local v3, "e":Lcom/android/internal/telephony/EncodeException;
    new-array v2, v10, [B

    .line 215
    .restart local v2    # "data":[B
    goto/16 :goto_1

    .line 217
    .end local v2    # "data":[B
    .end local v3    # "e":Lcom/android/internal/telephony/EncodeException;
    :cond_7
    new-array v2, v10, [B

    .restart local v2    # "data":[B
    goto/16 :goto_1

    .line 232
    :cond_8
    iget-boolean v9, p0, Lcom/android/internal/telephony/cdma/utk/GetInkeyInputResponseData;->mIsPacked:Z

    if-eqz v9, :cond_9

    .line 233
    invoke-virtual {p1, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    .line 235
    :cond_9
    const/4 v9, 0x4

    invoke-virtual {p1, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2
.end method
