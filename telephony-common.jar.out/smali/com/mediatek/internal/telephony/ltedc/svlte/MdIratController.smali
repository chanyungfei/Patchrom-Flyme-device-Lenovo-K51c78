.class public Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;
.super Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;
.source "MdIratController.java"


# static fields
.field public static final ACTION_IRAT_FAILED:Ljava/lang/String; = "com.mediatek.irat.action.failed"

.field public static final ACTION_IRAT_FINISHED:Ljava/lang/String; = "com.mediatek.irat.action.finished"

.field public static final ACTION_IRAT_STARTED:Ljava/lang/String; = "com.mediatek.irat.action.started"

.field public static final ACTION_IRAT_SUCCEEDED:Ljava/lang/String; = "com.mediatek.irat.action.succeeded"

.field private static final EVENT_CDMA_INTER_3GPP_IRAT:I = 0x65

.field protected static final EVENT_CDMA_RADIO_NOT_AVAILABLE:I = 0x68

.field private static final EVENT_LTE_INTER_3GPP_IRAT:I = 0x64

.field protected static final EVENT_LTE_RADIO_NOT_AVAILABLE:I = 0x67

.field protected static final EVENT_SYNC_DATA_CALL_LIST_DONE:I = 0x66

.field public static final IRAT_ACTION_SOURCE_FINISHED:I = 0x2

.field public static final IRAT_ACTION_SOURCE_STARTED:I = 0x1

.field public static final IRAT_ACTION_TARGET_FINISHED:I = 0x4

.field public static final IRAT_ACTION_TARGET_STARTED:I = 0x3

.field private static final IRAT_CONFIRM_ACCEPTED:I = 0x1

.field private static final IRAT_CONFIRM_DENIED:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "IRATCtrl"

.field private static final RAT_FOR_INTER_3GPP_IRAT_1xRTT:I = 0x1

.field private static final RAT_FOR_INTER_3GPP_IRAT_EHRPD:I = 0x3

.field private static final RAT_FOR_INTER_3GPP_IRAT_HRPD:I = 0x2

.field private static final RAT_FOR_INTER_3GPP_IRAT_LTE:I = 0x4

.field private static final RAT_FOR_INTER_3GPP_IRAT_NOT_SPECIFIED:I = 0x0

.field private static final RAT_GROUP_3GPP:I = 0x1

.field private static final RAT_GROUP_3GPP2:I = 0x2

.field public static final SOURCE_RAT:Ljava/lang/String; = "extra_source_rat"

.field public static final TARGET_RAT:Ljava/lang/String; = "extra_target_rat"


# instance fields
.field protected mTempIratInfo:Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo;


# direct methods
.method public constructor <init>(Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;)V
    .locals 1
    .param p1, "svltePhoneProxy"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;-><init>(Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;)V

    .line 58
    new-instance v0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->mTempIratInfo:Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo;

    .line 66
    return-void
.end method

.method private static getRadioGroupByRat(I)I
    .locals 1
    .param p0, "radioTech"    # I

    .prologue
    .line 386
    const/4 v0, 0x4

    if-lt p0, v0, :cond_0

    const/16 v0, 0x8

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0xc

    if-lt p0, v0, :cond_2

    const/16 v0, 0xd

    if-gt p0, v0, :cond_2

    .line 390
    :cond_1
    const/4 v0, 0x2

    .line 392
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private mappingRatToRadioTech(I)I
    .locals 2
    .param p1, "rat"    # I

    .prologue
    const/4 v0, 0x4

    .line 367
    if-ne p1, v0, :cond_1

    .line 368
    const/16 v0, 0xe

    .line 376
    :cond_0
    :goto_0
    return v0

    .line 369
    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    .line 370
    const/16 v0, 0xd

    goto :goto_0

    .line 371
    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    .line 372
    const/16 v0, 0x8

    goto :goto_0

    .line 373
    :cond_3
    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    .line 376
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized notifyIratEvent(ILcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo;)V
    .locals 5
    .param p1, "eventType"    # I
    .param p2, "info"    # Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo;

    .prologue
    .line 96
    monitor-enter p0

    :try_start_0
    new-instance v2, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo;

    invoke-direct {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo;-><init>()V

    .line 98
    .local v2, "mdInfo":Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo;
    iget v3, p2, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo;->sourceRat:I

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->mappingRatToRadioTech(I)I

    move-result v3

    iput v3, v2, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo;->sourceRat:I

    .line 99
    iget v3, p2, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo;->targetRat:I

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->mappingRatToRadioTech(I)I

    move-result v3

    iput v3, v2, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo;->targetRat:I

    .line 100
    iget v3, p2, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo;->action:I

    iput v3, v2, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo;->action:I

    .line 101
    iget-object v3, p2, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo;->type:Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo$IratType;

    iput-object v3, v2, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo;->type:Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo$IratType;

    .line 103
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->mIratEventListener:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/internal/telephony/ltedc/svlte/IratController$OnIratEventListener;

    .line 104
    .local v1, "listener":Lcom/mediatek/internal/telephony/ltedc/svlte/IratController$OnIratEventListener;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyIratEvent: listener = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->log(Ljava/lang/String;)V

    .line 105
    const/4 v3, 0x1

    if-ne p1, v3, :cond_1

    .line 106
    invoke-interface {v1, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratController$OnIratEventListener;->onIratStarted(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 96
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/mediatek/internal/telephony/ltedc/svlte/IratController$OnIratEventListener;
    .end local v2    # "mdInfo":Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 107
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "listener":Lcom/mediatek/internal/telephony/ltedc/svlte/IratController$OnIratEventListener;
    .restart local v2    # "mdInfo":Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo;
    :cond_1
    const/4 v3, 0x4

    if-ne p1, v3, :cond_0

    .line 108
    :try_start_1
    invoke-interface {v1, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratController$OnIratEventListener;->onIratEnded(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 111
    .end local v1    # "listener":Lcom/mediatek/internal/telephony/ltedc/svlte/IratController$OnIratEventListener;
    :cond_2
    monitor-exit p0

    return-void
.end method

.method private notifyIratFinished(Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo;)V
    .locals 3
    .param p1, "info"    # Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo;

    .prologue
    .line 355
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.irat.action.finished"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 356
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "extra_source_rat"

    iget v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->mPrevRat:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 357
    const-string v1, "extra_target_rat"

    iget v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->mCurrentRat:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 358
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 359
    return-void
.end method

.method private notifyIratStarted(Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo;)V
    .locals 3
    .param p1, "info"    # Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo;

    .prologue
    .line 348
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.irat.action.started"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 349
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "extra_source_rat"

    iget v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->mCurrentRat:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 350
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 351
    return-void
.end method

.method private onIratFinished(Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo;)V
    .locals 4
    .param p1, "info"    # Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo;

    .prologue
    const/16 v3, 0x66

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onIratFinished: mPrevRat = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->mPrevRat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCurrentRat = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->mCurrentRat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", info ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->log(Ljava/lang/String;)V

    .line 290
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->mIsDuringIrat:Z

    .line 292
    iget v0, p1, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo;->sourceRat:I

    iget v1, p1, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo;->targetRat:I

    if-eq v0, v1, :cond_2

    .line 295
    iget v0, p1, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo;->sourceRat:I

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->mappingRatToRadioTech(I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->mPrevRat:I

    .line 296
    iget v0, p1, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo;->targetRat:I

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->mappingRatToRadioTech(I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->mCurrentRat:I

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onIratFinished: mCurrentRat = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->mCurrentRat:I

    invoke-static {v1}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPrevRat = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->mPrevRat:I

    invoke-static {v1}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->log(Ljava/lang/String;)V

    .line 302
    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->mPrevRat:I

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->getRadioGroupByRat(I)I

    move-result v0

    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->mCurrentRat:I

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->getRadioGroupByRat(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 303
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->mSvltePhoneProxy:Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->mPrevRat:I

    iget v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->mCurrentRat:I

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->updatePsPhone(II)V

    .line 304
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->mSvltePhoneProxy:Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getPsPhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->mPsCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 307
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->mSvltePhoneProxy:Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getIratDataSwitchHelper()Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->syncAndNotifyAttachState()V

    .line 311
    :cond_0
    iget-object v0, p1, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo;->type:Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo$IratType;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo$IratType;->isIpContinuousCase()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onIratFinished: mPsCi = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->mPsCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->log(Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->mPsCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getDataCallList(Landroid/os/Message;)V

    .line 321
    :goto_0
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->notifyIratFinished(Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo;)V

    .line 322
    return-void

    .line 315
    :cond_1
    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 318
    :cond_2
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->resumeDataRequests()V

    goto :goto_0
.end method

.method private onIratStarted(Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo;)V
    .locals 4
    .param p1, "info"    # Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onIratStarted: info = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCurrentRat = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->mCurrentRat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->log(Ljava/lang/String;)V

    .line 269
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->mIsDuringIrat:Z

    .line 270
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->mTempIratInfo:Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo;

    iget v1, p1, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo;->sourceRat:I

    iput v1, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo;->sourceRat:I

    .line 271
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->mTempIratInfo:Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo;

    iget v1, p1, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo;->targetRat:I

    iput v1, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo;->targetRat:I

    .line 272
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->mTempIratInfo:Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo;

    iget v1, p1, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo;->action:I

    iput v1, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo;->action:I

    .line 273
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->mTempIratInfo:Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo;

    iget-object v1, p1, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo;->type:Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo$IratType;

    iput-object v1, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo;->type:Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo$IratType;

    .line 275
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->suspendDataRequests()V

    .line 278
    iget v0, p1, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo;->sourceRat:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 279
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->mLteCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->confirmIratChange(ILandroid/os/Message;)V

    .line 284
    :goto_0
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->notifyIratStarted(Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo;)V

    .line 285
    return-void

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->mCdmaCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->confirmIratChange(ILandroid/os/Message;)V

    goto :goto_0
.end method

.method private onSyncDataCallListDone(Landroid/os/AsyncResult;)V
    .locals 2
    .param p1, "dcList"    # Landroid/os/AsyncResult;

    .prologue
    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSyncDataCallListDone: dcList = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->log(Ljava/lang/String;)V

    .line 326
    if-eqz p1, :cond_0

    .line 327
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->mPsCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->syncNotifyDataCallList(Landroid/os/AsyncResult;)V

    .line 329
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->resumeDataRequests()V

    .line 330
    return-void
.end method

.method private resumeDataRequests()V
    .locals 1

    .prologue
    .line 340
    const-string v0, "resumeDataRequests..."

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->log(Ljava/lang/String;)V

    .line 342
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DctController;->resumeNetworkRequest()V

    .line 343
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->mSvltePhoneProxy:Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getRilDcArbitrator()Lcom/mediatek/internal/telephony/ltedc/IRilDcArbitrator;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/internal/telephony/ltedc/IRilDcArbitrator;->resumeDataRilRequest()V

    .line 344
    return-void
.end method

.method private suspendDataRequests()V
    .locals 1

    .prologue
    .line 333
    const-string v0, "suspendDataRequests..."

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->log(Ljava/lang/String;)V

    .line 335
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DctController;->suspendNetworkRequest()V

    .line 336
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->mSvltePhoneProxy:Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getRilDcArbitrator()Lcom/mediatek/internal/telephony/ltedc/IRilDcArbitrator;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/internal/telephony/ltedc/IRilDcArbitrator;->suspendDataRilRequest()V

    .line 337
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 72
    const-string v0, "dispose"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->log(Ljava/lang/String;)V

    .line 73
    invoke-super {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;->dispose()V

    .line 74
    return-void
.end method

.method public isDrsInService()Z
    .locals 2

    .prologue
    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isDrsInService: mLteRegState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->mLteRegState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCdmaRegState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->mCdmaRegState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->log(Ljava/lang/String;)V

    .line 117
    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->mLteRegState:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->mCdmaRegState:I

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 416
    const-string v0, "IRATCtrl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->mSvltePhoneProxy:Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 421
    const-string v0, "IRATCtrl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->mSvltePhoneProxy:Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    return-void
.end method

.method protected onCdmaDataRegStateOrRatChange(II)V
    .locals 4
    .param p1, "drs"    # I
    .param p2, "rat"    # I

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->getLteRegState()I

    move-result v0

    .line 221
    .local v0, "lteState":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCdmaDataRegStateOrRatChange, drs="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", rat="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", lteState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->log(Ljava/lang/String;)V

    .line 225
    if-nez p2, :cond_0

    .line 228
    const/4 p1, 0x1

    .line 229
    iput p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->mCdmaRegState:I

    .line 232
    :cond_0
    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->mIsDuringIrat:Z

    if-eqz v2, :cond_2

    .line 233
    const-string v2, "Skip the unwanted CdmaDataRegStateOrRatChange, mIsDuringIrat is true"

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->log(Ljava/lang/String;)V

    .line 260
    :cond_1
    :goto_0
    return-void

    .line 237
    :cond_2
    const/4 v1, 0x1

    .line 238
    .local v1, "skip":Z
    if-nez p1, :cond_3

    .line 240
    const-string v2, "onCdmaDataRegStateOrRatChange C1, attached"

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->log(Ljava/lang/String;)V

    .line 241
    const/4 v1, 0x0

    .line 257
    :goto_1
    if-nez v1, :cond_1

    .line 258
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->updateCurrentRat(I)V

    goto :goto_0

    .line 243
    :cond_3
    if-nez p2, :cond_5

    .line 244
    iget v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->mCurrentRat:I

    const/16 v3, 0xe

    if-eq v2, v3, :cond_4

    iget v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->mCurrentRat:I

    if-eqz v2, :cond_4

    .line 246
    const-string v2, "onCdmaDataRegStateOrRatChange C2, detached"

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->log(Ljava/lang/String;)V

    .line 248
    const/4 v1, 0x0

    goto :goto_1

    .line 250
    :cond_4
    const-string v2, "onCdmaDataRegStateOrRatChange C3, skip"

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 253
    :cond_5
    const-string v2, "onCdmaDataRegStateOrRatChange C4, skip"

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onLteDataRegStateOrRatChange(II)V
    .locals 4
    .param p1, "drs"    # I
    .param p2, "rat"    # I

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->getCdmaRegState()I

    move-result v0

    .line 178
    .local v0, "c2kState":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLteDataRegStateOrRatChange, drs="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", rat="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", c2kState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->log(Ljava/lang/String;)V

    .line 182
    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->mIsDuringIrat:Z

    if-eqz v2, :cond_1

    .line 183
    const-string v2, "Skip the unwanted LteDataRegStateOrRatChange, mIsDuringIrat is true"

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->log(Ljava/lang/String;)V

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    const/4 v1, 0x1

    .line 188
    .local v1, "skip":Z
    if-nez p1, :cond_2

    .line 190
    const-string v2, "onLteDataRegStateOrRatChange C1, attached"

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->log(Ljava/lang/String;)V

    .line 191
    const/4 v1, 0x0

    .line 207
    :goto_1
    if-nez v1, :cond_0

    .line 208
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->updateCurrentRat(I)V

    goto :goto_0

    .line 193
    :cond_2
    if-nez p2, :cond_4

    .line 195
    iget v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->mCurrentRat:I

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->getRadioGroupByRat(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 197
    const-string v2, "onLteDataRegStateOrRatChange C2, detached"

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->log(Ljava/lang/String;)V

    .line 198
    const/4 v1, 0x0

    goto :goto_1

    .line 200
    :cond_3
    const-string v2, "onLteDataRegStateOrRatChange C3, skip"

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 203
    :cond_4
    const-string v2, "onLteDataRegStateOrRatChange C4, skip"

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onSimMissing()V
    .locals 0

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->resetStatus()V

    .line 265
    return-void
.end method

.method protected processMessage(Landroid/os/Message;)Z
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 123
    const/4 v2, 0x0

    .line 124
    .local v2, "ret":Z
    const/4 v0, 0x0

    .line 125
    .local v0, "ar":Landroid/os/AsyncResult;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processMessage, msg.what = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->log(Ljava/lang/String;)V

    .line 126
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 167
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    invoke-super {p0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;->processMessage(Landroid/os/Message;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_1
    move v3, v5

    :goto_1
    return v3

    .line 129
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0    # "ar":Landroid/os/AsyncResult;
    check-cast v0, Landroid/os/AsyncResult;

    .line 130
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo;

    .line 131
    .local v1, "info":Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processMessage, EVENT_INTER_3GPP_IRAT["

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "] status = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->log(Ljava/lang/String;)V

    .line 134
    iget v3, v1, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo;->action:I

    if-ne v3, v5, :cond_3

    .line 135
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->mSstProxy:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;

    invoke-virtual {v3, v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;->setEnabled(Z)V

    .line 136
    iget v3, v1, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo;->action:I

    invoke-direct {p0, v3, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->notifyIratEvent(ILcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo;)V

    .line 137
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->onIratStarted(Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo;)V

    .line 143
    :cond_2
    :goto_2
    const/4 v2, 0x1

    .line 144
    goto :goto_0

    .line 138
    :cond_3
    iget v3, v1, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo;->action:I

    if-ne v3, v7, :cond_2

    .line 139
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->mSstProxy:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;

    invoke-virtual {v3, v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;->setEnabled(Z)V

    .line 140
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->onIratFinished(Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo;)V

    .line 141
    iget v3, v1, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo;->action:I

    invoke-direct {p0, v3, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->notifyIratEvent(ILcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo;)V

    goto :goto_2

    .line 147
    .end local v1    # "info":Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo;
    :pswitch_1
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->onSyncDataCallListDone(Landroid/os/AsyncResult;)V

    .line 148
    const/4 v2, 0x1

    .line 149
    goto :goto_0

    .line 154
    :pswitch_2
    iget-boolean v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->mIsDuringIrat:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->mTempIratInfo:Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo;

    iget v3, v3, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo;->targetRat:I

    iget-object v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->mTempIratInfo:Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo;

    iget v6, v6, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo;->sourceRat:I

    if-eq v3, v6, :cond_0

    .line 155
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->mTempIratInfo:Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->mTempIratInfo:Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo;

    iget v6, v6, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo;->sourceRat:I

    iput v6, v3, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo;->targetRat:I

    .line 156
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->mTempIratInfo:Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo;

    iput v7, v3, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo;->action:I

    .line 157
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->mTempIratInfo:Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo;

    sget-object v6, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo$IratType;->IRAT_TYPE_FAILED:Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo$IratType;

    iput-object v6, v3, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo;->type:Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo$IratType;

    .line 158
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->mSstProxy:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;

    invoke-virtual {v3, v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;->setEnabled(Z)V

    .line 159
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->mTempIratInfo:Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo;

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->onIratFinished(Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo;)V

    .line 160
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->mTempIratInfo:Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo;

    iget v3, v3, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo;->action:I

    iget-object v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->mTempIratInfo:Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo;

    invoke-direct {p0, v3, v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->notifyIratEvent(ILcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo;)V

    goto/16 :goto_0

    :cond_4
    move v3, v4

    .line 167
    goto/16 :goto_1

    .line 126
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method protected registerForAllEvents()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 78
    invoke-super {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;->registerForAllEvents()V

    .line 79
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->mLteCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x64

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForIratStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 80
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->mLteCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x67

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 82
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->mCdmaCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x65

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForIratStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 83
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->mCdmaCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x68

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 84
    return-void
.end method

.method protected unregisterForAllEvents()V
    .locals 1

    .prologue
    .line 88
    invoke-super {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;->unregisterForAllEvents()V

    .line 89
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->mLteCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForIratStateChanged(Landroid/os/Handler;)V

    .line 90
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->mLteCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForNotAvailable(Landroid/os/Handler;)V

    .line 91
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->mCdmaCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForIratStateChanged(Landroid/os/Handler;)V

    .line 92
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->mCdmaCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForNotAvailable(Landroid/os/Handler;)V

    .line 93
    return-void
.end method

.method protected updateCurrentRat(I)V
    .locals 3
    .param p1, "newRat"    # I

    .prologue
    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateCurrentRat: mIsDuringIrat = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->mIsDuringIrat:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", newRat = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCurrentRat = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->mCurrentRat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->log(Ljava/lang/String;)V

    .line 401
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->mIsDuringIrat:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->mCurrentRat:I

    if-eq p1, v0, :cond_0

    .line 402
    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->mCurrentRat:I

    iput v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->mPrevRat:I

    .line 403
    iput p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->mCurrentRat:I

    .line 405
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->mSvltePhoneProxy:Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->mPrevRat:I

    iget v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->mCurrentRat:I

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->updatePsPhone(II)V

    .line 406
    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->mPrevRat:I

    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->mCurrentRat:I

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->notifyRatChange(II)V

    .line 408
    if-eqz p1, :cond_0

    .line 409
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratController;->mSvltePhoneProxy:Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getIratDataSwitchHelper()Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->syncAndNotifyAttachState()V

    .line 412
    :cond_0
    return-void
.end method
