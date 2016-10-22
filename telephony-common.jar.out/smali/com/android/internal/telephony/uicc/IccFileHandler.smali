.class public abstract Lcom/android/internal/telephony/uicc/IccFileHandler;
.super Landroid/os/Handler;
.source "IccFileHandler.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    }
.end annotation


# static fields
.field protected static final COMMAND_GET_RESPONSE:I = 0xc0

.field protected static final COMMAND_READ_BINARY:I = 0xb0

.field protected static final COMMAND_READ_RECORD:I = 0xb2

.field protected static final COMMAND_SEEK:I = 0xa2

.field protected static final COMMAND_UPDATE_BINARY:I = 0xd6

.field protected static final COMMAND_UPDATE_RECORD:I = 0xdc

.field protected static final EF_TYPE_CYCLIC:I = 0x3

.field protected static final EF_TYPE_LINEAR_FIXED:I = 0x1

.field protected static final EF_TYPE_TRANSPARENT:I = 0x0

.field protected static final EVENT_GET_BINARY_SIZE_DONE:I = 0x4

.field protected static final EVENT_GET_EF_LINEAR_RECORD_SIZE_DONE:I = 0x8

.field protected static final EVENT_GET_RECORD_SIZE_DONE:I = 0x6

.field protected static final EVENT_GET_RECORD_SIZE_IMG_DONE:I = 0xb

.field protected static final EVENT_READ_BINARY_DONE:I = 0x5

.field protected static final EVENT_READ_ICON_DONE:I = 0xa

.field protected static final EVENT_READ_IMG_DONE:I = 0x9

.field protected static final EVENT_READ_RECORD_DONE:I = 0x7

.field protected static final EVENT_SELECT_EF_FILE:I = 0x64

.field protected static final GET_RESPONSE_EF_IMG_SIZE_BYTES:I = 0xa

.field protected static final GET_RESPONSE_EF_SIZE_BYTES:I = 0xf

.field protected static final READ_RECORD_MODE_ABSOLUTE:I = 0x4

.field protected static final RESPONSE_DATA_ACCESS_CONDITION_1:I = 0x8

.field protected static final RESPONSE_DATA_ACCESS_CONDITION_2:I = 0x9

.field protected static final RESPONSE_DATA_ACCESS_CONDITION_3:I = 0xa

.field protected static final RESPONSE_DATA_FILE_ID_1:I = 0x4

.field protected static final RESPONSE_DATA_FILE_ID_2:I = 0x5

.field protected static final RESPONSE_DATA_FILE_SIZE_1:I = 0x2

.field protected static final RESPONSE_DATA_FILE_SIZE_2:I = 0x3

.field protected static final RESPONSE_DATA_FILE_STATUS:I = 0xb

.field protected static final RESPONSE_DATA_FILE_TYPE:I = 0x6

.field protected static final RESPONSE_DATA_LENGTH:I = 0xc

.field protected static final RESPONSE_DATA_RECORD_LENGTH:I = 0xe

.field protected static final RESPONSE_DATA_RFU_1:I = 0x0

.field protected static final RESPONSE_DATA_RFU_2:I = 0x1

.field protected static final RESPONSE_DATA_RFU_3:I = 0x7

.field protected static final RESPONSE_DATA_STRUCTURE:I = 0xd

.field protected static final TYPE_DF:I = 0x2

.field protected static final TYPE_EF:I = 0x4

.field protected static final TYPE_MF:I = 0x1

.field protected static final TYPE_RFU:I


# instance fields
.field protected final mAid:Ljava/lang/String;

.field protected final mCi:Lcom/android/internal/telephony/CommandsInterface;

.field protected final mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;


# direct methods
.method protected constructor <init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 0
    .param p1, "app"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .param p2, "aid"    # Ljava/lang/String;
    .param p3, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 168
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 169
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 170
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    .line 171
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 172
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .prologue
    .line 175
    return-void
.end method

.method protected getCommonIccEFPath(I)Ljava/lang/String;
    .locals 1
    .param p1, "efid"    # I

    .prologue
    .line 610
    sparse-switch p1, :sswitch_data_0

    .line 630
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 619
    :sswitch_0
    const-string v0, "3F007F10"

    goto :goto_0

    .line 623
    :sswitch_1
    const-string v0, "3F00"

    goto :goto_0

    .line 626
    :sswitch_2
    const-string v0, "3F007F105F3A"

    goto :goto_0

    .line 628
    :sswitch_3
    const-string v0, "3F007F105F50"

    goto :goto_0

    .line 610
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
        0x6fe5 -> :sswitch_0
    .end sparse-switch
.end method

.method public getEFLinearRecordSize(ILandroid/os/Message;)V
    .locals 11
    .param p1, "fileid"    # I
    .param p2, "onLoaded"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 243
    const/16 v0, 0x8

    new-instance v1, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    invoke-direct {v1, p1, p2}, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;-><init>(ILandroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 246
    .local v10, "response":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0xf

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    move v2, p1

    move v5, v4

    move-object v8, v7

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 248
    return-void
.end method

.method protected abstract getEFPath(I)Ljava/lang/String;
.end method

.method protected getEFPath(IZ)Ljava/lang/String;
    .locals 1
    .param p1, "efid"    # I
    .param p2, "is7FFF"    # Z

    .prologue
    .line 747
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPhbRecordInfo(Landroid/os/Message;)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/CommandsInterface;->queryPhbStorageInfo(ILandroid/os/Message;)V

    .line 361
    return-void
.end method

.method protected getSmsEFPath(I)Ljava/lang/String;
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 658
    const-string v0, ""

    .line 660
    .local v0, "efpath":Ljava/lang/String;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 661
    const-string v0, "3F007F10"

    .line 665
    :cond_0
    :goto_0
    return-object v0

    .line 662
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 663
    const-string v0, "3F007F25"

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 35
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 398
    const/16 v33, 0x0

    .line 406
    .local v33, "response":Landroid/os/Message;
    const/16 v27, 0x0

    .line 409
    .local v27, "channel":I
    :try_start_0
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    :goto_0
    move/from16 v13, v27

    .line 597
    .end local v27    # "channel":I
    .local v13, "channel":I
    :goto_1
    return-void

    .line 411
    .end local v13    # "channel":I
    .restart local v27    # "channel":I
    :sswitch_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Landroid/os/AsyncResult;

    .line 412
    .local v26, "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    .line 413
    .local v31, "lc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 414
    .local v34, "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mOnLoaded:Landroid/os/Message;

    move-object/from16 v33, v0

    .line 416
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->processException(Landroid/os/Message;Landroid/os/AsyncResult;)Z

    move-result v3

    if-eqz v3, :cond_0

    move/from16 v13, v27

    .line 417
    .end local v27    # "channel":I
    .restart local v13    # "channel":I
    goto :goto_1

    .line 420
    .end local v13    # "channel":I
    .restart local v27    # "channel":I
    :cond_0
    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    move-object/from16 v28, v0

    .line 422
    .local v28, "data":[B
    const/4 v3, 0x4

    const/4 v4, 0x6

    aget-byte v4, v28, v4

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    const/16 v4, 0xd

    aget-byte v4, v28, v4

    if-eq v3, v4, :cond_2

    .line 424
    :cond_1
    new-instance v3, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 589
    .end local v26    # "ar":Landroid/os/AsyncResult;
    .end local v28    # "data":[B
    .end local v31    # "lc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    .end local v34    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    :catch_0
    move-exception v30

    move/from16 v13, v27

    .line 590
    .end local v27    # "channel":I
    .restart local v13    # "channel":I
    .local v30, "exc":Ljava/lang/Exception;
    :goto_2
    if-eqz v33, :cond_12

    .line 591
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "caught exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loge(Ljava/lang/String;)V

    .line 592
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 427
    .end local v13    # "channel":I
    .end local v30    # "exc":Ljava/lang/Exception;
    .restart local v26    # "ar":Landroid/os/AsyncResult;
    .restart local v27    # "channel":I
    .restart local v28    # "data":[B
    .restart local v31    # "lc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    .restart local v34    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    :cond_2
    const/4 v3, 0x3

    :try_start_1
    new-array v0, v3, [I

    move-object/from16 v32, v0

    .line 428
    .local v32, "recordSize":[I
    const/4 v3, 0x0

    const/16 v4, 0xe

    aget-byte v4, v28, v4

    and-int/lit16 v4, v4, 0xff

    aput v4, v32, v3

    .line 429
    const/4 v3, 0x1

    const/4 v4, 0x2

    aget-byte v4, v28, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    const/4 v6, 0x3

    aget-byte v6, v28, v6

    and-int/lit16 v6, v6, 0xff

    add-int/2addr v4, v6

    aput v4, v32, v3

    .line 431
    const/4 v3, 0x2

    const/4 v4, 0x1

    aget v4, v32, v4

    const/4 v6, 0x0

    aget v6, v32, v6

    div-int/2addr v4, v6

    aput v4, v32, v3

    .line 433
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move/from16 v13, v27

    .line 434
    .end local v27    # "channel":I
    .restart local v13    # "channel":I
    goto/16 :goto_1

    .line 438
    .end local v13    # "channel":I
    .end local v26    # "ar":Landroid/os/AsyncResult;
    .end local v28    # "data":[B
    .end local v31    # "lc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    .end local v32    # "recordSize":[I
    .end local v34    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    .restart local v27    # "channel":I
    :sswitch_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Landroid/os/AsyncResult;

    .line 439
    .restart local v26    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    .line 440
    .restart local v31    # "lc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 441
    .restart local v34    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mOnLoaded:Landroid/os/Message;

    move-object/from16 v33, v0

    .line 443
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->processException(Landroid/os/Message;Landroid/os/AsyncResult;)Z

    move-result v3

    if-eqz v3, :cond_3

    move/from16 v13, v27

    .line 444
    .end local v27    # "channel":I
    .restart local v13    # "channel":I
    goto/16 :goto_1

    .line 447
    .end local v13    # "channel":I
    .restart local v27    # "channel":I
    :cond_3
    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    move-object/from16 v28, v0

    .line 449
    .restart local v28    # "data":[B
    const/4 v3, 0x4

    const/4 v4, 0x6

    aget-byte v4, v28, v4

    if-eq v3, v4, :cond_4

    .line 450
    new-instance v3, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 453
    :cond_4
    const/4 v3, 0x1

    const/16 v4, 0xd

    aget-byte v4, v28, v4

    if-eq v3, v4, :cond_5

    .line 454
    new-instance v3, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 457
    :cond_5
    const/16 v3, 0xe

    aget-byte v3, v28, v3

    and-int/lit16 v3, v3, 0xff

    move-object/from16 v0, v31

    iput v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordSize:I

    .line 459
    const/4 v3, 0x2

    aget-byte v3, v28, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    const/4 v4, 0x3

    aget-byte v4, v28, v4

    and-int/lit16 v4, v4, 0xff

    add-int v9, v3, v4

    .line 462
    .local v9, "size":I
    move-object/from16 v0, v31

    iget v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordSize:I

    div-int v3, v9, v3

    move-object/from16 v0, v31

    iput v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mCountRecords:I

    .line 464
    move-object/from16 v0, v31

    iget-boolean v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mLoadAll:Z

    if-eqz v3, :cond_6

    .line 465
    new-instance v3, Ljava/util/ArrayList;

    move-object/from16 v0, v31

    iget v4, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mCountRecords:I

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v31

    iput-object v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->results:Ljava/util/ArrayList;

    .line 468
    :cond_6
    move-object/from16 v0, v31

    iget v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mMode:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_7

    .line 469
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0xb2

    move-object/from16 v0, v31

    iget v5, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mEfid:I

    move-object/from16 v0, v31

    iget v6, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mMode:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getSmsEFPath(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v31

    iget v7, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordNum:I

    const/4 v8, 0x4

    move-object/from16 v0, v31

    iget v9, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordSize:I

    .end local v9    # "size":I
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    move-object/from16 v0, v31

    iget v13, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mChannel:I

    const/4 v14, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v14, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    invoke-interface/range {v3 .. v14}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForAppEx(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    move/from16 v13, v27

    .end local v27    # "channel":I
    .restart local v13    # "channel":I
    goto/16 :goto_1

    .line 475
    .end local v13    # "channel":I
    .restart local v9    # "size":I
    .restart local v27    # "channel":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0xb2

    move-object/from16 v0, v31

    iget v5, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mEfid:I

    move-object/from16 v0, v31

    iget v6, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mEfid:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v31

    iget v7, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordNum:I

    const/4 v8, 0x4

    move-object/from16 v0, v31

    iget v9, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordSize:I

    .end local v9    # "size":I
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    move-object/from16 v0, v31

    iget v13, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mChannel:I

    const/4 v14, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v14, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    invoke-interface/range {v3 .. v14}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForAppEx(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    move/from16 v13, v27

    .line 481
    .end local v27    # "channel":I
    .restart local v13    # "channel":I
    goto/16 :goto_1

    .line 483
    .end local v13    # "channel":I
    .end local v26    # "ar":Landroid/os/AsyncResult;
    .end local v28    # "data":[B
    .end local v31    # "lc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    .end local v34    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    .restart local v27    # "channel":I
    :sswitch_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Landroid/os/AsyncResult;

    .line 484
    .restart local v26    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v26

    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, Landroid/os/Message;

    move-object/from16 v33, v0

    .line 485
    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 487
    .restart local v34    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->processException(Landroid/os/Message;Landroid/os/AsyncResult;)Z

    move-result v3

    if-eqz v3, :cond_8

    move/from16 v13, v27

    .line 488
    .end local v27    # "channel":I
    .restart local v13    # "channel":I
    goto/16 :goto_1

    .line 491
    .end local v13    # "channel":I
    .restart local v27    # "channel":I
    :cond_8
    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    move-object/from16 v28, v0

    .line 493
    .restart local v28    # "data":[B
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    .line 494
    .local v5, "fileid":I
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg2:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 496
    .end local v27    # "channel":I
    .restart local v13    # "channel":I
    const/4 v3, 0x4

    const/4 v4, 0x6

    :try_start_2
    aget-byte v4, v28, v4

    if-eq v3, v4, :cond_9

    .line 497
    new-instance v3, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 589
    :catch_1
    move-exception v30

    goto/16 :goto_2

    .line 500
    :cond_9
    const/16 v3, 0xd

    aget-byte v3, v28, v3

    if-eqz v3, :cond_a

    .line 501
    new-instance v3, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 504
    :cond_a
    const/4 v3, 0x2

    aget-byte v3, v28, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    const/4 v4, 0x3

    aget-byte v4, v28, v4

    and-int/lit16 v4, v4, 0xff

    add-int v9, v3, v4

    .line 507
    .restart local v9    # "size":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0xb0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    const/4 v14, 0x5

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v14, v5, v15, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    invoke-interface/range {v3 .. v14}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForAppEx(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 516
    .end local v5    # "fileid":I
    .end local v9    # "size":I
    .end local v13    # "channel":I
    .end local v26    # "ar":Landroid/os/AsyncResult;
    .end local v28    # "data":[B
    .end local v34    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    .restart local v27    # "channel":I
    :sswitch_3
    :try_start_3
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Landroid/os/AsyncResult;

    .line 517
    .restart local v26    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    .line 518
    .restart local v31    # "lc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 519
    .restart local v34    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mOnLoaded:Landroid/os/Message;

    move-object/from16 v33, v0

    .line 521
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->processException(Landroid/os/Message;Landroid/os/AsyncResult;)Z

    move-result v3

    if-eqz v3, :cond_b

    move/from16 v13, v27

    .line 522
    .end local v27    # "channel":I
    .restart local v13    # "channel":I
    goto/16 :goto_1

    .line 525
    .end local v13    # "channel":I
    .restart local v27    # "channel":I
    :cond_b
    move-object/from16 v0, v31

    iget-boolean v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mLoadAll:Z

    if-nez v3, :cond_c

    .line 526
    move-object/from16 v0, v34

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move/from16 v13, v27

    .end local v27    # "channel":I
    .restart local v13    # "channel":I
    goto/16 :goto_1

    .line 528
    .end local v13    # "channel":I
    .restart local v27    # "channel":I
    :cond_c
    move-object/from16 v0, v31

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->results:Ljava/util/ArrayList;

    move-object/from16 v0, v34

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 530
    move-object/from16 v0, v31

    iget v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordNum:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v31

    iput v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordNum:I

    .line 532
    move-object/from16 v0, v31

    iget v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordNum:I

    move-object/from16 v0, v31

    iget v4, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mCountRecords:I

    if-le v3, v4, :cond_d

    .line 533
    move-object/from16 v0, v31

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->results:Ljava/util/ArrayList;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move/from16 v13, v27

    .end local v27    # "channel":I
    .restart local v13    # "channel":I
    goto/16 :goto_1

    .line 535
    .end local v13    # "channel":I
    .restart local v27    # "channel":I
    :cond_d
    move-object/from16 v0, v31

    iget v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mMode:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_e

    .line 536
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v15, 0xb2

    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mEfid:I

    move/from16 v16, v0

    move-object/from16 v0, v31

    iget v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mMode:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getSmsEFPath(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordNum:I

    move/from16 v18, v0

    const/16 v19, 0x4

    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordSize:I

    move/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mChannel:I

    move/from16 v24, v0

    const/4 v3, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v25

    invoke-interface/range {v14 .. v25}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForAppEx(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    move/from16 v13, v27

    .end local v27    # "channel":I
    .restart local v13    # "channel":I
    goto/16 :goto_1

    .line 543
    .end local v13    # "channel":I
    .restart local v27    # "channel":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v15, 0xb2

    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mEfid:I

    move/from16 v16, v0

    move-object/from16 v0, v31

    iget v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mEfid:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordNum:I

    move/from16 v18, v0

    const/16 v19, 0x4

    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordSize:I

    move/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mChannel:I

    move/from16 v24, v0

    const/4 v3, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v25

    invoke-interface/range {v14 .. v25}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForAppEx(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    move/from16 v13, v27

    .line 552
    .end local v27    # "channel":I
    .restart local v13    # "channel":I
    goto/16 :goto_1

    .line 556
    .end local v13    # "channel":I
    .end local v26    # "ar":Landroid/os/AsyncResult;
    .end local v31    # "lc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    .end local v34    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    .restart local v27    # "channel":I
    :sswitch_4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Landroid/os/AsyncResult;

    .line 557
    .restart local v26    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v26

    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, Landroid/os/Message;

    move-object/from16 v33, v0

    .line 558
    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 560
    .restart local v34    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->processException(Landroid/os/Message;Landroid/os/AsyncResult;)Z

    move-result v3

    if-eqz v3, :cond_f

    move/from16 v13, v27

    .line 561
    .end local v27    # "channel":I
    .restart local v13    # "channel":I
    goto/16 :goto_1

    .line 564
    .end local v13    # "channel":I
    .restart local v27    # "channel":I
    :cond_f
    move-object/from16 v0, v34

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move/from16 v13, v27

    .line 565
    .end local v27    # "channel":I
    .restart local v13    # "channel":I
    goto/16 :goto_1

    .line 569
    .end local v13    # "channel":I
    .end local v26    # "ar":Landroid/os/AsyncResult;
    .end local v34    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    .restart local v27    # "channel":I
    :sswitch_5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Landroid/os/AsyncResult;

    .line 570
    .restart local v26    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v26

    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, Landroid/os/Message;

    move-object/from16 v33, v0

    .line 571
    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 573
    .restart local v34    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->processException(Landroid/os/Message;Landroid/os/AsyncResult;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 574
    const-string v3, "EVENT_SELECT_EF_FILE exception"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loge(Ljava/lang/String;)V

    move/from16 v13, v27

    .line 575
    .end local v27    # "channel":I
    .restart local v13    # "channel":I
    goto/16 :goto_1

    .line 578
    .end local v13    # "channel":I
    .restart local v27    # "channel":I
    :cond_10
    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    move-object/from16 v28, v0

    .line 580
    .restart local v28    # "data":[B
    const/4 v3, 0x4

    const/4 v4, 0x6

    aget-byte v4, v28, v4

    if-eq v3, v4, :cond_11

    .line 581
    new-instance v3, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 584
    :cond_11
    new-instance v29, Lcom/android/internal/telephony/EFResponseData;

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/EFResponseData;-><init>([B)V

    .line 585
    .local v29, "efData":Lcom/android/internal/telephony/EFResponseData;
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 594
    .end local v26    # "ar":Landroid/os/AsyncResult;
    .end local v27    # "channel":I
    .end local v28    # "data":[B
    .end local v29    # "efData":Lcom/android/internal/telephony/EFResponseData;
    .end local v34    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    .restart local v13    # "channel":I
    .restart local v30    # "exc":Ljava/lang/Exception;
    :cond_12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uncaught exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 409
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0x5 -> :sswitch_4
        0x6 -> :sswitch_1
        0x7 -> :sswitch_3
        0x8 -> :sswitch_0
        0x9 -> :sswitch_3
        0xa -> :sswitch_4
        0xb -> :sswitch_1
        0x64 -> :sswitch_5
    .end sparse-switch
.end method

.method public loadEFImgLinearFixed(ILandroid/os/Message;)V
    .locals 11
    .param p1, "recordNum"    # I
    .param p2, "onLoaded"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    const/16 v2, 0x4f20

    .line 223
    const/16 v0, 0xb

    new-instance v1, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    invoke-direct {v1, v2, p1, p2}, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;-><init>(IILandroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 227
    .local v10, "response":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc0

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/16 v6, 0xf

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    move v4, p1

    move-object v8, v7

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 231
    return-void
.end method

.method public loadEFImgTransparent(IIIILandroid/os/Message;)V
    .locals 12
    .param p1, "fileid"    # I
    .param p2, "highOffset"    # I
    .param p3, "lowOffset"    # I
    .param p4, "length"    # I
    .param p5, "onLoaded"    # Landroid/os/Message;

    .prologue
    .line 311
    const/16 v1, 0xa

    const/4 v2, 0x0

    move-object/from16 v0, p5

    invoke-virtual {p0, v1, p1, v2, v0}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 314
    .local v11, "response":Landroid/os/Message;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IccFileHandler: loadEFImgTransparent fileid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " filePath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x4f20

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " highOffset = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " lowOffset = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->logd(Ljava/lang/String;)V

    .line 324
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0xb0

    const/16 v3, 0x4f20

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    move v3, p1

    move v5, p2

    move v6, p3

    move/from16 v7, p4

    invoke-interface/range {v1 .. v11}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 326
    return-void
.end method

.method public loadEFLinearFixed(IILandroid/os/Message;)V
    .locals 11
    .param p1, "fileid"    # I
    .param p2, "recordNum"    # I
    .param p3, "onLoaded"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 190
    const/4 v0, 0x6

    new-instance v1, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;-><init>(IILandroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 194
    .local v10, "response":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0xf

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    move v2, p1

    move v5, v4

    move-object v8, v7

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 196
    return-void
.end method

.method public loadEFLinearFixedAll(IILandroid/os/Message;)V
    .locals 12
    .param p1, "fileid"    # I
    .param p2, "mode"    # I
    .param p3, "onLoaded"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 648
    new-instance v11, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    invoke-direct {v11, p1, p3}, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;-><init>(ILandroid/os/Message;)V

    .line 649
    .local v11, "lc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    iput p2, v11, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mMode:I

    .line 650
    const/4 v0, 0x6

    invoke-virtual {p0, v0, v11}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 652
    .local v10, "response":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc0

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getSmsEFPath(I)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0xf

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    move v2, p1

    move v5, v4

    move-object v8, v7

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 654
    return-void
.end method

.method public loadEFLinearFixedAll(ILandroid/os/Message;)V
    .locals 1
    .param p1, "fileid"    # I
    .param p2, "onLoaded"    # Landroid/os/Message;

    .prologue
    .line 260
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;Z)V

    .line 261
    return-void
.end method

.method public loadEFLinearFixedAll(ILandroid/os/Message;Z)V
    .locals 11
    .param p1, "fileid"    # I
    .param p2, "onLoaded"    # Landroid/os/Message;
    .param p3, "is7FFF"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 640
    const/4 v0, 0x6

    new-instance v1, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    invoke-direct {v1, p1, p2}, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;-><init>(ILandroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 643
    .local v10, "response":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc0

    invoke-virtual {p0, p1, p3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(IZ)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0xf

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    move v2, p1

    move v5, v4

    move-object v8, v7

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 645
    return-void
.end method

.method public loadEFLinearFixedAllEx(IILandroid/os/Message;)V
    .locals 12
    .param p1, "fileid"    # I
    .param p2, "channel"    # I
    .param p3, "onLoaded"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 732
    const/4 v0, 0x6

    new-instance v1, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    invoke-direct {v1, p1, p3, p2}, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;-><init>(ILandroid/os/Message;I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 735
    .local v11, "response":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc0

    invoke-virtual {p0, p1, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(IZ)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0xf

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    move v2, p1

    move v5, v4

    move-object v8, v7

    move v10, p2

    invoke-interface/range {v0 .. v11}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForAppEx(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    .line 737
    return-void
.end method

.method public loadEFLinearFixedEx(IIILandroid/os/Message;)V
    .locals 16
    .param p1, "fileid"    # I
    .param p2, "recordNum"    # I
    .param p3, "channel"    # I
    .param p4, "onLoaded"    # Landroid/os/Message;

    .prologue
    .line 724
    const/4 v4, 0x6

    new-instance v5, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    move/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p4

    move/from16 v3, p3

    invoke-direct {v5, v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;-><init>(IILandroid/os/Message;I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    .line 728
    .local v15, "response":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0xc0

    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xf

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    move/from16 v6, p1

    move/from16 v14, p3

    invoke-interface/range {v4 .. v15}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForAppEx(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    .line 730
    return-void
.end method

.method public loadEFTransparent(IILandroid/os/Message;)V
    .locals 11
    .param p1, "fileid"    # I
    .param p2, "size"    # I
    .param p3, "onLoaded"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 292
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1, v4, p3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 295
    .local v10, "response":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xb0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    move v2, p1

    move v5, v4

    move v6, p2

    move-object v8, v7

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 297
    return-void
.end method

.method public loadEFTransparent(ILandroid/os/Message;)V
    .locals 11
    .param p1, "fileid"    # I
    .param p2, "onLoaded"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 274
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, v4, p2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 277
    .local v10, "response":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0xf

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    move v2, p1

    move v5, v4

    move-object v8, v7

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 279
    return-void
.end method

.method public loadEFTransparent(ILjava/lang/String;Landroid/os/Message;)V
    .locals 11
    .param p1, "fileid"    # I
    .param p2, "efPath"    # Ljava/lang/String;
    .param p3, "onLoaded"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 681
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, v4, p3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 684
    .local v10, "response":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc0

    const/16 v6, 0xf

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    move v2, p1

    move-object v3, p2

    move v5, v4

    move-object v8, v7

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 686
    return-void
.end method

.method public loadEFTransparentEx(IILandroid/os/Message;)V
    .locals 12
    .param p1, "fileid"    # I
    .param p2, "channel"    # I
    .param p3, "onLoaded"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 716
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 719
    .local v11, "response":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0xf

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    move v2, p1

    move v5, v4

    move-object v8, v7

    move v10, p2

    invoke-interface/range {v0 .. v11}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForAppEx(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    .line 721
    return-void
.end method

.method protected abstract logd(Ljava/lang/String;)V
.end method

.method protected abstract loge(Ljava/lang/String;)V
.end method

.method protected processException(Landroid/os/Message;Landroid/os/AsyncResult;)Z
    .locals 5
    .param p1, "response"    # Landroid/os/Message;
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v4, 0x0

    .line 377
    const/4 v0, 0x0

    .line 378
    .local v0, "flag":Z
    iget-object v2, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 379
    .local v2, "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    iget-object v3, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_1

    .line 380
    iget-object v3, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p0, p1, v4, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 381
    const/4 v0, 0x1

    .line 389
    :cond_0
    :goto_0
    return v0

    .line 383
    :cond_1
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IccIoResult;->getException()Lcom/android/internal/telephony/uicc/IccException;

    move-result-object v1

    .line 384
    .local v1, "iccException":Lcom/android/internal/telephony/uicc/IccException;
    if-eqz v1, :cond_0

    .line 385
    invoke-virtual {p0, p1, v4, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 386
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public readEFLinearFixed(IIILandroid/os/Message;)V
    .locals 11
    .param p1, "fileid"    # I
    .param p2, "recordNum"    # I
    .param p3, "recordSize"    # I
    .param p4, "onLoaded"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    .line 209
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xb2

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    move v2, p1

    move v4, p2

    move v6, p3

    move-object v8, v7

    move-object v10, p4

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 211
    return-void
.end method

.method public selectEFFile(ILandroid/os/Message;)V
    .locals 11
    .param p1, "fileid"    # I
    .param p2, "onLoaded"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 697
    const/16 v0, 0x64

    invoke-virtual {p0, v0, p1, v4, p2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 700
    .local v10, "response":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0xf

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    move v2, p1

    move v5, v4

    move-object v8, v7

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 702
    return-void
.end method

.method protected sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;
    .param p2, "result"    # Ljava/lang/Object;
    .param p3, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 366
    if-nez p1, :cond_0

    .line 373
    :goto_0
    return-void

    .line 370
    :cond_0
    invoke-static {p1, p2, p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 372
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V
    .locals 11
    .param p1, "fileid"    # I
    .param p2, "recordNum"    # I
    .param p3, "data"    # [B
    .param p4, "pin2"    # Ljava/lang/String;
    .param p5, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xdc

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    array-length v6, p3

    invoke-static {p3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    move v2, p1

    move v4, p2

    move-object v8, p4

    move-object/from16 v10, p5

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 342
    return-void
.end method

.method public updateEFTransparent(I[BLandroid/os/Message;)V
    .locals 11
    .param p1, "fileid"    # I
    .param p2, "data"    # [B
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 350
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xd6

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    array-length v6, p2

    invoke-static {p2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    move v2, p1

    move v5, v4

    move-object v10, p3

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 353
    return-void
.end method

.method public updateEFTransparentEx(II[BLandroid/os/Message;)V
    .locals 12
    .param p1, "fileid"    # I
    .param p2, "channel"    # I
    .param p3, "data"    # [B
    .param p4, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 740
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xd6

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    array-length v6, p3

    invoke-static {p3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    move v2, p1

    move v10, p2

    move-object/from16 v11, p4

    invoke-interface/range {v0 .. v11}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForAppEx(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    .line 743
    return-void
.end method
