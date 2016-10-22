.class public abstract Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;
.super Landroid/os/Handler;
.source "IratController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/ltedc/svlte/IratController$OnIratEventListener;
    }
.end annotation


# static fields
.field public static final ACTION_IRAT_FAILED:Ljava/lang/String; = "com.mediatek.irat.action.failed"

.field public static final ACTION_IRAT_FINISHED:Ljava/lang/String; = "com.mediatek.irat.action.finished"

.field public static final ACTION_IRAT_STARTED:Ljava/lang/String; = "com.mediatek.irat.action.started"

.field public static final ACTION_IRAT_SUCCEEDED:Ljava/lang/String; = "com.mediatek.irat.action.succeeded"

.field private static final EVENT_CDMA_DATA_REG_STATE_OR_RAT_CHANGE:I = 0x1

.field private static final EVENT_CDMA_SIM_MISSING:I = 0x3

.field private static final EVENT_LTE_DATA_REG_STATE_OR_RAT_CHANGE:I = 0x0

.field private static final EVENT_LTE_SIM_MISSING:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "CDMA"

.field public static final SOURCE_RAT:Ljava/lang/String; = "extra_source_rat"

.field public static final TARGET_RAT:Ljava/lang/String; = "extra_target_rat"


# instance fields
.field protected mCdmaCi:Lcom/android/internal/telephony/CommandsInterface;

.field protected mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

.field protected mCdmaRat:I

.field protected mCdmaRegState:I

.field protected mContext:Landroid/content/Context;

.field protected mCurrentRat:I

.field protected mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

.field protected mIratControllerEnabled:Z

.field protected mIratEventListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/internal/telephony/ltedc/svlte/IratController$OnIratEventListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mIsDuringIrat:Z

.field protected mLteCi:Lcom/android/internal/telephony/CommandsInterface;

.field protected mLtePhone:Lcom/android/internal/telephony/PhoneBase;

.field protected mLteRat:I

.field protected mLteRegState:I

.field protected mPrevRat:I

.field protected mPsCi:Lcom/android/internal/telephony/CommandsInterface;

.field protected mPsType:I

.field protected mRatChangedRegistrants:Landroid/os/RegistrantList;

.field protected mSstProxy:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;

.field protected mSvltePhoneProxy:Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;


# direct methods
.method public constructor <init>(Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;)V
    .locals 2
    .param p1, "svltePhoneProxy"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 83
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 55
    iput v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;->mLteRegState:I

    .line 56
    iput v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;->mCdmaRegState:I

    .line 57
    iput v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;->mLteRat:I

    .line 58
    iput v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;->mCdmaRat:I

    .line 61
    iput v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;->mCurrentRat:I

    .line 63
    iput v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;->mPrevRat:I

    .line 69
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;->mRatChangedRegistrants:Landroid/os/RegistrantList;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;->mIratEventListener:Ljava/util/List;

    .line 84
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;->mSvltePhoneProxy:Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    .line 85
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;->mSvltePhoneProxy:Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;->mContext:Landroid/content/Context;

    .line 86
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;->mSvltePhoneProxy:Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    .line 87
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;->mSvltePhoneProxy:Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getNLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 88
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;->mLteCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 89
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;->mCdmaCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 90
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;->getInstance()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;->mSstProxy:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;

    .line 92
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;->registerForAllEvents()V

    .line 93
    return-void
.end method

.method private dumpStatus()V
    .locals 2

    .prologue
    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dumpStatus: mCurrentRat = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;->mCurrentRat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mLteRegStatem = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;->mLteRegState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mNlteRegState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;->mCdmaRegState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsDuringIrat = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;->mIsDuringIrat:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;->log(Ljava/lang/String;)V

    .line 374
    return-void
.end method


# virtual methods
.method public declared-synchronized addOnIratEventListener(Lcom/mediatek/internal/telephony/ltedc/svlte/IratController$OnIratEventListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/mediatek/internal/telephony/ltedc/svlte/IratController$OnIratEventListener;

    .prologue
    .line 140
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addOnIratEventListener: listener = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;->log(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;->mIratEventListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    monitor-exit p0

    return-void

    .line 140
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 99
    const-string v0, "dispose"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;->log(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;->unregisterForAllEvents()V

    .line 101
    return-void
.end method

.method public getCdmaRegState()I
    .locals 1

    .prologue
    .line 236
    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;->mCdmaRegState:I

    return v0
.end method

.method public getCurrentNetworkType()I
    .locals 1

    .prologue
    .line 253
    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;->mCurrentRat:I

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;->rilRadioTechnologyToNetworkType(I)I

    move-result v0

    return v0
.end method

.method public getCurrentPsType()I
    .locals 1

    .prologue
    .line 220
    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;->mPsType:I

    return v0
.end method

.method public getCurrentRat()I
    .locals 2

    .prologue
    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCurrentRat: mCurrentRat = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;->mCurrentRat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;->log(Ljava/lang/String;)V

    .line 245
    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;->mCurrentRat:I

    return v0
.end method

.method public getLteRegState()I
    .locals 1

    .prologue
    .line 228
    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;->mLteRegState:I

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 258
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;->processMessage(Landroid/os/Message;)Z

    move-result v0

    .line 259
    .local v0, "ret":Z
    if-nez v0, :cond_0

    .line 260
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage with unknow message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;->loge(Ljava/lang/String;)V

    .line 262
    :cond_0
    return-void
.end method

.method public isDrsInService()Z
    .locals 1

    .prologue
    .line 195
    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;->mLteRegState:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;->mCdmaRegState:I

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDuringIrat()Z
    .locals 2

    .prologue
    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isDuringIrat: mIsDuringIrat = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;->mIsDuringIrat:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;->log(Ljava/lang/String;)V

    .line 185
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;->mIsDuringIrat:Z

    return v0
.end method

.method protected abstract log(Ljava/lang/String;)V
.end method

.method protected abstract loge(Ljava/lang/String;)V
.end method

.method protected notifyRatChange(II)V
    .locals 4
    .param p1, "source"    # I
    .param p2, "target"    # I

    .prologue
    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyRatChange: source = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", target = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;->log(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;->mRatChangedRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 158
    return-void
.end method

.method protected abstract onCdmaDataRegStateOrRatChange(II)V
.end method

.method protected abstract onLteDataRegStateOrRatChange(II)V
.end method

.method protected abstract onSimMissing()V
.end method

.method protected processMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 265
    const/4 v3, 0x0

    .line 266
    .local v3, "ret":Z
    const/4 v0, 0x0

    .line 267
    .local v0, "ar":Landroid/os/AsyncResult;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processMessage: msg.what = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;->log(Ljava/lang/String;)V

    .line 268
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 301
    :goto_0
    return v3

    .line 270
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0    # "ar":Landroid/os/AsyncResult;
    check-cast v0, Landroid/os/AsyncResult;

    .line 271
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Landroid/util/Pair;

    .line 272
    .local v2, "lteDrsRat":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processMessage: EVENT_LTE_DATA_REG_STATE_OR_RAT_CHANGE newRat = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", regstate = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;->log(Ljava/lang/String;)V

    .line 274
    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;->mLteRegState:I

    .line 275
    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;->mLteRat:I

    .line 276
    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v5, v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;->onLteDataRegStateOrRatChange(II)V

    .line 277
    const/4 v3, 0x1

    .line 278
    goto :goto_0

    .line 281
    .end local v2    # "lteDrsRat":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0    # "ar":Landroid/os/AsyncResult;
    check-cast v0, Landroid/os/AsyncResult;

    .line 282
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Landroid/util/Pair;

    .line 283
    .local v1, "cdmaDrsRat":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processMessage: EVENT_CDMA_DATA_REG_STATE_OR_RAT_CHANGE newRat = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", regstate = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;->log(Ljava/lang/String;)V

    .line 285
    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;->mCdmaRegState:I

    .line 286
    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;->mCdmaRat:I

    .line 287
    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v5, v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;->onCdmaDataRegStateOrRatChange(II)V

    .line 289
    const/4 v3, 0x1

    .line 290
    goto/16 :goto_0

    .line 294
    .end local v1    # "cdmaDrsRat":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :pswitch_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processMessage: EVENT_SIM_MISSING ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;->log(Ljava/lang/String;)V

    .line 295
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;->onSimMissing()V

    .line 296
    const/4 v3, 0x1

    .line 297
    goto/16 :goto_0

    .line 268
    nop

    :pswitch_data_0
    .packed-switch 0x0
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

    .line 104
    const-string v0, "registerForAllEvents."

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;->log(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataRegStateOrRatChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 107
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;->mLteCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForSimMissing(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 109
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataRegStateOrRatChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 112
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;->mCdmaCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x3

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForSimMissing(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 113
    return-void
.end method

.method public registerForRatChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 167
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 168
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;->mRatChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 169
    return-void
.end method

.method public declared-synchronized removeOnIratEventListener(Lcom/mediatek/internal/telephony/ltedc/svlte/IratController$OnIratEventListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/mediatek/internal/telephony/ltedc/svlte/IratController$OnIratEventListener;

    .prologue
    .line 150
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeOnIratEventListener: listener = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;->log(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;->mIratEventListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    monitor-exit p0

    return-void

    .line 150
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public resetStatus()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetStatus: mPrevRat = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;->mPrevRat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCurrentRat = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;->mCurrentRat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;->log(Ljava/lang/String;)V

    .line 320
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;->mIsDuringIrat:Z

    .line 321
    iput v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;->mCurrentRat:I

    .line 322
    iput v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;->mPrevRat:I

    .line 323
    iput v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;->mLteRegState:I

    .line 324
    iput v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;->mCdmaRegState:I

    .line 325
    return-void
.end method

.method public rilRadioTechnologyToNetworkType(I)I
    .locals 1
    .param p1, "rt"    # I

    .prologue
    .line 333
    packed-switch p1, :pswitch_data_0

    .line 366
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 335
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 337
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 339
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 341
    :pswitch_3
    const/16 v0, 0x8

    goto :goto_0

    .line 343
    :pswitch_4
    const/16 v0, 0x9

    goto :goto_0

    .line 345
    :pswitch_5
    const/16 v0, 0xa

    goto :goto_0

    .line 348
    :pswitch_6
    const/4 v0, 0x4

    goto :goto_0

    .line 350
    :pswitch_7
    const/4 v0, 0x7

    goto :goto_0

    .line 352
    :pswitch_8
    const/4 v0, 0x5

    goto :goto_0

    .line 354
    :pswitch_9
    const/4 v0, 0x6

    goto :goto_0

    .line 356
    :pswitch_a
    const/16 v0, 0xc

    goto :goto_0

    .line 358
    :pswitch_b
    const/16 v0, 0xe

    goto :goto_0

    .line 360
    :pswitch_c
    const/16 v0, 0xd

    goto :goto_0

    .line 362
    :pswitch_d
    const/16 v0, 0xf

    goto :goto_0

    .line 364
    :pswitch_e
    const/16 v0, 0x10

    goto :goto_0

    .line 333
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method public setDcTracker(Lcom/android/internal/telephony/dataconnection/DcTracker;)V
    .locals 0
    .param p1, "dcTracker"    # Lcom/android/internal/telephony/dataconnection/DcTracker;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    .line 205
    return-void
.end method

.method public setPsServiceType(I)V
    .locals 0
    .param p1, "newPsType"    # I

    .prologue
    .line 212
    iput p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;->mPsType:I

    .line 213
    return-void
.end method

.method protected unregisterForAllEvents()V
    .locals 1

    .prologue
    .line 116
    const-string v0, "unregisterForAllEvents."

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;->log(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForDataRegStateOrRatChanged(Landroid/os/Handler;)V

    .line 119
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;->mLteCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSimMissing(Landroid/os/Handler;)V

    .line 121
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForDataRegStateOrRatChanged(Landroid/os/Handler;)V

    .line 123
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;->mCdmaCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSimMissing(Landroid/os/Handler;)V

    .line 124
    return-void
.end method

.method public unregisterForRatChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;->mRatChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 177
    return-void
.end method

.method protected abstract updateCurrentRat(I)V
.end method

.method public updatePsCi(Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 2
    .param p1, "psCi"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updatePsCi: psCi = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPsCi = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;->mPsCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;->log(Ljava/lang/String;)V

    .line 132
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;->mPsCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 133
    return-void
.end method
