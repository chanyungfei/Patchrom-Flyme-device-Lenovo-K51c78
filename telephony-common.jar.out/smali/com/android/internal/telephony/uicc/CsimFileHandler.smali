.class public final Lcom/android/internal/telephony/uicc/CsimFileHandler;
.super Lcom/android/internal/telephony/uicc/IccFileHandler;
.source "CsimFileHandler.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccConstants;


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "CsimFH"


# instance fields
.field private adnRecordSize:[I

.field mMaxNameLength:I

.field maxnumberLength:I


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 1
    .param p1, "app"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .param p2, "aid"    # Ljava/lang/String;
    .param p3, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccFileHandler;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 34
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/CsimFileHandler;->adnRecordSize:[I

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/uicc/CsimFileHandler;->mMaxNameLength:I

    .line 36
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/internal/telephony/uicc/CsimFileHandler;->maxnumberLength:I

    .line 40
    return-void

    .line 34
    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method private parseRecordsInfoForLinearFixed([BLcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;)Z
    .locals 6
    .param p1, "data"    # [B
    .param p2, "lc"    # Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 285
    const/16 v4, 0x62

    aget-byte v5, p1, v3

    if-ne v4, v5, :cond_6

    .line 286
    array-length v3, p1

    const/16 v4, 0x9

    if-ge v3, v4, :cond_0

    .line 287
    const-string v3, "error response data for uicc"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/CsimFileHandler;->loge(Ljava/lang/String;)V

    .line 288
    new-instance v3, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 290
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data.length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/CsimFileHandler;->logd(Ljava/lang/String;)V

    .line 296
    const/4 v1, 0x2

    .local v1, "index":I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_1

    .line 297
    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x82

    if-ne v3, v4, :cond_2

    .line 302
    :cond_1
    array-length v3, p1

    add-int/lit8 v3, v3, -0x7

    if-le v1, v3, :cond_3

    .line 303
    const-string v3, "no 0x82 tag found in response data for uicc"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/CsimFileHandler;->loge(Ljava/lang/String;)V

    .line 304
    new-instance v3, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 296
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 308
    :cond_3
    add-int/lit8 v3, v1, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v2, v3, 0xff

    .line 309
    .local v2, "lengthOfFileDescriptor":I
    const/4 v3, 0x5

    if-eq v2, v3, :cond_4

    .line 310
    const-string v3, "error bytes length for uicc response data"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/CsimFileHandler;->loge(Ljava/lang/String;)V

    .line 311
    new-instance v3, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 314
    :cond_4
    add-int/lit8 v3, v1, 0x2

    aget-byte v0, p1, v3

    .line 316
    .local v0, "fdByte":B
    const/16 v3, 0x21

    add-int/lit8 v4, v1, 0x3

    and-int/lit16 v4, v4, 0xff

    aget-byte v4, p1, v4

    if-eq v3, v4, :cond_5

    .line 317
    const-string v3, "error coding type for uicc response data"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/CsimFileHandler;->loge(Ljava/lang/String;)V

    .line 318
    new-instance v3, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 321
    :cond_5
    add-int/lit8 v3, v1, 0x4

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v4, v1, 0x5

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v3, v4

    iput v3, p2, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordSize:I

    .line 324
    add-int/lit8 v3, v1, 0x6

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    iput v3, p2, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mCountRecords:I

    .line 326
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lc.mRecordSize = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordSize:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", lc.mCountRecords = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mCountRecords:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/CsimFileHandler;->logd(Ljava/lang/String;)V

    .line 327
    const/4 v3, 0x1

    .line 330
    .end local v0    # "fdByte":B
    .end local v1    # "index":I
    .end local v2    # "lengthOfFileDescriptor":I
    :goto_1
    return v3

    .line 329
    :cond_6
    const-string v4, "not uicc response , hand it to parent to handle"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/CsimFileHandler;->logd(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private parseSizeInfoForTransparent([B)I
    .locals 6
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    .line 232
    const/16 v3, 0x62

    const/4 v4, 0x0

    aget-byte v4, p1, v4

    if-ne v3, v4, :cond_5

    .line 233
    array-length v3, p1

    const/4 v4, 0x6

    if-ge v3, v4, :cond_0

    .line 234
    const-string v3, "error response data for uicc"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/CsimFileHandler;->loge(Ljava/lang/String;)V

    .line 235
    new-instance v3, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 237
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data.length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/CsimFileHandler;->logd(Ljava/lang/String;)V

    .line 243
    const/4 v1, 0x2

    .local v1, "index":I
    :goto_0
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_1

    .line 244
    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x80

    if-ne v3, v4, :cond_2

    add-int/lit8 v3, v1, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    if-ne v3, v5, :cond_2

    .line 249
    :cond_1
    array-length v3, p1

    add-int/lit8 v3, v3, -0x2

    if-le v1, v3, :cond_3

    .line 250
    const-string v3, "no 0x80 tag found in response data for uicc"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/CsimFileHandler;->loge(Ljava/lang/String;)V

    .line 251
    new-instance v3, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 243
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 254
    :cond_3
    add-int/lit8 v3, v1, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v2, v3, 0xff

    .line 255
    .local v2, "lengthOfFileSizeBytes":I
    if-eq v2, v5, :cond_4

    .line 256
    const-string v3, "error file size bytes length for uicc response data"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/CsimFileHandler;->loge(Ljava/lang/String;)V

    .line 257
    new-instance v3, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 260
    :cond_4
    add-int/lit8 v3, v1, 0x2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v4, v1, 0x3

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    add-int v0, v3, v4

    .line 266
    .end local v1    # "index":I
    .end local v2    # "lengthOfFileSizeBytes":I
    :goto_1
    return v0

    .line 265
    :cond_5
    const-string v3, "not uicc response , hand it to parent to handle"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/CsimFileHandler;->logd(Ljava/lang/String;)V

    .line 266
    const/4 v0, -0x1

    goto :goto_1
.end method


# virtual methods
.method protected getCommonIccEFPath(I)Ljava/lang/String;
    .locals 2
    .param p1, "efid"    # I

    .prologue
    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCommonIccEFPath : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/CsimFileHandler;->logd(Ljava/lang/String;)V

    .line 339
    sparse-switch p1, :sswitch_data_0

    .line 360
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 347
    :sswitch_0
    const-string v0, "3F007F10"

    goto :goto_0

    .line 351
    :sswitch_1
    const-string v0, "3F00"

    goto :goto_0

    .line 354
    :sswitch_2
    const-string v0, "3F007F105F3A"

    goto :goto_0

    .line 356
    :sswitch_3
    const-string v0, "3F007F105F50"

    goto :goto_0

    .line 339
    nop

    :sswitch_data_0
    .sparse-switch
        0x2f05 -> :sswitch_1
        0x2fe2 -> :sswitch_1
        0x4f20 -> :sswitch_3
        0x4f30 -> :sswitch_2
        0x6f3a -> :sswitch_0
        0x6f3b -> :sswitch_0
        0x6f40 -> :sswitch_0
        0x6f49 -> :sswitch_0
        0x6f4a -> :sswitch_0
        0x6f4b -> :sswitch_0
        0x6f4c -> :sswitch_0
    .end sparse-switch
.end method

.method protected getEFPath(I)Ljava/lang/String;
    .locals 3
    .param p1, "efid"    # I

    .prologue
    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GetEFPath : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/CsimFileHandler;->logd(Ljava/lang/String;)V

    .line 45
    sparse-switch p1, :sswitch_data_0

    .line 60
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/CsimFileHandler;->getCommonIccEFPath(I)Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "path":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 65
    const-string v0, "3F007F105F3A"

    .line 67
    .end local v0    # "path":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 47
    :sswitch_0
    const-string v0, "3F007F25"

    goto :goto_0

    .line 58
    :sswitch_1
    const-string v0, "3F007FFF"

    goto :goto_0

    .line 45
    :sswitch_data_0
    .sparse-switch
        0x6f22 -> :sswitch_1
        0x6f28 -> :sswitch_1
        0x6f32 -> :sswitch_1
        0x6f3b -> :sswitch_1
        0x6f3c -> :sswitch_0
        0x6f40 -> :sswitch_1
        0x6f41 -> :sswitch_1
        0x6f44 -> :sswitch_1
        0x6f4d -> :sswitch_1
        0x6f5a -> :sswitch_1
    .end sparse-switch
.end method

.method protected getEFPath(IZ)Ljava/lang/String;
    .locals 1
    .param p1, "efid"    # I
    .param p2, "is7FFF"    # Z

    .prologue
    .line 72
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/CsimFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhbRecordInfo(Landroid/os/Message;)V
    .locals 5
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 379
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/CsimFileHandler;->adnRecordSize:[I

    aget v0, v0, v2

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 380
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/CsimFileHandler;->adnRecordSize:[I

    const/16 v1, 0x14

    aput v1, v0, v3

    .line 381
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/CsimFileHandler;->adnRecordSize:[I

    iget v1, p0, Lcom/android/internal/telephony/uicc/CsimFileHandler;->mMaxNameLength:I

    aput v1, v0, v4

    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adnRecordSize[0] = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/CsimFileHandler;->adnRecordSize:[I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " adnRecordSize[1] = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/CsimFileHandler;->adnRecordSize:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " adnRecordSize[2] = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/CsimFileHandler;->adnRecordSize:[I

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " adnRecordSize[3] = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/CsimFileHandler;->adnRecordSize:[I

    aget v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/CsimFileHandler;->logd(Ljava/lang/String;)V

    .line 383
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/CsimFileHandler;->adnRecordSize:[I

    iput-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 385
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 389
    :goto_0
    return-void

    .line 387
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getPhbRecordInfo(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 28
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 87
    const/16 v26, 0x0

    .line 98
    .local v26, "response":Landroid/os/Message;
    :try_start_0
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 212
    :pswitch_0
    invoke-super/range {p0 .. p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->handleMessage(Landroid/os/Message;)V

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 100
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/os/AsyncResult;

    .line 101
    .local v21, "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v21

    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, Landroid/os/Message;

    move-object/from16 v26, v0

    .line 102
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 104
    .local v27, "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/telephony/uicc/CsimFileHandler;->processException(Landroid/os/Message;Landroid/os/AsyncResult;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 108
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    move-object/from16 v22, v0

    .line 110
    .local v22, "data":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/CsimFileHandler;->parseSizeInfoForTransparent([B)I

    move-result v9

    .line 112
    .local v9, "size":I
    if-ltz v9, :cond_1

    .line 113
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    .line 114
    .local v5, "fileid":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "response.obj = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v26

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/CsimFileHandler;->loge(Ljava/lang/String;)V

    .line 115
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/uicc/CsimFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v6

    .line 117
    .local v6, "efPath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/CsimFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0xb0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/CsimFileHandler;->mAid:Ljava/lang/String;

    const/4 v13, 0x5

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v13, v5, v14, v1}, Lcom/android/internal/telephony/uicc/CsimFileHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    invoke-interface/range {v3 .. v13}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 215
    .end local v5    # "fileid":I
    .end local v6    # "efPath":Ljava/lang/String;
    .end local v9    # "size":I
    .end local v21    # "ar":Landroid/os/AsyncResult;
    .end local v22    # "data":[B
    .end local v27    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    :catch_0
    move-exception v23

    .line 216
    .local v23, "exc":Ljava/lang/Exception;
    if-eqz v26, :cond_7

    .line 217
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/internal/telephony/uicc/CsimFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 122
    .end local v23    # "exc":Ljava/lang/Exception;
    .restart local v9    # "size":I
    .restart local v21    # "ar":Landroid/os/AsyncResult;
    .restart local v22    # "data":[B
    .restart local v27    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    :cond_1
    :try_start_1
    invoke-super/range {p0 .. p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 126
    .end local v9    # "size":I
    .end local v21    # "ar":Landroid/os/AsyncResult;
    .end local v22    # "data":[B
    .end local v27    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/os/AsyncResult;

    .line 127
    .restart local v21    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    .line 128
    .local v24, "lc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 129
    .restart local v27    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mOnLoaded:Landroid/os/Message;

    move-object/from16 v26, v0

    .line 131
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/telephony/uicc/CsimFileHandler;->processException(Landroid/os/Message;Landroid/os/AsyncResult;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 135
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    move-object/from16 v22, v0

    .line 137
    .restart local v22    # "data":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/CsimFileHandler;->parseRecordsInfoForLinearFixed([BLcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 138
    move-object/from16 v0, v24

    iget-boolean v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mLoadAll:Z

    if-eqz v3, :cond_2

    .line 139
    new-instance v3, Ljava/util/ArrayList;

    move-object/from16 v0, v24

    iget v4, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mCountRecords:I

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v24

    iput-object v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->results:Ljava/util/ArrayList;

    .line 142
    :cond_2
    move-object/from16 v0, v24

    iget v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mMode:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    .line 143
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/telephony/uicc/CsimFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v11, 0xb2

    move-object/from16 v0, v24

    iget v12, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mEfid:I

    move-object/from16 v0, v24

    iget v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mMode:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/CsimFileHandler;->getSmsEFPath(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, v24

    iget v14, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordNum:I

    const/4 v15, 0x4

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordSize:I

    move/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/CsimFileHandler;->mAid:Ljava/lang/String;

    move-object/from16 v19, v0

    const/4 v3, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/uicc/CsimFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v20

    invoke-interface/range {v10 .. v20}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 149
    :cond_3
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/telephony/uicc/CsimFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v11, 0xb2

    move-object/from16 v0, v24

    iget v12, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mEfid:I

    move-object/from16 v0, v24

    iget v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mEfid:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/CsimFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, v24

    iget v14, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordNum:I

    const/4 v15, 0x4

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordSize:I

    move/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/CsimFileHandler;->mAid:Ljava/lang/String;

    move-object/from16 v19, v0

    const/4 v3, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/uicc/CsimFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v20

    invoke-interface/range {v10 .. v20}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 156
    :cond_4
    invoke-super/range {p0 .. p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 161
    .end local v21    # "ar":Landroid/os/AsyncResult;
    .end local v22    # "data":[B
    .end local v24    # "lc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    .end local v27    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/os/AsyncResult;

    .line 162
    .restart local v21    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    .line 163
    .restart local v24    # "lc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 164
    .restart local v27    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mOnLoaded:Landroid/os/Message;

    move-object/from16 v26, v0

    .line 166
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/telephony/uicc/CsimFileHandler;->processException(Landroid/os/Message;Landroid/os/AsyncResult;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 170
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    move-object/from16 v22, v0

    .line 172
    .restart local v22    # "data":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/CsimFileHandler;->parseRecordsInfoForLinearFixed([BLcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 173
    const/4 v3, 0x3

    new-array v0, v3, [I

    move-object/from16 v25, v0

    .line 174
    .local v25, "recordSize":[I
    const/4 v3, 0x0

    move-object/from16 v0, v24

    iget v4, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordSize:I

    aput v4, v25, v3

    .line 175
    const/4 v3, 0x1

    move-object/from16 v0, v24

    iget v4, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mCountRecords:I

    const/4 v7, 0x0

    aget v7, v25, v7

    mul-int/2addr v4, v7

    aput v4, v25, v3

    .line 176
    const/4 v3, 0x2

    move-object/from16 v0, v24

    iget v4, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mCountRecords:I

    aput v4, v25, v3

    .line 178
    move-object/from16 v0, v24

    iget v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordSize:I

    add-int/lit8 v3, v3, -0xe

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/uicc/CsimFileHandler;->mMaxNameLength:I

    .line 179
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/CsimFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 181
    .end local v25    # "recordSize":[I
    :cond_5
    invoke-super/range {p0 .. p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 186
    .end local v21    # "ar":Landroid/os/AsyncResult;
    .end local v22    # "data":[B
    .end local v24    # "lc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    .end local v27    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    :pswitch_4
    const-string v3, "get record size img done"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/CsimFileHandler;->logd(Ljava/lang/String;)V

    .line 187
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/os/AsyncResult;

    .line 188
    .restart local v21    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    .line 189
    .restart local v24    # "lc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 190
    .restart local v27    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mOnLoaded:Landroid/os/Message;

    move-object/from16 v26, v0

    .line 192
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/telephony/uicc/CsimFileHandler;->processException(Landroid/os/Message;Landroid/os/AsyncResult;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 196
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    move-object/from16 v22, v0

    .line 198
    .restart local v22    # "data":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/CsimFileHandler;->parseRecordsInfoForLinearFixed([BLcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 199
    const-string v3, "read EF IMG"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/CsimFileHandler;->logd(Ljava/lang/String;)V

    .line 200
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/telephony/uicc/CsimFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v11, 0xb2

    move-object/from16 v0, v24

    iget v12, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mEfid:I

    move-object/from16 v0, v24

    iget v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mEfid:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/CsimFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, v24

    iget v14, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordNum:I

    const/4 v15, 0x4

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordSize:I

    move/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/CsimFileHandler;->mAid:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v3, 0x9

    const/16 v4, 0x4f20

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v3, v4, v7, v1}, Lcom/android/internal/telephony/uicc/CsimFileHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v20

    invoke-interface/range {v10 .. v20}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 206
    :cond_6
    invoke-super/range {p0 .. p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->handleMessage(Landroid/os/Message;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 219
    .end local v21    # "ar":Landroid/os/AsyncResult;
    .end local v22    # "data":[B
    .end local v24    # "lc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    .end local v27    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    .restart local v23    # "exc":Ljava/lang/Exception;
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uncaught exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/CsimFileHandler;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 98
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 365
    const-string v0, "CsimFH"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 370
    const-string v0, "CsimFH"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    return-void
.end method

.method public setPhbRecordStorageInfo(II)V
    .locals 2
    .param p1, "totalSize"    # I
    .param p2, "usedRecord"    # I

    .prologue
    .line 374
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/CsimFileHandler;->adnRecordSize:[I

    const/4 v1, 0x0

    aput p2, v0, v1

    .line 375
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/CsimFileHandler;->adnRecordSize:[I

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 376
    return-void
.end method
