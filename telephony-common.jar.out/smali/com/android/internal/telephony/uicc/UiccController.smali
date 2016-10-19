.class public Lcom/android/internal/telephony/uicc/UiccController;
.super Landroid/os/Handler;
.source "UiccController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/UiccController$2;,
        Lcom/android/internal/telephony/uicc/UiccController$ConfigModemRunnable;,
        Lcom/android/internal/telephony/uicc/UiccController$RegisterEusimRunnable;,
        Lcom/android/internal/telephony/uicc/UiccController$InitCardtypeRunnable;
    }
.end annotation


# static fields
.field private static final ACTION_RESET_MODEM:Ljava/lang/String; = "android.intent.action.sim.ACTION_RESET_MODEM"

.field public static final APP_FAM_3GPP:I = 0x1

.field public static final APP_FAM_3GPP2:I = 0x2

.field public static final APP_FAM_IMS:I = 0x3

.field public static final CARD_TYPE_CSIM:I = 0x8

.field public static final CARD_TYPE_NONE:I = 0x0

.field public static final CARD_TYPE_RUIM:I = 0x4

.field public static final CARD_TYPE_SIM:I = 0x1

.field public static final CARD_TYPE_USIM:I = 0x2

.field private static final COMMON_SLOT_PROPERTY:Ljava/lang/String; = "ro.mtk_sim_hot_swap_common_slot"

.field private static final DBG:Z = true

.field private static final DECRYPT_STATE:Ljava/lang/String; = "trigger_restart_framework"

.field protected static final EVENT_APPLICATION_SESSION_CHANGED:I = 0xca

.field protected static final EVENT_CDMA_CARD_TYPE:I = 0x75

.field protected static final EVENT_COMMON_SLOT_NO_CHANGED:I = 0x74

.field protected static final EVENT_EUSIM_READY:I = 0x76

.field protected static final EVENT_GET_ICC_APPLICATION_STATUS:I = 0xc9

.field private static final EVENT_GET_ICC_STATUS_DONE:I = 0x2

.field protected static final EVENT_GET_ICC_STATUS_DONE_FOR_SIM_MISSING:I = 0x6a

.field protected static final EVENT_GET_ICC_STATUS_DONE_FOR_SIM_RECOVERY:I = 0x6b

.field protected static final EVENT_HOTSWAP_GET_ICC_STATUS_DONE:I = 0x6f

.field private static final EVENT_ICC_STATUS_CHANGED:I = 0x1

.field protected static final EVENT_INVALID_SIM_DETECTED:I = 0x72

.field protected static final EVENT_QUERY_ICCID_DONE_FOR_HOT_SWAP:I = 0x6c

.field protected static final EVENT_QUERY_SIM_MISSING:I = 0x71

.field protected static final EVENT_QUERY_SIM_MISSING_STATUS:I = 0x68

.field protected static final EVENT_QUERY_SIM_STATUS_FOR_PLUG_IN:I = 0x70

.field protected static final EVENT_RADIO_AVAILABLE:I = 0x64

.field private static final EVENT_RADIO_UNAVAILABLE:I = 0x3

.field protected static final EVENT_REPOLL_SML_STATE:I = 0x73

.field protected static final EVENT_SIM_MISSING:I = 0x67

.field protected static final EVENT_SIM_PLUG_IN:I = 0x6e

.field protected static final EVENT_SIM_PLUG_OUT:I = 0x6d

.field protected static final EVENT_SIM_RECOVERY:I = 0x69

.field private static final EVENT_SIM_REFRESH:I = 0x4

.field protected static final EVENT_TURN_ON_ISIM_APPLICATION_DONE:I = 0xc8

.field protected static final EVENT_VIRTUAL_SIM_OFF:I = 0x66

.field protected static final EVENT_VIRTUAL_SIM_ON:I = 0x65

.field public static final INDEX_SVLTE:I = 0x64

.field private static final INITIAL_RETRY_INTERVAL_MSEC:I = 0xc8

.field private static final LOG_TAG:Ljava/lang/String; = "UiccController"

.field private static final OPERATOR_OM:Ljava/lang/String; = "OM"

.field private static final OPERATOR_OP09:Ljava/lang/String; = "OP09"

.field private static final PROPERTY_3G_SIM:Ljava/lang/String; = "persist.radio.simswitch"

.field private static final PROPERTY_CONFIG_EMDSTATUS_SEND:Ljava/lang/String; = "ril.cdma.emdstatus.send"

.field private static final PROPERTY_ICCID_C2K:Ljava/lang/String; = "ril.iccid.sim1_c2k"

.field private static final PROPERTY_NET_CDMA_MDMSTAT:Ljava/lang/String; = "net.cdma.mdmstat"

.field private static final PROPERTY_RIL_CARD_TYPE_SET:Ljava/lang/String; = "gsm.ril.cardtypeset"

.field private static final PROPERTY_RIL_CARD_TYPE_SET_2:Ljava/lang/String; = "gsm.ril.cardtypeset.2"

.field private static final PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

.field private static final SML_FEATURE_NEED_BROADCAST_INTENT:I = 0x1

.field private static final SML_FEATURE_NO_NEED_BROADCAST_INTENT:I = 0x0

.field private static final STATUS_NO_SIM_INSERTED:I = 0x0

.field private static final STATUS_SIM1_INSERTED:I = 0x1

.field private static final STATUS_SIM2_INSERTED:I = 0x2

.field private static final STATUS_SIM3_INSERTED:I = 0x4

.field private static final STATUS_SIM4_INSERTED:I = 0x8

.field private static mInstance:Lcom/android/internal/telephony/uicc/UiccController;

.field private static final mLock:Ljava/lang/Object;

.field private static mUiccControllerExt:Lcom/mediatek/common/telephony/IUiccControllerExt;


# instance fields
.field private UICCCONTROLLER_STRING_NOTIFICATION_SIM_MISSING:[I

.field private UICCCONTROLLER_STRING_NOTIFICATION_VIRTUAL_SIM_ON:[I

.field bSetTrm:Z

.field private mApplicationChangedRegistrants:Landroid/os/RegistrantList;

.field private mBtSlotId:I

.field private mC2KWPCardTypeReadyRegistrants:Landroid/os/RegistrantList;

.field private mC2KWPCardtype:[I

.field private mCdmaCardType:Lcom/android/internal/telephony/IccCardConstants$CardType;

.field private mCis:[Lcom/android/internal/telephony/CommandsInterface;

.field private mClearMsisdn:Z

.field private mContext:Landroid/content/Context;

.field protected mIccChangedRegistrants:Landroid/os/RegistrantList;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsHotSwap:Z

.field private mIsimSessionId:[I

.field private mNotifyIccCount:I

.field private mOperatorSpec:Ljava/lang/String;

.field private mRecoveryRegistrants:Landroid/os/RegistrantList;

.field private mRetryCounter:I

.field mRilInit:Z

.field mSetRadioDone:Z

.field private mSvlteCi:Lcom/android/internal/telephony/CommandsInterface;

.field private mSvlteIndex:I

.field mSwitchCardtype:Z

.field private mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

.field oldSvlteSlotId:I

.field sProxyPhones:[Lcom/android/internal/telephony/Phone;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 172
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    .line 209
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "gsm.ril.fulluicctype"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "gsm.ril.fulluicctype.2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "gsm.ril.fulluicctype.3"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "gsm.ril.fulluicctype.4"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/uicc/UiccController;->PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 8
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    const/4 v7, 0x4

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 251
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 170
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    new-array v4, v4, [Lcom/android/internal/telephony/uicc/UiccCard;

    iput-object v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    .line 176
    iput-boolean v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIsHotSwap:Z

    .line 177
    iput-boolean v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mClearMsisdn:Z

    .line 178
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$CardType;->UNKNOW_CARD:Lcom/android/internal/telephony/IccCardConstants$CardType;

    iput-object v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCdmaCardType:Lcom/android/internal/telephony/IccCardConstants$CardType;

    .line 180
    new-instance v4, Landroid/os/RegistrantList;

    invoke-direct {v4}, Landroid/os/RegistrantList;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    .line 181
    new-instance v4, Landroid/os/RegistrantList;

    invoke-direct {v4}, Landroid/os/RegistrantList;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mRecoveryRegistrants:Landroid/os/RegistrantList;

    .line 183
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIsimSessionId:[I

    .line 184
    new-instance v4, Landroid/os/RegistrantList;

    invoke-direct {v4}, Landroid/os/RegistrantList;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mApplicationChangedRegistrants:Landroid/os/RegistrantList;

    .line 186
    new-array v4, v7, [I

    fill-array-data v4, :array_0

    iput-object v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->UICCCONTROLLER_STRING_NOTIFICATION_SIM_MISSING:[I

    .line 193
    new-array v4, v7, [I

    fill-array-data v4, :array_1

    iput-object v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->UICCCONTROLLER_STRING_NOTIFICATION_VIRTUAL_SIM_ON:[I

    .line 207
    iput v6, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteIndex:I

    .line 208
    iput v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mNotifyIccCount:I

    .line 221
    iput v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mRetryCounter:I

    .line 228
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mC2KWPCardtype:[I

    .line 230
    new-instance v4, Landroid/os/RegistrantList;

    invoke-direct {v4}, Landroid/os/RegistrantList;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mC2KWPCardTypeReadyRegistrants:Landroid/os/RegistrantList;

    .line 231
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getActiveSvlteModeSlotId()I

    move-result v4

    iput v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->oldSvlteSlotId:I

    .line 232
    iput-boolean v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSetRadioDone:Z

    .line 233
    iput-boolean v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->bSetTrm:Z

    .line 234
    iput-boolean v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mRilInit:Z

    .line 235
    iput-boolean v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSwitchCardtype:Z

    .line 240
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    .line 1119
    new-instance v4, Lcom/android/internal/telephony/uicc/UiccController$1;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/uicc/UiccController$1;-><init>(Lcom/android/internal/telephony/uicc/UiccController;)V

    iput-object v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1360
    iput v6, p0, Lcom/android/internal/telephony/uicc/UiccController;->mBtSlotId:I

    .line 252
    const-string v4, "Creating UiccController"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 253
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    .line 254
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    .line 255
    const-string v4, "ro.operator.optr"

    const-string v5, "OM"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mOperatorSpec:Ljava/lang/String;

    .line 256
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Operator Spec:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mOperatorSpec:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 258
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Lcom/android/internal/telephony/uicc/UiccController;->setCis([Lcom/android/internal/telephony/CommandsInterface;Z)V

    .line 260
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 261
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/UiccController;->initC2KWPCardtype(Ljava/lang/Integer;)V

    .line 263
    :cond_0
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 267
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 268
    const-string v4, "android.intent.action.sim.ACTION_RESET_MODEM"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 269
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 270
    const-string v4, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 271
    const-string v4, "com.mediatek.phone.ACTION_SET_RADIO_TECHNOLOGY_START"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 272
    const-string v4, "com.mediatek.phone.ACTION_SET_RADIO_TECHNOLOGY_DONE"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 274
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 277
    :try_start_0
    const-class v4, Lcom/mediatek/common/telephony/IUiccControllerExt;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/common/telephony/IUiccControllerExt;

    sput-object v4, Lcom/android/internal/telephony/uicc/UiccController;->mUiccControllerExt:Lcom/mediatek/common/telephony/IUiccControllerExt;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    :goto_0
    const-string v4, "ril.cardtype.cache"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 284
    .local v0, "cardTypeCache":Ljava/lang/String;
    const-string v4, "UiccController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cardTypeCache:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 287
    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 288
    .local v1, "cardtype":I
    invoke-static {v1}, Lcom/android/internal/telephony/IccCardConstants$CardType;->getCardTypeFromInt(I)Lcom/android/internal/telephony/IccCardConstants$CardType;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCdmaCardType:Lcom/android/internal/telephony/IccCardConstants$CardType;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 293
    .end local v1    # "cardtype":I
    :cond_2
    :goto_1
    return-void

    .line 278
    .end local v0    # "cardTypeCache":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 279
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "UiccController"

    const-string v5, "Fail to create plug-in"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 289
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "cardTypeCache":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 290
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v4, "UiccController"

    const-string v5, "Fail to parse cardtype"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 186
    nop

    :array_0
    .array-data 4
        0x8050065
        0x805006a
        0x805006b
        0x805006c
    .end array-data

    .line 193
    :array_1
    .array-data 4
        0x805005d
        0x805005e
        0x805005f
        0x8050060
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/Integer;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccController;
    .param p1, "x1"    # Ljava/lang/Integer;

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->initC2KWPCardtype(Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccController;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/uicc/UiccController;)Lcom/android/internal/telephony/CommandsInterface;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccController;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteCi:Lcom/android/internal/telephony/CommandsInterface;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/uicc/UiccController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccController;

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccController;->registerEusimReady()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/uicc/UiccController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccController;

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccController;->configModemRemoteSimAccess()V

    return-void
.end method

.method private broadcastCdmaCardTypeIntent()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1621
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CDMA_CARD_TYPE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1622
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "cdma_card_type"

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCdmaCardType:Lcom/android/internal/telephony/IccCardConstants$CardType;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1624
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Broadcasting intent ACTION_CDMA_CARD_TYPE cardType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCdmaCardType:Lcom/android/internal/telephony/IccCardConstants$CardType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 1626
    const-string v1, "android.permission.READ_PHONE_STATE"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 1627
    return-void
.end method

.method private configModemRemoteSimAccess()V
    .locals 12

    .prologue
    .line 1675
    const-string v8, "gsm.ril.cardtypeset"

    const-string v9, "0"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1676
    .local v1, "cardTypeSet":Ljava/lang/String;
    const-string v8, "net.cdma.mdmstat"

    const-string v9, "not ready"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1677
    .local v7, "md3State":Ljava/lang/String;
    const-string v8, "UiccController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "RIL configModemStatus: cardTypeSet="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "  md3State="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1678
    const-string v8, "1"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "ready"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 1679
    :cond_0
    new-instance v2, Lcom/android/internal/telephony/uicc/UiccController$ConfigModemRunnable;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/uicc/UiccController$ConfigModemRunnable;-><init>(Lcom/android/internal/telephony/uicc/UiccController;)V

    .line 1680
    .local v2, "configModemRunnable":Lcom/android/internal/telephony/uicc/UiccController$ConfigModemRunnable;
    const-wide/16 v8, 0xc8

    invoke-virtual {p0, v2, v8, v9}, Lcom/android/internal/telephony/uicc/UiccController;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1765
    .end local v2    # "configModemRunnable":Lcom/android/internal/telephony/uicc/UiccController$ConfigModemRunnable;
    :cond_1
    :goto_0
    return-void

    .line 1683
    :cond_2
    iget v8, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteIndex:I

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/uicc/UiccController;->getFullCardType(I)I

    move-result v3

    .line 1686
    .local v3, "fullType":I
    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/uicc/UiccController;->getFullCardType(I)I

    move-result v4

    .line 1687
    .local v4, "fullType_2":I
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v0

    .line 1688
    .local v0, "cPhoneId":I
    const-string v8, "UiccController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "configModemStatus: getMainCapabilityPhoneId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1689
    const/4 v6, 0x0

    .line 1690
    .local v6, "md3AccessProtocol2":Z
    and-int/lit8 v8, v4, 0x8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_3

    and-int/lit8 v8, v4, 0x4

    const/4 v9, 0x4

    if-ne v8, v9, :cond_4

    :cond_3
    const/4 v8, 0x1

    if-ne v0, v8, :cond_4

    .line 1692
    const-string v8, "UiccController"

    const-string v9, "configModemStatus: md3AccessProtocol2 = true!"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1693
    const/4 v6, 0x1

    .line 1696
    :cond_4
    if-nez v3, :cond_8

    .line 1698
    const-string v8, "UiccController"

    const-string v9, "SIM hot plug configModemStatus: no card"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1699
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    array-length v8, v8

    if-ge v5, v8, :cond_6

    .line 1700
    if-eqz v6, :cond_5

    .line 1701
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v8, v8, v5

    const/4 v9, 0x1

    const/4 v10, 0x2

    const/4 v11, 0x0

    invoke-interface {v8, v9, v10, v11}, Lcom/android/internal/telephony/CommandsInterface;->configModemStatus(IILandroid/os/Message;)V

    .line 1699
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1703
    :cond_5
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v8, v8, v5

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-interface {v8, v9, v10, v11}, Lcom/android/internal/telephony/CommandsInterface;->configModemStatus(IILandroid/os/Message;)V

    goto :goto_2

    .line 1706
    :cond_6
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v8, :cond_1

    .line 1707
    if-eqz v6, :cond_7

    .line 1708
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v9, 0x1

    const/4 v10, 0x2

    const/4 v11, 0x0

    invoke-interface {v8, v9, v10, v11}, Lcom/android/internal/telephony/CommandsInterface;->configModemStatus(IILandroid/os/Message;)V

    goto :goto_0

    .line 1710
    :cond_7
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-interface {v8, v9, v10, v11}, Lcom/android/internal/telephony/CommandsInterface;->configModemStatus(IILandroid/os/Message;)V

    goto :goto_0

    .line 1713
    .end local v5    # "i":I
    :cond_8
    and-int/lit8 v8, v3, 0x4

    if-nez v8, :cond_a

    and-int/lit8 v8, v3, 0x8

    if-nez v8, :cond_a

    .line 1715
    const-string v8, "UiccController"

    const-string v9, "SIM hot plug configModemStatus: GSM only"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1716
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_3
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    array-length v8, v8

    if-ge v5, v8, :cond_9

    .line 1717
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v8, v8, v5

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-interface {v8, v9, v10, v11}, Lcom/android/internal/telephony/CommandsInterface;->configModemStatus(IILandroid/os/Message;)V

    .line 1716
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1719
    :cond_9
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v8, :cond_1

    .line 1720
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-interface {v8, v9, v10, v11}, Lcom/android/internal/telephony/CommandsInterface;->configModemStatus(IILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1722
    .end local v5    # "i":I
    :cond_a
    and-int/lit8 v8, v3, 0x1

    if-nez v8, :cond_b

    and-int/lit8 v8, v3, 0x2

    if-eqz v8, :cond_c

    :cond_b
    and-int/lit8 v8, v3, 0x1

    const/4 v9, 0x1

    if-ne v8, v9, :cond_10

    and-int/lit8 v8, v3, 0x4

    const/4 v9, 0x4

    if-ne v8, v9, :cond_10

    .line 1728
    :cond_c
    const-string v8, "UiccController"

    const-string v9, "SIM hot plug configModemStatus: CDMA only"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1729
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_4
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    array-length v8, v8

    if-ge v5, v8, :cond_e

    .line 1730
    if-eqz v6, :cond_d

    .line 1731
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v8, v8, v5

    const/4 v9, 0x1

    const/4 v10, 0x2

    const/4 v11, 0x0

    invoke-interface {v8, v9, v10, v11}, Lcom/android/internal/telephony/CommandsInterface;->configModemStatus(IILandroid/os/Message;)V

    .line 1729
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 1733
    :cond_d
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v8, v8, v5

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-interface {v8, v9, v10, v11}, Lcom/android/internal/telephony/CommandsInterface;->configModemStatus(IILandroid/os/Message;)V

    goto :goto_5

    .line 1736
    :cond_e
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v8, :cond_1

    .line 1737
    if-eqz v6, :cond_f

    .line 1738
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v9, 0x1

    const/4 v10, 0x2

    const/4 v11, 0x0

    invoke-interface {v8, v9, v10, v11}, Lcom/android/internal/telephony/CommandsInterface;->configModemStatus(IILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1740
    :cond_f
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-interface {v8, v9, v10, v11}, Lcom/android/internal/telephony/CommandsInterface;->configModemStatus(IILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1743
    .end local v5    # "i":I
    :cond_10
    and-int/lit8 v8, v3, 0x2

    const/4 v9, 0x2

    if-ne v8, v9, :cond_14

    and-int/lit8 v8, v3, 0x8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_14

    .line 1746
    const-string v8, "UiccController"

    const-string v9, "SIM hot plug configModemStatus: CT LTE"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1747
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_6
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    array-length v8, v8

    if-ge v5, v8, :cond_12

    .line 1748
    if-eqz v6, :cond_11

    .line 1749
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v8, v8, v5

    const/4 v9, 0x2

    const/4 v10, 0x2

    const/4 v11, 0x0

    invoke-interface {v8, v9, v10, v11}, Lcom/android/internal/telephony/CommandsInterface;->configModemStatus(IILandroid/os/Message;)V

    .line 1747
    :goto_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 1751
    :cond_11
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v8, v8, v5

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-interface {v8, v9, v10, v11}, Lcom/android/internal/telephony/CommandsInterface;->configModemStatus(IILandroid/os/Message;)V

    goto :goto_7

    .line 1754
    :cond_12
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v8, :cond_1

    .line 1755
    if-eqz v6, :cond_13

    .line 1756
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v9, 0x2

    const/4 v10, 0x2

    const/4 v11, 0x0

    invoke-interface {v8, v9, v10, v11}, Lcom/android/internal/telephony/CommandsInterface;->configModemStatus(IILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1758
    :cond_13
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-interface {v8, v9, v10, v11}, Lcom/android/internal/telephony/CommandsInterface;->configModemStatus(IILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1763
    .end local v5    # "i":I
    :cond_14
    const-string v8, "UiccController"

    const-string v9, "SIM hot plug configModemStatus: other case, may not happen!"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private getCiIndex(Landroid/os/Message;)Ljava/lang/Integer;
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 821
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 828
    .local v1, "index":Ljava/lang/Integer;
    if-eqz p1, :cond_0

    .line 829
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 830
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v1    # "index":Ljava/lang/Integer;
    check-cast v1, Ljava/lang/Integer;

    .line 838
    .restart local v1    # "index":Ljava/lang/Integer;
    :cond_0
    :goto_0
    return-object v1

    .line 831
    :cond_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Landroid/os/AsyncResult;

    if-eqz v2, :cond_0

    .line 832
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 833
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 834
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v1    # "index":Ljava/lang/Integer;
    check-cast v1, Ljava/lang/Integer;

    .restart local v1    # "index":Ljava/lang/Integer;
    goto :goto_0
.end method

.method private getFullCardType(I)I
    .locals 7
    .param p1, "slotId"    # I

    .prologue
    .line 1630
    if-ltz p1, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    if-lt p1, v4, :cond_1

    .line 1631
    :cond_0
    const-string v4, "UiccController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getFullCardType invalid slotId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1632
    const/4 v2, 0x0

    .line 1650
    :goto_0
    return v2

    .line 1634
    :cond_1
    sget-object v4, Lcom/android/internal/telephony/uicc/UiccController;->PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1635
    .local v1, "cardType":Ljava/lang/String;
    const-string v4, "UiccController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getFullCardType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1636
    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1637
    .local v0, "appType":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 1638
    .local v2, "fullType":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v4, v0

    if-ge v3, v4, :cond_6

    .line 1639
    const-string v4, "USIM"

    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1640
    or-int/lit8 v2, v2, 0x2

    .line 1638
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1641
    :cond_3
    const-string v4, "SIM"

    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1642
    or-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1643
    :cond_4
    const-string v4, "CSIM"

    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1644
    or-int/lit8 v2, v2, 0x8

    goto :goto_2

    .line 1645
    :cond_5
    const-string v4, "RUIM"

    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1646
    or-int/lit8 v2, v2, 0x4

    goto :goto_2

    .line 1649
    :cond_6
    const-string v4, "UiccController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fullType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getInstance()Lcom/android/internal/telephony/uicc/UiccController;
    .locals 3

    .prologue
    .line 337
    sget-object v1, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 338
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mInstance:Lcom/android/internal/telephony/uicc/UiccController;

    if-nez v0, :cond_0

    .line 339
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "UiccController.getInstance can\'t be called before make()"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 343
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 342
    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mInstance:Lcom/android/internal/telephony/uicc/UiccController;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method private ignoreGetSimStatus()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1862
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1864
    .local v0, "airplaneMode":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ignoreGetSimStatus(): airplaneMode - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 1865
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->isFlightModePowerOffModemEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    if-ne v0, v1, :cond_0

    .line 1866
    const-string v2, "ignoreGetSimStatus(): return true"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 1870
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private indexValidForSvlte(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1600
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initC2KWPCardtype(Ljava/lang/Integer;)V
    .locals 10
    .param p1, "index"    # Ljava/lang/Integer;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 306
    const-string v7, "gsm.ril.cardtypeset"

    const-string v8, "0"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 307
    .local v1, "cardTypeSet":Ljava/lang/String;
    const-string v7, "gsm.ril.cardtypeset.2"

    const-string v8, "0"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 308
    .local v2, "cardTypeSet_2":Ljava/lang/String;
    const-string v7, "UiccController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "initC2KWPCardtype gsm.ril.cardtypeset="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", gsm.ril.cardtypeset.2="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    const/4 v0, 0x0

    .line 311
    .local v0, "cardTypeReady":Z
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v4

    .line 312
    .local v4, "phoneCount":I
    if-ne v4, v5, :cond_0

    .line 314
    const-string v5, "UiccController"

    const-string v7, "single sim"

    invoke-static {v5, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const-string v5, "1"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 325
    :goto_0
    if-eqz v0, :cond_4

    .line 326
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/uicc/UiccController;->updateC2KWPCardtype(Z)V

    .line 327
    const-string v5, "gsm.ril.init"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    const-string v5, "set gsm.ril.init to 0"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 334
    :goto_1
    return-void

    .line 317
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-nez v7, :cond_1

    .line 318
    const-string v5, "1"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 319
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v5, :cond_2

    .line 320
    const-string v5, "1"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 322
    :cond_2
    const-string v7, "1"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "1"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v0, v5

    :goto_2
    goto :goto_0

    :cond_3
    move v0, v6

    goto :goto_2

    .line 330
    :cond_4
    new-instance v3, Lcom/android/internal/telephony/uicc/UiccController$InitCardtypeRunnable;

    invoke-direct {v3, p0, p1}, Lcom/android/internal/telephony/uicc/UiccController$InitCardtypeRunnable;-><init>(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/Integer;)V

    .line 331
    .local v3, "initCardtypeRunnable":Lcom/android/internal/telephony/uicc/UiccController$InitCardtypeRunnable;
    const-wide/16 v6, 0xc8

    invoke-virtual {p0, v3, v6, v7}, Lcom/android/internal/telephony/uicc/UiccController;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method

.method private isCdmaCard(I)Z
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 1887
    const-string v0, "UiccController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IsCdmaCard  index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1888
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 1889
    iget p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteIndex:I

    .line 1891
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getFullCardType(I)I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getFullCardType(I)I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSvlteTestSimMode()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1854
    const-string v1, "persist.sys.forcttestcard"

    .line 1855
    .local v1, "testCardFlag":Ljava/lang/String;
    const-string v3, "0"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1856
    .local v0, "forceCTTestCard":Ljava/lang/String;
    const-string v3, "UiccController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "testCardFlag: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1857
    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getInstance()Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->isUsimOnly(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private isValidCardIndex(I)Z
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 982
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isValidCardIndex index = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 983
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/16 v0, 0x64

    if-ne p1, v0, :cond_2

    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidCardType(I)Z
    .locals 6
    .param p1, "cardType"    # I

    .prologue
    .line 1874
    const-string v3, "UiccController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isValidCardType  cardType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1875
    invoke-static {}, Lcom/android/internal/telephony/IccCardConstants$CardType;->values()[Lcom/android/internal/telephony/IccCardConstants$CardType;

    move-result-object v0

    .line 1876
    .local v0, "cardTypes":[Lcom/android/internal/telephony/IccCardConstants$CardType;
    const/4 v2, 0x0

    .line 1877
    .local v2, "match":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 1878
    aget-object v3, v0, v1

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardConstants$CardType;->getValue()I

    move-result v3

    if-ne v3, p1, :cond_1

    .line 1879
    const/4 v2, 0x1

    .line 1883
    :cond_0
    return v2

    .line 1877
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 988
    const-string v0, "UiccController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    return-void
.end method

.method public static make(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/uicc/UiccController;
    .locals 3
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 242
    sget-object v1, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 243
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mInstance:Lcom/android/internal/telephony/uicc/UiccController;

    if-eqz v0, :cond_0

    .line 244
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "MSimUiccController.make() should only be called once"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 248
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 246
    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/internal/telephony/uicc/UiccController;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;-><init>(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mInstance:Lcom/android/internal/telephony/uicc/UiccController;

    .line 247
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mInstance:Lcom/android/internal/telephony/uicc/UiccController;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method private declared-synchronized onGetIccApplicationStatusDone(Landroid/os/AsyncResult;Ljava/lang/Integer;)V
    .locals 7
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "index"    # Ljava/lang/Integer;

    .prologue
    .line 1326
    monitor-enter p0

    :try_start_0
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 1327
    const-string v1, "UiccController"

    const-string v2, "Error getting ICC status. RIL_REQUEST_GET_ICC_APPLICATION_STATUS should never return an error"

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v1, v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1358
    :goto_0
    monitor-exit p0

    return-void

    .line 1332
    :cond_0
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->isValidCardIndex(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1333
    const-string v1, "UiccController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onGetIccApplicationStatusDone: invalid index : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1326
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1336
    :cond_1
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetIccApplicationStatusDone, index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 1338
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/uicc/IccCardStatus;

    .line 1340
    .local v0, "status":Lcom/android/internal/telephony/uicc/IccCardStatus;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v1, v1, v2

    if-nez v1, :cond_2

    .line 1342
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-instance v3, Lcom/android/internal/telephony/uicc/UiccCard;

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v3, v4, v5, v0, v6}, Lcom/android/internal/telephony/uicc/UiccCard;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;I)V

    aput-object v3, v1, v2

    .line 1356
    :goto_1
    const-string v1, "Notifying mApplicationChangedRegistrants"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 1357
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mApplicationChangedRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v3, p2, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 1353
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/telephony/uicc/UiccCard;->update(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private declared-synchronized onGetIccCardStatusDone(Landroid/os/AsyncResult;Ljava/lang/Integer;)V
    .locals 8
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "index"    # Ljava/lang/Integer;

    .prologue
    .line 864
    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 865
    const-string v0, "UiccController"

    const-string v1, "Error getting ICC status. RIL_REQUEST_GET_ICC_STATUS should never return an error"

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 939
    :goto_0
    monitor-exit p0

    return-void

    .line 870
    :cond_0
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->isValidCardIndex(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 871
    const-string v0, "UiccController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetIccCardStatusDone: invalid index : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 864
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 874
    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGetIccCardStatusDone, index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 876
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/uicc/IccCardStatus;

    .line 887
    .local v3, "status":Lcom/android/internal/telephony/uicc/IccCardStatus;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_3

    .line 889
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteIndex:I

    aget-object v0, v0, v1

    if-nez v0, :cond_2

    .line 891
    const-string v0, "new SVLTE PS UiccApplication"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 892
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    iget v7, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteIndex:I

    new-instance v0, Lcom/android/internal/telephony/uicc/UiccCard;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    iget v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteIndex:I

    aget-object v2, v2, v4

    iget v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteIndex:I

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/UiccCard;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;ILcom/android/internal/telephony/CommandsInterface;)V

    aput-object v0, v6, v7

    .line 936
    :goto_1
    const-string v0, "Notifying IccChangedRegistrants"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 937
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v2, p2, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 896
    :cond_2
    const-string v0, "update SVLTE PS UiccApplication"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 898
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteIndex:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    iget v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteIndex:I

    aget-object v2, v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/UiccCard;->update(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;)V

    .line 899
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteIndex:I

    aget-object v0, v0, v1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/UiccCard;->registerCdmaCardImsiDone(I)V

    goto :goto_1

    .line 901
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteIndex:I

    if-ne v0, v1, :cond_5

    .line 903
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteIndex:I

    aget-object v0, v0, v1

    if-nez v0, :cond_4

    .line 905
    const-string v0, "new SVLTE CS UiccApplication"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 906
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    iget v7, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteIndex:I

    new-instance v0, Lcom/android/internal/telephony/uicc/UiccCard;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    iget v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteIndex:I

    aget-object v2, v2, v4

    iget v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteIndex:I

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/UiccCard;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;ILcom/android/internal/telephony/CommandsInterface;)V

    aput-object v0, v6, v7

    goto :goto_1

    .line 910
    :cond_4
    const-string v0, "update SVLTE CS UiccApplication"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 912
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteIndex:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    iget v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteIndex:I

    aget-object v2, v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/UiccCard;->update(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;)V

    .line 913
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteIndex:I

    aget-object v0, v0, v1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/UiccCard;->registerCdmaCardImsiDone(I)V

    goto/16 :goto_1

    .line 917
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    if-nez v0, :cond_6

    .line 919
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "new UiccApplication index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 920
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-instance v2, Lcom/android/internal/telephony/uicc/UiccCard;

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v2, v4, v5, v3, v6}, Lcom/android/internal/telephony/uicc/UiccCard;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;I)V

    aput-object v2, v0, v1

    goto/16 :goto_1

    .line 931
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update UiccApplication index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 932
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v2, v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/UiccCard;->update(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1
.end method

.method private declared-synchronized onGetIccCardStatusDone(Landroid/os/AsyncResult;Ljava/lang/Integer;Z)V
    .locals 9
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "index"    # Ljava/lang/Integer;
    .param p3, "isUpdate"    # Z

    .prologue
    .line 1016
    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 1017
    const-string v0, "UiccController"

    const-string v1, "Error getting ICC status. RIL_REQUEST_GET_ICC_STATUS should never return an error"

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1093
    :goto_0
    monitor-exit p0

    return-void

    .line 1022
    :cond_0
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->isValidCardIndex(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1023
    const-string v0, "UiccController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetIccCardStatusDone: invalid index : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1016
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1026
    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGetIccCardStatusDone, index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "isUpdateSiminfo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 1028
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/uicc/IccCardStatus;

    .line 1035
    .local v3, "status":Lcom/android/internal/telephony/uicc/IccCardStatus;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_3

    .line 1037
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteIndex:I

    aget-object v0, v0, v1

    if-nez v0, :cond_2

    .line 1039
    const-string v0, "new SVLTE PS UiccApplication"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 1040
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    iget v8, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteIndex:I

    new-instance v0, Lcom/android/internal/telephony/uicc/UiccCard;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    iget v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteIndex:I

    aget-object v2, v2, v4

    iget v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteIndex:I

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/UiccCard;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;ILcom/android/internal/telephony/CommandsInterface;)V

    aput-object v0, v7, v8

    .line 1082
    :goto_1
    const-string v0, "Notifying IccChangedRegistrants"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 1084
    const-string v0, "ro.mtk_sim_hot_swap_common_slot"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1085
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v2, p2, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1044
    :cond_2
    const-string v0, "update SVLTE PS UiccApplication"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 1046
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteIndex:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    iget v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteIndex:I

    aget-object v2, v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/UiccCard;->update(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;)V

    goto :goto_1

    .line 1048
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteIndex:I

    if-ne v0, v1, :cond_5

    .line 1050
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteIndex:I

    aget-object v0, v0, v1

    if-nez v0, :cond_4

    .line 1052
    const-string v0, "new SVLTE CS UiccApplication"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 1053
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    iget v8, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteIndex:I

    new-instance v0, Lcom/android/internal/telephony/uicc/UiccCard;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    iget v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteIndex:I

    aget-object v2, v2, v4

    iget v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteIndex:I

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/UiccCard;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;ILcom/android/internal/telephony/CommandsInterface;)V

    aput-object v0, v7, v8

    goto :goto_1

    .line 1057
    :cond_4
    const-string v0, "update SVLTE CS UiccApplication"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 1059
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteIndex:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    iget v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteIndex:I

    aget-object v2, v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/UiccCard;->update(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;)V

    goto :goto_1

    .line 1063
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    if-nez v0, :cond_6

    .line 1065
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "new UiccApplication index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 1066
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-instance v2, Lcom/android/internal/telephony/uicc/UiccCard;

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aget-object v5, v5, v7

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {v2, v4, v5, v3, v7}, Lcom/android/internal/telephony/uicc/UiccCard;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;I)V

    aput-object v2, v0, v1

    goto/16 :goto_1

    .line 1077
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update UiccApplication index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 1078
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v2, v2, v4

    invoke-virtual {v0, v1, v2, v3, p3}, Lcom/android/internal/telephony/uicc/UiccCard;->update(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;Z)V

    goto/16 :goto_1

    .line 1087
    :cond_7
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 1088
    .local v6, "result":Landroid/os/Bundle;
    const-string v0, "Index"

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1089
    const-string v0, "ForceUpdate"

    invoke-virtual {v6, v0, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1091
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v2, v6, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private onSimRefresh(Landroid/os/AsyncResult;Ljava/lang/Integer;)V
    .locals 8
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "index"    # Ljava/lang/Integer;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 942
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_1

    .line 943
    const-string v3, "UiccController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sim REFRESH with exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    :cond_0
    :goto_0
    return-void

    .line 947
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/UiccController;->isValidCardIndex(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 948
    const-string v3, "UiccController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSimRefresh: invalid index : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 952
    :cond_2
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    .line 953
    .local v2, "resp":Lcom/android/internal/telephony/uicc/IccRefreshResponse;
    const-string v3, "UiccController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSimRefresh: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v3, v3, v4

    if-nez v3, :cond_3

    .line 956
    const-string v3, "UiccController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSimRefresh: refresh on null card : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 960
    :cond_3
    iget v3, v2, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    if-ne v3, v7, :cond_4

    iget-object v3, v2, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->aid:Ljava/lang/String;

    if-nez v3, :cond_5

    .line 962
    :cond_4
    const-string v3, "UiccController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring reset: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 966
    :cond_5
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v3, v3, v4

    iget-object v4, v2, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->aid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/uicc/UiccCard;->resetAppWithAid(Ljava/lang/String;)Z

    move-result v0

    .line 967
    .local v0, "changed":Z
    if-eqz v0, :cond_0

    .line 968
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1120072

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 970
    .local v1, "requirePowerOffOnSimRefreshReset":Z
    if-eqz v1, :cond_6

    .line 971
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v3, v3, v4

    const/4 v4, 0x0

    invoke-interface {v3, v4, v6}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 975
    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    new-instance v4, Landroid/os/AsyncResult;

    invoke-direct {v4, v6, p2, v6}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v3, v4}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 973
    :cond_6
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/uicc/UiccController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    goto :goto_1
.end method

.method private parsePersoType(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;)Ljava/lang/String;
    .locals 2
    .param p1, "state"    # Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .prologue
    .line 1390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parsePersoType, state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 1391
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController$2;->$SwitchMap$com$android$internal$telephony$uicc$IccCardApplicationStatus$PersoSubState:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1405
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 1393
    :pswitch_0
    const-string v0, "NETWORK"

    goto :goto_0

    .line 1395
    :pswitch_1
    const-string v0, "NETWORK_SUBSET"

    goto :goto_0

    .line 1397
    :pswitch_2
    const-string v0, "CORPORATE"

    goto :goto_0

    .line 1399
    :pswitch_3
    const-string v0, "SERVICE_PROVIDER"

    goto :goto_0

    .line 1401
    :pswitch_4
    const-string v0, "SIM"

    goto :goto_0

    .line 1391
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private registerEusimReady()V
    .locals 11

    .prologue
    const/4 v7, 0x1

    .line 1538
    const-string v8, "gsm.ril.cardtypeset"

    const-string v9, "0"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1539
    .local v1, "cardTypeSet":Ljava/lang/String;
    const-string v8, "gsm.ril.cardtypeset.2"

    const-string v9, "0"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1540
    .local v2, "cardTypeSet_2":Ljava/lang/String;
    const-string v8, "UiccController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "registerEusimReady gsm.ril.cardtypeset="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", gsm.ril.cardtypeset.2="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1542
    const/4 v0, 0x0

    .line 1543
    .local v0, "cardTypeReady":Z
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v5

    .line 1544
    .local v5, "phoneCount":I
    if-ne v5, v7, :cond_0

    .line 1546
    const-string v7, "UiccController"

    const-string v8, "single sim"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1547
    const-string v7, "1"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1551
    :goto_0
    if-eqz v0, :cond_2

    .line 1552
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    array-length v7, v7

    if-ge v3, v7, :cond_3

    .line 1553
    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v3}, Ljava/lang/Integer;-><init>(I)V

    .line 1554
    .local v4, "index":Ljava/lang/Integer;
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v7, v7, v3

    const/16 v8, 0x76

    invoke-interface {v7, p0, v8, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForEusimReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1552
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1549
    .end local v3    # "i":I
    .end local v4    # "index":Ljava/lang/Integer;
    :cond_0
    const-string v8, "1"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "1"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v0, v7

    :goto_2
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    .line 1557
    :cond_2
    new-instance v6, Lcom/android/internal/telephony/uicc/UiccController$RegisterEusimRunnable;

    invoke-direct {v6, p0}, Lcom/android/internal/telephony/uicc/UiccController$RegisterEusimRunnable;-><init>(Lcom/android/internal/telephony/uicc/UiccController;)V

    .line 1558
    .local v6, "registerEusimRunnable":Lcom/android/internal/telephony/uicc/UiccController$RegisterEusimRunnable;
    const-wide/16 v8, 0xc8

    invoke-virtual {p0, v6, v8, v9}, Lcom/android/internal/telephony/uicc/UiccController;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1561
    .end local v6    # "registerEusimRunnable":Lcom/android/internal/telephony/uicc/UiccController$RegisterEusimRunnable;
    :cond_3
    return-void
.end method

.method private removeNotificationVirtual(II)V
    .locals 3
    .param p1, "slot"    # I
    .param p2, "notifyType"    # I

    .prologue
    .line 1321
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1322
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    add-int v1, p2, p1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1323
    return-void
.end method

.method private setNotification(II)V
    .locals 8
    .param p1, "slot"    # I
    .param p2, "notifyType"    # I

    .prologue
    .line 1096
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setNotification(): notifyType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 1097
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    .line 1098
    .local v2, "notification":Landroid/app/Notification;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v2, Landroid/app/Notification;->when:J

    .line 1099
    const/16 v5, 0x10

    iput v5, v2, Landroid/app/Notification;->flags:I

    .line 1100
    const v5, 0x108008a

    iput v5, v2, Landroid/app/Notification;->icon:I

    .line 1101
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1102
    .local v1, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    const/high16 v7, 0x8000000

    invoke-static {v5, v6, v1, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    iput-object v5, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 1104
    sget-object v5, Lcom/android/internal/telephony/uicc/UiccController;->mUiccControllerExt:Lcom/mediatek/common/telephony/IUiccControllerExt;

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    invoke-interface {v5, v6, p1}, Lcom/mediatek/common/telephony/IUiccControllerExt;->getMissingTitle(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    .line 1105
    .local v4, "title":Ljava/lang/String;
    sget-object v5, Lcom/android/internal/telephony/uicc/UiccController;->mUiccControllerExt:Lcom/mediatek/common/telephony/IUiccControllerExt;

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    invoke-interface {v5, v6}, Lcom/mediatek/common/telephony/IUiccControllerExt;->getMissingDetail(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1107
    .local v0, "detail":Ljava/lang/CharSequence;
    iput-object v4, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1108
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    iget-object v6, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v5, v4, v0, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1109
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    const-string v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 1110
    .local v3, "notificationManager":Landroid/app/NotificationManager;
    add-int v5, p2, p1

    invoke-virtual {v3, v5, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1111
    return-void
.end method

.method private setNotificationVirtual(II)V
    .locals 9
    .param p1, "slot"    # I
    .param p2, "notifyType"    # I

    .prologue
    const v8, 0x8050061

    .line 1298
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setNotificationVirtual(): notifyType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 1299
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    .line 1300
    .local v2, "notification":Landroid/app/Notification;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v2, Landroid/app/Notification;->when:J

    .line 1301
    const/16 v5, 0x10

    iput v5, v2, Landroid/app/Notification;->flags:I

    .line 1302
    const v5, 0x108008a

    iput v5, v2, Landroid/app/Notification;->icon:I

    .line 1303
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1304
    .local v1, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    const/high16 v7, 0x8000000

    invoke-static {v5, v6, v1, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    iput-object v5, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 1305
    const/4 v4, 0x0

    .line 1307
    .local v4, "title":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_0

    .line 1308
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccController;->UICCCONTROLLER_STRING_NOTIFICATION_VIRTUAL_SIM_ON:[I

    aget v6, v6, p1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1312
    :goto_0
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1313
    .local v0, "detail":Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1315
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    iget-object v6, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v5, v4, v0, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1316
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    const-string v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 1317
    .local v3, "notificationManager":Landroid/app/NotificationManager;
    add-int v5, p2, p1

    invoke-virtual {v3, v5, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1318
    return-void

    .line 1310
    .end local v0    # "detail":Ljava/lang/CharSequence;
    .end local v3    # "notificationManager":Landroid/app/NotificationManager;
    :cond_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private setTrm()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1896
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSetRadioDone:Z

    .line 1897
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->bSetTrm:Z

    .line 1898
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTrm, mSetRadioDone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSetRadioDone:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bSetTrm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->bSetTrm:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 1900
    const-string v0, "gsm.ril.cardtypeset"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1901
    const-string v0, "gsm.ril.cardtypeset.2"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1902
    const-string v0, "ril.cdma.emdstatus.send"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1904
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x13

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setTrm(ILandroid/os/Message;)V

    .line 1905
    return-void
.end method

.method private updateC2KWPCardtype(Z)V
    .locals 12
    .param p1, "force"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1788
    const/4 v4, 0x0

    .line 1789
    .local v4, "mIccCardProxy":Lcom/android/internal/telephony/uicc/IccCardProxy;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccController;->mC2KWPCardtype:[I

    array-length v7, v7

    if-ge v3, v7, :cond_1

    .line 1790
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccController;->mC2KWPCardtype:[I

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/UiccController;->getFullCardType(I)I

    move-result v10

    aput v10, v7, v3

    .line 1791
    const-string v7, "UiccController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateC2KWPCardtype mC2KWPCardtype["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/uicc/UiccController;->mC2KWPCardtype:[I

    aget v11, v11, v3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1792
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->getExternalModemSlot()I

    move-result v7

    if-ne v3, v7, :cond_0

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccController;->mOperatorSpec:Ljava/lang/String;

    const-string v10, "OP09"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccController;->mC2KWPCardtype:[I

    aget v7, v7, v3

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccController;->mC2KWPCardtype:[I

    aget v7, v7, v3

    and-int/lit8 v7, v7, 0x4

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccController;->mC2KWPCardtype:[I

    aget v7, v7, v3

    and-int/lit8 v7, v7, 0x8

    if-nez v7, :cond_0

    .line 1798
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccController;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    if-eqz v7, :cond_0

    .line 1799
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccController;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v7, v7, v3

    check-cast v7, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/uicc/IccCardProxy;

    move-object v4, v7

    check-cast v4, Lcom/android/internal/telephony/uicc/IccCardProxy;

    .line 1800
    if-eqz v4, :cond_0

    .line 1801
    const/16 v7, 0x10

    invoke-virtual {v4, v7}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setVoiceRadioTech(I)V

    .line 1802
    const-string v7, "UiccController"

    const-string v10, "Op09 Switch gsm radio technology for usim in slot 0"

    invoke-static {v7, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1789
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 1808
    :cond_1
    const-string v7, "gsm.ril.cardtypeset"

    const-string v10, "0"

    invoke-static {v7, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1809
    .local v1, "cardTypeSet":Ljava/lang/String;
    const-string v7, "gsm.ril.cardtypeset.2"

    const-string v10, "0"

    invoke-static {v7, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1810
    .local v2, "cardTypeSet_2":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1811
    .local v0, "cardTypeReady":Z
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v5

    .line 1812
    .local v5, "phoneCount":I
    if-ne v5, v8, :cond_5

    .line 1814
    const-string v7, "UiccController"

    const-string v8, "single sim"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1815
    const-string v7, "1"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1819
    :goto_1
    const-string v7, "ril.cdma.switch.needupdate"

    const-string v8, "0"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1820
    .local v6, "switchNeedUpdate":Ljava/lang/String;
    const-string v7, "UiccController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateC2KWPCardtype force="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ", gsm.ril.cardtypeset="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ", gsm.ril.cardtypeset.2="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ", ril.cdma.switch.needupdate="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ", bSetTrm="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/internal/telephony/uicc/UiccController;->bSetTrm:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1824
    if-nez p1, :cond_2

    if-eqz v0, :cond_7

    .line 1826
    :cond_2
    iget-boolean v7, p0, Lcom/android/internal/telephony/uicc/UiccController;->bSetTrm:Z

    if-eqz v7, :cond_3

    .line 1827
    iput-boolean v9, p0, Lcom/android/internal/telephony/uicc/UiccController;->bSetTrm:Z

    .line 1828
    const-string v7, "UiccController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateC2KWPCardtype bSetTrm="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/internal/telephony/uicc/UiccController;->bSetTrm:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1830
    :cond_3
    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1831
    const-string v7, "UiccController"

    const-string v8, "updateC2KWPCardtype set ril.cdma.switch.needupdate to 0"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1832
    const-string v7, "ril.cdma.switch.needupdate"

    const-string v8, "0"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1834
    :cond_4
    const-string v7, "UiccController"

    const-string v8, "updateC2KWPCardtype notifyRegistrants"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1835
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccController;->mC2KWPCardTypeReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v7}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1839
    :goto_2
    return-void

    .line 1817
    .end local v6    # "switchNeedUpdate":Ljava/lang/String;
    :cond_5
    const-string v7, "1"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const-string v7, "1"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    move v0, v8

    :goto_3
    goto/16 :goto_1

    :cond_6
    move v0, v9

    goto :goto_3

    .line 1837
    .restart local v6    # "switchNeedUpdate":Ljava/lang/String;
    :cond_7
    const-string v7, "UiccController"

    const-string v8, "updateC2KWPCardtype cardType not ready!"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private updateNotifyIccCount()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1654
    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteIndex:I

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->getFullCardType(I)I

    move-result v0

    .line 1656
    .local v0, "fullType":I
    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    and-int/lit8 v1, v0, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    :cond_0
    and-int/lit8 v1, v0, 0x1

    if-eq v1, v3, :cond_1

    and-int/lit8 v1, v0, 0x2

    if-ne v1, v4, :cond_2

    .line 1660
    :cond_1
    iput v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mNotifyIccCount:I

    .line 1664
    :goto_0
    return-void

    .line 1662
    :cond_2
    iput v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mNotifyIccCount:I

    goto :goto_0
.end method


# virtual methods
.method public disableSimMissingNotification(I)V
    .locals 3
    .param p1, "slot"    # I

    .prologue
    .line 1115
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1116
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    add-int/lit8 v1, p1, 0x67

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1117
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 993
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UiccController: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 994
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mContext="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 995
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mInstance="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/uicc/UiccController;->mInstance:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 996
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mIccChangedRegistrants: size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 997
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 998
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mIccChangedRegistrants["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Registrant;

    invoke-virtual {v1}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 997
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1001
    :cond_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1002
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 1003
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mUiccCards: size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1004
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 1005
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    aget-object v1, v1, v0

    if-nez v1, :cond_1

    .line 1006
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mUiccCards["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]=null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1004
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1008
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mUiccCards["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1009
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCard;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_2

    .line 1012
    :cond_2
    return-void
.end method

.method public getBtConnectedSimId()I
    .locals 2

    .prologue
    .line 1368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getBtConnectedSimId, slot "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mBtSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 1369
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mBtSlotId:I

    return v0
.end method

.method public getC2KWPCardType()[I
    .locals 2

    .prologue
    .line 1842
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->isSvlteTestSimMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1843
    const/4 v1, 0x2

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 1846
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mC2KWPCardtype:[I

    goto :goto_0

    .line 1843
    :array_0
    .array-data 4
        0xa
        0x0
    .end array-data
.end method

.method public getCardType()Lcom/android/internal/telephony/IccCardConstants$CardType;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1611
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCardType mCdmaCardType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCdmaCardType:Lcom/android/internal/telephony/IccCardConstants$CardType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 1613
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCdmaCardType:Lcom/android/internal/telephony/IccCardConstants$CardType;

    return-object v0
.end method

.method public getIccApplicationChannel(II)I
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "family"    # I

    .prologue
    .line 401
    sget-object v2, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 402
    const/4 v0, 0x0

    .line 403
    .local v0, "index":I
    packed-switch p2, :pswitch_data_0

    .line 414
    :try_start_0
    const-string v1, "unknown application"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 417
    :cond_0
    :goto_0
    monitor-exit v2

    return v0

    .line 406
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIsimSessionId:[I

    aget v0, v1, p1

    .line 409
    if-nez v0, :cond_0

    .line 410
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :goto_1
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 418
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 403
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public getIccFileHandler(II)Lcom/android/internal/telephony/uicc/IccFileHandler;
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "family"    # I

    .prologue
    .line 391
    sget-object v2, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 392
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    .line 393
    .local v0, "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v0, :cond_0

    .line 394
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v1

    monitor-exit v2

    .line 396
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_0

    .line 397
    .end local v0    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "family"    # I

    .prologue
    .line 370
    sget-object v2, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 372
    :try_start_0
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 373
    const/16 v1, 0xa

    if-ne p1, v1, :cond_1

    .line 374
    const/4 p1, 0x0

    .line 375
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIccRecords phone id 101 change to:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 381
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    .line 382
    .local v0, "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v0, :cond_2

    .line 383
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    monitor-exit v2

    .line 385
    :goto_1
    return-object v1

    .line 376
    .end local v0    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_1
    const/16 v1, 0xb

    if-ne p1, v1, :cond_0

    .line 377
    const/4 p1, 0x1

    .line 378
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIccRecords phone id 102 change to:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 386
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 385
    .restart local v0    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_2
    const/4 v1, 0x0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 347
    sget-object v1, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 348
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->isValidCardIndex(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    aget-object v0, v0, p1

    monitor-exit v1

    .line 351
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 352
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getUiccCardApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .locals 2
    .param p1, "family"    # I

    .prologue
    .line 365
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    return-object v0
.end method

.method public getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "family"    # I

    .prologue
    .line 843
    sget-object v2, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 844
    :try_start_0
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 845
    const/16 v1, 0xa

    if-ne p1, v1, :cond_1

    .line 846
    const/4 p1, 0x0

    .line 847
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUiccCardApplication phone id 101 change to:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 853
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->isValidCardIndex(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 854
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    aget-object v0, v1, p1

    .line 855
    .local v0, "c":Lcom/android/internal/telephony/uicc/UiccCard;
    if-eqz v0, :cond_2

    .line 856
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    aget-object v1, v1, p1

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v1

    monitor-exit v2

    .line 859
    .end local v0    # "c":Lcom/android/internal/telephony/uicc/UiccCard;
    :goto_1
    return-object v1

    .line 848
    :cond_1
    const/16 v1, 0xb

    if-ne p1, v1, :cond_0

    .line 849
    const/4 p1, 0x1

    .line 850
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUiccCardApplication phone id 102 change to:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 860
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 859
    :cond_2
    const/4 v1, 0x0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public getUiccCards()[Lcom/android/internal/telephony/uicc/UiccCard;
    .locals 2

    .prologue
    .line 358
    sget-object v1, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 359
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/uicc/UiccCard;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/uicc/UiccCard;

    monitor-exit v1

    return-object v0

    .line 360
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 33
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 456
    sget-object v29, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v29

    .line 457
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/uicc/UiccController;->getCiIndex(Landroid/os/Message;)Ljava/lang/Integer;

    move-result-object v15

    .line 459
    .local v15, "index":Ljava/lang/Integer;
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v28

    if-ltz v28, :cond_0

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v30, v0

    move/from16 v0, v28

    move/from16 v1, v30

    if-lt v0, v1, :cond_1

    .line 460
    :cond_0
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v28

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->indexValidForSvlte(I)Z

    move-result v28

    if-eqz v28, :cond_4

    .line 462
    const-string v28, "SVLTE index"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 470
    :cond_1
    const/4 v6, 0x0

    .line 471
    .local v6, "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    instance-of v0, v0, Landroid/os/AsyncResult;

    move/from16 v28, v0

    if-eqz v28, :cond_2

    .line 472
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v6    # "ar":Landroid/os/AsyncResult;
    check-cast v6, Landroid/os/AsyncResult;

    .line 474
    .restart local v6    # "ar":Landroid/os/AsyncResult;
    :cond_2
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v28, v0

    sparse-switch v28, :sswitch_data_0

    .line 814
    const-string v28, "UiccController"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, " Unknown Event "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    :cond_3
    :goto_0
    monitor-exit v29

    .line 817
    .end local v6    # "ar":Landroid/os/AsyncResult;
    :goto_1
    return-void

    .line 465
    :cond_4
    const-string v28, "UiccController"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Invalid index : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " received with event "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    monitor-exit v29

    goto :goto_1

    .line 816
    .end local v15    # "index":Ljava/lang/Integer;
    :catchall_0
    move-exception v28

    monitor-exit v29
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v28

    .line 477
    .restart local v6    # "ar":Landroid/os/AsyncResult;
    .restart local v15    # "index":Ljava/lang/Integer;
    :sswitch_0
    :try_start_1
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Received EVENT_ICC_STATUS_CHANGED, calling getIccCardStatus, index: "

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 481
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v28

    if-eqz v28, :cond_a

    .line 484
    const-string v28, "ril.cdma.emdstatus.send"

    const-string v30, "0"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 485
    .local v8, "configSend":Ljava/lang/String;
    const-string v28, "ril.iccid.sim1_c2k"

    const-string v30, ""

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 486
    .local v13, "iccidC2k":Ljava/lang/String;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "svlte handle EVENT_ICC_STATUS_CHANGED, check configSend="

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v30, " iccidC2k="

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v30, " mSetRadioDone="

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mSetRadioDone:Z

    move/from16 v30, v0

    move-object/from16 v0, v28

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 489
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "mSvlteCi: "

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v28, v0

    if-eqz v28, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->hashCode()I

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    :goto_2
    move-object/from16 v0, v30

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 490
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    if-ge v12, v0, :cond_7

    .line 491
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "mCis["

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v30, "]: "

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v28, v0

    aget-object v28, v28, v12

    if-eqz v28, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v28, v0

    aget-object v28, v28, v12

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->hashCode()I

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    :goto_4
    move-object/from16 v0, v30

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 490
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 489
    .end local v12    # "i":I
    :cond_5
    const/16 v28, 0x0

    goto :goto_2

    .line 491
    .restart local v12    # "i":I
    :cond_6
    const/16 v28, 0x0

    goto :goto_4

    .line 494
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mSetRadioDone:Z

    move/from16 v28, v0

    if-nez v28, :cond_8

    .line 495
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "EVENT_ICC_STATUS_CHANGED, index: "

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v30, " radio not done, sendDelay"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 496
    const/16 v28, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1, v15}, Lcom/android/internal/telephony/uicc/UiccController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v28

    const-wide/16 v30, 0x3e8

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-wide/from16 v2, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/UiccController;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 498
    :cond_8
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getActiveSvlteModeSlotId()I

    move-result v28

    const/16 v30, -0x1

    move/from16 v0, v28

    move/from16 v1, v30

    if-eq v0, v1, :cond_a

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteIndex:I

    move/from16 v30, v0

    move/from16 v0, v28

    move/from16 v1, v30

    if-ne v0, v1, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mC2KWPCardtype:[I

    move-object/from16 v28, v0

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v30

    aget v28, v28, v30

    if-eqz v28, :cond_a

    const-string v28, "1"

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_9

    const-string v28, ""

    move-object/from16 v0, v28

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_a

    .line 501
    :cond_9
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "EVENT_ICC_STATUS_CHANGED, index: "

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v30, " c2k not ready, sendDelay"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 502
    const/16 v28, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1, v15}, Lcom/android/internal/telephony/uicc/UiccController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v28

    const-wide/16 v30, 0x3e8

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-wide/from16 v2, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/UiccController;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 507
    .end local v8    # "configSend":Ljava/lang/String;
    .end local v12    # "i":I
    .end local v13    # "iccidC2k":Ljava/lang/String;
    :cond_a
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v28

    if-eqz v28, :cond_c

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v28

    const/16 v30, 0x64

    move/from16 v0, v28

    move/from16 v1, v30

    if-ne v0, v1, :cond_c

    .line 508
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteIndex:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->getFullCardType(I)I

    move-result v11

    .line 509
    .local v11, "fullType":I
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/UiccController;->updateNotifyIccCount()V

    .line 510
    if-eqz v11, :cond_b

    and-int/lit8 v28, v11, 0x1

    if-nez v28, :cond_b

    and-int/lit8 v28, v11, 0x2

    if-eqz v28, :cond_3

    .line 513
    :cond_b
    const-string v28, "EVENT_ICC_STATUS_CHANGED, calling getIccCardStatus via GSM"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v28, v0

    const/16 v30, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1, v15}, Lcom/android/internal/telephony/uicc/UiccController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 529
    .end local v11    # "fullType":I
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/UiccController;->ignoreGetSimStatus()Z

    move-result v28

    if-eqz v28, :cond_d

    .line 530
    const-string v28, "FlightMode ON, Modem OFF: ignore get sim status"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 532
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v28, v0

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v30

    aget-object v28, v28, v30

    const/16 v30, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1, v15}, Lcom/android/internal/telephony/uicc/UiccController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 538
    :sswitch_1
    const-string v28, "Received EVENT_GET_ICC_STATUS_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 539
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v15}, Lcom/android/internal/telephony/uicc/UiccController;->onGetIccCardStatusDone(Landroid/os/AsyncResult;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 542
    :sswitch_2
    const-string v28, "Received EVENT_REPOLL_SML_STATE"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 543
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v6    # "ar":Landroid/os/AsyncResult;
    check-cast v6, Landroid/os/AsyncResult;

    .line 544
    .restart local v6    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v28, v0

    const/16 v30, 0x1

    move/from16 v0, v28

    move/from16 v1, v30

    if-ne v0, v1, :cond_f

    const/16 v20, 0x1

    .line 547
    .local v20, "needIntent":Z
    :goto_5
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v6, v15, v1}, Lcom/android/internal/telephony/uicc/UiccController;->onGetIccCardStatusDone(Landroid/os/AsyncResult;Ljava/lang/Integer;Z)V

    .line 548
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v28

    if-eqz v28, :cond_e

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v28

    const/16 v30, 0x64

    move/from16 v0, v28

    move/from16 v1, v30

    if-ne v0, v1, :cond_e

    .line 549
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteIndex:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 553
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    move-object/from16 v28, v0

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v30

    aget-object v28, v28, v30

    if-eqz v28, :cond_3

    const/16 v28, 0x1

    move/from16 v0, v20

    move/from16 v1, v28

    if-ne v0, v1, :cond_3

    .line 554
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    move-object/from16 v28, v0

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v30

    aget-object v28, v28, v30

    const/16 v30, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v5

    .line 555
    .local v5, "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-nez v5, :cond_10

    .line 556
    const-string v28, "UiccCardApplication = null"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 544
    .end local v5    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v20    # "needIntent":Z
    :cond_f
    const/16 v20, 0x0

    goto :goto_5

    .line 559
    .restart local v5    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .restart local v20    # "needIntent":Z
    :cond_10
    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v28

    sget-object v30, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_SUBSCRIPTION_PERSO:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    if-ne v0, v1, :cond_3

    .line 560
    new-instance v19, Landroid/content/Intent;

    invoke-direct/range {v19 .. v19}, Landroid/content/Intent;-><init>()V

    .line 561
    .local v19, "lockIntent":Landroid/content/Intent;
    if-nez v19, :cond_11

    .line 562
    const-string v28, "New intent failed"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 563
    monitor-exit v29

    goto/16 :goto_1

    .line 565
    :cond_11
    const-string v28, "Broadcast ACTION_UNLOCK_SIM_LOCK"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 566
    const-string v28, "mediatek.intent.action.ACTION_UNLOCK_SIM_LOCK"

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 567
    const-string v28, "ss"

    const-string v30, "LOCKED"

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 569
    const-string v28, "reason"

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPersoSubState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->parsePersoType(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 571
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v28

    move-object/from16 v0, v19

    move/from16 v1, v28

    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 578
    .end local v5    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v19    # "lockIntent":Landroid/content/Intent;
    .end local v20    # "needIntent":Z
    :sswitch_3
    const-string v28, "EVENT_RADIO_UNAVAILABLE, set mSetRadioDone to false"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 579
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/uicc/UiccController;->mSetRadioDone:Z

    .line 580
    const-string v28, "EVENT_RADIO_UNAVAILABLE, dispose card"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    move-object/from16 v28, v0

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v30

    aget-object v28, v28, v30

    if-eqz v28, :cond_12

    .line 582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    move-object/from16 v28, v0

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v30

    aget-object v28, v28, v30

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/uicc/UiccCard;->dispose()V

    .line 584
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    move-object/from16 v28, v0

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v30

    const/16 v31, 0x0

    aput-object v31, v28, v30

    .line 585
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v28, v0

    new-instance v30, Landroid/os/AsyncResult;

    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v15, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 589
    :sswitch_4
    const-string v28, "Received EVENT_SIM_REFRESH"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 590
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v15}, Lcom/android/internal/telephony/uicc/UiccController;->onSimRefresh(Landroid/os/AsyncResult;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 594
    :sswitch_5
    const-string v28, "Received EVENT_TURN_ON_ISIM_APPLICATION_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 595
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v6    # "ar":Landroid/os/AsyncResult;
    check-cast v6, Landroid/os/AsyncResult;

    .line 596
    .restart local v6    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v28, v0

    if-eqz v28, :cond_13

    .line 597
    const-string v28, "UiccController"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "[SIM "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "] Error turn on ISIM. "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v31, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-static {v0, v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 598
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mApplicationChangedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 599
    monitor-exit v29

    goto/16 :goto_1

    .line 603
    :cond_13
    iget-object v0, v6, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, [I

    move-object/from16 v0, v28

    check-cast v0, [I

    move-object/from16 v18, v0

    .line 604
    .local v18, "ints":[I
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Application ID = "

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const/16 v30, 0x0

    aget v30, v18, v30

    move-object/from16 v0, v28

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v30, "Session ID = "

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const/16 v30, 0x1

    aget v30, v18, v30

    move-object/from16 v0, v28

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mIsimSessionId:[I

    move-object/from16 v28, v0

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v30

    const/16 v31, 0x1

    aget v31, v18, v31

    aput v31, v28, v30

    .line 607
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v28, v0

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v30

    aget-object v28, v28, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mIsimSessionId:[I

    move-object/from16 v30, v0

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v31

    aget v30, v30, v31

    const/16 v31, 0xc9

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1, v15}, Lcom/android/internal/telephony/uicc/UiccController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v31

    move-object/from16 v0, v28

    move/from16 v1, v30

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getIccApplicationStatus(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 612
    .end local v18    # "ints":[I
    :sswitch_6
    const-string v28, "Received EVENT_GET_ICC_APPLICATION_STATUS"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 613
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v6    # "ar":Landroid/os/AsyncResult;
    check-cast v6, Landroid/os/AsyncResult;

    .line 614
    .restart local v6    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v15}, Lcom/android/internal/telephony/uicc/UiccController;->onGetIccApplicationStatusDone(Landroid/os/AsyncResult;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 618
    :sswitch_7
    const-string v28, "Received EVENT_APPLICATION_SESSION_CHANGED"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 619
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v6    # "ar":Landroid/os/AsyncResult;
    check-cast v6, Landroid/os/AsyncResult;

    .line 622
    .restart local v6    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v6, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, [I

    move-object/from16 v0, v28

    check-cast v0, [I

    move-object/from16 v22, v0

    .line 624
    .local v22, "result":[I
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Application = "

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const/16 v30, 0x0

    aget v30, v22, v30

    move-object/from16 v0, v28

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v30, ", Session = "

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const/16 v30, 0x1

    aget v30, v22, v30

    move-object/from16 v0, v28

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 625
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mIsimSessionId:[I

    move-object/from16 v28, v0

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v30

    const/16 v31, 0x1

    aget v31, v22, v31

    aput v31, v28, v30

    goto/16 :goto_0

    .line 629
    .end local v22    # "result":[I
    :sswitch_8
    const-string v28, "handleMessage (EVENT_VIRTUAL_SIM_ON)"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 631
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v28

    const/16 v30, 0x65

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->setNotificationVirtual(II)V

    .line 632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    const-string v30, "AutoAnswer"

    const/16 v31, 0x1

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v26

    .line 633
    .local v26, "shOn":Landroid/content/SharedPreferences;
    invoke-interface/range {v26 .. v26}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    .line 634
    .local v10, "editorOn":Landroid/content/SharedPreferences$Editor;
    const-string v28, "flag"

    const/16 v30, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v30

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 635
    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 638
    .end local v10    # "editorOn":Landroid/content/SharedPreferences$Editor;
    .end local v26    # "shOn":Landroid/content/SharedPreferences;
    :sswitch_9
    const-string v28, "handleMessage (EVENT_VIRTUAL_SIM_OFF)"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 639
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v28

    const/16 v30, 0x65

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->removeNotificationVirtual(II)V

    .line 641
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    const-string v30, "AutoAnswer"

    const/16 v31, 0x1

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v25

    .line 642
    .local v25, "shOff":Landroid/content/SharedPreferences;
    invoke-interface/range {v25 .. v25}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 643
    .local v9, "editorOff":Landroid/content/SharedPreferences$Editor;
    const-string v28, "flag"

    const/16 v30, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v30

    invoke-interface {v9, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 644
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 647
    .end local v9    # "editorOff":Landroid/content/SharedPreferences$Editor;
    .end local v25    # "shOff":Landroid/content/SharedPreferences;
    :sswitch_a
    const-string v28, "handleMessage (EVENT_SIM_RECOVERY)"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 648
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v28, v0

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v30

    aget-object v28, v28, v30

    const/16 v30, 0x6b

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1, v15}, Lcom/android/internal/telephony/uicc/UiccController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    .line 649
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mRecoveryRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v28, v0

    new-instance v30, Landroid/os/AsyncResult;

    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v15, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 653
    new-instance v16, Landroid/content/Intent;

    invoke-direct/range {v16 .. v16}, Landroid/content/Intent;-><init>()V

    .line 654
    .local v16, "intent":Landroid/content/Intent;
    const-string v28, "com.android.phone.ACTION_SIM_RECOVERY_DONE"

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 655
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 658
    .end local v16    # "intent":Landroid/content/Intent;
    :sswitch_b
    const-string v28, "handleMessage (EVENT_SIM_MISSING)"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 660
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v28, v0

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v30

    aget-object v28, v28, v30

    const/16 v30, 0x6a

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1, v15}, Lcom/android/internal/telephony/uicc/UiccController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 663
    :sswitch_c
    const-string v28, "Received EVENT_GET_ICC_STATUS_DONE_FOR_SIM_MISSING"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 664
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v6    # "ar":Landroid/os/AsyncResult;
    check-cast v6, Landroid/os/AsyncResult;

    .line 665
    .restart local v6    # "ar":Landroid/os/AsyncResult;
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v6, v15, v1}, Lcom/android/internal/telephony/uicc/UiccController;->onGetIccCardStatusDone(Landroid/os/AsyncResult;Ljava/lang/Integer;Z)V

    goto/16 :goto_0

    .line 668
    :sswitch_d
    const-string v28, "Received EVENT_GET_ICC_STATUS_DONE_FOR_SIM_RECOVERY"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 669
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v6    # "ar":Landroid/os/AsyncResult;
    check-cast v6, Landroid/os/AsyncResult;

    .line 670
    .restart local v6    # "ar":Landroid/os/AsyncResult;
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v6, v15, v1}, Lcom/android/internal/telephony/uicc/UiccController;->onGetIccCardStatusDone(Landroid/os/AsyncResult;Ljava/lang/Integer;Z)V

    goto/16 :goto_0

    .line 673
    :sswitch_e
    const-string v28, "handleMessage (EVENT_COMMON_SLOT_NO_CHANGED)"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 674
    new-instance v17, Landroid/content/Intent;

    const-string v28, "com.mediatek.phone.ACTION_COMMON_SLOT_NO_CHANGED"

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 675
    .local v17, "intentNoChanged":Landroid/content/Intent;
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v28

    const/16 v30, 0x64

    move/from16 v0, v28

    move/from16 v1, v30

    if-ne v0, v1, :cond_14

    .line 676
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteIndex:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 678
    :cond_14
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v27

    .line 679
    .local v27, "slotId":I
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Broadcasting intent ACTION_COMMON_SLOT_NO_CHANGED for mSlotId : "

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 680
    move-object/from16 v0, v17

    move/from16 v1, v27

    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 681
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 685
    .end local v17    # "intentNoChanged":Landroid/content/Intent;
    .end local v27    # "slotId":I
    :sswitch_f
    const-string v28, "handleMessgage (EVENT_CDMA_CARD_TYPE)"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 687
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v6    # "ar":Landroid/os/AsyncResult;
    check-cast v6, Landroid/os/AsyncResult;

    .line 688
    .restart local v6    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v28, v0

    if-nez v28, :cond_3

    .line 689
    iget-object v0, v6, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, [I

    move-object/from16 v0, v28

    check-cast v0, [I

    move-object/from16 v23, v0

    .line 690
    .local v23, "resultType":[I
    if-eqz v23, :cond_3

    .line 691
    const/16 v28, 0x0

    aget v28, v23, v28

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->isValidCardType(I)Z

    move-result v28

    if-eqz v28, :cond_15

    .line 692
    const/16 v28, 0x0

    aget v28, v23, v28

    invoke-static/range {v28 .. v28}, Lcom/android/internal/telephony/IccCardConstants$CardType;->getCardTypeFromInt(I)Lcom/android/internal/telephony/IccCardConstants$CardType;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/uicc/UiccController;->mCdmaCardType:Lcom/android/internal/telephony/IccCardConstants$CardType;

    .line 694
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/UiccController;->broadcastCdmaCardTypeIntent()V

    goto/16 :goto_0

    .line 696
    :cond_15
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "invalid cardType="

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const/16 v30, 0x0

    aget v30, v23, v30

    move-object/from16 v0, v28

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 703
    .end local v23    # "resultType":[I
    :sswitch_10
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Received EVENT_SIM_PLUG_IN, index="

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 705
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v28

    if-eqz v28, :cond_3

    .line 706
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v28

    const/16 v30, 0x64

    move/from16 v0, v28

    move/from16 v1, v30

    if-ne v0, v1, :cond_16

    .line 707
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteIndex:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 709
    :cond_16
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v28

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->getFullCardType(I)I

    move-result v28

    if-nez v28, :cond_17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mRetryCounter:I

    move/from16 v28, v0

    const/16 v30, 0x5

    move/from16 v0, v28

    move/from16 v1, v30

    if-ge v0, v1, :cond_17

    .line 710
    const/16 v28, 0x6e

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1, v15}, Lcom/android/internal/telephony/uicc/UiccController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v28

    const-wide/16 v30, 0xc8

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-wide/from16 v2, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/UiccController;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 712
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mRetryCounter:I

    move/from16 v28, v0

    add-int/lit8 v28, v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/uicc/UiccController;->mRetryCounter:I

    .line 713
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "getFullCardType("

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v30, ") = "

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v30

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->getFullCardType(I)I

    move-result v30

    move-object/from16 v0, v28

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v30, "  mRetryCounter = "

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mRetryCounter:I

    move/from16 v30, v0

    move-object/from16 v0, v28

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 716
    :cond_17
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/uicc/UiccController;->mRetryCounter:I

    .line 718
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v28

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->isCdmaCard(I)Z

    move-result v28

    if-eqz v28, :cond_18

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v28

    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getCdmaSocketSlotId()I

    move-result v30

    move/from16 v0, v28

    move/from16 v1, v30

    if-eq v0, v1, :cond_18

    .line 721
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/UiccController;->setTrm()V

    goto/16 :goto_0

    .line 723
    :cond_18
    const/16 v28, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->updateC2KWPCardtype(Z)V

    goto/16 :goto_0

    .line 731
    :sswitch_11
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Received EVENT_SIM_PLUG_OUT, index="

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 733
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v28

    if-eqz v28, :cond_3

    .line 741
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v21

    .line 742
    .local v21, "phoneCount":I
    const/4 v4, 0x1

    .line 743
    .local v4, "allAreCdmaSim":Z
    const/4 v14, 0x0

    .local v14, "id":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mC2KWPCardtype:[I

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    if-ge v14, v0, :cond_19

    .line 744
    const-string v28, "UiccController"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, " mC2KWPCardtype["

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "]="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mC2KWPCardtype:[I

    move-object/from16 v31, v0

    aget v31, v31, v14

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mC2KWPCardtype:[I

    move-object/from16 v28, v0

    aget v28, v28, v14

    const/16 v30, 0x4

    move/from16 v0, v28

    move/from16 v1, v30

    if-ge v0, v1, :cond_1b

    .line 746
    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getInstance()Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v14}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->isCt3gDualMode(I)Z

    move-result v28

    if-nez v28, :cond_1b

    .line 747
    const/4 v4, 0x0

    .line 752
    :cond_19
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v28

    const/16 v30, 0x64

    move/from16 v0, v28

    move/from16 v1, v30

    if-ne v0, v1, :cond_1a

    .line 753
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteIndex:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 755
    :cond_1a
    const/16 v28, 0x1

    move/from16 v0, v21

    move/from16 v1, v28

    if-le v0, v1, :cond_1c

    if-eqz v4, :cond_1c

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v28

    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getCdmaSocketSlotId()I

    move-result v30

    move/from16 v0, v28

    move/from16 v1, v30

    if-ne v0, v1, :cond_1c

    .line 758
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/UiccController;->setTrm()V

    .line 763
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mC2KWPCardtype:[I

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    if-ge v12, v0, :cond_3

    .line 764
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mC2KWPCardtype:[I

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/internal/telephony/uicc/UiccController;->getFullCardType(I)I

    move-result v30

    aput v30, v28, v12

    .line 765
    const-string v28, "UiccController"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "EVENT_SIM_PLUG_OUT mC2KWPCardtype["

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "]="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mC2KWPCardtype:[I

    move-object/from16 v31, v0

    aget v31, v31, v12

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    .line 743
    .end local v12    # "i":I
    :cond_1b
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_6

    .line 768
    :cond_1c
    const/16 v28, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->updateC2KWPCardtype(Z)V

    goto/16 :goto_0

    .line 775
    .end local v4    # "allAreCdmaSim":Z
    .end local v14    # "id":I
    .end local v21    # "phoneCount":I
    :sswitch_12
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Received EVENT_EUSIM_READY, index="

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v30, ", bSetTrm="

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->bSetTrm:Z

    move/from16 v30, v0

    move-object/from16 v0, v28

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 778
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v28

    if-eqz v28, :cond_3

    .line 779
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/uicc/UiccController;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    .line 780
    const-string v28, "gsm.ril.init"

    const-string v30, "0"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 781
    .local v24, "rilInit":Ljava/lang/String;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "get gsm.ril.init : "

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 782
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v21

    .line 783
    .restart local v21    # "phoneCount":I
    const/16 v28, 0x2

    move/from16 v0, v21

    move/from16 v1, v28

    if-lt v0, v1, :cond_1d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mSwitchCardtype:Z

    move/from16 v28, v0

    if-nez v28, :cond_1d

    const-string v28, "1"

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_1d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mRilInit:Z

    move/from16 v28, v0

    if-nez v28, :cond_1d

    .line 786
    const-string v28, "gsm.ril.init"

    const-string v30, "0"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    const-string v28, "set gsm.ril.init to 0"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 788
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/uicc/UiccController;->mRilInit:Z

    goto/16 :goto_0

    .line 791
    :cond_1d
    const-string v28, "gsm.ril.init"

    const-string v30, "0"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    const-string v28, "Clear gsm.ril.init to 0"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 793
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/uicc/UiccController;->mRilInit:Z

    .line 794
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/uicc/UiccController;->mSwitchCardtype:Z

    .line 797
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v28

    const/16 v30, 0x64

    move/from16 v0, v28

    move/from16 v1, v30

    if-ne v0, v1, :cond_1e

    .line 798
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteIndex:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 800
    :cond_1e
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v28

    if-nez v28, :cond_20

    .line 801
    const/16 v28, 0x0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->initC2KWPCardtype(Ljava/lang/Integer;)V

    .line 806
    :cond_1f
    :goto_8
    const-string v28, "ril.cfun.send"

    const-string v30, "0"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 807
    .local v7, "cfunSend":Ljava/lang/String;
    const-string v28, "1"

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_3

    .line 809
    const-string v28, "ril.cfun.send"

    const-string v30, "0"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 802
    .end local v7    # "cfunSend":Ljava/lang/String;
    :cond_20
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v28

    const/16 v30, 0x1

    move/from16 v0, v28

    move/from16 v1, v30

    if-ne v0, v1, :cond_1f

    .line 803
    const/16 v28, 0x1

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->initC2KWPCardtype(Ljava/lang/Integer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_8

    .line 474
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x65 -> :sswitch_8
        0x66 -> :sswitch_9
        0x67 -> :sswitch_b
        0x69 -> :sswitch_a
        0x6a -> :sswitch_c
        0x6b -> :sswitch_d
        0x6d -> :sswitch_11
        0x6e -> :sswitch_10
        0x73 -> :sswitch_2
        0x74 -> :sswitch_e
        0x75 -> :sswitch_f
        0x76 -> :sswitch_12
        0xc8 -> :sswitch_5
        0xc9 -> :sswitch_6
        0xca -> :sswitch_7
    .end sparse-switch
.end method

.method public registerForApplicationChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1419
    sget-object v2, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1420
    :try_start_0
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1421
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mApplicationChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1424
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 1425
    monitor-exit v2

    .line 1426
    return-void

    .line 1425
    .end local v0    # "r":Landroid/os/Registrant;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerForC2KWPCardTypeReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 5
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1770
    sget-object v3, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1771
    :try_start_0
    new-instance v1, Landroid/os/Registrant;

    invoke-direct {v1, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1772
    .local v1, "r":Landroid/os/Registrant;
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mC2KWPCardTypeReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2, v1}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1773
    const-string v2, "gsm.ril.cardtypeset"

    const-string v4, "0"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1774
    .local v0, "cardTypeSet":Ljava/lang/String;
    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1775
    const-string v2, "UiccController"

    const-string v4, "registerForC2KWPCardTypeReady cardtype ready, notify!"

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1776
    invoke-virtual {v1}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 1778
    :cond_0
    monitor-exit v3

    .line 1779
    return-void

    .line 1778
    .end local v0    # "cardTypeSet":Ljava/lang/String;
    .end local v1    # "r":Landroid/os/Registrant;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 422
    sget-object v2, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 423
    :try_start_0
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 424
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 427
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 428
    monitor-exit v2

    .line 429
    return-void

    .line 428
    .end local v0    # "r":Landroid/os/Registrant;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerForIccRecovery(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 439
    sget-object v2, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 440
    :try_start_0
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 441
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mRecoveryRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 444
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 445
    monitor-exit v2

    .line 446
    return-void

    .line 445
    .end local v0    # "r":Landroid/os/Registrant;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public repollIccStateForModemSmlChangeFeatrue(IZ)V
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "needIntent"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1410
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "repollIccStateForModemSmlChangeFeatrue, needIntent = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 1411
    if-ne p2, v0, :cond_0

    .line 1414
    .local v0, "arg1":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, p1

    const/16 v3, 0x73

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v3, v0, v1, v4}, Lcom/android/internal/telephony/uicc/UiccController;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    .line 1415
    return-void

    .end local v0    # "arg1":I
    :cond_0
    move v0, v1

    .line 1411
    goto :goto_0
.end method

.method public setBtConnectedSimId(I)V
    .locals 2
    .param p1, "simId"    # I

    .prologue
    .line 1378
    iput p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mBtSlotId:I

    .line 1379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setBtConnectedSimId, slot "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mBtSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 1380
    return-void
.end method

.method public setCis([Lcom/android/internal/telephony/CommandsInterface;Z)V
    .locals 5
    .param p1, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;
    .param p2, "init"    # Z

    .prologue
    const/4 v4, 0x1

    .line 1489
    const-string v2, "setmCis"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 1491
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 1492
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 1493
    .local v1, "index":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    invoke-interface {v2, p0, v4, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1494
    const-string v2, "ro.crypto.state"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "unencrypted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "trigger_restart_framework"

    const-string v3, "vold.decrypt"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1496
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    invoke-interface {v2, p0, v4, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1500
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    const/4 v3, 0x3

    invoke-interface {v2, p0, v3, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1501
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    const/4 v3, 0x4

    invoke-interface {v2, p0, v3, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1503
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    const/16 v3, 0x65

    invoke-interface {v2, p0, v3, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForVirtualSimOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1504
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    const/16 v3, 0x66

    invoke-interface {v2, p0, v3, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForVirtualSimOff(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1505
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    const/16 v3, 0x67

    invoke-interface {v2, p0, v3, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForSimMissing(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1506
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    const/16 v3, 0x69

    invoke-interface {v2, p0, v3, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForSimRecovery(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1507
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    const/16 v3, 0x6d

    invoke-interface {v2, p0, v3, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForSimPlugOut(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1508
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    const/16 v3, 0x6e

    invoke-interface {v2, p0, v3, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForSimPlugIn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1509
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    const/16 v3, 0x74

    invoke-interface {v2, p0, v3, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForCommonSlotNoChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1510
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    const/16 v3, 0xca

    invoke-interface {v2, p0, v3, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForSessionChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1511
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getActiveSvlteModeSlotId()I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 1513
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    const/16 v3, 0x75

    invoke-interface {v2, p0, v3, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForCdmaCardType(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1491
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 1498
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    invoke-interface {v2, p0, v4, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_1

    .line 1517
    .end local v1    # "index":Ljava/lang/Integer;
    :cond_3
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1518
    if-eqz p2, :cond_5

    .line 1519
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccController;->registerEusimReady()V

    .line 1527
    :cond_4
    return-void

    .line 1521
    :cond_5
    const/4 v0, 0x0

    :goto_2
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 1522
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 1523
    .restart local v1    # "index":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    const/16 v3, 0x76

    invoke-interface {v2, p0, v3, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForEusimReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1521
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public setSvlteCi(Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 4
    .param p1, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    const/4 v2, 0x1

    const/16 v3, 0x64

    .line 1442
    const-string v0, "init SVLTE UiccController!"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 1444
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 1445
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p0, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1446
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p0, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1447
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x6d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForSimPlugOut(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1448
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x6e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForSimPlugIn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1449
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x76

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForEusimReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1450
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x74

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForCommonSlotNoChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1451
    return-void
.end method

.method public setSvlteIndex(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 1474
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 1475
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSvlteIndex invalid index:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 1480
    :goto_0
    return-void

    .line 1478
    :cond_1
    iput p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteIndex:I

    .line 1479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSvlteIndex mSvlteIndex:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public switchCardType(II)V
    .locals 2
    .param p1, "slot"    # I
    .param p2, "cardtype"    # I

    .prologue
    .line 1912
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSwitchCardtype:Z

    .line 1913
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SwitchCardType slot = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  cardtype = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  mSwitchCardtype = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSwitchCardtype:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 1916
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getActiveSvlteModeSlotId()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 1917
    invoke-static {p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getNLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p2}, Lcom/android/internal/telephony/CommandsInterface;->switchCardType(I)V

    .line 1920
    :cond_0
    invoke-static {p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p2}, Lcom/android/internal/telephony/CommandsInterface;->switchCardType(I)V

    .line 1921
    return-void
.end method

.method public unSetCis([Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 4
    .param p1, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 1570
    const-string v2, "unSetCis"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 1572
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 1573
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 1574
    .local v1, "index":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    invoke-interface {v2, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForIccStatusChanged(Landroid/os/Handler;)V

    .line 1575
    const-string v2, "ro.crypto.state"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "unencrypted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "trigger_restart_framework"

    const-string v3, "vold.decrypt"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1577
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    invoke-interface {v2, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 1581
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    invoke-interface {v2, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForNotAvailable(Landroid/os/Handler;)V

    .line 1582
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    invoke-interface {v2, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForIccRefresh(Landroid/os/Handler;)V

    .line 1583
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    invoke-interface {v2, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForVirtualSimOn(Landroid/os/Handler;)V

    .line 1584
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    invoke-interface {v2, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForVirtualSimOff(Landroid/os/Handler;)V

    .line 1585
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    invoke-interface {v2, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSimMissing(Landroid/os/Handler;)V

    .line 1586
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    invoke-interface {v2, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSimRecovery(Landroid/os/Handler;)V

    .line 1587
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    invoke-interface {v2, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSimPlugOut(Landroid/os/Handler;)V

    .line 1588
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    invoke-interface {v2, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSimPlugIn(Landroid/os/Handler;)V

    .line 1589
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    invoke-interface {v2, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCommonSlotNoChanged(Landroid/os/Handler;)V

    .line 1590
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    invoke-interface {v2, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSessionChanged(Landroid/os/Handler;)V

    .line 1591
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    invoke-interface {v2, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForEusimReady(Landroid/os/Handler;)V

    .line 1592
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getActiveSvlteModeSlotId()I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 1594
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    invoke-interface {v2, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCdmaCardType(Landroid/os/Handler;)V

    .line 1572
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 1579
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    invoke-interface {v2, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    goto :goto_1

    .line 1597
    .end local v1    # "index":Ljava/lang/Integer;
    :cond_3
    return-void
.end method

.method public unSetSvlteCi(Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 1
    .param p1, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 1460
    const-string v0, "unSetSvlteCi!"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 1462
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 1463
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForIccStatusChanged(Landroid/os/Handler;)V

    .line 1464
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 1465
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSimPlugOut(Landroid/os/Handler;)V

    .line 1466
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSimPlugIn(Landroid/os/Handler;)V

    .line 1467
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForEusimReady(Landroid/os/Handler;)V

    .line 1468
    return-void
.end method

.method public unregisterForApplicationChanged(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1429
    sget-object v1, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1430
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mApplicationChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1431
    monitor-exit v1

    .line 1432
    return-void

    .line 1431
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterForC2KWPCardTypeReady(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1782
    sget-object v1, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1783
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mC2KWPCardTypeReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1784
    monitor-exit v1

    .line 1785
    return-void

    .line 1784
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterForIccChanged(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 432
    sget-object v1, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 433
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 434
    monitor-exit v1

    .line 435
    return-void

    .line 434
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterForIccRecovery(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 449
    sget-object v1, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 450
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mRecoveryRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 451
    monitor-exit v1

    .line 452
    return-void

    .line 451
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
