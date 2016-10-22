.class abstract Lcom/android/internal/telephony/cat/ValueParser;
.super Ljava/lang/Object;
.source "ValueParser.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkItemString([BII)I
    .locals 5
    .param p0, "raw"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 180
    aget-byte v2, p0, p1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x80

    if-eq v2, v3, :cond_0

    .line 182
    const-string v2, "ValueParser"

    const-string v3, "don\'t do check for non-ucs2 raw data"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    .end local p2    # "length":I
    :goto_0
    return p2

    .line 186
    .restart local p2    # "length":I
    :cond_0
    move v1, p2

    .line 187
    .local v1, "len":I
    const-string v2, "ValueParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "given length is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    array-length v2, p0

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_1
    if-le v0, p1, :cond_2

    .line 189
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    if-nez v2, :cond_1

    add-int/lit8 v2, v0, -0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    if-nez v2, :cond_1

    .line 190
    const-string v2, "ValueParser"

    const-string v3, "find invalid raw data 0x00"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    add-int/lit8 v1, v1, -0x2

    .line 188
    :cond_1
    add-int/lit8 v0, v0, -0x2

    goto :goto_1

    .line 195
    :cond_2
    const-string v2, "ValueParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "useful length is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move p2, v1

    .line 196
    goto :goto_0
.end method

.method static removeInvalidCharInItemTextString([BII)I
    .locals 7
    .param p0, "rawValue"    # [B
    .param p1, "valueIndex"    # I
    .param p2, "textLen"    # I

    .prologue
    const/4 v6, 0x1

    .line 152
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 153
    .local v1, "isucs2":Ljava/lang/Boolean;
    move v2, p2

    .line 154
    .local v2, "len":I
    const-string v3, "ValueParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Try to remove invalid raw data 0xf0, valueIndex: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", textLen: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    if-lt p2, v6, :cond_0

    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    const/16 v4, -0x80

    if-eq v3, v4, :cond_2

    :cond_0
    const/4 v3, 0x3

    if-lt p2, v3, :cond_1

    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    const/16 v4, -0x7f

    if-eq v3, v4, :cond_2

    :cond_1
    const/4 v3, 0x4

    if-lt p2, v3, :cond_3

    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    const/16 v4, -0x7e

    if-ne v3, v4, :cond_3

    .line 160
    :cond_2
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 162
    :cond_3
    const-string v3, "ValueParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Is the text string format UCS2? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_4

    if-lez p2, :cond_4

    .line 166
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_4

    .line 167
    add-int v3, p1, v0

    aget-byte v3, p0, v3

    const/16 v4, -0x10

    if-ne v3, v4, :cond_4

    .line 168
    const-string v3, "ValueParser"

    const-string v4, "find invalid raw data 0xf0"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    add-int/lit8 v2, v2, -0x1

    .line 166
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 175
    .end local v0    # "i":I
    :cond_4
    const-string v3, "ValueParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "new textLen: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    return v2
.end method

.method static retrieveAlphaId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;
    .locals 9
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 344
    if-eqz p0, :cond_1

    .line 345
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v3

    .line 346
    .local v3, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v5

    .line 347
    .local v5, "valueIndex":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v1

    .line 348
    .local v1, "length":I
    if-eqz v1, :cond_0

    .line 350
    :try_start_0
    invoke-static {v3, v5, v1}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 373
    .end local v1    # "length":I
    .end local v3    # "rawValue":[B
    .end local v5    # "valueIndex":I
    :goto_0
    return-object v6

    .line 352
    .restart local v1    # "length":I
    .restart local v3    # "rawValue":[B
    .restart local v5    # "valueIndex":I
    :catch_0
    move-exception v0

    .line 353
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v6, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v7, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v6

    .line 356
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_0
    const-string v6, "ValueParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Alpha Id length="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    const-string v6, ""

    goto :goto_0

    .line 365
    .end local v1    # "length":I
    .end local v3    # "rawValue":[B
    .end local v5    # "valueIndex":I
    :cond_1
    const/4 v2, 0x0

    .line 366
    .local v2, "noAlphaUsrCnf":Z
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    .line 368
    .local v4, "resource":Landroid/content/res/Resources;
    const v6, 0x1120076

    :try_start_1
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    .line 373
    :goto_1
    if-eqz v2, :cond_2

    const/4 v6, 0x0

    goto :goto_0

    .line 370
    :catch_1
    move-exception v0

    .line 371
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v2, 0x0

    goto :goto_1

    .line 373
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_2
    const-string v6, "Default Message"

    goto :goto_0
.end method

.method static retrieveBearerDesc(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/bip/BearerDesc;
    .locals 15
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 428
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v9

    .line 429
    .local v9, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v10

    .line 430
    .local v10, "valueIndex":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v8

    .line 431
    .local v8, "length":I
    const/4 v0, 0x0

    .line 432
    .local v0, "bearerDesc":Lcom/android/internal/telephony/cat/bip/BearerDesc;
    const/4 v6, 0x0

    .line 433
    .local v6, "gprsbearerDesc":Lcom/android/internal/telephony/cat/bip/GPRSBearerDesc;
    const/4 v4, 0x0

    .line 434
    .local v4, "euTranbearerDesc":Lcom/android/internal/telephony/cat/bip/EUTranBearerDesc;
    const/4 v2, 0x0

    .line 436
    .local v2, "defaultbearerDesc":Lcom/android/internal/telephony/cat/bip/DefaultBearerDesc;
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "valueIndex":I
    .local v11, "valueIndex":I
    :try_start_0
    aget-byte v12, v9, v10

    and-int/lit16 v1, v12, 0xff

    .line 437
    .local v1, "bearerType":I
    const-string v12, "CAT"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "retrieveBearerDesc: bearerType:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", length: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    const/4 v12, 0x2

    if-ne v12, v1, :cond_0

    .line 439
    new-instance v7, Lcom/android/internal/telephony/cat/bip/GPRSBearerDesc;

    invoke-direct {v7}, Lcom/android/internal/telephony/cat/bip/GPRSBearerDesc;-><init>()V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 440
    .end local v6    # "gprsbearerDesc":Lcom/android/internal/telephony/cat/bip/GPRSBearerDesc;
    .local v7, "gprsbearerDesc":Lcom/android/internal/telephony/cat/bip/GPRSBearerDesc;
    add-int/lit8 v10, v11, 0x1

    .end local v11    # "valueIndex":I
    .restart local v10    # "valueIndex":I
    :try_start_1
    aget-byte v12, v9, v11

    and-int/lit16 v12, v12, 0xff

    iput v12, v7, Lcom/android/internal/telephony/cat/bip/GPRSBearerDesc;->precedence:I
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 441
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "valueIndex":I
    .restart local v11    # "valueIndex":I
    :try_start_2
    aget-byte v12, v9, v10

    and-int/lit16 v12, v12, 0xff

    iput v12, v7, Lcom/android/internal/telephony/cat/bip/GPRSBearerDesc;->delay:I
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    .line 442
    add-int/lit8 v10, v11, 0x1

    .end local v11    # "valueIndex":I
    .restart local v10    # "valueIndex":I
    :try_start_3
    aget-byte v12, v9, v11

    and-int/lit16 v12, v12, 0xff

    iput v12, v7, Lcom/android/internal/telephony/cat/bip/GPRSBearerDesc;->reliability:I
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1

    .line 443
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "valueIndex":I
    .restart local v11    # "valueIndex":I
    :try_start_4
    aget-byte v12, v9, v10

    and-int/lit16 v12, v12, 0xff

    iput v12, v7, Lcom/android/internal/telephony/cat/bip/GPRSBearerDesc;->peak:I
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_2

    .line 444
    add-int/lit8 v10, v11, 0x1

    .end local v11    # "valueIndex":I
    .restart local v10    # "valueIndex":I
    :try_start_5
    aget-byte v12, v9, v11

    and-int/lit16 v12, v12, 0xff

    iput v12, v7, Lcom/android/internal/telephony/cat/bip/GPRSBearerDesc;->mean:I
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_1

    .line 445
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "valueIndex":I
    .restart local v11    # "valueIndex":I
    :try_start_6
    aget-byte v12, v9, v10

    and-int/lit16 v12, v12, 0xff

    iput v12, v7, Lcom/android/internal/telephony/cat/bip/GPRSBearerDesc;->pdpType:I
    :try_end_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_2

    move-object v6, v7

    .end local v7    # "gprsbearerDesc":Lcom/android/internal/telephony/cat/bip/GPRSBearerDesc;
    .restart local v6    # "gprsbearerDesc":Lcom/android/internal/telephony/cat/bip/GPRSBearerDesc;
    move v10, v11

    .line 462
    .end local v11    # "valueIndex":I
    .restart local v10    # "valueIndex":I
    :goto_0
    return-object v7

    .line 447
    .end local v10    # "valueIndex":I
    .restart local v11    # "valueIndex":I
    :cond_0
    const/16 v12, 0xb

    if-ne v12, v1, :cond_1

    .line 448
    :try_start_7
    new-instance v5, Lcom/android/internal/telephony/cat/bip/EUTranBearerDesc;

    invoke-direct {v5}, Lcom/android/internal/telephony/cat/bip/EUTranBearerDesc;-><init>()V
    :try_end_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_0

    .line 449
    .end local v4    # "euTranbearerDesc":Lcom/android/internal/telephony/cat/bip/EUTranBearerDesc;
    .local v5, "euTranbearerDesc":Lcom/android/internal/telephony/cat/bip/EUTranBearerDesc;
    add-int/lit8 v10, v11, 0x1

    .end local v11    # "valueIndex":I
    .restart local v10    # "valueIndex":I
    :try_start_8
    aget-byte v12, v9, v11

    and-int/lit16 v12, v12, 0xff

    iput v12, v5, Lcom/android/internal/telephony/cat/bip/EUTranBearerDesc;->QCI:I
    :try_end_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_3

    .line 450
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "valueIndex":I
    .restart local v11    # "valueIndex":I
    :try_start_9
    aget-byte v12, v9, v10

    and-int/lit16 v12, v12, 0xff

    iput v12, v5, Lcom/android/internal/telephony/cat/bip/EUTranBearerDesc;->maxBitRateU:I
    :try_end_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_4

    .line 451
    add-int/lit8 v10, v11, 0x1

    .end local v11    # "valueIndex":I
    .restart local v10    # "valueIndex":I
    :try_start_a
    aget-byte v12, v9, v11

    and-int/lit16 v12, v12, 0xff

    iput v12, v5, Lcom/android/internal/telephony/cat/bip/EUTranBearerDesc;->maxBitRateD:I
    :try_end_a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_a} :catch_3

    .line 452
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "valueIndex":I
    .restart local v11    # "valueIndex":I
    :try_start_b
    aget-byte v12, v9, v10

    and-int/lit16 v12, v12, 0xff

    iput v12, v5, Lcom/android/internal/telephony/cat/bip/EUTranBearerDesc;->guarBitRateU:I
    :try_end_b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_b .. :try_end_b} :catch_4

    .line 453
    add-int/lit8 v10, v11, 0x1

    .end local v11    # "valueIndex":I
    .restart local v10    # "valueIndex":I
    :try_start_c
    aget-byte v12, v9, v11

    and-int/lit16 v12, v12, 0xff

    iput v12, v5, Lcom/android/internal/telephony/cat/bip/EUTranBearerDesc;->guarBitRateD:I
    :try_end_c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_c .. :try_end_c} :catch_3

    .line 454
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "valueIndex":I
    .restart local v11    # "valueIndex":I
    :try_start_d
    aget-byte v12, v9, v10

    and-int/lit16 v12, v12, 0xff

    iput v12, v5, Lcom/android/internal/telephony/cat/bip/EUTranBearerDesc;->maxBitRateUEx:I
    :try_end_d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_d .. :try_end_d} :catch_4

    .line 455
    add-int/lit8 v10, v11, 0x1

    .end local v11    # "valueIndex":I
    .restart local v10    # "valueIndex":I
    :try_start_e
    aget-byte v12, v9, v11

    and-int/lit16 v12, v12, 0xff

    iput v12, v5, Lcom/android/internal/telephony/cat/bip/EUTranBearerDesc;->maxBitRateDEx:I
    :try_end_e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_e .. :try_end_e} :catch_3

    .line 456
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "valueIndex":I
    .restart local v11    # "valueIndex":I
    :try_start_f
    aget-byte v12, v9, v10

    and-int/lit16 v12, v12, 0xff

    iput v12, v5, Lcom/android/internal/telephony/cat/bip/EUTranBearerDesc;->guarBitRateUEx:I
    :try_end_f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_f .. :try_end_f} :catch_4

    .line 457
    add-int/lit8 v10, v11, 0x1

    .end local v11    # "valueIndex":I
    .restart local v10    # "valueIndex":I
    :try_start_10
    aget-byte v12, v9, v11

    and-int/lit16 v12, v12, 0xff

    iput v12, v5, Lcom/android/internal/telephony/cat/bip/EUTranBearerDesc;->guarBitRateDEx:I
    :try_end_10
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_10 .. :try_end_10} :catch_3

    .line 458
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "valueIndex":I
    .restart local v11    # "valueIndex":I
    :try_start_11
    aget-byte v12, v9, v10

    and-int/lit16 v12, v12, 0xff

    iput v12, v5, Lcom/android/internal/telephony/cat/bip/EUTranBearerDesc;->pdnType:I
    :try_end_11
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_11 .. :try_end_11} :catch_4

    move-object v4, v5

    .end local v5    # "euTranbearerDesc":Lcom/android/internal/telephony/cat/bip/EUTranBearerDesc;
    .restart local v4    # "euTranbearerDesc":Lcom/android/internal/telephony/cat/bip/EUTranBearerDesc;
    move v10, v11

    .end local v11    # "valueIndex":I
    .restart local v10    # "valueIndex":I
    move-object v7, v5

    .line 459
    goto :goto_0

    .line 460
    .end local v10    # "valueIndex":I
    .restart local v11    # "valueIndex":I
    :cond_1
    const/4 v12, 0x3

    if-ne v12, v1, :cond_2

    .line 461
    :try_start_12
    new-instance v2, Lcom/android/internal/telephony/cat/bip/DefaultBearerDesc;

    .end local v2    # "defaultbearerDesc":Lcom/android/internal/telephony/cat/bip/DefaultBearerDesc;
    invoke-direct {v2}, Lcom/android/internal/telephony/cat/bip/DefaultBearerDesc;-><init>()V

    .restart local v2    # "defaultbearerDesc":Lcom/android/internal/telephony/cat/bip/DefaultBearerDesc;
    move v10, v11

    .end local v11    # "valueIndex":I
    .restart local v10    # "valueIndex":I
    move-object v7, v2

    .line 462
    goto :goto_0

    .line 463
    .end local v10    # "valueIndex":I
    .restart local v11    # "valueIndex":I
    :cond_2
    const/4 v12, 0x1

    if-ne v12, v1, :cond_3

    .line 464
    const-string v12, "CAT"

    const-string v13, "retrieveBearerDesc: unsupport CSD"

    invoke-static {v12, v13}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    new-instance v12, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v13, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v12, v13}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v12
    :try_end_12
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_12 .. :try_end_12} :catch_0

    .line 470
    .end local v1    # "bearerType":I
    .end local v2    # "defaultbearerDesc":Lcom/android/internal/telephony/cat/bip/DefaultBearerDesc;
    :catch_0
    move-exception v3

    move v10, v11

    .line 471
    .end local v11    # "valueIndex":I
    .local v3, "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v10    # "valueIndex":I
    :goto_1
    const-string v12, "CAT"

    const-string v13, "retrieveBearerDesc: out of bounds"

    invoke-static {v12, v13}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    new-instance v12, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v13, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v12, v13}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v12

    .line 467
    .end local v3    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v10    # "valueIndex":I
    .restart local v1    # "bearerType":I
    .restart local v2    # "defaultbearerDesc":Lcom/android/internal/telephony/cat/bip/DefaultBearerDesc;
    .restart local v11    # "valueIndex":I
    :cond_3
    :try_start_13
    const-string v12, "CAT"

    const-string v13, "retrieveBearerDesc: un-understood bearer type"

    invoke-static {v12, v13}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    new-instance v12, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v13, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v12, v13}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v12
    :try_end_13
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_13 .. :try_end_13} :catch_0

    .line 470
    .end local v6    # "gprsbearerDesc":Lcom/android/internal/telephony/cat/bip/GPRSBearerDesc;
    .end local v11    # "valueIndex":I
    .restart local v7    # "gprsbearerDesc":Lcom/android/internal/telephony/cat/bip/GPRSBearerDesc;
    .restart local v10    # "valueIndex":I
    :catch_1
    move-exception v3

    move-object v6, v7

    .end local v7    # "gprsbearerDesc":Lcom/android/internal/telephony/cat/bip/GPRSBearerDesc;
    .restart local v6    # "gprsbearerDesc":Lcom/android/internal/telephony/cat/bip/GPRSBearerDesc;
    goto :goto_1

    .end local v6    # "gprsbearerDesc":Lcom/android/internal/telephony/cat/bip/GPRSBearerDesc;
    .end local v10    # "valueIndex":I
    .restart local v7    # "gprsbearerDesc":Lcom/android/internal/telephony/cat/bip/GPRSBearerDesc;
    .restart local v11    # "valueIndex":I
    :catch_2
    move-exception v3

    move-object v6, v7

    .end local v7    # "gprsbearerDesc":Lcom/android/internal/telephony/cat/bip/GPRSBearerDesc;
    .restart local v6    # "gprsbearerDesc":Lcom/android/internal/telephony/cat/bip/GPRSBearerDesc;
    move v10, v11

    .end local v11    # "valueIndex":I
    .restart local v10    # "valueIndex":I
    goto :goto_1

    .end local v4    # "euTranbearerDesc":Lcom/android/internal/telephony/cat/bip/EUTranBearerDesc;
    .restart local v5    # "euTranbearerDesc":Lcom/android/internal/telephony/cat/bip/EUTranBearerDesc;
    :catch_3
    move-exception v3

    move-object v4, v5

    .end local v5    # "euTranbearerDesc":Lcom/android/internal/telephony/cat/bip/EUTranBearerDesc;
    .restart local v4    # "euTranbearerDesc":Lcom/android/internal/telephony/cat/bip/EUTranBearerDesc;
    goto :goto_1

    .end local v4    # "euTranbearerDesc":Lcom/android/internal/telephony/cat/bip/EUTranBearerDesc;
    .end local v10    # "valueIndex":I
    .restart local v5    # "euTranbearerDesc":Lcom/android/internal/telephony/cat/bip/EUTranBearerDesc;
    .restart local v11    # "valueIndex":I
    :catch_4
    move-exception v3

    move-object v4, v5

    .end local v5    # "euTranbearerDesc":Lcom/android/internal/telephony/cat/bip/EUTranBearerDesc;
    .restart local v4    # "euTranbearerDesc":Lcom/android/internal/telephony/cat/bip/EUTranBearerDesc;
    move v10, v11

    .end local v11    # "valueIndex":I
    .restart local v10    # "valueIndex":I
    goto :goto_1
.end method

.method static retrieveBufferSize(Lcom/android/internal/telephony/cat/ComprehensionTlv;)I
    .locals 6
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 477
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v1

    .line 478
    .local v1, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v3

    .line 479
    .local v3, "valueIndex":I
    const/4 v2, 0x0

    .line 482
    .local v2, "size":I
    :try_start_0
    aget-byte v4, v1, v3

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v5, v3, 0x1

    aget-byte v5, v1, v5
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v5, v5, 0xff

    add-int v2, v4, v5

    .line 488
    return v2

    .line 483
    :catch_0
    move-exception v0

    .line 484
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v4, "CAT"

    const-string v5, "retrieveBufferSize: out of bounds"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    new-instance v4, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v4
.end method

.method static retrieveChannelData(Lcom/android/internal/telephony/cat/ComprehensionTlv;)[B
    .locals 6
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 612
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .line 613
    .local v2, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v3

    .line 614
    .local v3, "valueIndex":I
    const/4 v0, 0x0

    .line 617
    .local v0, "channelData":[B
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v4

    new-array v0, v4, [B

    .line 618
    const/4 v4, 0x0

    array-length v5, v0

    invoke-static {v2, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 624
    return-object v0

    .line 619
    :catch_0
    move-exception v1

    .line 620
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v4, "CAT"

    const-string v5, "retrieveChannelData: out of bounds"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    new-instance v4, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v4
.end method

.method static retrieveChannelDataLength(Lcom/android/internal/telephony/cat/ComprehensionTlv;)I
    .locals 7
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 595
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .line 596
    .local v2, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v3

    .line 597
    .local v3, "valueIndex":I
    const/4 v1, 0x0

    .line 599
    .local v1, "length":I
    const-string v4, "CAT"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "valueIndex:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    :try_start_0
    aget-byte v4, v2, v3
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v1, v4, 0xff

    .line 608
    return v1

    .line 603
    :catch_0
    move-exception v0

    .line 604
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v4, "CAT"

    const-string v5, "retrieveTransportProtocol: out of bounds"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    new-instance v4, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v4
.end method

.method static retrieveCommandDetails(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/CommandDetails;
    .locals 6
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 56
    new-instance v0, Lcom/android/internal/telephony/cat/CommandDetails;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/CommandDetails;-><init>()V

    .line 57
    .local v0, "cmdDet":Lcom/android/internal/telephony/cat/CommandDetails;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .line 58
    .local v2, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v3

    .line 60
    .local v3, "valueIndex":I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->isComprehensionRequired()Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/internal/telephony/cat/CommandDetails;->compRequired:Z

    .line 61
    aget-byte v4, v2, v3

    and-int/lit16 v4, v4, 0xff

    iput v4, v0, Lcom/android/internal/telephony/cat/CommandDetails;->commandNumber:I

    .line 62
    add-int/lit8 v4, v3, 0x1

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    iput v4, v0, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    .line 63
    add-int/lit8 v4, v3, 0x2

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    iput v4, v0, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    return-object v0

    .line 65
    :catch_0
    move-exception v1

    .line 66
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v4
.end method

.method static retrieveDeviceIdentities(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/DeviceIdentities;
    .locals 6
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 81
    new-instance v0, Lcom/android/internal/telephony/cat/DeviceIdentities;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/DeviceIdentities;-><init>()V

    .line 82
    .local v0, "devIds":Lcom/android/internal/telephony/cat/DeviceIdentities;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .line 83
    .local v2, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v3

    .line 85
    .local v3, "valueIndex":I
    :try_start_0
    aget-byte v4, v2, v3

    and-int/lit16 v4, v4, 0xff

    iput v4, v0, Lcom/android/internal/telephony/cat/DeviceIdentities;->sourceId:I

    .line 86
    add-int/lit8 v4, v3, 0x1

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    iput v4, v0, Lcom/android/internal/telephony/cat/DeviceIdentities;->destinationId:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    return-object v0

    .line 88
    :catch_0
    move-exception v1

    .line 89
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v4
.end method

.method static retrieveDuration(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/Duration;
    .locals 7
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 102
    const/4 v2, 0x0

    .line 103
    .local v2, "timeInterval":I
    sget-object v3, Lcom/android/internal/telephony/cat/Duration$TimeUnit;->SECOND:Lcom/android/internal/telephony/cat/Duration$TimeUnit;

    .line 105
    .local v3, "timeUnit":Lcom/android/internal/telephony/cat/Duration$TimeUnit;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v1

    .line 106
    .local v1, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v4

    .line 109
    .local v4, "valueIndex":I
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/cat/Duration$TimeUnit;->values()[Lcom/android/internal/telephony/cat/Duration$TimeUnit;

    move-result-object v5

    aget-byte v6, v1, v4

    and-int/lit16 v6, v6, 0xff

    aget-object v3, v5, v6

    .line 110
    add-int/lit8 v5, v4, 0x1

    aget-byte v5, v1, v5
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v2, v5, 0xff

    .line 114
    new-instance v5, Lcom/android/internal/telephony/cat/Duration;

    invoke-direct {v5, v2, v3}, Lcom/android/internal/telephony/cat/Duration;-><init>(ILcom/android/internal/telephony/cat/Duration$TimeUnit;)V

    return-object v5

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v5, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v6, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v5
.end method

.method static retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;
    .locals 7
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 229
    new-instance v1, Lcom/android/internal/telephony/cat/IconId;

    invoke-direct {v1}, Lcom/android/internal/telephony/cat/IconId;-><init>()V

    .line 231
    .local v1, "id":Lcom/android/internal/telephony/cat/IconId;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .line 232
    .local v2, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v3

    .line 234
    .local v3, "valueIndex":I
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "valueIndex":I
    .local v4, "valueIndex":I
    :try_start_0
    aget-byte v5, v2, v3

    and-int/lit16 v5, v5, 0xff

    if-nez v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    iput-boolean v5, v1, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    .line 235
    aget-byte v5, v2, v4

    and-int/lit16 v5, v5, 0xff

    iput v5, v1, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    return-object v1

    .line 234
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 236
    :catch_0
    move-exception v0

    .line 237
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v5, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v6, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v5
.end method

.method static retrieveItem(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/Item;
    .locals 11
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 125
    const/4 v2, 0x0

    .line 127
    .local v2, "item":Lcom/android/internal/telephony/cat/Item;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v5

    .line 128
    .local v5, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v8

    .line 129
    .local v8, "valueIndex":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v4

    .line 131
    .local v4, "length":I
    if-eqz v4, :cond_0

    .line 132
    add-int/lit8 v7, v4, -0x1

    .line 135
    .local v7, "textLen":I
    :try_start_0
    aget-byte v9, v5, v8

    and-int/lit16 v1, v9, 0xff

    .line 137
    .local v1, "id":I
    invoke-static {v5, v8, v7}, Lcom/android/internal/telephony/cat/ValueParser;->removeInvalidCharInItemTextString([BII)I

    move-result v7

    .line 138
    add-int/lit8 v9, v8, 0x1

    invoke-static {v5, v9, v7}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v6

    .line 140
    .local v6, "text":Ljava/lang/String;
    new-instance v3, Lcom/android/internal/telephony/cat/Item;

    invoke-direct {v3, v1, v6}, Lcom/android/internal/telephony/cat/Item;-><init>(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "item":Lcom/android/internal/telephony/cat/Item;
    .local v3, "item":Lcom/android/internal/telephony/cat/Item;
    move-object v2, v3

    .line 147
    .end local v1    # "id":I
    .end local v3    # "item":Lcom/android/internal/telephony/cat/Item;
    .end local v6    # "text":Ljava/lang/String;
    .end local v7    # "textLen":I
    .restart local v2    # "item":Lcom/android/internal/telephony/cat/Item;
    :cond_0
    :goto_0
    return-object v2

    .line 141
    .restart local v7    # "textLen":I
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v9, "ValueParser"

    const-string v10, "retrieveItem fail"

    invoke-static {v9, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static retrieveItemId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)I
    .locals 6
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 207
    const/4 v1, 0x0

    .line 209
    .local v1, "id":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .line 210
    .local v2, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v3

    .line 213
    .local v3, "valueIndex":I
    :try_start_0
    aget-byte v4, v2, v3
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v1, v4, 0xff

    .line 218
    return v1

    .line 214
    :catch_0
    move-exception v0

    .line 215
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v4
.end method

.method static retrieveItemsIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/ItemsIconId;
    .locals 10
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 253
    const-string v8, "ValueParser"

    const-string v9, "retrieveItemsIconId:"

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    new-instance v1, Lcom/android/internal/telephony/cat/ItemsIconId;

    invoke-direct {v1}, Lcom/android/internal/telephony/cat/ItemsIconId;-><init>()V

    .line 256
    .local v1, "id":Lcom/android/internal/telephony/cat/ItemsIconId;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v5

    .line 257
    .local v5, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v6

    .line 258
    .local v6, "valueIndex":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v8

    add-int/lit8 v4, v8, -0x1

    .line 259
    .local v4, "numOfItems":I
    new-array v8, v4, [I

    iput-object v8, v1, Lcom/android/internal/telephony/cat/ItemsIconId;->recordNumbers:[I

    .line 263
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "valueIndex":I
    .local v7, "valueIndex":I
    :try_start_0
    aget-byte v8, v5, v6

    and-int/lit16 v8, v8, 0xff

    if-nez v8, :cond_0

    const/4 v8, 0x1

    :goto_0
    iput-boolean v8, v1, Lcom/android/internal/telephony/cat/ItemsIconId;->selfExplanatory:Z

    .line 265
    const/4 v2, 0x0

    .local v2, "index":I
    move v3, v2

    .end local v2    # "index":I
    .local v3, "index":I
    :goto_1
    if-ge v3, v4, :cond_1

    .line 266
    iget-object v8, v1, Lcom/android/internal/telephony/cat/ItemsIconId;->recordNumbers:[I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "index":I
    .restart local v2    # "index":I
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "valueIndex":I
    .restart local v6    # "valueIndex":I
    :try_start_1
    aget-byte v9, v5, v7

    aput v9, v8, v3
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    move v3, v2

    .end local v2    # "index":I
    .restart local v3    # "index":I
    move v7, v6

    .end local v6    # "valueIndex":I
    .restart local v7    # "valueIndex":I
    goto :goto_1

    .line 263
    .end local v3    # "index":I
    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    .line 268
    :catch_0
    move-exception v0

    move v6, v7

    .line 269
    .end local v7    # "valueIndex":I
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v6    # "valueIndex":I
    :goto_2
    new-instance v8, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v8, v9}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v8

    .line 271
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v6    # "valueIndex":I
    .restart local v3    # "index":I
    .restart local v7    # "valueIndex":I
    :cond_1
    return-object v1

    .line 268
    .end local v3    # "index":I
    .end local v7    # "valueIndex":I
    .restart local v2    # "index":I
    .restart local v6    # "valueIndex":I
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method static retrieveNetworkAccessName(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;
    .locals 14
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 492
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v3

    .line 493
    .local v3, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v9

    .line 494
    .local v9, "valueIndex":I
    const/4 v2, 0x0

    .line 498
    .local v2, "networkAccessName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v8

    .line 499
    .local v8, "totalLen":I
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3, v9, v8}, Ljava/lang/String;-><init>([BII)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 500
    .local v4, "stkNetworkAccessName":Ljava/lang/String;
    const/4 v5, 0x0

    .line 501
    .local v5, "stkNetworkIdentifier":Ljava/lang/String;
    const/4 v6, 0x0

    .line 503
    .local v6, "stkOperatorIdentifier":Ljava/lang/String;
    if-eqz v4, :cond_4

    if-lez v8, :cond_4

    .line 505
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "valueIndex":I
    .local v10, "valueIndex":I
    :try_start_1
    aget-byte v1, v3, v9

    .line 506
    .local v1, "len":I
    if-le v8, v1, :cond_6

    .line 507
    new-instance v5, Ljava/lang/String;

    .end local v5    # "stkNetworkIdentifier":Ljava/lang/String;
    invoke-direct {v5, v3, v10, v1}, Ljava/lang/String;-><init>([BII)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 508
    .restart local v5    # "stkNetworkIdentifier":Ljava/lang/String;
    add-int v9, v10, v1

    .line 510
    .end local v10    # "valueIndex":I
    .restart local v9    # "valueIndex":I
    :goto_0
    :try_start_2
    const-string v11, "CAT"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "totalLen:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    const/4 v7, 0x0

    .local v7, "tmp_string":Ljava/lang/String;
    move v10, v9

    .line 513
    .end local v9    # "valueIndex":I
    .restart local v10    # "valueIndex":I
    :goto_1
    add-int/lit8 v11, v1, 0x1

    if-le v8, v11, :cond_2

    .line 514
    add-int/lit8 v11, v1, 0x1

    sub-int/2addr v8, v11

    .line 515
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "valueIndex":I
    .restart local v9    # "valueIndex":I
    aget-byte v1, v3, v10

    .line 516
    const-string v11, "CAT"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "next len: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    if-le v8, v1, :cond_0

    .line 518
    new-instance v7, Ljava/lang/String;

    .end local v7    # "tmp_string":Ljava/lang/String;
    invoke-direct {v7, v3, v9, v1}, Ljava/lang/String;-><init>([BII)V

    .line 519
    .restart local v7    # "tmp_string":Ljava/lang/String;
    if-nez v6, :cond_1

    .line 520
    move-object v6, v7

    .line 523
    :goto_2
    const/4 v7, 0x0

    .line 525
    :cond_0
    add-int/2addr v9, v1

    .line 526
    const-string v11, "CAT"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "totalLen:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v10, v9

    .end local v9    # "valueIndex":I
    .restart local v10    # "valueIndex":I
    goto :goto_1

    .line 522
    .end local v10    # "valueIndex":I
    .restart local v9    # "valueIndex":I
    :cond_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v6

    goto :goto_2

    .line 529
    .end local v9    # "valueIndex":I
    .restart local v10    # "valueIndex":I
    :cond_2
    if-eqz v5, :cond_5

    if-eqz v6, :cond_5

    .line 530
    :try_start_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 534
    :cond_3
    :goto_3
    const-string v11, "CAT"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "nw:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1

    move v9, v10

    .line 541
    .end local v1    # "len":I
    .end local v7    # "tmp_string":Ljava/lang/String;
    .end local v10    # "valueIndex":I
    .restart local v9    # "valueIndex":I
    :cond_4
    return-object v2

    .line 531
    .end local v9    # "valueIndex":I
    .restart local v1    # "len":I
    .restart local v7    # "tmp_string":Ljava/lang/String;
    .restart local v10    # "valueIndex":I
    :cond_5
    if-eqz v5, :cond_3

    .line 532
    move-object v2, v5

    goto :goto_3

    .line 536
    .end local v1    # "len":I
    .end local v4    # "stkNetworkAccessName":Ljava/lang/String;
    .end local v5    # "stkNetworkIdentifier":Ljava/lang/String;
    .end local v6    # "stkOperatorIdentifier":Ljava/lang/String;
    .end local v7    # "tmp_string":Ljava/lang/String;
    .end local v8    # "totalLen":I
    .end local v10    # "valueIndex":I
    .restart local v9    # "valueIndex":I
    :catch_0
    move-exception v0

    .line 537
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_4
    const-string v11, "CAT"

    const-string v12, "retrieveNetworkAccessName: out of bounds"

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    new-instance v11, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v12, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v11, v12}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v11

    .line 536
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v9    # "valueIndex":I
    .restart local v4    # "stkNetworkAccessName":Ljava/lang/String;
    .restart local v6    # "stkOperatorIdentifier":Ljava/lang/String;
    .restart local v8    # "totalLen":I
    .restart local v10    # "valueIndex":I
    :catch_1
    move-exception v0

    move v9, v10

    .end local v10    # "valueIndex":I
    .restart local v9    # "valueIndex":I
    goto :goto_4

    .end local v9    # "valueIndex":I
    .restart local v1    # "len":I
    .restart local v5    # "stkNetworkIdentifier":Ljava/lang/String;
    .restart local v10    # "valueIndex":I
    :cond_6
    move v9, v10

    .end local v10    # "valueIndex":I
    .restart local v9    # "valueIndex":I
    goto/16 :goto_0
.end method

.method static retrieveNextActionIndicator(Lcom/android/internal/telephony/cat/ComprehensionTlv;)[B
    .locals 10
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 630
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v5

    .line 631
    .local v5, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v6

    .line 632
    .local v6, "valueIndex":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v3

    .line 634
    .local v3, "length":I
    new-array v4, v3, [B

    .line 636
    .local v4, "nai":[B
    const/4 v1, 0x0

    .local v1, "index":I
    move v2, v1

    .end local v1    # "index":I
    .local v2, "index":I
    move v7, v6

    .end local v6    # "valueIndex":I
    .local v7, "valueIndex":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 637
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "valueIndex":I
    .restart local v6    # "valueIndex":I
    :try_start_0
    aget-byte v8, v5, v7

    aput-byte v8, v4, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    move v7, v6

    .end local v6    # "valueIndex":I
    .restart local v7    # "valueIndex":I
    goto :goto_0

    .line 639
    .end local v2    # "index":I
    .end local v7    # "valueIndex":I
    .restart local v1    # "index":I
    .restart local v6    # "valueIndex":I
    :catch_0
    move-exception v0

    .line 640
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v8, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v8, v9}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v8

    .line 643
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v1    # "index":I
    .end local v6    # "valueIndex":I
    .restart local v2    # "index":I
    .restart local v7    # "valueIndex":I
    :cond_0
    return-object v4
.end method

.method static retrieveOtherAddress(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/bip/OtherAddress;
    .locals 11
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 563
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v5

    .line 564
    .local v5, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v6

    .line 565
    .local v6, "valueIndex":I
    const/4 v0, 0x0

    .line 566
    .local v0, "addressType":I
    const/4 v3, 0x0

    .line 569
    .local v3, "otherAddress":Lcom/android/internal/telephony/cat/bip/OtherAddress;
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "valueIndex":I
    .local v7, "valueIndex":I
    :try_start_0
    aget-byte v0, v5, v6

    .line 570
    const/16 v9, 0x21

    if-ne v9, v0, :cond_0

    .line 571
    new-instance v4, Lcom/android/internal/telephony/cat/bip/OtherAddress;

    invoke-direct {v4, v0, v5, v7}, Lcom/android/internal/telephony/cat/bip/OtherAddress;-><init>(I[BI)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v3    # "otherAddress":Lcom/android/internal/telephony/cat/bip/OtherAddress;
    .local v4, "otherAddress":Lcom/android/internal/telephony/cat/bip/OtherAddress;
    move-object v3, v4

    .line 591
    .end local v4    # "otherAddress":Lcom/android/internal/telephony/cat/bip/OtherAddress;
    .restart local v3    # "otherAddress":Lcom/android/internal/telephony/cat/bip/OtherAddress;
    :goto_0
    return-object v4

    .line 572
    :cond_0
    const/16 v9, 0x57

    if-ne v9, v0, :cond_1

    move-object v4, v8

    .line 573
    goto :goto_0

    :cond_1
    move-object v4, v8

    .line 577
    goto :goto_0

    .line 581
    :catch_0
    move-exception v1

    .line 582
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v9, "CAT"

    const-string v10, "retrieveOtherAddress: out of bounds"

    invoke-static {v9, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v8

    .line 583
    goto :goto_0

    .line 585
    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_1
    move-exception v2

    .line 586
    .local v2, "e2":Ljava/net/UnknownHostException;
    const-string v9, "CAT"

    const-string v10, "retrieveOtherAddress: unknown host"

    invoke-static {v9, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v8

    .line 587
    goto :goto_0
.end method

.method static retrieveTarget(Lcom/android/internal/telephony/cat/ComprehensionTlv;)I
    .locals 6
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 648
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v1

    .line 649
    .local v1, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v3

    .line 650
    .local v3, "valueIndex":I
    const/4 v2, 0x0

    .line 653
    .local v2, "target":I
    :try_start_0
    aget-byte v4, v1, v3
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v2, v4, 0xff

    .line 658
    return v2

    .line 654
    :catch_0
    move-exception v0

    .line 655
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v4
.end method

.method static retrieveTextAttribute(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/util/List;
    .locals 24
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/TextAttribute;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 284
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 286
    .local v18, "lst":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/cat/TextAttribute;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v19

    .line 287
    .local v19, "rawValue":[B
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v21

    .line 288
    .local v21, "valueIndex":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v17

    .line 290
    .local v17, "length":I
    if-eqz v17, :cond_5

    .line 292
    div-int/lit8 v16, v17, 0x4

    .line 295
    .local v16, "itemCount":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    move/from16 v0, v16

    if-ge v15, v0, :cond_6

    .line 296
    :try_start_0
    aget-byte v22, v19, v21

    move/from16 v0, v22

    and-int/lit16 v2, v0, 0xff

    .line 297
    .local v2, "start":I
    add-int/lit8 v22, v21, 0x1

    aget-byte v22, v19, v22

    move/from16 v0, v22

    and-int/lit16 v3, v0, 0xff

    .line 298
    .local v3, "textLength":I
    add-int/lit8 v22, v21, 0x2

    aget-byte v22, v19, v22

    move/from16 v0, v22

    and-int/lit16 v14, v0, 0xff

    .line 299
    .local v14, "format":I
    add-int/lit8 v22, v21, 0x3

    aget-byte v22, v19, v22

    move/from16 v0, v22

    and-int/lit16 v12, v0, 0xff

    .line 301
    .local v12, "colorValue":I
    and-int/lit8 v11, v14, 0x3

    .line 302
    .local v11, "alignValue":I
    invoke-static {v11}, Lcom/android/internal/telephony/cat/TextAlignment;->fromInt(I)Lcom/android/internal/telephony/cat/TextAlignment;

    move-result-object v4

    .line 304
    .local v4, "align":Lcom/android/internal/telephony/cat/TextAlignment;
    shr-int/lit8 v22, v14, 0x2

    and-int/lit8 v20, v22, 0x3

    .line 305
    .local v20, "sizeValue":I
    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/cat/FontSize;->fromInt(I)Lcom/android/internal/telephony/cat/FontSize;

    move-result-object v5

    .line 306
    .local v5, "size":Lcom/android/internal/telephony/cat/FontSize;
    if-nez v5, :cond_0

    .line 308
    sget-object v5, Lcom/android/internal/telephony/cat/FontSize;->NORMAL:Lcom/android/internal/telephony/cat/FontSize;

    .line 311
    :cond_0
    and-int/lit8 v22, v14, 0x10

    if-eqz v22, :cond_1

    const/4 v6, 0x1

    .line 312
    .local v6, "bold":Z
    :goto_1
    and-int/lit8 v22, v14, 0x20

    if-eqz v22, :cond_2

    const/4 v7, 0x1

    .line 313
    .local v7, "italic":Z
    :goto_2
    and-int/lit8 v22, v14, 0x40

    if-eqz v22, :cond_3

    const/4 v8, 0x1

    .line 314
    .local v8, "underlined":Z
    :goto_3
    and-int/lit16 v0, v14, 0x80

    move/from16 v22, v0

    if-eqz v22, :cond_4

    const/4 v9, 0x1

    .line 316
    .local v9, "strikeThrough":Z
    :goto_4
    invoke-static {v12}, Lcom/android/internal/telephony/cat/TextColor;->fromInt(I)Lcom/android/internal/telephony/cat/TextColor;

    move-result-object v10

    .line 318
    .local v10, "color":Lcom/android/internal/telephony/cat/TextColor;
    new-instance v1, Lcom/android/internal/telephony/cat/TextAttribute;

    invoke-direct/range {v1 .. v10}, Lcom/android/internal/telephony/cat/TextAttribute;-><init>(IILcom/android/internal/telephony/cat/TextAlignment;Lcom/android/internal/telephony/cat/FontSize;ZZZZLcom/android/internal/telephony/cat/TextColor;)V

    .line 321
    .local v1, "attr":Lcom/android/internal/telephony/cat/TextAttribute;
    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v21, v21, 0x4

    goto :goto_0

    .line 311
    .end local v1    # "attr":Lcom/android/internal/telephony/cat/TextAttribute;
    .end local v6    # "bold":Z
    .end local v7    # "italic":Z
    .end local v8    # "underlined":Z
    .end local v9    # "strikeThrough":Z
    .end local v10    # "color":Lcom/android/internal/telephony/cat/TextColor;
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 312
    .restart local v6    # "bold":Z
    :cond_2
    const/4 v7, 0x0

    goto :goto_2

    .line 313
    .restart local v7    # "italic":Z
    :cond_3
    const/4 v8, 0x0

    goto :goto_3

    .line 314
    .restart local v8    # "underlined":Z
    :cond_4
    const/4 v9, 0x0

    goto :goto_4

    .line 326
    .end local v2    # "start":I
    .end local v3    # "textLength":I
    .end local v4    # "align":Lcom/android/internal/telephony/cat/TextAlignment;
    .end local v5    # "size":Lcom/android/internal/telephony/cat/FontSize;
    .end local v6    # "bold":Z
    .end local v7    # "italic":Z
    .end local v8    # "underlined":Z
    .end local v11    # "alignValue":I
    .end local v12    # "colorValue":I
    .end local v14    # "format":I
    .end local v20    # "sizeValue":I
    :catch_0
    move-exception v13

    .line 327
    .local v13, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v22, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v23, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct/range {v22 .. v23}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v22

    .line 330
    .end local v13    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v15    # "i":I
    .end local v16    # "itemCount":I
    :cond_5
    const/16 v18, 0x0

    .end local v18    # "lst":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/cat/TextAttribute;>;"
    :cond_6
    return-object v18
.end method

.method static retrieveTextString(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;
    .locals 9
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 386
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .line 387
    .local v2, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v6

    .line 388
    .local v6, "valueIndex":I
    const/4 v0, 0x0

    .line 389
    .local v0, "codingScheme":B
    const/4 v3, 0x0

    .line 390
    .local v3, "text":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v5

    .line 393
    .local v5, "textLen":I
    if-nez v5, :cond_0

    move-object v4, v3

    .line 415
    .end local v3    # "text":Ljava/lang/String;
    .local v4, "text":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 397
    .end local v4    # "text":Ljava/lang/String;
    .restart local v3    # "text":Ljava/lang/String;
    :cond_0
    add-int/lit8 v5, v5, -0x1

    .line 401
    :try_start_0
    aget-byte v7, v2, v6

    and-int/lit8 v7, v7, 0xc

    int-to-byte v0, v7

    .line 403
    if-nez v0, :cond_1

    .line 404
    add-int/lit8 v7, v6, 0x1

    mul-int/lit8 v8, v5, 0x8

    div-int/lit8 v8, v8, 0x7

    invoke-static {v2, v7, v8}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object v3

    :goto_1
    move-object v4, v3

    .line 415
    .end local v3    # "text":Ljava/lang/String;
    .restart local v4    # "text":Ljava/lang/String;
    goto :goto_0

    .line 406
    .end local v4    # "text":Ljava/lang/String;
    .restart local v3    # "text":Ljava/lang/String;
    :cond_1
    const/4 v7, 0x4

    if-ne v0, v7, :cond_2

    .line 407
    add-int/lit8 v7, v6, 0x1

    invoke-static {v2, v7, v5}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 409
    :cond_2
    const/16 v7, 0x8

    if-ne v0, v7, :cond_3

    .line 410
    new-instance v3, Ljava/lang/String;

    .end local v3    # "text":Ljava/lang/String;
    add-int/lit8 v7, v6, 0x1

    const-string v8, "UTF-16"

    invoke-direct {v3, v2, v7, v5, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .restart local v3    # "text":Ljava/lang/String;
    goto :goto_1

    .line 412
    :cond_3
    new-instance v7, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v7
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 416
    .end local v3    # "text":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 417
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v7, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v7

    .line 418
    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_1
    move-exception v1

    .line 420
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v7, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v7
.end method

.method static retrieveTransportProtocol(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/bip/TransportProtocol;
    .locals 8
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 546
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v3

    .line 547
    .local v3, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v4

    .line 548
    .local v4, "valueIndex":I
    const/4 v2, 0x0

    .line 549
    .local v2, "protocolType":I
    const/4 v1, 0x0

    .line 552
    .local v1, "portNumber":I
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "valueIndex":I
    .local v5, "valueIndex":I
    :try_start_0
    aget-byte v2, v3, v4

    .line 553
    aget-byte v6, v3, v5

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    add-int/lit8 v7, v5, 0x1

    aget-byte v7, v3, v7
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v7, v7, 0xff

    add-int v1, v6, v7

    .line 559
    new-instance v6, Lcom/android/internal/telephony/cat/bip/TransportProtocol;

    invoke-direct {v6, v2, v1}, Lcom/android/internal/telephony/cat/bip/TransportProtocol;-><init>(II)V

    return-object v6

    .line 554
    :catch_0
    move-exception v0

    .line 555
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v6, "CAT"

    const-string v7, "retrieveTransportProtocol: out of bounds"

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    new-instance v6, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v7, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v6
.end method
