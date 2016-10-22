.class public Lcom/android/internal/telephony/uicc/AdnRecordLoader;
.super Landroid/os/Handler;
.source "AdnRecordLoader.java"


# static fields
.field static final EVENT_ADN_LOAD_ALL_DONE:I = 0x3

.field static final EVENT_ADN_LOAD_DONE:I = 0x1

.field static final EVENT_EF_LINEAR_RECORD_SIZE_DONE:I = 0x4

.field static final EVENT_EXT_RECORD_LOAD_DONE:I = 0x2

.field static final EVENT_PHB_LOAD_ALL_DONE:I = 0x68

.field static final EVENT_PHB_LOAD_DONE:I = 0x67

.field static final EVENT_PHB_QUERY_STAUTS:I = 0x69

.field static final EVENT_UPDATE_PHB_RECORD_DONE:I = 0x65

.field static final EVENT_UPDATE_RECORD_DONE:I = 0x5

.field static final EVENT_VERIFY_PIN2:I = 0x66

.field static final LOG_TAG:Ljava/lang/String; = "AdnRecordLoader"

.field static final VDBG:Z


# instance fields
.field current_read:I

.field mAdns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field mEf:I

.field mExtensionEF:I

.field private mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

.field mPendingExtLoads:I

.field mPin2:Ljava/lang/String;

.field mRecordNumber:I

.field mResult:Ljava/lang/Object;

.field mUserResponse:Landroid/os/Message;

.field total:I

.field used:I


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V
    .locals 1
    .param p1, "fh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;

    .prologue
    .line 89
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 90
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 91
    return-void
.end method

.method private canUseGsm7Bit(Ljava/lang/String;)Z
    .locals 2
    .param p1, "alphaId"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 524
    invoke-static {p1, v0}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private encodeATUCS(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 531
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 533
    .local v3, "output":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 534
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 535
    .local v0, "hexInt":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    rsub-int/lit8 v4, v4, 0x4

    if-ge v2, v4, :cond_0

    .line 536
    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 537
    :cond_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 540
    .end local v0    # "hexInt":Ljava/lang/String;
    .end local v2    # "j":I
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private getAdnRecordFromPhbEntry(Lcom/android/internal/telephony/PhbEntry;)Lcom/android/internal/telephony/uicc/AdnRecord;
    .locals 8
    .param p1, "entry"    # Lcom/android/internal/telephony/PhbEntry;

    .prologue
    const/4 v4, 0x0

    .line 640
    const-string v5, "AdnRecordLoader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Parse Adn entry :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    iget-object v5, p1, Lcom/android/internal/telephony/PhbEntry;->alphaId:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 644
    .local v1, "ba":[B
    if-nez v1, :cond_0

    .line 645
    const-string v5, "AdnRecordLoader"

    const-string v6, "entry.alphaId is null"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    :goto_0
    return-object v4

    .line 650
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p1, Lcom/android/internal/telephony/PhbEntry;->alphaId:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    const-string v7, "utf-16be"

    invoke-direct {v0, v1, v5, v6, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 660
    .local v0, "alphaId":Ljava/lang/String;
    iget v4, p1, Lcom/android/internal/telephony/PhbEntry;->ton:I

    const/16 v5, 0x91

    if-ne v4, v5, :cond_1

    .line 661
    iget-object v4, p1, Lcom/android/internal/telephony/PhbEntry;->number:Ljava/lang/String;

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->prependPlusToNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 667
    .local v3, "number":Ljava/lang/String;
    :goto_1
    const/16 v4, 0x3f

    const/16 v5, 0x4e

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    .line 669
    const/16 v4, 0x70

    const/16 v5, 0x2c

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    .line 671
    const/16 v4, 0x77

    const/16 v5, 0x3b

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    .line 675
    new-instance v4, Lcom/android/internal/telephony/uicc/AdnRecord;

    iget v5, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mEf:I

    iget v6, p1, Lcom/android/internal/telephony/PhbEntry;->index:I

    invoke-direct {v4, v5, v6, v0, v3}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 651
    .end local v0    # "alphaId":Ljava/lang/String;
    .end local v3    # "number":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 652
    .local v2, "ex":Ljava/io/UnsupportedEncodingException;
    const-string v5, "AdnRecordLoader"

    const-string v6, "implausible UnsupportedEncodingException"

    invoke-static {v5, v6, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 663
    .end local v2    # "ex":Ljava/io/UnsupportedEncodingException;
    .restart local v0    # "alphaId":Ljava/lang/String;
    :cond_1
    iget-object v3, p1, Lcom/android/internal/telephony/PhbEntry;->number:Ljava/lang/String;

    .restart local v3    # "number":Ljava/lang/String;
    goto :goto_1
.end method

.method private getPhbStorageType(I)I
    .locals 1
    .param p1, "ef"    # I

    .prologue
    .line 544
    const/4 v0, -0x1

    .line 545
    .local v0, "type":I
    packed-switch p1, :pswitch_data_0

    .line 558
    :goto_0
    return v0

    .line 547
    :pswitch_0
    const/4 v0, 0x0

    .line 548
    goto :goto_0

    .line 550
    :pswitch_1
    const/4 v0, 0x1

    .line 551
    goto :goto_0

    .line 545
    nop

    :pswitch_data_0
    .packed-switch 0x6f3a
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private readEntryFromModem(I[I)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "readInfo"    # [I

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 617
    array-length v1, p2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 618
    const-string v1, "AdnRecordLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readEntryToModem, invalid paramters:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    :goto_0
    return-void

    .line 629
    :cond_0
    aget v1, p2, v3

    add-int/lit8 v1, v1, 0xa

    add-int/lit8 v0, v1, -0x1

    .line 630
    .local v0, "eIndex":I
    aget v1, p2, v4

    if-le v0, v1, :cond_1

    .line 631
    aget v0, p2, v4

    .line 634
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    iget-object v1, v1, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    aget v2, p2, v3

    const/16 v3, 0x68

    invoke-virtual {p0, v3, p2}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, p1, v2, v0, v3}, Lcom/android/internal/telephony/CommandsInterface;->ReadPhbEntry(IIILandroid/os/Message;)V

    goto :goto_0
.end method

.method private updatePhb(Lcom/android/internal/telephony/uicc/AdnRecord;I)V
    .locals 3
    .param p1, "adn"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .param p2, "type"    # I

    .prologue
    .line 508
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPin2:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 509
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPin2:Ljava/lang/String;

    const/16 v2, 0x66

    invoke-virtual {p0, v2, p1}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPin2(Ljava/lang/String;Landroid/os/Message;)V

    .line 514
    :goto_0
    return-void

    .line 511
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->writeEntryToModem(Lcom/android/internal/telephony/uicc/AdnRecord;I)V

    goto :goto_0
.end method

.method private writeEntryToModem(Lcom/android/internal/telephony/uicc/AdnRecord;I)V
    .locals 8
    .param p1, "adn"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .param p2, "type"    # I

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x2b

    .line 562
    const/16 v3, 0x81

    .line 563
    .local v3, "ton":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v2

    .line 564
    .local v2, "number":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v0

    .line 567
    .local v0, "alphaId":Ljava/lang/String;
    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 568
    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    invoke-virtual {v2, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    if-eq v4, v5, :cond_0

    .line 570
    const-string v4, "AdnRecordLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "There are multiple \'+\' in the number: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    :cond_0
    const/16 v3, 0x91

    .line 574
    const-string v4, "+"

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 577
    :cond_1
    const/16 v4, 0x4e

    const/16 v5, 0x3f

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 579
    const/16 v4, 0x2c

    const/16 v5, 0x70

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 581
    const/16 v4, 0x3b

    const/16 v5, 0x77

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 590
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->encodeATUCS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 592
    new-instance v1, Lcom/android/internal/telephony/PhbEntry;

    invoke-direct {v1}, Lcom/android/internal/telephony/PhbEntry;-><init>()V

    .line 593
    .local v1, "entry":Lcom/android/internal/telephony/PhbEntry;
    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x81

    if-eq v3, v4, :cond_3

    .line 595
    :cond_2
    iput p2, v1, Lcom/android/internal/telephony/PhbEntry;->type:I

    .line 596
    iget v4, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mRecordNumber:I

    iput v4, v1, Lcom/android/internal/telephony/PhbEntry;->index:I

    .line 597
    iput-object v2, v1, Lcom/android/internal/telephony/PhbEntry;->number:Ljava/lang/String;

    .line 598
    iput v3, v1, Lcom/android/internal/telephony/PhbEntry;->ton:I

    .line 599
    iput-object v0, v1, Lcom/android/internal/telephony/PhbEntry;->alphaId:Ljava/lang/String;

    .line 610
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    iget-object v4, v4, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0x65

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v1, v5}, Lcom/android/internal/telephony/CommandsInterface;->writePhbEntry(Lcom/android/internal/telephony/PhbEntry;Landroid/os/Message;)V

    .line 613
    return-void

    .line 601
    :cond_3
    iput p2, v1, Lcom/android/internal/telephony/PhbEntry;->type:I

    .line 602
    iget v4, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mRecordNumber:I

    iput v4, v1, Lcom/android/internal/telephony/PhbEntry;->index:I

    .line 603
    iput-object v7, v1, Lcom/android/internal/telephony/PhbEntry;->number:Ljava/lang/String;

    .line 604
    iput v3, v1, Lcom/android/internal/telephony/PhbEntry;->ton:I

    .line 605
    iput-object v7, v1, Lcom/android/internal/telephony/PhbEntry;->alphaId:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 23
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 209
    :try_start_0
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    sparse-switch v3, :sswitch_data_0

    .line 497
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mUserResponse:Landroid/os/Message;

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPendingExtLoads:I

    if-nez v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mUserResponse:Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 498
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mUserResponse:Landroid/os/Message;

    invoke-static {v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mResult:Ljava/lang/Object;

    iput-object v4, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 500
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mUserResponse:Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 501
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mUserResponse:Landroid/os/Message;

    .line 503
    :cond_1
    :goto_1
    return-void

    .line 211
    :sswitch_0
    :try_start_1
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    move-object v0, v3

    check-cast v0, Landroid/os/AsyncResult;

    move-object v10, v0

    .line 212
    .local v10, "ar":Landroid/os/AsyncResult;
    iget-object v3, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object v0, v3

    check-cast v0, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object v9, v0

    .line 213
    .local v9, "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPendingExtLoads:I

    .line 215
    iget-object v3, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_2

    .line 216
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "get EF record size failed"

    iget-object v5, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v3, v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 480
    .end local v9    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v10    # "ar":Landroid/os/AsyncResult;
    :catch_0
    move-exception v14

    .line 481
    .local v14, "exc":Ljava/lang/RuntimeException;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mUserResponse:Landroid/os/Message;

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mUserResponse:Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 482
    const-string v3, "AdnRecordLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMessage RuntimeException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v14}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    invoke-virtual {v14}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-nez v3, :cond_1a

    .line 484
    const-string v3, "AdnRecordLoader"

    const-string v4, "handleMessage Null RuntimeException"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mUserResponse:Landroid/os/Message;

    invoke-static {v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v3

    new-instance v4, Lcom/android/internal/telephony/CommandException;

    sget-object v5, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    iput-object v4, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 489
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mUserResponse:Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 492
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mUserResponse:Landroid/os/Message;

    goto :goto_1

    .line 220
    .end local v14    # "exc":Ljava/lang/RuntimeException;
    .restart local v9    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    :cond_2
    :try_start_2
    iget-object v3, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object v0, v3

    check-cast v0, [I

    move-object/from16 v19, v0

    .line 226
    .local v19, "recordSize":[I
    move-object/from16 v0, v19

    array-length v3, v0

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mRecordNumber:I

    const/4 v4, 0x2

    aget v4, v19, v4

    if-le v3, v4, :cond_4

    .line 227
    :cond_3
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "get wrong EF record size format"

    iget-object v5, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v3, v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 231
    :cond_4
    const/4 v13, 0x1

    .line 232
    .local v13, "errorNum":I
    const-string v3, "AdnRecordLoader"

    const-string v4, "in EVENT_EF_LINEAR_RECORD_SIZE_DONE,call adn.buildAdnString"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const/4 v3, 0x0

    aget v3, v19, v3

    invoke-virtual {v9, v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->buildAdnString(I)[B

    move-result-object v6

    .line 235
    .local v6, "data":[B
    if-nez v6, :cond_8

    .line 236
    const-string v3, "AdnRecordLoader"

    const-string v4, "data is null"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-virtual {v9}, Lcom/android/internal/telephony/uicc/AdnRecord;->getErrorNumber()I

    move-result v13

    .line 238
    const/4 v3, -0x1

    if-ne v13, v3, :cond_5

    .line 239
    const-string v3, "AdnRecordLoader"

    const-string v4, "data is null and DIAL_STRING_TOO_LONG"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "NUMBER_STRING_TOO_LONG"

    const/16 v5, 0x3e9

    invoke-static {v5}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 243
    :cond_5
    const/4 v3, -0x2

    if-ne v13, v3, :cond_6

    .line 244
    const-string v3, "AdnRecordLoader"

    const-string v4, "data is null and TEXT_STRING_TOO_LONG"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "TEXT_STRING_TOO_LONG"

    const/16 v5, 0x3ea

    invoke-static {v5}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 248
    :cond_6
    const/16 v3, -0xf

    if-ne v13, v3, :cond_7

    .line 249
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "wrong ADN format"

    iget-object v5, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v3, v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 253
    :cond_7
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPendingExtLoads:I

    .line 254
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mResult:Ljava/lang/Object;

    goto/16 :goto_0

    .line 258
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mEf:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mRecordNumber:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPin2:Ljava/lang/String;

    const/4 v8, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 263
    .end local v6    # "data":[B
    .end local v9    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v10    # "ar":Landroid/os/AsyncResult;
    .end local v13    # "errorNum":I
    .end local v19    # "recordSize":[I
    :sswitch_1
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    move-object v0, v3

    check-cast v0, Landroid/os/AsyncResult;

    move-object v10, v0

    .line 264
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    const/16 v16, 0x0

    .line 265
    .local v16, "iccException":Lcom/android/internal/telephony/uicc/IccException;
    iget-object v0, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 266
    .local v20, "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    iget-object v3, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_9

    .line 267
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "update EF adn record failed"

    iget-object v5, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v3, v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 270
    :cond_9
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/uicc/IccIoResult;->getException()Lcom/android/internal/telephony/uicc/IccException;

    move-result-object v16

    .line 271
    if-eqz v16, :cond_a

    .line 272
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "update EF adn record failed for sw"

    move-object/from16 v0, v16

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 276
    :cond_a
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPendingExtLoads:I

    .line 277
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mResult:Ljava/lang/Object;

    goto/16 :goto_0

    .line 280
    .end local v10    # "ar":Landroid/os/AsyncResult;
    .end local v16    # "iccException":Lcom/android/internal/telephony/uicc/IccException;
    .end local v20    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    :sswitch_2
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    move-object v0, v3

    check-cast v0, Landroid/os/AsyncResult;

    move-object v10, v0

    .line 281
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    iget-object v3, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    move-object v0, v3

    check-cast v0, [B

    move-object v6, v0

    .line 283
    .restart local v6    # "data":[B
    iget-object v3, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_b

    .line 284
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "load failed"

    iget-object v5, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v3, v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 294
    :cond_b
    new-instance v9, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mEf:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mRecordNumber:I

    invoke-direct {v9, v3, v4, v6}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(II[B)V

    .line 295
    .restart local v9    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mResult:Ljava/lang/Object;

    .line 297
    invoke-virtual {v9}, Lcom/android/internal/telephony/uicc/AdnRecord;->hasExtendedRecord()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 302
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPendingExtLoads:I

    .line 304
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mExtensionEF:I

    iget v5, v9, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    const/4 v7, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v9}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v3, v4, v5, v7}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    goto/16 :goto_0

    .line 311
    .end local v6    # "data":[B
    .end local v9    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v10    # "ar":Landroid/os/AsyncResult;
    :sswitch_3
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    move-object v0, v3

    check-cast v0, Landroid/os/AsyncResult;

    move-object v10, v0

    .line 312
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    iget-object v3, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    move-object v0, v3

    check-cast v0, [B

    move-object v6, v0

    .line 313
    .restart local v6    # "data":[B
    iget-object v3, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object v0, v3

    check-cast v0, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object v9, v0

    .line 315
    .restart local v9    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    iget-object v3, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_c

    .line 316
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "load failed"

    iget-object v5, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v3, v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 319
    :cond_c
    const-string v3, "AdnRecordLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ADN extension EF: 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mExtensionEF:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v9, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v6}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    invoke-virtual {v9, v6}, Lcom/android/internal/telephony/uicc/AdnRecord;->appendExtRecord([B)V

    .line 326
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPendingExtLoads:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPendingExtLoads:I

    goto/16 :goto_0

    .line 332
    .end local v6    # "data":[B
    .end local v9    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v10    # "ar":Landroid/os/AsyncResult;
    :sswitch_4
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    move-object v0, v3

    check-cast v0, Landroid/os/AsyncResult;

    move-object v10, v0

    .line 333
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    iget-object v3, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    move-object v0, v3

    check-cast v0, Ljava/util/ArrayList;

    move-object v11, v0

    .line 335
    .local v11, "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    iget-object v3, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_d

    .line 336
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "load failed"

    iget-object v5, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v3, v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 339
    :cond_d
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mAdns:Ljava/util/ArrayList;

    .line 340
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mAdns:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mResult:Ljava/lang/Object;

    .line 341
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPendingExtLoads:I

    .line 343
    const/4 v15, 0x0

    .local v15, "i":I
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v21

    .local v21, "s":I
    :goto_3
    move/from16 v0, v21

    if-ge v15, v0, :cond_0

    .line 344
    new-instance v9, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mEf:I

    add-int/lit8 v5, v15, 0x1

    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-direct {v9, v4, v5, v3}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(II[B)V

    .line 345
    .restart local v9    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mAdns:Ljava/util/ArrayList;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    invoke-virtual {v9}, Lcom/android/internal/telephony/uicc/AdnRecord;->hasExtendedRecord()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 352
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPendingExtLoads:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPendingExtLoads:I

    .line 354
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mExtensionEF:I

    iget v5, v9, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    const/4 v7, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v9}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v3, v4, v5, v7}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 343
    :cond_e
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 362
    .end local v9    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v10    # "ar":Landroid/os/AsyncResult;
    .end local v11    # "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v15    # "i":I
    .end local v21    # "s":I
    :sswitch_5
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    move-object v0, v3

    check-cast v0, Landroid/os/AsyncResult;

    move-object v10, v0

    .line 363
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    iget-object v3, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_f

    .line 364
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "update PHB EF record failed"

    iget-object v5, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v3, v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 367
    :cond_f
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPendingExtLoads:I

    .line 368
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mResult:Ljava/lang/Object;

    goto/16 :goto_0

    .line 372
    .end local v10    # "ar":Landroid/os/AsyncResult;
    :sswitch_6
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    move-object v0, v3

    check-cast v0, Landroid/os/AsyncResult;

    move-object v10, v0

    .line 373
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    iget-object v3, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object v0, v3

    check-cast v0, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object v9, v0

    .line 375
    .restart local v9    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    iget-object v3, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_10

    .line 376
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "PHB Verify PIN2 error"

    iget-object v5, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v3, v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 380
    :cond_10
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mEf:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->getPhbStorageType(I)I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v3}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->writeEntryToModem(Lcom/android/internal/telephony/uicc/AdnRecord;I)V

    .line 381
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPendingExtLoads:I

    goto/16 :goto_0

    .line 385
    .end local v9    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v10    # "ar":Landroid/os/AsyncResult;
    :sswitch_7
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    move-object v0, v3

    check-cast v0, Landroid/os/AsyncResult;

    move-object v10, v0

    .line 386
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    iget-object v3, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [Lcom/android/internal/telephony/PhbEntry;

    move-object v0, v3

    check-cast v0, [Lcom/android/internal/telephony/PhbEntry;

    move-object v12, v0

    .line 388
    .local v12, "entries":[Lcom/android/internal/telephony/PhbEntry;
    iget-object v3, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_11

    .line 389
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "PHB Read an entry Error"

    iget-object v5, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v3, v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 393
    :cond_11
    const/4 v3, 0x0

    aget-object v3, v12, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->getAdnRecordFromPhbEntry(Lcom/android/internal/telephony/PhbEntry;)Lcom/android/internal/telephony/uicc/AdnRecord;

    move-result-object v9

    .line 394
    .restart local v9    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mResult:Ljava/lang/Object;

    .line 395
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPendingExtLoads:I

    goto/16 :goto_0

    .line 406
    .end local v9    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v10    # "ar":Landroid/os/AsyncResult;
    .end local v12    # "entries":[Lcom/android/internal/telephony/PhbEntry;
    :sswitch_8
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    move-object v0, v3

    check-cast v0, Landroid/os/AsyncResult;

    move-object v10, v0

    .line 407
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    iget-object v3, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object v0, v3

    check-cast v0, [I

    move-object/from16 v17, v0

    .line 409
    .local v17, "info":[I
    iget-object v3, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_12

    .line 410
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "PHB Query Info Error"

    iget-object v5, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v3, v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 414
    :cond_12
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mEf:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->getPhbStorageType(I)I

    move-result v22

    .line 415
    .local v22, "type":I
    const/4 v3, 0x3

    new-array v0, v3, [I

    move-object/from16 v18, v0

    .line 416
    .local v18, "readInfo":[I
    const/4 v3, 0x0

    const/4 v4, 0x1

    aput v4, v18, v3

    .line 417
    const/4 v3, 0x1

    const/4 v4, 0x0

    aget v4, v17, v4

    aput v4, v18, v3

    .line 418
    const/4 v3, 0x2

    const/4 v4, 0x1

    aget v4, v17, v4

    aput v4, v18, v3

    .line 420
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x2

    aget v4, v18, v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mAdns:Ljava/util/ArrayList;

    .line 421
    const/4 v15, 0x0

    .restart local v15    # "i":I
    :goto_4
    const/4 v3, 0x2

    aget v3, v18, v3

    if-ge v15, v3, :cond_13

    .line 423
    new-instance v9, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mEf:I

    add-int/lit8 v4, v15, 0x1

    const-string v5, ""

    const-string v7, ""

    invoke-direct {v9, v3, v4, v5, v7}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 424
    .restart local v9    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mAdns:Ljava/util/ArrayList;

    invoke-virtual {v3, v15, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 421
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 427
    .end local v9    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_13
    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->readEntryFromModem(I[I)V

    .line 428
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPendingExtLoads:I

    goto/16 :goto_0

    .line 432
    .end local v10    # "ar":Landroid/os/AsyncResult;
    .end local v15    # "i":I
    .end local v17    # "info":[I
    .end local v18    # "readInfo":[I
    .end local v22    # "type":I
    :sswitch_9
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    move-object v0, v3

    check-cast v0, Landroid/os/AsyncResult;

    move-object v10, v0

    .line 433
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    iget-object v3, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, [I

    move-object v0, v3

    check-cast v0, [I

    move-object/from16 v18, v0

    .line 434
    .restart local v18    # "readInfo":[I
    iget-object v3, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [Lcom/android/internal/telephony/PhbEntry;

    move-object v0, v3

    check-cast v0, [Lcom/android/internal/telephony/PhbEntry;

    move-object v12, v0

    .line 436
    .restart local v12    # "entries":[Lcom/android/internal/telephony/PhbEntry;
    iget-object v3, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_14

    .line 437
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "PHB Read Entries Error"

    iget-object v5, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v3, v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 441
    :cond_14
    const/4 v15, 0x0

    .restart local v15    # "i":I
    :goto_5
    array-length v3, v12

    if-ge v15, v3, :cond_16

    .line 442
    aget-object v3, v12, v15

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->getAdnRecordFromPhbEntry(Lcom/android/internal/telephony/PhbEntry;)Lcom/android/internal/telephony/uicc/AdnRecord;

    move-result-object v9

    .line 443
    .restart local v9    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    if-eqz v9, :cond_15

    .line 444
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mAdns:Ljava/util/ArrayList;

    iget v4, v9, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 445
    const/4 v3, 0x1

    aget v4, v18, v3

    add-int/lit8 v4, v4, -0x1

    aput v4, v18, v3

    .line 446
    const-string v3, "AdnRecordLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Read entries: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 449
    :cond_15
    const-string v3, "AdnRecordLoader"

    const-string v4, "getAdnRecordFromPhbEntry return null"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "getAdnRecordFromPhbEntry return null"

    const/4 v5, 0x2

    invoke-static {v5}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 456
    .end local v9    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_16
    const/4 v3, 0x0

    aget v4, v18, v3

    add-int/lit8 v4, v4, 0xa

    aput v4, v18, v3

    .line 458
    const/4 v3, 0x1

    aget v3, v18, v3

    if-gez v3, :cond_17

    .line 459
    const-string v3, "AdnRecordLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "the read entries is not sync with query status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    aget v5, v18, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "the read entries is not sync with query status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    aget v5, v18, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v5}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 467
    :cond_17
    const/4 v3, 0x1

    aget v3, v18, v3

    if-eqz v3, :cond_18

    const/4 v3, 0x0

    aget v3, v18, v3

    const/4 v4, 0x2

    aget v4, v18, v4

    if-lt v3, v4, :cond_19

    .line 469
    :cond_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mAdns:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mResult:Ljava/lang/Object;

    .line 470
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPendingExtLoads:I

    goto/16 :goto_0

    .line 472
    :cond_19
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mEf:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->getPhbStorageType(I)I

    move-result v22

    .line 473
    .restart local v22    # "type":I
    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->readEntryFromModem(I[I)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 487
    .end local v10    # "ar":Landroid/os/AsyncResult;
    .end local v12    # "entries":[Lcom/android/internal/telephony/PhbEntry;
    .end local v15    # "i":I
    .end local v18    # "readInfo":[I
    .end local v22    # "type":I
    .restart local v14    # "exc":Ljava/lang/RuntimeException;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mUserResponse:Landroid/os/Message;

    invoke-static {v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v3

    invoke-virtual {v14}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    iput-object v4, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    goto/16 :goto_2

    .line 209
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x4 -> :sswitch_0
        0x5 -> :sswitch_1
        0x65 -> :sswitch_5
        0x66 -> :sswitch_6
        0x67 -> :sswitch_7
        0x68 -> :sswitch_9
        0x69 -> :sswitch_8
    .end sparse-switch
.end method

.method public loadAllFromEF(IILandroid/os/Message;)V
    .locals 4
    .param p1, "ef"    # I
    .param p2, "extensionEF"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x3

    .line 134
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mEf:I

    .line 135
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mExtensionEF:I

    .line 136
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mUserResponse:Landroid/os/Message;

    .line 138
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    instance-of v1, v1, Lcom/android/internal/telephony/uicc/CsimFileHandler;

    if-eqz v1, :cond_1

    const/16 v1, 0x4f3a

    if-eq p1, v1, :cond_0

    const/16 v1, 0x4f3b

    if-eq p1, v1, :cond_0

    const/16 v1, 0x4f3c

    if-eq p1, v1, :cond_0

    const/16 v1, 0x4f3d

    if-ne p1, v1, :cond_1

    .line 140
    :cond_0
    const-string v1, "AdnRecordLoader"

    const-string v2, "Csim :loadEFLinearFixedAll"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 158
    :goto_0
    return-void

    .line 145
    :cond_1
    const-string v1, "AdnRecordLoader"

    const-string v2, "Usim :loadEFLinearFixedAll"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const-string v1, "AdnRecordLoader"

    const-string v2, "Usim :loadEFLinearFixedAll"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->getPhbStorageType(I)I

    move-result v0

    .line 148
    .local v0, "type":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 149
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    iget-object v1, v1, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x69

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->queryPhbStorageInfo(ILandroid/os/Message;)V

    goto :goto_0

    .line 153
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    goto :goto_0
.end method

.method public loadFromEF(IIILandroid/os/Message;)V
    .locals 4
    .param p1, "ef"    # I
    .param p2, "extensionEF"    # I
    .param p3, "recordNumber"    # I
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    .line 100
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mEf:I

    .line 101
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mExtensionEF:I

    .line 102
    iput p3, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mRecordNumber:I

    .line 103
    iput-object p4, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mUserResponse:Landroid/os/Message;

    .line 105
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    instance-of v1, v1, Lcom/android/internal/telephony/uicc/CsimFileHandler;

    if-eqz v1, :cond_1

    const/16 v1, 0x4f3a

    if-eq p1, v1, :cond_0

    const/16 v1, 0x4f3b

    if-eq p1, v1, :cond_0

    const/16 v1, 0x4f3c

    if-eq p1, v1, :cond_0

    const/16 v1, 0x4f3d

    if-ne p1, v1, :cond_1

    .line 107
    :cond_0
    const-string v1, "AdnRecordLoader"

    const-string v2, "Csim :loadFromEF"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, p1, p3, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 124
    :goto_0
    return-void

    .line 113
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->getPhbStorageType(I)I

    move-result v0

    .line 114
    .local v0, "type":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 115
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    iget-object v1, v1, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x67

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v0, p3, p3, v2}, Lcom/android/internal/telephony/CommandsInterface;->ReadPhbEntry(IIILandroid/os/Message;)V

    goto :goto_0

    .line 119
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, p1, p3, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    goto :goto_0
.end method

.method public updateEF(Lcom/android/internal/telephony/uicc/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "adn"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .param p2, "ef"    # I
    .param p3, "extensionEF"    # I
    .param p4, "recordNumber"    # I
    .param p5, "pin2"    # Ljava/lang/String;
    .param p6, "response"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x4

    .line 175
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mEf:I

    .line 176
    iput p3, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mExtensionEF:I

    .line 177
    iput p4, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mRecordNumber:I

    .line 178
    iput-object p6, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mUserResponse:Landroid/os/Message;

    .line 179
    iput-object p5, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPin2:Ljava/lang/String;

    .line 181
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    instance-of v1, v1, Lcom/android/internal/telephony/uicc/CsimFileHandler;

    if-eqz v1, :cond_1

    const/16 v1, 0x4f3a

    if-eq p2, v1, :cond_0

    const/16 v1, 0x4f3b

    if-eq p2, v1, :cond_0

    const/16 v1, 0x4f3c

    if-eq p2, v1, :cond_0

    const/16 v1, 0x4f3d

    if-ne p2, v1, :cond_1

    .line 183
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-virtual {p0, v2, p1}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 194
    :goto_0
    return-void

    .line 186
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->getPhbStorageType(I)I

    move-result v0

    .line 187
    .local v0, "type":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 188
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->updatePhb(Lcom/android/internal/telephony/uicc/AdnRecord;I)V

    goto :goto_0

    .line 190
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-virtual {p0, v2, p1}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    goto :goto_0
.end method
