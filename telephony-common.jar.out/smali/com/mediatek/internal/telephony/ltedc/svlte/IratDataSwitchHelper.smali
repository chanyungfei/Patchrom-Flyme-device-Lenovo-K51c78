.class public abstract Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;
.super Landroid/os/Handler;
.source "IratDataSwitchHelper.java"


# static fields
.field protected static final EVENT_CDMA_DATA_ALLOW_URC:I = 0x4

.field protected static final EVENT_CDMA_DATA_ATTACHED:I = 0x0

.field protected static final EVENT_CDMA_DATA_DETACHED:I = 0x2

.field protected static final EVENT_CDMA_SET_DATA_ALLOW_DONE:I = 0x6

.field protected static final EVENT_LTE_DATA_ALLOW_URC:I = 0x5

.field protected static final EVENT_LTE_DATA_ATTACHED:I = 0x1

.field protected static final EVENT_LTE_DATA_DETACHED:I = 0x3

.field protected static final EVENT_LTE_SET_DATA_ALLOW_DONE:I = 0x7

.field protected static final LOG_TAG:Ljava/lang/String; = "[IRAT_DSH]"


# instance fields
.field protected mAttachedRegistrants:Landroid/os/RegistrantList;

.field protected mCdmaCi:Lcom/android/internal/telephony/CommandsInterface;

.field protected mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

.field protected mDataAllowResponseMessage:Landroid/os/Message;

.field protected mDataAllowedRegistrants:Landroid/os/RegistrantList;

.field protected mDetachedRegistrants:Landroid/os/RegistrantList;

.field protected mLteCi:Lcom/android/internal/telephony/CommandsInterface;

.field protected mLtePhone:Lcom/android/internal/telephony/PhoneBase;

.field protected mPsServiceType:I

.field protected mSvltePhoneProxy:Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;


# direct methods
.method public constructor <init>(Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;)V
    .locals 1
    .param p1, "svltePhoneProxy"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 44
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->mDataAllowedRegistrants:Landroid/os/RegistrantList;

    .line 45
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->mAttachedRegistrants:Landroid/os/RegistrantList;

    .line 46
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->mDetachedRegistrants:Landroid/os/RegistrantList;

    .line 53
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->mSvltePhoneProxy:Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    .line 54
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->mSvltePhoneProxy:Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    .line 55
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->mSvltePhoneProxy:Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getNLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 56
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->mLteCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 57
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->mCdmaCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 59
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->registerForAllEvents()V

    .line 60
    return-void
.end method

.method private registerForAllEvents()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerForAllEvents: mPsServiceType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->mPsServiceType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->log(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataConnectionAttached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 73
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataConnectionAttached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 75
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataConnectionDetached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 77
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataConnectionDetached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 79
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->mCdmaCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x4

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerSetDataAllowed(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 80
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->mLteCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x5

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerSetDataAllowed(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 81
    return-void
.end method

.method private unregisterForAllEvents()V
    .locals 2

    .prologue
    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterForAllEvents: mPsServiceType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->mPsServiceType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->log(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForDataConnectionAttached(Landroid/os/Handler;)V

    .line 87
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForDataConnectionAttached(Landroid/os/Handler;)V

    .line 89
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForDataConnectionDetached(Landroid/os/Handler;)V

    .line 91
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForDataConnectionDetached(Landroid/os/Handler;)V

    .line 93
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->mCdmaCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterSetDataAllowed(Landroid/os/Handler;)V

    .line 94
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->mLteCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterSetDataAllowed(Landroid/os/Handler;)V

    .line 95
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->unregisterForAllEvents()V

    .line 67
    return-void
.end method

.method protected getCurrentDataConnectionState(Lcom/android/internal/telephony/PhoneBase;)I
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 197
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->getCurrentDataConnectionState()I

    move-result v0

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage: msg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->log(Ljava/lang/String;)V

    .line 203
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unhandled message with number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->log(Ljava/lang/String;)V

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 205
    :pswitch_0
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->onCdmaDataAttached()V

    goto :goto_0

    .line 208
    :pswitch_1
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->onLteDataAttached()V

    goto :goto_0

    .line 211
    :pswitch_2
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->onCdmaDataDetached()V

    goto :goto_0

    .line 214
    :pswitch_3
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->onLteDataDetached()V

    goto :goto_0

    .line 218
    :pswitch_4
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->needCdmaDataAllowedUrc()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->onCdmaDataAllowUrc()V

    goto :goto_0

    .line 223
    :pswitch_5
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->onGsmDataAllowUrc()V

    goto :goto_0

    .line 226
    :pswitch_6
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->onCdmaSetDataAllowedDone()V

    goto :goto_0

    .line 229
    :pswitch_7
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->onGsmSetDataAllowedDone()V

    goto :goto_0

    .line 203
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method protected abstract log(Ljava/lang/String;)V
.end method

.method protected abstract loge(Ljava/lang/String;)V
.end method

.method protected needCdmaDataAllowedUrc()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 241
    const/4 v3, 0x0

    .line 244
    .local v3, "svlteSlot":I
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->mSvltePhoneProxy:Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getSvlteRatController()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->getSvlteRatMode()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->isLteOn()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getInstance()Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->isRuimCsim(I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getInstance()Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->isUsimSim(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 247
    :cond_0
    const-string v5, "Lte is ON, LTE will report DATA_ALLOW_URC if needed"

    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->log(Ljava/lang/String;)V

    .line 267
    :goto_0
    return v4

    .line 251
    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    .line 252
    .local v0, "cnt":I
    const/4 v5, 0x2

    if-lt v0, v5, :cond_2

    .line 253
    const-string v5, "ril.iccid.sim2"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 254
    .local v2, "sim2":Ljava/lang/String;
    const-string v5, "persist.radio.data.iccid"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 256
    .local v1, "default_icc":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sim2 iccid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->log(Ljava/lang/String;)V

    .line 257
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "default_icc"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->log(Ljava/lang/String;)V

    .line 259
    if-eqz v2, :cond_2

    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "N/A"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 261
    const-string v5, "LTE is disabled, need C2K report DATA_ALLOW_URC"

    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 266
    .end local v1    # "default_icc":Ljava/lang/String;
    .end local v2    # "sim2":Ljava/lang/String;
    :cond_2
    const-string v4, "Data SIM is unset or at SIM1, and LTE is disabled, pass it to DctController"

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->log(Ljava/lang/String;)V

    .line 267
    const/4 v4, 0x1

    goto :goto_0
.end method

.method protected abstract onCdmaDataAllowUrc()V
.end method

.method protected abstract onCdmaDataAttached()V
.end method

.method protected abstract onCdmaDataDetached()V
.end method

.method protected abstract onCdmaSetDataAllowedDone()V
.end method

.method protected abstract onGsmDataAllowUrc()V
.end method

.method protected abstract onGsmSetDataAllowedDone()V
.end method

.method protected abstract onLteDataAttached()V
.end method

.method protected abstract onLteDataDetached()V
.end method

.method public registerForDataConnectionAttached(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 134
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 135
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->mAttachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 137
    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->mPsServiceType:I

    if-nez v1, :cond_1

    .line 138
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->getCurrentDataConnectionState(Lcom/android/internal/telephony/PhoneBase;)I

    move-result v1

    if-nez v1, :cond_0

    .line 139
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->mPsServiceType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 142
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->getCurrentDataConnectionState(Lcom/android/internal/telephony/PhoneBase;)I

    move-result v1

    if-nez v1, :cond_0

    .line 143
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    goto :goto_0

    .line 145
    :cond_2
    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->mPsServiceType:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 146
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->getCurrentDataConnectionState(Lcom/android/internal/telephony/PhoneBase;)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->getCurrentDataConnectionState(Lcom/android/internal/telephony/PhoneBase;)I

    move-result v1

    if-nez v1, :cond_0

    .line 148
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    goto :goto_0
.end method

.method public registerForDataConnectionDetached(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 169
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 170
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->mDetachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 172
    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->mPsServiceType:I

    if-nez v1, :cond_1

    .line 173
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->getCurrentDataConnectionState(Lcom/android/internal/telephony/PhoneBase;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->mPsServiceType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 177
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->getCurrentDataConnectionState(Lcom/android/internal/telephony/PhoneBase;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 178
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    goto :goto_0

    .line 180
    :cond_2
    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->mPsServiceType:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 181
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->getCurrentDataConnectionState(Lcom/android/internal/telephony/PhoneBase;)I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->getCurrentDataConnectionState(Lcom/android/internal/telephony/PhoneBase;)I

    move-result v1

    if-nez v1, :cond_0

    .line 183
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    goto :goto_0
.end method

.method public registerSetDataAllowed(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 114
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 115
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->mDataAllowedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 116
    return-void
.end method

.method public abstract setDataAllowed(ZLandroid/os/Message;)V
.end method

.method public setPsServiceType(I)V
    .locals 2
    .param p1, "psServiceType"    # I

    .prologue
    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPsServiceType: psServiceType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPsServiceType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->mPsServiceType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->log(Ljava/lang/String;)V

    .line 104
    iput p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->mPsServiceType:I

    .line 105
    return-void
.end method

.method public abstract syncAndNotifyAttachState()V
.end method

.method public unregisterForDataConnectionAttached(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->mAttachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 159
    return-void
.end method

.method public unregisterForDataConnectionDetached(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 193
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->mDetachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 194
    return-void
.end method

.method public unregisterSetDataAllowed(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->mDataAllowedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 124
    return-void
.end method
