.class public Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;
.super Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;
.source "SvlteServiceStateTracker.java"


# static fields
.field private static final BM_FOR_DESENSE_B8_OPEN:I = 0xcb

.field private static final BM_FOR_DESENSE_RADIO_OFF:I = 0xc9

.field private static final BM_FOR_DESENSE_RADIO_ON:I = 0xc8

.field private static final BM_FOR_DESENSE_RADIO_ON_ROAMING:I = 0xca

.field private static final DBG:Z = true

.field private static final EVENT_BAND_SCAN_COMPLETED:I = 0x3e8

.field private static final EVENT_LTE_RADIO_CHANGE_FOR_AVALIABLE:I = 0x3e9

.field private static final LOG_TAG:Ljava/lang/String; = "SvlteSST"


# instance fields
.field private mAnotherSlotId:I

.field private mBandMode:I

.field private mCDMASS:Landroid/telephony/ServiceState;

.field private mCDMASignalStrength:Landroid/telephony/SignalStrength;

.field private mCapabilityPhoneId:I

.field private mCombinedSS:Landroid/telephony/ServiceState;

.field private mCombinedSignalStrength:Landroid/telephony/SignalStrength;

.field private mDesiredRadioPower:Z

.field private mForceSwitch:Z

.field private mGSMSS:Landroid/telephony/ServiceState;

.field private mGSMSignalStrength:Landroid/telephony/SignalStrength;

.field protected mLastCombinedSignalStrength:Landroid/telephony/SignalStrength;

.field private mLtePhone:Lcom/android/internal/telephony/PhoneBase;

.field private mModeChangedListener:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatModeChangedListener;

.field private mNeedMonitorRadioChange:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/cdma/CDMAPhone;

    .prologue
    const/4 v1, 0x0

    .line 73
    new-instance v0, Landroid/telephony/CellInfoCdma;

    invoke-direct {v0}, Landroid/telephony/CellInfoCdma;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;Landroid/telephony/CellInfo;)V

    .line 61
    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0}, Landroid/telephony/SignalStrength;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mGSMSignalStrength:Landroid/telephony/SignalStrength;

    .line 62
    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0, v1}, Landroid/telephony/SignalStrength;-><init>(Z)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mCDMASignalStrength:Landroid/telephony/SignalStrength;

    .line 63
    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0, v1}, Landroid/telephony/SignalStrength;-><init>(Z)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mCombinedSignalStrength:Landroid/telephony/SignalStrength;

    .line 64
    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mGSMSS:Landroid/telephony/ServiceState;

    .line 65
    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mCDMASS:Landroid/telephony/ServiceState;

    .line 66
    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mCombinedSS:Landroid/telephony/ServiceState;

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mLastCombinedSignalStrength:Landroid/telephony/SignalStrength;

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;)Lcom/android/internal/telephony/PhoneBase;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;

    .prologue
    .line 41
    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mCapabilityPhoneId:I

    return v0
.end method

.method static synthetic access$102(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;
    .param p1, "x1"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mCapabilityPhoneId:I

    return p1
.end method

.method static synthetic access$200(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;

    .prologue
    .line 41
    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mAnotherSlotId:I

    return v0
.end method

.method static synthetic access$302(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mNeedMonitorRadioChange:Z

    return p1
.end method

.method private combineGsmCdmaServiceState()V
    .locals 4

    .prologue
    .line 604
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "combineGsmCdmaServiceState, mCDMASS = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mCDMASS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mGSMSS = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mGSMSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 609
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mCDMASS:Landroid/telephony/ServiceState;

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mEmergencyOnly:Z

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setEmergencyOnly(Z)V

    .line 610
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mGSMSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v0

    if-nez v0, :cond_0

    .line 611
    new-instance v0, Landroid/telephony/ServiceState;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mGSMSS:Landroid/telephony/ServiceState;

    invoke-direct {v0, v1}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mCombinedSS:Landroid/telephony/ServiceState;

    .line 615
    :goto_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mGSMSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    if-nez v0, :cond_1

    .line 616
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mCombinedSS:Landroid/telephony/ServiceState;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mGSMSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setDataRegState(I)V

    .line 617
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mCombinedSS:Landroid/telephony/ServiceState;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mGSMSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setRilDataRadioTechnology(I)V

    .line 619
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mCombinedSS:Landroid/telephony/ServiceState;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mGSMSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRilDataRegState()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setRilDataRegState(I)V

    .line 620
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mCombinedSS:Landroid/telephony/ServiceState;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mGSMSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataOperatorAlphaLong()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mGSMSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getDataOperatorAlphaShort()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mGSMSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getDataOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/telephony/ServiceState;->setDataOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    :goto_1
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mCombinedSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifySvlteServiceStateChangedPForRegistrants(Landroid/telephony/ServiceState;)V

    .line 632
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "combineGsmCdmaServiceState, mCombinedSS = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mCombinedSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 634
    return-void

    .line 613
    :cond_0
    new-instance v0, Landroid/telephony/ServiceState;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mCDMASS:Landroid/telephony/ServiceState;

    invoke-direct {v0, v1}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mCombinedSS:Landroid/telephony/ServiceState;

    goto :goto_0

    .line 623
    :cond_1
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mCombinedSS:Landroid/telephony/ServiceState;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mCDMASS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setDataRegState(I)V

    .line 624
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mCombinedSS:Landroid/telephony/ServiceState;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mCDMASS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setRilDataRadioTechnology(I)V

    .line 626
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mCombinedSS:Landroid/telephony/ServiceState;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mCDMASS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRilDataRegState()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setRilDataRegState(I)V

    .line 627
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mCombinedSS:Landroid/telephony/ServiceState;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mCDMASS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataOperatorAlphaLong()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mCDMASS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getDataOperatorAlphaShort()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mCDMASS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getDataOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/telephony/ServiceState;->setDataOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private combineGsmCdmaSignalStrength()V
    .locals 2

    .prologue
    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "combineGsmCdmaSignalStrength: mGSMSignalStrength= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mGSMSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mCDMASignalStrength = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mCDMASignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mCombinedSignalStrength:Landroid/telephony/SignalStrength;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mGSMSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/SignalStrength;->setGsmSignalStrength(I)V

    .line 138
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mCombinedSignalStrength:Landroid/telephony/SignalStrength;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mGSMSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getGsmBitErrorRate()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/SignalStrength;->setGsmBitErrorRate(I)V

    .line 140
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mCombinedSignalStrength:Landroid/telephony/SignalStrength;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mGSMSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getLteSignalStrength()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/SignalStrength;->setLteSignalStrength(I)V

    .line 142
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mCombinedSignalStrength:Landroid/telephony/SignalStrength;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mGSMSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getLteRsrp()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/SignalStrength;->setLteRsrp(I)V

    .line 143
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mCombinedSignalStrength:Landroid/telephony/SignalStrength;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mGSMSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getLteRsrq()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/SignalStrength;->setLteRsrq(I)V

    .line 144
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mCombinedSignalStrength:Landroid/telephony/SignalStrength;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mGSMSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getLteRssnr()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/SignalStrength;->setLteRssnr(I)V

    .line 145
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mCombinedSignalStrength:Landroid/telephony/SignalStrength;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mGSMSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getLteCqi()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/SignalStrength;->setLteCqi(I)V

    .line 146
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mCombinedSignalStrength:Landroid/telephony/SignalStrength;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mGSMSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getGsmRssiQdbm()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/SignalStrength;->setGsmRssiQdbm(I)V

    .line 147
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mCombinedSignalStrength:Landroid/telephony/SignalStrength;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mGSMSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getGsmRscpQdbm()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/SignalStrength;->setGsmRscpQdbm(I)V

    .line 148
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mCombinedSignalStrength:Landroid/telephony/SignalStrength;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mGSMSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getGsmEcn0Qdbm()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/SignalStrength;->setGsmEcn0Qdbm(I)V

    .line 149
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mCombinedSignalStrength:Landroid/telephony/SignalStrength;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mCDMASignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/SignalStrength;->setEvdoDbm(I)V

    .line 150
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mCombinedSignalStrength:Landroid/telephony/SignalStrength;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mCDMASignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getEvdoEcio()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/SignalStrength;->setEvdoEcio(I)V

    .line 151
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mCombinedSignalStrength:Landroid/telephony/SignalStrength;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mCDMASignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/SignalStrength;->setEvdoSnr(I)V

    .line 152
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mCombinedSignalStrength:Landroid/telephony/SignalStrength;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mCDMASignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/SignalStrength;->setCdmaDbm(I)V

    .line 153
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mCombinedSignalStrength:Landroid/telephony/SignalStrength;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mCDMASignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/SignalStrength;->setCdmaEcio(I)V

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "combineGsmCdmaSignalStrength: mCombinedSignalStrength= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mCombinedSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method private registerListener()V
    .locals 4

    .prologue
    .line 694
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mModeChangedListener:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatModeChangedListener;

    if-nez v2, :cond_0

    .line 696
    new-instance v2, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker$1;

    invoke-direct {v2, p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker$1;-><init>(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;)V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mModeChangedListener:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatModeChangedListener;

    .line 721
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->getPhoneId()I

    move-result v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSlotId(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    .line 723
    .local v1, "lteDcPhoneProxy":Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getSvlteRatController()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mModeChangedListener:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatModeChangedListener;

    invoke-virtual {v2, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->registerSvlteRatModeChangedListener(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatModeChangedListener;)V

    .line 728
    .end local v1    # "lteDcPhoneProxy":Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;
    :cond_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_1

    .line 729
    new-instance v2, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker$2;

    invoke-direct {v2, p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker$2;-><init>(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;)V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 744
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 745
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_DONE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 746
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 748
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_1
    return-void
.end method


# virtual methods
.method protected configAndSetRadioPower(Z)V
    .locals 9
    .param p1, "radioPower"    # Z

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x1

    .line 639
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, p1, v8}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 640
    const-string v5, "OP09"

    const-string v6, "ro.operator.optr"

    const-string v7, "OM"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v5

    if-le v5, v4, :cond_3

    .line 644
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->getPhoneId()I

    move-result v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->isActiveSvlteMode(I)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-boolean v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mDesiredRadioPower:Z

    if-ne p1, v5, :cond_0

    iget-boolean v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mFirstRadioChange:Z

    if-eqz v5, :cond_3

    .line 646
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "configAndSetRadioPower, radioPower = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mDesiredPower = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mDesiredRadioPower:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mFirstRadioChange = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mFirstRadioChange:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 651
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->getPhoneId()I

    move-result v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSlotId(I)I

    move-result v5

    if-nez v5, :cond_1

    .line 652
    iput v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mAnotherSlotId:I

    .line 654
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/UiccController;->getC2KWPCardType()[I

    move-result-object v0

    .line 655
    .local v0, "cardType":[I
    iget v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mAnotherSlotId:I

    aget v5, v0, v5

    and-int/lit8 v5, v5, 0x4

    if-lez v5, :cond_2

    iget v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mAnotherSlotId:I

    aget v5, v0, v5

    and-int/lit8 v5, v5, 0x8

    if-gtz v5, :cond_2

    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getInstance()Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;

    move-result-object v5

    iget v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mAnotherSlotId:I

    invoke-virtual {v5, v6}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->isCt3gDualMode(I)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_2
    iget v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mAnotherSlotId:I

    aget v5, v0, v5

    if-eqz v5, :cond_4

    move v1, v4

    .line 660
    .local v1, "isAnotherGsmCard":Z
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "configAndSetRadioPower, cardType["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mAnotherSlotId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mAnotherSlotId:I

    aget v6, v0, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " isAnotherGsmCard = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 664
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->getPhoneId()I

    move-result v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSlotId(I)I

    move-result v5

    invoke-static {v5}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    .line 666
    .local v2, "lteDcPhoneProxy":Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 668
    .local v3, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_5

    .line 669
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->registerListener()V

    .line 670
    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    .line 671
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mDesiredRadioPower:Z

    .line 672
    const-string v5, "persist.radio.simswitch"

    const-string v6, "1"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mCapabilityPhoneId:I

    .line 674
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "configAndSetRadioPower, mCapabilityPhoneId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mCapabilityPhoneId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 675
    iget v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mCapabilityPhoneId:I

    iget v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mAnotherSlotId:I

    if-ne v5, v6, :cond_3

    .line 676
    iput-boolean v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mForceSwitch:Z

    .line 677
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    const/16 v5, 0x3e8

    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/PhoneBase;->queryAvailableBandMode(Landroid/os/Message;)V

    .line 691
    .end local v0    # "cardType":[I
    .end local v1    # "isAnotherGsmCard":Z
    .end local v2    # "lteDcPhoneProxy":Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;
    .end local v3    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_3
    :goto_1
    return-void

    .line 655
    .restart local v0    # "cardType":[I
    :cond_4
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 680
    .restart local v1    # "isAnotherGsmCard":Z
    .restart local v2    # "lteDcPhoneProxy":Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;
    .restart local v3    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_5
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mModeChangedListener:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatModeChangedListener;

    if-eqz v4, :cond_6

    .line 681
    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getSvlteRatController()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mModeChangedListener:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatModeChangedListener;

    invoke-virtual {v4, v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->unregisterSvlteRatModeChangedListener(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatModeChangedListener;)V

    .line 684
    :cond_6
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v4, :cond_3

    .line 685
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 686
    iput-object v8, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    goto :goto_1
.end method

.method public getPhoneId()I
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    move-result v0

    return v0
.end method

.method public getPreUpdateSvlteSpnPhoneId()I
    .locals 2

    .prologue
    .line 582
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPreUpdateSvlteSpnPhoneId, mPreUpdateSpnPhoneId ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mPreUpdateSpnPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 584
    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mPreUpdateSpnPhoneId:I

    return v0
.end method

.method public getSignalStrength()Landroid/telephony/SignalStrength;
    .locals 2

    .prologue
    .line 164
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mCellInfo:Landroid/telephony/CellInfo;

    monitor-enter v1

    .line 165
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mCombinedSignalStrength:Landroid/telephony/SignalStrength;

    monitor-exit v1

    return-object v0

    .line 166
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSvlteServiceState()Landroid/telephony/ServiceState;
    .locals 1

    .prologue
    .line 758
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mCombinedSS:Landroid/telephony/ServiceState;

    return-object v0
.end method

.method public getUpdateSvlteSpnPhoneId(I)I
    .locals 4
    .param p1, "sstType"    # I

    .prologue
    const/4 v3, 0x3

    .line 552
    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mUpdateSpnPhoneId:I

    iput v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mPreUpdateSpnPhoneId:I

    .line 553
    const/4 v0, 0x0

    .line 554
    .local v0, "updateSvlteSpnPhoneId":I
    new-instance v1, Landroid/telephony/ServiceState;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-direct {v1, v2}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mCDMASS:Landroid/telephony/ServiceState;

    .line 555
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mCDMASS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v1

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mCDMASS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v1

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mGSMSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v1

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mGSMSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 559
    const-string v1, "getUpdateSvlteSpnPhoneId, both phone power off"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 560
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    move-result v0

    .line 575
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUpdateSvlteSpnPhoneId, phoneId ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 577
    iput v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mUpdateSpnPhoneId:I

    .line 578
    return v0

    .line 560
    :cond_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSlotId(I)I

    move-result v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getLteDcPhoneId(I)I

    move-result v0

    goto :goto_0

    .line 562
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->isSimLockedOrAbsent()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 563
    const-string v1, "getUpdateSvlteSpnPhoneId, CDMA card is absent or locked"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 564
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    move-result v0

    goto :goto_0

    .line 565
    :cond_2
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mCDMASS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mCDMASS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v1

    if-eqz v1, :cond_3

    .line 567
    const-string v1, "getUpdateSvlteSpnPhoneId, cdma not in service"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 568
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSlotId(I)I

    move-result v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getLteDcPhoneId(I)I

    move-result v0

    goto :goto_0

    .line 571
    :cond_3
    const-string v1, "getUpdateSvlteSpnPhoneId, other case"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 572
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    move-result v0

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 173
    iget v6, p1, Landroid/os/Message;->what:I

    sparse-switch v6, :sswitch_data_0

    .line 262
    invoke-super {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->handleMessage(Landroid/os/Message;)V

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 178
    :sswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 179
    .local v2, "ar":Landroid/os/AsyncResult;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "EVENT_SIGNAL_STRENGTH_UPDATE, ar = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v9, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 183
    iput-boolean v7, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mDontPollSignalStrength:Z

    .line 184
    invoke-virtual {p0, v2, v8}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->setSignalStrength(Landroid/os/AsyncResult;Z)V

    .line 185
    iget-object v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->onCDMASignalStrengthResult(Landroid/telephony/SignalStrength;)Z

    goto :goto_0

    .line 192
    .end local v2    # "ar":Landroid/os/AsyncResult;
    :sswitch_1
    iget-object v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 196
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 197
    .restart local v2    # "ar":Landroid/os/AsyncResult;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EVENT_GET_SIGNAL_STRENGTH, ar = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p0, v2, v8}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->setSignalStrength(Landroid/os/AsyncResult;Z)V

    .line 199
    iget-object v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->onCDMASignalStrengthResult(Landroid/telephony/SignalStrength;)Z

    .line 200
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->queueNextSignalStrengthPoll()V

    goto :goto_0

    .line 205
    .end local v2    # "ar":Landroid/os/AsyncResult;
    :sswitch_2
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 206
    .restart local v2    # "ar":Landroid/os/AsyncResult;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "EVENT_BAND_SCAN_COMPLETED, ar = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v9, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 208
    iget v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mAnotherSlotId:I

    invoke-static {v6}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    .line 210
    .local v0, "anotherLteDcPhoneProxy":Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    .line 212
    .local v1, "anotherLtePhone":Lcom/android/internal/telephony/PhoneBase;
    iget-object v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v6, :cond_0

    if-eqz v1, :cond_0

    .line 213
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "EVENT_BAND_SCAN_COMPLETED, mDesiredPower = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v9, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mDesiredRadioPower:Z

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " mCapabilityPhoneId = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v9, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mCapabilityPhoneId:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " mAnotherSlotId = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v9, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mAnotherSlotId:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 217
    iget v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mCapabilityPhoneId:I

    iget v9, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mAnotherSlotId:I

    if-ne v6, v9, :cond_3

    .line 218
    iget-boolean v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mDesiredRadioPower:Z

    if-eqz v6, :cond_2

    .line 219
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->getPhoneId()I

    move-result v6

    invoke-static {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSlotId(I)I

    move-result v6

    invoke-static {v6}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    check-cast v4, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    .line 221
    .local v4, "lteDcPhoneProxy":Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;
    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getSvlteRatController()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    move-result-object v5

    .line 223
    .local v5, "svlteRatController":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "EVENT_BAND_SCAN_COMPLETED, roamingMode = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->getRoamingMode()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 225
    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->getRoamingMode()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v6

    sget-object v9, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_NORMAL_ROAMING:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    if-ne v6, v9, :cond_1

    .line 227
    const/16 v6, 0xca

    iput v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mBandMode:I

    .line 241
    .end local v4    # "lteDcPhoneProxy":Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;
    .end local v5    # "svlteRatController":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;
    :goto_1
    const/4 v6, 0x4

    new-array v3, v6, [I

    iget v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mBandMode:I

    aput v6, v3, v8

    iget-boolean v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mForceSwitch:Z

    if-eqz v6, :cond_4

    move v6, v7

    :goto_2
    aput v6, v3, v7

    const/4 v6, 0x2

    aput v8, v3, v6

    const/4 v6, 0x3

    aput v8, v3, v6

    .line 242
    .local v3, "bands":[I
    iget-object v6, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v7, 0x0

    invoke-interface {v6, v3, v7}, Lcom/android/internal/telephony/CommandsInterface;->setBandMode([ILandroid/os/Message;)V

    .line 243
    iput-boolean v8, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mForceSwitch:Z

    goto/16 :goto_0

    .line 231
    .end local v3    # "bands":[I
    .restart local v4    # "lteDcPhoneProxy":Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;
    .restart local v5    # "svlteRatController":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;
    :cond_1
    const/16 v6, 0xc8

    iput v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mBandMode:I

    goto :goto_1

    .line 235
    .end local v4    # "lteDcPhoneProxy":Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;
    .end local v5    # "svlteRatController":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;
    :cond_2
    const/16 v6, 0xc9

    iput v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mBandMode:I

    goto :goto_1

    .line 238
    :cond_3
    const/16 v6, 0xcb

    iput v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mBandMode:I

    goto :goto_1

    :cond_4
    move v6, v8

    .line 241
    goto :goto_2

    .line 247
    .end local v0    # "anotherLteDcPhoneProxy":Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;
    .end local v1    # "anotherLtePhone":Lcom/android/internal/telephony/PhoneBase;
    .end local v2    # "ar":Landroid/os/AsyncResult;
    :sswitch_3
    const-string v6, "EVENT_LTE_RADIO_CHANGE_FOR_AVALIABLE"

    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 248
    iget-boolean v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mNeedMonitorRadioChange:Z

    if-eqz v6, :cond_0

    .line 249
    iget v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mAnotherSlotId:I

    invoke-static {v6}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v6

    check-cast v6, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v6

    iget-object v6, v6, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v6

    sget-object v9, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq v6, v9, :cond_0

    .line 251
    const-string v6, "EVENT_LTE_RADIO_CHANGE_FOR_AVALIABLE, radio avaliable"

    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 252
    iget-object v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    const/16 v9, 0x3e8

    invoke-virtual {p0, v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/android/internal/telephony/PhoneBase;->queryAvailableBandMode(Landroid/os/Message;)V

    .line 253
    iput-boolean v7, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mForceSwitch:Z

    .line 254
    iput-boolean v8, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mNeedMonitorRadioChange:Z

    .line 255
    iget v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mAnotherSlotId:I

    invoke-static {v6}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v6

    check-cast v6, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v6

    iget-object v6, v6, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRadioStateChanged(Landroid/os/Handler;)V

    goto/16 :goto_0

    .line 173
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0xc -> :sswitch_0
        0x3e8 -> :sswitch_2
        0x3e9 -> :sswitch_3
    .end sparse-switch
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 763
    const-string v0, "SvlteSST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[LteSST"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    move-result v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSlotId(I)I

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

    .line 765
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 769
    const-string v0, "SvlteSST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[LteSST"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    move-result v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSlotId(I)I

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

    .line 771
    return-void
.end method

.method public notifyServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 2
    .param p1, "ss"    # Landroid/telephony/ServiceState;

    .prologue
    .line 541
    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0, p1}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mGSMSS:Landroid/telephony/ServiceState;

    .line 542
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->combineGsmCdmaServiceState()V

    .line 543
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mCombinedSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyServiceStateChangedForSvlte(Landroid/telephony/ServiceState;)V

    .line 544
    return-void
.end method

.method protected notifySignalStrength()Z
    .locals 5

    .prologue
    .line 109
    const/4 v1, 0x0

    .line 110
    .local v1, "notified":Z
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mCellInfo:Landroid/telephony/CellInfo;

    monitor-enter v3

    .line 111
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mCombinedSignalStrength:Landroid/telephony/SignalStrength;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mLastCombinedSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v2, v4}, Landroid/telephony/SignalStrength;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 114
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifySignalStrength: mCombinedSignalStrength.getLevel="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mCombinedSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v4}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 117
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifySignalStrength()V

    .line 118
    new-instance v2, Landroid/telephony/SignalStrength;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mCombinedSignalStrength:Landroid/telephony/SignalStrength;

    invoke-direct {v2, v4}, Landroid/telephony/SignalStrength;-><init>(Landroid/telephony/SignalStrength;)V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mLastCombinedSignalStrength:Landroid/telephony/SignalStrength;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    const/4 v1, 0x1

    .line 126
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v3

    .line 127
    return v1

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, "ex":Ljava/lang/NullPointerException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSignalStrength() Phone already destroyed: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "SignalStrength not notified"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 126
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public onCDMASignalStrengthResult(Landroid/telephony/SignalStrength;)Z
    .locals 2
    .param p1, "cdmaSignalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCDMASignalStrengthResult(): cdmaSignalStrength = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 101
    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0, p1}, Landroid/telephony/SignalStrength;-><init>(Landroid/telephony/SignalStrength;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mCDMASignalStrength:Landroid/telephony/SignalStrength;

    .line 102
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->combineGsmCdmaSignalStrength()V

    .line 103
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->notifySignalStrength()Z

    move-result v0

    return v0
.end method

.method public onGSMSignalStrengthResult(Landroid/telephony/SignalStrength;)Z
    .locals 2
    .param p1, "gsmSignalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGSMSignalStrengthResult(): gsmSignalStrength = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 86
    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0, p1}, Landroid/telephony/SignalStrength;-><init>(Landroid/telephony/SignalStrength;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mGSMSignalStrength:Landroid/telephony/SignalStrength;

    .line 87
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->combineGsmCdmaSignalStrength()V

    .line 88
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->notifySignalStrength()Z

    move-result v0

    return v0
.end method

.method protected pollStateDone()V
    .locals 36

    .prologue
    .line 270
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "pollStateDone: cdma oldSS=["

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "] newSS=["

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "]"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 274
    sget-boolean v32, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v32, :cond_0

    const-string v32, "telephony.test.forceRoaming"

    const/16 v33, 0x0

    invoke-static/range {v32 .. v33}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v32

    if-eqz v32, :cond_0

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    invoke-virtual/range {v32 .. v33}, Landroid/telephony/ServiceState;->setRoaming(Z)V

    .line 279
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->useDataRegStateForDataOnlyDevices()V

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v32

    if-eqz v32, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v32

    if-nez v32, :cond_15

    const/16 v17, 0x1

    .line 284
    .local v17, "hasRegistered":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v32

    if-nez v32, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v32

    if-eqz v32, :cond_16

    const/4 v14, 0x1

    .line 287
    .local v14, "hasDeregistered":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v32

    if-eqz v32, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v32

    if-nez v32, :cond_17

    const/4 v7, 0x1

    .line 291
    .local v7, "hasCdmaDataConnectionAttached":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v32

    if-nez v32, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v32

    if-eqz v32, :cond_18

    const/4 v9, 0x1

    .line 295
    .local v9, "hasCdmaDataConnectionDetached":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v33

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_19

    const/4 v8, 0x1

    .line 298
    .local v8, "hasCdmaDataConnectionChanged":Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v33

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_1a

    const/16 v19, 0x1

    .line 302
    .local v19, "hasRilVoiceRadioTechnologyChanged":Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v33

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_1b

    const/16 v18, 0x1

    .line 306
    .local v18, "hasRilDataRadioTechnologyChanged":Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v33

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_1c

    const/4 v11, 0x1

    .line 309
    .local v11, "hasDataRegStateChanged":Z
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v33

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_1d

    const/16 v20, 0x1

    .line 312
    .local v20, "hasVoiceRegStateChanged":Z
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Landroid/telephony/ServiceState;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_1e

    const/4 v10, 0x1

    .line 314
    .local v10, "hasChanged":Z
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v32

    if-nez v32, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v32

    if-eqz v32, :cond_1f

    const/16 v22, 0x1

    .line 316
    .local v22, "hasVoiceRoamingOn":Z
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v32

    if-eqz v32, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v32

    if-nez v32, :cond_20

    const/16 v21, 0x1

    .line 318
    .local v21, "hasVoiceRoamingOff":Z
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v32

    if-nez v32, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v32

    if-eqz v32, :cond_21

    const/4 v13, 0x1

    .line 320
    .local v13, "hasDataRoamingOn":Z
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v32

    if-eqz v32, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v32

    if-nez v32, :cond_22

    const/4 v12, 0x1

    .line 322
    .local v12, "hasDataRoamingOff":Z
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mNewCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Landroid/telephony/cdma/CdmaCellLocation;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_23

    const/4 v15, 0x1

    .line 325
    .local v15, "hasLocationChanged":Z
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/telephony/ServiceState;->getRegState()I

    move-result v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/telephony/ServiceState;->getRegState()I

    move-result v33

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_24

    const/16 v16, 0x1

    .line 326
    .local v16, "hasRegStateChanged":Z
    :goto_f
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "pollStateDone: hasRegStateChanged = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 327
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "pollStateDone: hasRegistered:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ",hasDeregistered:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ",hasCdmaDataConnectionAttached:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ",hasCdmaDataConnectionDetached:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ",hasCdmaDataConnectionChanged:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ",hasRilVoiceRadioTechnologyChanged:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ",hasRilDataRadioTechnologyChanged:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ",hasVoiceRegStateChanged:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ",hasDataRegStateChanged:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ",hasChanged:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ",hasVoiceRoamingOn:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ",hasVoiceRoamingOff:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ",hasDataRoamingOn:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ",hasDataRoamingOff:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ",hasLocationChanged:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v33

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v33

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_2

    .line 342
    :cond_1
    const v32, 0xc3c4

    const/16 v33, 0x4

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v35

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    aput-object v35, v33, v34

    const/16 v34, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v35

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    aput-object v35, v33, v34

    const/16 v34, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v35

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    aput-object v35, v33, v34

    const/16 v34, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v35

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    aput-object v35, v33, v34

    invoke-static/range {v32 .. v33}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 348
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/telephony/ServiceState;->getState()I

    move-result v32

    if-nez v32, :cond_25

    .line 349
    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mInService:Z

    .line 353
    :goto_10
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "pollStateDone: mInService = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mInService:Z

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v31, v0

    .line 358
    .local v31, "tss":Landroid/telephony/ServiceState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 359
    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    move-object/from16 v29, v0

    .line 364
    .local v29, "tcl":Landroid/telephony/cdma/CdmaCellLocation;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mNewCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    .line 365
    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mNewCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    .line 367
    if-eqz v19, :cond_3

    .line 368
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->updatePhoneObject()V

    .line 371
    :cond_3
    if-eqz v18, :cond_5

    .line 374
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mNewNetworkType:I

    move/from16 v32, v0

    if-eqz v32, :cond_4

    .line 375
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->queryCurrentNitzTime()V

    .line 378
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v32, v0

    const-string v33, "gsm.network.type"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v34

    invoke-static/range {v34 .. v34}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v32 .. v34}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    :cond_5
    if-eqz v17, :cond_6

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mNetworkAttachedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 388
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v32

    const-string v33, "phone"

    invoke-virtual/range {v32 .. v33}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/telephony/TelephonyManager;

    .line 390
    .local v30, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v10, :cond_b

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v32

    if-eqz v32, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mIsSubscriptionFromRuim:Z

    move/from16 v32, v0

    if-nez v32, :cond_7

    .line 392
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "pollStateDone isSubscriptionFromRuim = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mIsSubscriptionFromRuim:Z

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v32

    if-nez v32, :cond_26

    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getCdmaEriText()Ljava/lang/String;

    move-result-object v5

    .line 409
    .local v5, "eriText":Ljava/lang/String;
    :goto_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Landroid/telephony/ServiceState;->setOperatorAlphaLong(Ljava/lang/String;)V

    .line 414
    .end local v5    # "eriText":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v32, v0

    const-string v33, "gsm.operator.alpha"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v32 .. v34}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    const-string v32, "gsm.operator.numeric"

    const-string v33, ""

    invoke-static/range {v32 .. v33}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 420
    .local v26, "prevOperatorNumeric":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v25

    .line 423
    .local v25, "operatorNumeric":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->isInvalidOperatorNumeric(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_8

    .line 424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/telephony/ServiceState;->getSystemId()I

    move-result v28

    .line 425
    .local v28, "sid":I
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->fixUnknownMcc(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v25

    .line 428
    .end local v28    # "sid":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    move-result v32

    move-object/from16 v0, v30

    move/from16 v1, v32

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setNetworkOperatorNumericForPhone(ILjava/lang/String;)V

    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->updateCarrierMccMncConfiguration(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 433
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->isInvalidOperatorNumeric(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_27

    .line 435
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "operatorNumeric "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "is invalid"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    move-result v32

    const-string v33, ""

    move-object/from16 v0, v30

    move/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setNetworkCountryIsoForPhone(ILjava/lang/String;)V

    .line 438
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mGotCountryCode:Z

    .line 462
    :cond_9
    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v33, v0

    const-string v34, "gsm.operator.isroaming"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v32

    if-eqz v32, :cond_28

    const-string v32, "true"

    :goto_13
    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->setRoamingType(Landroid/telephony/ServiceState;)V

    .line 470
    const-string v32, "set roaming type"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 473
    if-eqz v16, :cond_a

    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/telephony/ServiceState;->getRegState()I

    move-result v32

    const/16 v33, 0x4

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_a

    const/16 v32, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v33

    const-string v34, "airplane_mode_on"

    const/16 v35, -0x1

    invoke-static/range {v33 .. v35}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v33

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_a

    .line 478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/telephony/ServiceState;->getState()I

    move-result v27

    .line 479
    .local v27, "serviceState":I
    const/16 v32, 0x3

    move/from16 v0, v27

    move/from16 v1, v32

    if-eq v0, v1, :cond_a

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/telephony/ServiceState;->setStateOff()V

    .line 485
    .end local v27    # "serviceState":I
    :cond_a
    new-instance v32, Landroid/telephony/ServiceState;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v33, v0

    invoke-direct/range {v32 .. v33}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mCDMASS:Landroid/telephony/ServiceState;

    .line 486
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->updateSpnDisplay()V

    .line 487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mCDMASS:Landroid/telephony/ServiceState;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyServiceStateChangedPForRegistrants(Landroid/telephony/ServiceState;)V

    .line 488
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->combineGsmCdmaServiceState()V

    .line 489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mCombinedSS:Landroid/telephony/ServiceState;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyServiceStateChangedForSvlte(Landroid/telephony/ServiceState;)V

    .line 492
    .end local v25    # "operatorNumeric":Ljava/lang/String;
    .end local v26    # "prevOperatorNumeric":Ljava/lang/String;
    :cond_b
    if-eqz v7, :cond_c

    .line 493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mAttachedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 496
    :cond_c
    if-eqz v9, :cond_d

    .line 497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mDetachedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 500
    :cond_d
    if-nez v8, :cond_e

    if-eqz v18, :cond_f

    .line 501
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->notifyDataRegStateRilRadioTechnologyChanged()V

    .line 504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->isActiveSvlteMode(Lcom/android/internal/telephony/Phone;)Z

    move-result v32

    if-nez v32, :cond_29

    .line 505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyDataConnection(Ljava/lang/String;)V

    .line 515
    :cond_f
    :goto_14
    if-eqz v22, :cond_10

    .line 516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mVoiceRoamingOnRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 519
    :cond_10
    if-eqz v21, :cond_11

    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mVoiceRoamingOffRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 523
    :cond_11
    if-eqz v13, :cond_12

    .line 524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mDataRoamingOnRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 527
    :cond_12
    if-eqz v12, :cond_13

    .line 528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mDataRoamingOffRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 531
    :cond_13
    if-eqz v15, :cond_14

    .line 532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyLocationChanged()V

    .line 535
    :cond_14
    return-void

    .line 281
    .end local v7    # "hasCdmaDataConnectionAttached":Z
    .end local v8    # "hasCdmaDataConnectionChanged":Z
    .end local v9    # "hasCdmaDataConnectionDetached":Z
    .end local v10    # "hasChanged":Z
    .end local v11    # "hasDataRegStateChanged":Z
    .end local v12    # "hasDataRoamingOff":Z
    .end local v13    # "hasDataRoamingOn":Z
    .end local v14    # "hasDeregistered":Z
    .end local v15    # "hasLocationChanged":Z
    .end local v16    # "hasRegStateChanged":Z
    .end local v17    # "hasRegistered":Z
    .end local v18    # "hasRilDataRadioTechnologyChanged":Z
    .end local v19    # "hasRilVoiceRadioTechnologyChanged":Z
    .end local v20    # "hasVoiceRegStateChanged":Z
    .end local v21    # "hasVoiceRoamingOff":Z
    .end local v22    # "hasVoiceRoamingOn":Z
    .end local v29    # "tcl":Landroid/telephony/cdma/CdmaCellLocation;
    .end local v30    # "tm":Landroid/telephony/TelephonyManager;
    .end local v31    # "tss":Landroid/telephony/ServiceState;
    :cond_15
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 284
    .restart local v17    # "hasRegistered":Z
    :cond_16
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 287
    .restart local v14    # "hasDeregistered":Z
    :cond_17
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 291
    .restart local v7    # "hasCdmaDataConnectionAttached":Z
    :cond_18
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 295
    .restart local v9    # "hasCdmaDataConnectionDetached":Z
    :cond_19
    const/4 v8, 0x0

    goto/16 :goto_4

    .line 298
    .restart local v8    # "hasCdmaDataConnectionChanged":Z
    :cond_1a
    const/16 v19, 0x0

    goto/16 :goto_5

    .line 302
    .restart local v19    # "hasRilVoiceRadioTechnologyChanged":Z
    :cond_1b
    const/16 v18, 0x0

    goto/16 :goto_6

    .line 306
    .restart local v18    # "hasRilDataRadioTechnologyChanged":Z
    :cond_1c
    const/4 v11, 0x0

    goto/16 :goto_7

    .line 309
    .restart local v11    # "hasDataRegStateChanged":Z
    :cond_1d
    const/16 v20, 0x0

    goto/16 :goto_8

    .line 312
    .restart local v20    # "hasVoiceRegStateChanged":Z
    :cond_1e
    const/4 v10, 0x0

    goto/16 :goto_9

    .line 314
    .restart local v10    # "hasChanged":Z
    :cond_1f
    const/16 v22, 0x0

    goto/16 :goto_a

    .line 316
    .restart local v22    # "hasVoiceRoamingOn":Z
    :cond_20
    const/16 v21, 0x0

    goto/16 :goto_b

    .line 318
    .restart local v21    # "hasVoiceRoamingOff":Z
    :cond_21
    const/4 v13, 0x0

    goto/16 :goto_c

    .line 320
    .restart local v13    # "hasDataRoamingOn":Z
    :cond_22
    const/4 v12, 0x0

    goto/16 :goto_d

    .line 322
    .restart local v12    # "hasDataRoamingOff":Z
    :cond_23
    const/4 v15, 0x0

    goto/16 :goto_e

    .line 325
    .restart local v15    # "hasLocationChanged":Z
    :cond_24
    const/16 v16, 0x0

    goto/16 :goto_f

    .line 351
    .restart local v16    # "hasRegStateChanged":Z
    :cond_25
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mInService:Z

    goto/16 :goto_10

    .line 403
    .restart local v29    # "tcl":Landroid/telephony/cdma/CdmaCellLocation;
    .restart local v30    # "tm":Landroid/telephony/TelephonyManager;
    .restart local v31    # "tss":Landroid/telephony/ServiceState;
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v32

    const v33, 0x10400cf

    invoke-virtual/range {v32 .. v33}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "eriText":Ljava/lang/String;
    goto/16 :goto_11

    .line 440
    .end local v5    # "eriText":Ljava/lang/String;
    .restart local v25    # "operatorNumeric":Ljava/lang/String;
    .restart local v26    # "prevOperatorNumeric":Ljava/lang/String;
    :cond_27
    const-string v23, ""

    .line 441
    .local v23, "isoCountryCode":Ljava/lang/String;
    const/16 v32, 0x0

    const/16 v33, 0x3

    move-object/from16 v0, v25

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    .line 443
    .local v24, "mcc":Ljava/lang/String;
    const/16 v32, 0x0

    const/16 v33, 0x3

    :try_start_0
    move-object/from16 v0, v25

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v32

    invoke-static/range {v32 .. v32}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v23

    .line 451
    :goto_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    move-result v32

    move-object/from16 v0, v30

    move/from16 v1, v32

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setNetworkCountryIsoForPhone(ILjava/lang/String;)V

    .line 452
    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mGotCountryCode:Z

    .line 454
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->setOperatorIdd(Ljava/lang/String;)V

    .line 456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mNeedFixZone:Z

    move/from16 v33, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    move/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->shouldFixTimeZoneNow(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v32

    if-eqz v32, :cond_9

    .line 458
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->fixTimeZone(Ljava/lang/String;)V

    goto/16 :goto_12

    .line 445
    :catch_0
    move-exception v6

    .line 446
    .local v6, "ex":Ljava/lang/NumberFormatException;
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "pollStateDone: countryCodeForMcc error"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_15

    .line 447
    .end local v6    # "ex":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v6

    .line 448
    .local v6, "ex":Ljava/lang/StringIndexOutOfBoundsException;
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "pollStateDone: countryCodeForMcc error"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_15

    .line 462
    .end local v6    # "ex":Ljava/lang/StringIndexOutOfBoundsException;
    .end local v23    # "isoCountryCode":Ljava/lang/String;
    .end local v24    # "mcc":Ljava/lang/String;
    :cond_28
    const-string v32, "false"

    goto/16 :goto_13

    .line 507
    .end local v25    # "operatorNumeric":Ljava/lang/String;
    .end local v26    # "prevOperatorNumeric":Ljava/lang/String;
    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    move-result v32

    invoke-static/range {v32 .. v32}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getPsPhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v33, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-ne v0, v1, :cond_2a

    .line 508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyDataConnection(Ljava/lang/String;)V

    goto/16 :goto_14

    .line 510
    :cond_2a
    const-string v32, "Do nothing because it is not current PS phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_14
.end method

.method public updateGsmCdmaServiceState(Landroid/telephony/ServiceState;I)V
    .locals 2
    .param p1, "ss"    # Landroid/telephony/ServiceState;
    .param p2, "ssType"    # I

    .prologue
    .line 593
    if-nez p2, :cond_0

    .line 594
    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0, p1}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mGSMSS:Landroid/telephony/ServiceState;

    .line 595
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update mGSMSS = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mGSMSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 600
    :goto_0
    return-void

    .line 597
    :cond_0
    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0, p1}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mCDMASS:Landroid/telephony/ServiceState;

    .line 598
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update mCDMASS = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mCDMASS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_0
.end method
