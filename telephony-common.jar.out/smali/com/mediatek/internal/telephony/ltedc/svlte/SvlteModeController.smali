.class public Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;
.super Landroid/os/Handler;
.source "SvlteModeController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$ConfigModemRunnable;
    }
.end annotation


# static fields
.field private static final ACTION_FORM_MODE_CONTROLLER:I = 0x2

.field public static final CDMA_PROP:Ljava/lang/String; = "persist.radio.cdma_slot"

.field public static final CSFB_ON_SLOT:I = -0x1

.field private static final DEBUG:Z = true

.field protected static final EVENT_C2K_WP_CARD_TYPE_READY:I = 0x1

.field private static final EVENT_CDMA_RADIO_CHANGE_FOR_AVALIABLE:I = 0x68

.field protected static final EVENT_RIL_CONNECTED:I = 0x2

.field private static final INITIAL_RETRY_INTERVAL_MSEC:I = 0xc8

.field private static final LOG_TAG:Ljava/lang/String; = "SvlteModeController"

.field public static final MTK_C2K_6M_SUPPORT:Ljava/lang/String; = "ro.ct6m_support"

.field public static final MTK_C2K_SLOT2_SUPPORT:Ljava/lang/String; = "ro.mtk.c2k.slot2.support"

.field private static final OPERATOR_OM:Ljava/lang/String; = "OM"

.field private static final OPERATOR_OP09:Ljava/lang/String; = "OP09"

.field private static final PROPERTY_NET_CDMA_MDMSTAT:Ljava/lang/String; = "net.cdma.mdmstat"

.field private static final PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

.field public static final RADIO_TECH_MODE_CSFB:I = 0x2

.field public static final RADIO_TECH_MODE_SVLTE:I = 0x3

.field public static final RADIO_TECH_MODE_UNKNOWN:I = 0x1

.field private static final SPEC_OP09_A:Ljava/lang/String; = "SEGDEFAULT"

.field public static final SVLTE_ON_SLOT_0:I = 0x0

.field public static final SVLTE_ON_SLOT_1:I = 0x1

.field public static final SVLTE_PROP:Ljava/lang/String; = "persist.radio.svlte_slot"

.field public static final SVLTE_PROP_DEFAULT_VALUE:Ljava/lang/String;

.field public static final TELEPHONY_MODE_C_LWTG:I = 0x4

.field public static final TELEPHONY_MODE_G_LC:I = 0x3

.field public static final TELEPHONY_MODE_G_LWTG:I = 0x5

.field public static final TELEPHONY_MODE_LC_G:I = 0x0

.field public static final TELEPHONY_MODE_LC_SINGLE:I = 0x6

.field public static final TELEPHONY_MODE_LWTG_C:I = 0x1

.field public static final TELEPHONY_MODE_LWTG_G:I = 0x2

.field public static final TELEPHONY_MODE_LWTG_SINGLE:I = 0x7

.field public static final TELEPHONY_MODE_UNKNOWN:I = -0x1

.field private static final mLock:Ljava/lang/Object;

.field private static sCardModes:[I

.field private static sInstance:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;


# instance fields
.field private mAlreadyRegistForRadioState:Z

.field private mC2KCardTypeReady:Z

.field private mCardTypes:[I

.field private mConfgiC2kDone:Z

.field private mConfgiGsmDone:Z

.field mConfigModemRunnable:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$ConfigModemRunnable;

.field private mContext:Landroid/content/Context;

.field private mInSwitching:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mLastProtocol:I

.field private mNeedReSwitch:[Z

.field private mOP09Spec:Ljava/lang/String;

.field private mOldCardModes:[I

.field private mOperatorSpec:Ljava/lang/String;

.field private mPendingCardTypes:[I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSlotBeSwitchCardType:I

.field private mSlotIdWaitConnect:I

.field private mSvlteModeOn:Z

.field private mSwitchQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSwitchingSlotId:I

.field private mWaitingRilSocketConnect:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->SVLTE_PROP_DEFAULT_VALUE:Ljava/lang/String;

    .line 112
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->initCardModes()[I

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCardModes:[I

    .line 116
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mLock:Ljava/lang/Object;

    .line 148
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "gsm.ril.fulluicctype"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "gsm.ril.fulluicctype.2"

    aput-object v2, v0, v1

    const-string v1, "gsm.ril.fulluicctype.3"

    aput-object v1, v0, v3

    const-string v1, "gsm.ril.fulluicctype.4"

    aput-object v1, v0, v4

    sput-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 186
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 103
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypes:[I

    .line 114
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSwitchQueue:Ljava/util/ArrayList;

    .line 118
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mInSwitching:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 121
    iput v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSlotIdWaitConnect:I

    .line 122
    iput v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSwitchingSlotId:I

    .line 124
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mConfgiGsmDone:Z

    .line 125
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mConfgiC2kDone:Z

    .line 126
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mNeedReSwitch:[Z

    .line 146
    iput v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSlotBeSwitchCardType:I

    .line 155
    iput v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mLastProtocol:I

    .line 255
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mC2KCardTypeReady:Z

    .line 256
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mAlreadyRegistForRadioState:Z

    .line 803
    new-instance v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$1;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$1;-><init>(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 902
    new-instance v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$ConfigModemRunnable;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$ConfigModemRunnable;-><init>(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mConfigModemRunnable:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$ConfigModemRunnable;

    .line 187
    const-string v1, "SvlteModeController"

    const-string v2, "SvlteModeController constructor"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mContext:Landroid/content/Context;

    .line 190
    const-string v1, "ro.operator.optr"

    const-string v2, "OM"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mOperatorSpec:Ljava/lang/String;

    .line 191
    const-string v1, "ro.operator.seg"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mOP09Spec:Ljava/lang/String;

    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Operator Spec:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mOperatorSpec:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mOP09Spec:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mOP09Spec:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 193
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/internal/telephony/uicc/UiccController;->registerForC2KWPCardTypeReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 195
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 196
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.mediatek.intent.action.FINISH_SWITCH_SVLTE_RAT_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 197
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 198
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-static {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mInSwitching:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->configModemStatus()V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    .prologue
    .line 78
    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSwitchingSlotId:I

    return v0
.end method

.method static synthetic access$202(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;
    .param p1, "x1"    # I

    .prologue
    .line 78
    iput p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSwitchingSlotId:I

    return p1
.end method

.method static synthetic access$300()[I
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCardModes:[I

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSvlteModeOn:Z

    return v0
.end method

.method static synthetic access$500(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;
    .param p1, "x1"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->disconnectRilSocket(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSwitchQueue:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->finishSwitchMode()V

    return-void
.end method

.method static synthetic access$800(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;
    .param p1, "x1"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->switchRadioTechnology(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->setSvlteModeProperties()V

    return-void
.end method

.method private calculateCardMode()[I
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x3

    const/4 v2, 0x0

    const/4 v6, 0x1

    .line 565
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v7

    new-array v1, v7, [I

    .line 566
    .local v1, "cardModes":[I
    const-string v7, "OP09"

    iget-object v8, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mOperatorSpec:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "SEGDEFAULT"

    iget-object v8, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mOP09Spec:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 567
    aput v9, v1, v2

    .line 568
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v6

    if-ge v3, v6, :cond_0

    .line 569
    aput v10, v1, v3

    .line 568
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 571
    :cond_0
    const-string v6, "[calculateCardMode] >>> OPERATOR_OP09 case."

    invoke-static {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 572
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->printRadioModes([I)V

    .line 621
    .end local v3    # "i":I
    :goto_1
    return-object v1

    .line 577
    :cond_1
    iget-object v7, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypes:[I

    aget v7, v7, v2

    invoke-direct {p0, v7, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getPreferRadioTech(II)I

    move-result v4

    .line 581
    .local v4, "slot0Prefer":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v7

    if-ne v7, v6, :cond_2

    .line 584
    aput v4, v1, v2

    .line 585
    const-string v6, "[calculateCardMode] >>> SINGLE SIM case."

    invoke-static {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 586
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->printRadioModes([I)V

    goto :goto_1

    .line 590
    :cond_2
    iget-object v7, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypes:[I

    aget v7, v7, v6

    invoke-direct {p0, v7, v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getPreferRadioTech(II)I

    move-result v5

    .line 592
    .local v5, "slot1Prefer":I
    if-ne v4, v5, :cond_9

    if-ne v5, v9, :cond_9

    .line 593
    iget-object v7, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypes:[I

    aget v7, v7, v2

    if-lez v7, :cond_3

    iget-object v7, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypes:[I

    aget v7, v7, v6

    if-gtz v7, :cond_4

    :cond_3
    iget-object v7, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypes:[I

    aget v7, v7, v2

    if-nez v7, :cond_7

    iget-object v7, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypes:[I

    aget v7, v7, v6

    if-nez v7, :cond_7

    .line 597
    :cond_4
    const-string v7, "persist.radio.simswitch"

    invoke-static {v7, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v7

    add-int/lit8 v0, v7, -0x1

    .line 599
    .local v0, "capability":I
    if-ne v0, v6, :cond_6

    .line 600
    .local v2, "csfbSlot":I
    :goto_2
    aput v9, v1, v0

    .line 601
    aput v10, v1, v2

    .line 602
    const/4 v6, -0x1

    iput v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSlotBeSwitchCardType:I

    .line 603
    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getInstance()Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->isCt3gDualMode(I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 604
    iput v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSlotBeSwitchCardType:I

    .line 619
    .end local v0    # "capability":I
    .end local v2    # "csfbSlot":I
    :cond_5
    :goto_3
    const-string v6, "[calculateCardMode] >>> WP SOLUTION 2 case."

    invoke-static {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 620
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->printRadioModes([I)V

    goto :goto_1

    .restart local v0    # "capability":I
    :cond_6
    move v2, v6

    .line 599
    goto :goto_2

    .line 607
    .end local v0    # "capability":I
    :cond_7
    iget-object v7, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypes:[I

    aget v7, v7, v2

    iget-object v8, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypes:[I

    aget v8, v8, v6

    if-le v7, v8, :cond_8

    .line 608
    aput v9, v1, v2

    .line 609
    aput v10, v1, v6

    goto :goto_3

    .line 611
    :cond_8
    aput v10, v1, v2

    .line 612
    aput v9, v1, v6

    goto :goto_3

    .line 616
    :cond_9
    aput v4, v1, v2

    .line 617
    aput v5, v1, v6

    goto :goto_3
.end method

.method private configModemStatus()V
    .locals 14

    .prologue
    .line 908
    const-string v10, "net.cdma.mdmstat"

    const-string v11, "not ready"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 909
    .local v5, "md3State":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "configModemStatus md3State = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 910
    const-string v10, "ready"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 911
    iget-object v10, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mConfigModemRunnable:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$ConfigModemRunnable;

    const-wide/16 v12, 0xc8

    invoke-virtual {p0, v10, v12, v13}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1110
    :cond_0
    :goto_0
    return-void

    .line 915
    :cond_1
    const-string v10, "persist.radio.simswitch"

    const/4 v11, 0x1

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 916
    .local v0, "capability":I
    const/4 v1, 0x0

    .line 917
    .local v1, "cardType1":I
    const/4 v2, 0x0

    .line 918
    .local v2, "cardType2":I
    iget-object v10, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypes:[I

    array-length v10, v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_6

    .line 919
    iget-object v10, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypes:[I

    const/4 v11, 0x0

    aget v1, v10, v11

    .line 924
    :cond_2
    :goto_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "configModemStatus cardType1="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", cardType2="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", capability="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 927
    const/4 v6, 0x2

    .line 928
    .local v6, "modemStatus":I
    const/4 v9, 0x1

    .line 931
    .local v9, "remoteSimProtocol":I
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->isSvlteTestSimMode()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 932
    iget-object v10, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypes:[I

    array-length v10, v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_7

    .line 933
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getFullCardType(I)I

    move-result v1

    .line 938
    :cond_3
    :goto_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SvlteTestSimMode: cardType1="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ,cardType2="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 943
    :cond_4
    const-string v10, "OP09"

    iget-object v11, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mOperatorSpec:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    const-string v10, "SEGDEFAULT"

    iget-object v11, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mOP09Spec:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 944
    const-string v10, "configModemStatus: OP09 A"

    invoke-static {v10}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 945
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isNonCard(I)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 947
    const-string v10, "configModemStatus: no card"

    invoke-static {v10}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 948
    const/4 v6, 0x1

    .line 949
    const/4 v9, 0x1

    .line 1082
    :cond_5
    :goto_3
    iput v9, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mLastProtocol:I

    .line 1084
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "configModemStatus modemStatus="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", remoteSimProtocol="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 1086
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v7

    .line 1087
    .local v7, "phoneCount":I
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v8

    .line 1088
    .local v8, "proxyPhones":[Lcom/android/internal/telephony/Phone;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "configModemStatus mConfgiGsmDone="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mConfgiGsmDone:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ,mConfgiC2kDone="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mConfgiC2kDone:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ,mWaitingRilSocketConnect="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mWaitingRilSocketConnect:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 1091
    iget-boolean v10, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mConfgiGsmDone:Z

    if-nez v10, :cond_29

    .line 1092
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4
    if-ge v4, v7, :cond_28

    .line 1093
    aget-object v10, v8, v4

    check-cast v10, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v10}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v6, v9, v11}, Lcom/android/internal/telephony/PhoneBase;->configModemStatus(IILandroid/os/Message;)V

    .line 1095
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "configModemStatus for slot["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] LTE phone."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 1092
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 920
    .end local v4    # "i":I
    .end local v6    # "modemStatus":I
    .end local v7    # "phoneCount":I
    .end local v8    # "proxyPhones":[Lcom/android/internal/telephony/Phone;
    .end local v9    # "remoteSimProtocol":I
    :cond_6
    iget-object v10, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypes:[I

    array-length v10, v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_2

    .line 921
    iget-object v10, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypes:[I

    const/4 v11, 0x0

    aget v1, v10, v11

    .line 922
    iget-object v10, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypes:[I

    const/4 v11, 0x1

    aget v2, v10, v11

    goto/16 :goto_1

    .line 934
    .restart local v6    # "modemStatus":I
    .restart local v9    # "remoteSimProtocol":I
    :cond_7
    iget-object v10, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypes:[I

    array-length v10, v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_3

    .line 935
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getFullCardType(I)I

    move-result v1

    .line 936
    const/4 v10, 0x1

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getFullCardType(I)I

    move-result v2

    goto/16 :goto_2

    .line 950
    :cond_8
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isGsmCard(I)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 952
    const-string v10, "configModemStatus: GSM only"

    invoke-static {v10}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 953
    const/4 v6, 0x0

    .line 954
    const/4 v9, 0x1

    goto/16 :goto_3

    .line 955
    :cond_9
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->is3GCdmaCard(I)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 957
    const-string v10, "configModemStatus: CT 3G"

    invoke-static {v10}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 958
    const/4 v6, 0x1

    .line 959
    const/4 v9, 0x1

    goto/16 :goto_3

    .line 960
    :cond_a
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->is4GCdmaCard(I)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 961
    const-string v10, "configModemStatus: CT 4G"

    invoke-static {v10}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 963
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaIratSupport()Z

    move-result v10

    if-nez v10, :cond_b

    .line 964
    const/4 v6, 0x1

    .line 968
    :goto_5
    const/4 v9, 0x1

    goto/16 :goto_3

    .line 966
    :cond_b
    const/4 v6, 0x2

    goto :goto_5

    .line 971
    :cond_c
    const-string v10, "configModemStatus: other case, may not happen!"

    invoke-static {v10}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 975
    :cond_d
    const-string v10, "configModemStatus: OM/CT C"

    invoke-static {v10}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 977
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->is4GCdmaCard(I)Z

    move-result v10

    if-nez v10, :cond_e

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->is3GCdmaCard(I)Z

    move-result v10

    if-eqz v10, :cond_13

    :cond_e
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->is4GCdmaCard(I)Z

    move-result v10

    if-nez v10, :cond_f

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->is3GCdmaCard(I)Z

    move-result v10

    if-eqz v10, :cond_13

    .line 980
    :cond_f
    const/4 v9, 0x1

    .line 981
    const/4 v10, 0x1

    if-ne v0, v10, :cond_11

    .line 982
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->is4GCdmaCard(I)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 983
    const/4 v6, 0x2

    .line 994
    :goto_6
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaIratSupport()Z

    move-result v10

    if-nez v10, :cond_5

    .line 995
    const/4 v6, 0x1

    goto/16 :goto_3

    .line 985
    :cond_10
    const/4 v6, 0x1

    goto :goto_6

    .line 988
    :cond_11
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->is4GCdmaCard(I)Z

    move-result v10

    if-eqz v10, :cond_12

    .line 989
    const/4 v6, 0x2

    goto :goto_6

    .line 991
    :cond_12
    const/4 v6, 0x1

    goto :goto_6

    .line 1001
    :cond_13
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->is4GCdmaCard(I)Z

    move-result v10

    if-eqz v10, :cond_17

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isGsmCard(I)Z

    move-result v10

    if-nez v10, :cond_14

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isNonCard(I)Z

    move-result v10

    if-eqz v10, :cond_17

    .line 1003
    :cond_14
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaIratSupport()Z

    move-result v10

    if-nez v10, :cond_15

    .line 1004
    const/4 v6, 0x1

    .line 1009
    :goto_7
    const/4 v10, 0x1

    if-ne v0, v10, :cond_16

    .line 1010
    const/4 v9, 0x1

    goto/16 :goto_3

    .line 1006
    :cond_15
    const/4 v6, 0x2

    goto :goto_7

    .line 1012
    :cond_16
    const/4 v9, 0x2

    .line 1014
    goto/16 :goto_3

    .line 1015
    :cond_17
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->is3GCdmaCard(I)Z

    move-result v10

    if-eqz v10, :cond_1a

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isGsmCard(I)Z

    move-result v10

    if-nez v10, :cond_18

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isNonCard(I)Z

    move-result v10

    if-eqz v10, :cond_1a

    .line 1017
    :cond_18
    const/4 v6, 0x1

    .line 1018
    const/4 v10, 0x1

    if-ne v0, v10, :cond_19

    .line 1019
    const/4 v9, 0x1

    goto/16 :goto_3

    .line 1021
    :cond_19
    const/4 v9, 0x2

    .line 1023
    goto/16 :goto_3

    .line 1027
    :cond_1a
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isGsmCard(I)Z

    move-result v10

    if-nez v10, :cond_1b

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isNonCard(I)Z

    move-result v10

    if-eqz v10, :cond_20

    .line 1028
    :cond_1b
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->is4GCdmaCard(I)Z

    move-result v10

    if-eqz v10, :cond_1e

    .line 1030
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaIratSupport()Z

    move-result v10

    if-nez v10, :cond_1c

    .line 1031
    const/4 v6, 0x1

    .line 1036
    :goto_8
    const/4 v10, 0x1

    if-ne v0, v10, :cond_1d

    .line 1037
    const/4 v9, 0x2

    goto/16 :goto_3

    .line 1033
    :cond_1c
    const/4 v6, 0x2

    goto :goto_8

    .line 1039
    :cond_1d
    const/4 v9, 0x1

    .line 1041
    goto/16 :goto_3

    .line 1042
    :cond_1e
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->is3GCdmaCard(I)Z

    move-result v10

    if-eqz v10, :cond_20

    .line 1044
    const/4 v6, 0x1

    .line 1045
    const/4 v10, 0x1

    if-ne v0, v10, :cond_1f

    .line 1046
    const/4 v9, 0x2

    goto/16 :goto_3

    .line 1048
    :cond_1f
    const/4 v9, 0x1

    .line 1050
    goto/16 :goto_3

    .line 1056
    :cond_20
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "configModemStatus mLastProtocol="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mLastProtocol:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 1057
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isGsmCard(I)Z

    move-result v10

    if-eqz v10, :cond_22

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isGsmCard(I)Z

    move-result v10

    if-eqz v10, :cond_22

    .line 1059
    const/4 v6, 0x0

    .line 1060
    iget v10, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mLastProtocol:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_21

    iget v9, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mLastProtocol:I

    .line 1061
    :goto_9
    goto/16 :goto_3

    .line 1060
    :cond_21
    const/4 v9, 0x1

    goto :goto_9

    .line 1062
    :cond_22
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isGsmCard(I)Z

    move-result v10

    if-eqz v10, :cond_24

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isNonCard(I)Z

    move-result v10

    if-eqz v10, :cond_24

    .line 1064
    const/4 v6, 0x0

    .line 1065
    iget v10, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mLastProtocol:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_23

    iget v9, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mLastProtocol:I

    .line 1066
    :goto_a
    goto/16 :goto_3

    .line 1065
    :cond_23
    const/4 v9, 0x1

    goto :goto_a

    .line 1067
    :cond_24
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isNonCard(I)Z

    move-result v10

    if-eqz v10, :cond_26

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isGsmCard(I)Z

    move-result v10

    if-eqz v10, :cond_26

    .line 1069
    const/4 v6, 0x0

    .line 1070
    iget v10, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mLastProtocol:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_25

    iget v9, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mLastProtocol:I

    .line 1071
    :goto_b
    goto/16 :goto_3

    .line 1070
    :cond_25
    const/4 v9, 0x1

    goto :goto_b

    .line 1072
    :cond_26
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isNonCard(I)Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isNonCard(I)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1075
    const/4 v6, 0x2

    .line 1076
    iget v10, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mLastProtocol:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_27

    iget v9, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mLastProtocol:I

    :goto_c
    goto/16 :goto_3

    :cond_27
    const/4 v9, 0x1

    goto :goto_c

    .line 1097
    .restart local v4    # "i":I
    .restart local v7    # "phoneCount":I
    .restart local v8    # "proxyPhones":[Lcom/android/internal/telephony/Phone;
    :cond_28
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mConfgiGsmDone:Z

    .line 1100
    .end local v4    # "i":I
    :cond_29
    iget-boolean v10, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mWaitingRilSocketConnect:Z

    if-nez v10, :cond_0

    iget-boolean v10, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mConfgiC2kDone:Z

    if-nez v10, :cond_0

    .line 1101
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getCdmaSocketSlotId()I

    move-result v3

    .line 1102
    .local v3, "cdmaSocketId":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "configModemStatus for C2K, cdmaSocketId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 1103
    aget-object v10, v8, v3

    check-cast v10, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v10}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getNLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v6, v9, v11}, Lcom/android/internal/telephony/PhoneBase;->configModemStatus(IILandroid/os/Message;)V

    .line 1105
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mConfgiC2kDone:Z

    .line 1106
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isOP09Project()Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "ro.mtk.c2k.slot2.support"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "1"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 1107
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->enableMD3Sleep()V

    goto/16 :goto_0
.end method

.method private connectRilSocket()V
    .locals 3

    .prologue
    .line 864
    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSlotIdWaitConnect:I

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->isValidateSlotId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 865
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connectRilSocket, slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSlotIdWaitConnect:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 866
    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSlotIdWaitConnect:I

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getNLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->connectRilSocket()V

    .line 868
    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSlotIdWaitConnect:I

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getNLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForRilConnected(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 871
    :cond_0
    return-void
.end method

.method private containsCdma(I)Z
    .locals 1
    .param p1, "cardType"    # I

    .prologue
    .line 777
    and-int/lit8 v0, p1, 0x4

    if-gtz v0, :cond_0

    and-int/lit8 v0, p1, 0x8

    if-lez v0, :cond_1

    .line 779
    :cond_0
    const/4 v0, 0x1

    .line 781
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private containsGsm(I)Z
    .locals 1
    .param p1, "cardType"    # I

    .prologue
    .line 785
    and-int/lit8 v0, p1, 0x1

    if-gtz v0, :cond_0

    and-int/lit8 v0, p1, 0x2

    if-lez v0, :cond_1

    .line 787
    :cond_0
    const/4 v0, 0x1

    .line 789
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private containsUsim(I)Z
    .locals 1
    .param p1, "cardType"    # I

    .prologue
    .line 793
    and-int/lit8 v0, p1, 0x2

    if-lez v0, :cond_0

    .line 794
    const/4 v0, 0x1

    .line 796
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private disconnectRilSocket(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 874
    invoke-static {p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 875
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disconnectRilSocket, phoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 876
    invoke-static {p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getNLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->disconnectRilSocket()V

    .line 878
    :cond_0
    return-void
.end method

.method private doSwitchRadioTech()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, -0x1

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 308
    iget v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSlotBeSwitchCardType:I

    if-le v3, v8, :cond_0

    .line 309
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doSwitchRadioTech, Just return. AS slot: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSlotBeSwitchCardType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " switchCardType to sim."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 311
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSlotBeSwitchCardType:I

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/uicc/UiccController;->switchCardType(II)V

    .line 312
    iput v8, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSlotBeSwitchCardType:I

    .line 313
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mOldCardModes:[I

    sput-object v3, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCardModes:[I

    .line 314
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mInSwitching:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 356
    :goto_0
    return-void

    .line 317
    :cond_0
    const/4 v0, 0x0

    .line 318
    .local v0, "firstSwitchSlot":I
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->startSwitchMode()V

    .line 319
    iput-boolean v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSvlteModeOn:Z

    .line 320
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    sget-object v3, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCardModes:[I

    array-length v3, v3

    if-ge v1, v3, :cond_4

    .line 321
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSwitchQueue:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mOldCardModes:[I

    aget v3, v3, v1

    if-ne v3, v7, :cond_1

    sget-object v3, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCardModes:[I

    aget v3, v3, v1

    if-ne v3, v9, :cond_1

    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getCdmaSocketSlotId()I

    move-result v3

    if-eq v1, v3, :cond_1

    .line 325
    iput-boolean v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mWaitingRilSocketConnect:Z

    .line 326
    iput v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSlotIdWaitConnect:I

    .line 328
    :cond_1
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getCdmaSocketSlotId()I

    move-result v3

    if-ne v1, v3, :cond_2

    sget-object v3, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCardModes:[I

    aget v3, v3, v1

    if-ne v3, v7, :cond_2

    .line 329
    move v0, v1

    .line 331
    :cond_2
    sget-object v3, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCardModes:[I

    aget v3, v3, v1

    if-ne v3, v9, :cond_3

    .line 332
    iput-boolean v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSvlteModeOn:Z

    .line 320
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 336
    :cond_4
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSwitchQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_7

    .line 337
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[doSwitchRadioTech] mSwitchQueue size : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSwitchQueue:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 338
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSwitchQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v6, :cond_5

    .line 339
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSwitchQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 340
    .local v2, "slotId":I
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->switchRadioTechnology(I)V

    .line 341
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSwitchQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0

    .line 342
    .end local v2    # "slotId":I
    :cond_5
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSwitchQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v7, :cond_6

    .line 343
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[doSwitchRadioTech] firstSwitchSlot : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 344
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->switchRadioTechnology(I)V

    .line 345
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSwitchQueue:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 346
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[doSwitchRadioTech] mSwitchQueue size : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSwitchQueue:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 347
    const-string v3, "[doSwitchRadioTech] waiting for INTENT_ACTION_FINISH_SWITCH_SVLTE_RAT_MODE broadcast."

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 350
    :cond_6
    const-string v3, "[doSwitchRadioTech] Error switch Queue!."

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 353
    :cond_7
    const-string v3, "[doSwitchRadioTech] No need switch raido technology."

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 354
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->finishSwitchMode()V

    goto/16 :goto_0
.end method

.method private enableMD3Sleep()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1120
    const-string v4, "persist.radio.simswitch"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1121
    .local v0, "capability":I
    const/4 v1, 0x0

    .line 1122
    .local v1, "cardType1":I
    const/4 v2, 0x0

    .line 1123
    .local v2, "cardType2":I
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypes:[I

    array-length v4, v4

    if-ne v4, v6, :cond_3

    .line 1124
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypes:[I

    aget v1, v4, v7

    .line 1129
    :cond_0
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enableMD3Sleep cardType1="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", cardType2="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", capability="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 1132
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypes:[I

    array-length v4, v4

    if-ne v4, v8, :cond_2

    .line 1133
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isGsmCard(I)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->is3GCdmaCard(I)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->is4GCdmaCard(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1134
    :cond_1
    invoke-static {v6}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    check-cast v4, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getNLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v3

    .line 1135
    .local v3, "phone":Lcom/android/internal/telephony/PhoneBase;
    add-int/lit8 v4, v0, -0x1

    if-nez v4, :cond_4

    .line 1136
    iget-object v4, v3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v6}, Lcom/android/internal/telephony/CommandsInterface;->enableMd3Sleep(I)V

    .line 1137
    const-string v4, "enableMD3Sleep,G+C,set to 1"

    invoke-static {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 1155
    .end local v3    # "phone":Lcom/android/internal/telephony/PhoneBase;
    :cond_2
    :goto_1
    return-void

    .line 1125
    :cond_3
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypes:[I

    array-length v4, v4

    if-ne v4, v8, :cond_0

    .line 1126
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypes:[I

    aget v1, v4, v7

    .line 1127
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypes:[I

    aget v2, v4, v6

    goto :goto_0

    .line 1139
    .restart local v3    # "phone":Lcom/android/internal/telephony/PhoneBase;
    :cond_4
    iget-object v4, v3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v7}, Lcom/android/internal/telephony/CommandsInterface;->enableMd3Sleep(I)V

    .line 1140
    const-string v4, "enableMD3Sleep,G+C,set to 0"

    invoke-static {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    goto :goto_1

    .line 1143
    .end local v3    # "phone":Lcom/android/internal/telephony/PhoneBase;
    :cond_5
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isGsmCard(I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->is3GCdmaCard(I)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->is4GCdmaCard(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1144
    :cond_6
    invoke-static {v7}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    check-cast v4, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getNLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v3

    .line 1145
    .restart local v3    # "phone":Lcom/android/internal/telephony/PhoneBase;
    add-int/lit8 v4, v0, -0x1

    if-ne v4, v6, :cond_7

    .line 1146
    iget-object v4, v3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v6}, Lcom/android/internal/telephony/CommandsInterface;->enableMd3Sleep(I)V

    .line 1147
    const-string v4, "enableMD3Sleep,C+G,set to 1"

    invoke-static {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    goto :goto_1

    .line 1149
    :cond_7
    iget-object v4, v3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v7}, Lcom/android/internal/telephony/CommandsInterface;->enableMd3Sleep(I)V

    .line 1150
    const-string v4, "enableMD3Sleep,C+G,set to 1"

    invoke-static {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private finishSwitchMode()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 665
    const-string v1, "Broadcast finish switch mode"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 667
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.phone.ACTION_SET_RADIO_TECHNOLOGY_DONE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 668
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 669
    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sendBroadcast(Landroid/content/Intent;I)V

    .line 670
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->setSvlteModeProperties()V

    .line 672
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mPendingCardTypes:[I

    if-eqz v1, :cond_1

    .line 673
    const-string v1, "Start switch mode pended"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 675
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mConfgiGsmDone:Z

    .line 676
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mConfgiC2kDone:Z

    .line 678
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mPendingCardTypes:[I

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypes:[I

    .line 679
    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCardModes:[I

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mOldCardModes:[I

    .line 680
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isSwitchInAirplaneMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 681
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->calculateCardMode()[I

    move-result-object v1

    sput-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCardModes:[I

    .line 682
    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCardModes:[I

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->setupSvlteSystemProp([I)V

    .line 684
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->doSwitchRadioTech()V

    .line 685
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mPendingCardTypes:[I

    .line 689
    :goto_0
    return-void

    .line 687
    :cond_1
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mInSwitching:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0
.end method

.method public static getActiveSvlteModeSlotId()I
    .locals 4

    .prologue
    .line 741
    const/4 v1, -0x1

    .line 742
    .local v1, "svlteSlotId":I
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v2

    if-nez v2, :cond_0

    .line 743
    const-string v2, "[getActiveSvlteModeSlotId] SVLTE not support, return -1."

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->log(Ljava/lang/String;)V

    .line 752
    :goto_0
    return v1

    .line 746
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v2, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCardModes:[I

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 747
    sget-object v2, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCardModes:[I

    aget v2, v2, v0

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 748
    move v1, v0

    .line 746
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 751
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getActiveSvlteModeSlotId] slotId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getCdmaSocketSlotId()I
    .locals 3

    .prologue
    .line 760
    const-string v1, "persist.radio.cdma_slot"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 761
    .local v0, "slotId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getCdmaSocketSlotId] slotId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->log(Ljava/lang/String;)V

    .line 762
    return v0
.end method

.method private getFullCardType(I)I
    .locals 7
    .param p1, "slotId"    # I

    .prologue
    .line 1158
    if-ltz p1, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    if-lt p1, v4, :cond_1

    .line 1159
    :cond_0
    const-string v4, "SvlteModeController"

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

    .line 1160
    const/4 v2, 0x0

    .line 1178
    :goto_0
    return v2

    .line 1162
    :cond_1
    sget-object v4, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1163
    .local v1, "cardType":Ljava/lang/String;
    const-string v4, "SvlteModeController"

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

    .line 1164
    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1165
    .local v0, "appType":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 1166
    .local v2, "fullType":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v4, v0

    if-ge v3, v4, :cond_6

    .line 1167
    const-string v4, "USIM"

    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1168
    or-int/lit8 v2, v2, 0x2

    .line 1166
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1169
    :cond_3
    const-string v4, "SIM"

    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1170
    or-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1171
    :cond_4
    const-string v4, "CSIM"

    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1172
    or-int/lit8 v2, v2, 0x8

    goto :goto_2

    .line 1173
    :cond_5
    const-string v4, "RUIM"

    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1174
    or-int/lit8 v2, v2, 0x4

    goto :goto_2

    .line 1177
    :cond_6
    const-string v4, "SvlteModeController"

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

.method public static getInstance()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;
    .locals 3

    .prologue
    .line 161
    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 162
    :try_start_0
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sInstance:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    if-nez v0, :cond_0

    .line 163
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "SvlteModeController.getInstance can\'t be called before make()"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 166
    :cond_0
    :try_start_1
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sInstance:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method private getPreferRadioTech(II)I
    .locals 2
    .param p1, "cardType"    # I
    .param p2, "slot"    # I

    .prologue
    .line 638
    const/4 v0, 0x1

    .line 639
    .local v0, "prefer":I
    sparse-switch p1, :sswitch_data_0

    .line 649
    const/4 v0, 0x2

    .line 652
    :goto_0
    return v0

    .line 643
    :sswitch_0
    const/4 v0, 0x3

    .line 644
    goto :goto_0

    .line 646
    :sswitch_1
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mOldCardModes:[I

    aget v0, v1, p2

    .line 647
    goto :goto_0

    .line 639
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x4 -> :sswitch_0
        0x8 -> :sswitch_0
        0xa -> :sswitch_0
    .end sparse-switch
.end method

.method public static getRadioTechnologyMode()I
    .locals 3

    .prologue
    .line 706
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getRadioTechnologyMode(I)I

    move-result v0

    .line 707
    .local v0, "mode":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getRadioTechnologyMode] mode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->log(Ljava/lang/String;)V

    .line 708
    return v0
.end method

.method public static getRadioTechnologyMode(I)I
    .locals 5
    .param p0, "slotId"    # I

    .prologue
    .line 718
    const/4 v0, 0x1

    .line 719
    .local v0, "mode":I
    invoke-static {p0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 721
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v1, :cond_0

    .line 722
    check-cast v1, Lcom/android/internal/telephony/PhoneProxy;

    .end local v1    # "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/PhoneBase;

    .line 723
    .local v2, "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    if-eqz v2, :cond_0

    .line 724
    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CDMA"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 725
    const/4 v0, 0x3

    .line 731
    .end local v2    # "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getRadioTechnologyMode] mode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", slotId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->log(Ljava/lang/String;)V

    .line 732
    return v0

    .line 727
    .restart local v2    # "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static getTelephonyMode()I
    .locals 7

    .prologue
    const/4 v4, 0x2

    const/4 v2, -0x1

    const/4 v3, 0x1

    .line 1190
    const-string v5, "persist.radio.simswitch"

    const-string v6, "1"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .line 1192
    .local v0, "currMajorSim":I
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getActiveSvlteModeSlotId()I

    move-result v1

    .line 1193
    .local v1, "svlteSlotId":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v5

    if-ne v5, v3, :cond_2

    .line 1195
    const-string v2, "[getTelephonyMode] >>> SINGLE SIM case."

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 1196
    if-nez v1, :cond_1

    .line 1197
    const/4 v2, 0x6

    .line 1225
    :cond_0
    :goto_0
    return v2

    .line 1199
    :cond_1
    const/4 v2, 0x7

    goto :goto_0

    .line 1201
    :cond_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v5

    if-gt v5, v4, :cond_0

    .line 1206
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[getTelephonyMode] svlteSlotId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", currMajorSim = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 1208
    if-nez v0, :cond_5

    .line 1209
    if-nez v1, :cond_3

    .line 1210
    const/4 v2, 0x0

    goto :goto_0

    .line 1211
    :cond_3
    if-ne v1, v3, :cond_4

    move v2, v3

    .line 1212
    goto :goto_0

    :cond_4
    move v2, v4

    .line 1214
    goto :goto_0

    .line 1216
    :cond_5
    if-ne v0, v3, :cond_0

    .line 1217
    if-nez v1, :cond_6

    .line 1218
    const/4 v2, 0x4

    goto :goto_0

    .line 1219
    :cond_6
    if-ne v1, v3, :cond_7

    .line 1220
    const/4 v2, 0x3

    goto :goto_0

    .line 1222
    :cond_7
    const/4 v2, 0x5

    goto :goto_0
.end method

.method private static initCardModes()[I
    .locals 4

    .prologue
    .line 201
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    new-array v0, v2, [I

    .line 202
    .local v0, "cardModes":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 203
    const-string v2, "persist.radio.svlte_slot"

    const-string v3, "3,2,2,2"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    .line 202
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 206
    :cond_0
    return-object v0
.end method

.method private is3GCdmaCard(I)Z
    .locals 1
    .param p1, "cardType"    # I

    .prologue
    .line 529
    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_0

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->containsCdma(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 532
    const/4 v0, 0x1

    .line 534
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private is4GCdmaCard(I)Z
    .locals 1
    .param p1, "cardType"    # I

    .prologue
    .line 522
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->containsUsim(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->containsCdma(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 523
    const/4 v0, 0x1

    .line 525
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isGsmCard(I)Z
    .locals 1
    .param p1, "cardType"    # I

    .prologue
    .line 538
    and-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_0

    and-int/lit8 v0, p1, 0x8

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->containsGsm(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 541
    const/4 v0, 0x1

    .line 543
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNonCard(I)Z
    .locals 1
    .param p1, "cardType"    # I

    .prologue
    .line 547
    if-nez p1, :cond_0

    .line 548
    const/4 v0, 0x1

    .line 550
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isOP09Project()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1113
    const-string v4, "OP09"

    iget-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mOperatorSpec:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "SEGDEFAULT"

    iget-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mOP09Spec:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v2

    .line 1114
    .local v0, "isCTA":Z
    :goto_0
    const-string v4, "ro.ct6m_support"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1115
    .local v1, "isCTC":Z
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    move v3, v2

    :cond_1
    return v3

    .end local v0    # "isCTA":Z
    .end local v1    # "isCTC":Z
    :cond_2
    move v0, v3

    .line 1113
    goto :goto_0
.end method

.method private isSwitchInAirplaneMode()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1229
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1231
    .local v0, "airplaneMode":I
    if-ne v0, v1, :cond_0

    .line 1232
    const-string v2, "[isSwitchInAirplaneMode] Switch mode by previous mode."

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 1233
    sget-object v2, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCardModes:[I

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->printRadioModes([I)V

    .line 1236
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private isUsimOnlyCard(I)Z
    .locals 1
    .param p1, "cardType"    # I

    .prologue
    .line 800
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->containsUsim(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->containsCdma(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 1244
    const-string v0, "SvlteModeController"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    return-void
.end method

.method private static logicLog(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 1252
    const-string v0, "SvlteModeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SMC]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    return-void
.end method

.method public static make(Landroid/content/Context;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 176
    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 177
    :try_start_0
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sInstance:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    if-eqz v0, :cond_0

    .line 178
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "SvlteRatController.make() should only be called once"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 181
    :cond_0
    :try_start_1
    new-instance v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sInstance:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    .line 182
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sInstance:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method private onC2kCardTypeReady()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 286
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mInSwitching:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    const-string v0, "[onC2kCardTypeReady] Switching now, pended"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 288
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccController;->getC2KWPCardType()[I

    move-result-object v0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mPendingCardTypes:[I

    .line 304
    :goto_0
    return-void

    .line 291
    :cond_0
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mConfgiGsmDone:Z

    .line 292
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mConfgiC2kDone:Z

    .line 294
    const-string v0, "[onC2kCardTypeReady] Start switch"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 295
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccController;->getC2KWPCardType()[I

    move-result-object v0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypes:[I

    .line 297
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCardModes:[I

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mOldCardModes:[I

    .line 298
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isSwitchInAirplaneMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 299
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->calculateCardMode()[I

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCardModes:[I

    .line 300
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCardModes:[I

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->setupSvlteSystemProp([I)V

    .line 302
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->doSwitchRadioTech()V

    goto :goto_0
.end method

.method private printRadioModes([I)V
    .locals 4
    .param p1, "cardModes"    # [I

    .prologue
    .line 625
    array-length v2, p1

    if-nez v2, :cond_1

    .line 626
    const-string v2, "[printRadioModes] error cardModes."

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 635
    :cond_0
    return-void

    .line 629
    :cond_1
    const/4 v1, 0x0

    .local v1, "slot":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 630
    aget v2, p1, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    const-string v0, "RADIO_TECH_MODE_CSFB"

    .line 632
    .local v0, "mode":Ljava/lang/String;
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[printRadioModes] slot "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : mCardTypes = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypes:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 629
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 630
    .end local v0    # "mode":Ljava/lang/String;
    :cond_2
    const-string v0, "RADIO_TECH_MODE_SVLTE"

    goto :goto_1
.end method

.method private sendBroadcast(Landroid/content/Intent;I)V
    .locals 14
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userId"    # I

    .prologue
    .line 693
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v2, p1

    move/from16 v12, p2

    invoke-interface/range {v0 .. v12}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;IZZI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 699
    :goto_0
    return-void

    .line 696
    :catch_0
    move-exception v13

    .line 697
    .local v13, "ex":Landroid/os/RemoteException;
    const-string v0, "SvlteModeController"

    const-string v1, "Error while calling sendBroadcast"

    invoke-static {v0, v1, v13}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static setCdmaSocketSlotId(I)V
    .locals 2
    .param p0, "slotId"    # I

    .prologue
    .line 770
    invoke-static {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->isValidateSlotId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 771
    const-string v0, "persist.radio.cdma_slot"

    add-int/lit8 v1, p0, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[setCdmaSocketSlotId] slotId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->log(Ljava/lang/String;)V

    .line 774
    :cond_0
    return-void
.end method

.method private setSvlteModeProperties()V
    .locals 3

    .prologue
    .line 852
    const/4 v0, 0x0

    .local v0, "slotId":I
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 853
    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getRadioTechnologyMode(I)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 854
    const-string v1, "[setSvlteModeProperties] svlte"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 855
    const-string v1, "persist.radio.svlte.mode"

    const-string v2, "svlte"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    :goto_1
    return-void

    .line 852
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 859
    :cond_1
    const-string v1, "[setSvlteModeProperties] csfb"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 860
    const-string v1, "persist.radio.svlte.mode"

    const-string v2, "csfb"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private setupSvlteSystemProp([I)V
    .locals 4
    .param p1, "cardModes"    # [I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 555
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 557
    const-string v0, "persist.radio.svlte_slot"

    aget v1, p1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    :goto_0
    return-void

    .line 559
    :cond_0
    const-string v0, "persist.radio.svlte_slot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, p1, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private startSwitchMode()V
    .locals 3

    .prologue
    .line 656
    const-string v1, "Broadcast startSwitchMode"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 657
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mInSwitching:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 659
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.phone.ACTION_SET_RADIO_TECHNOLOGY_START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 660
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 661
    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sendBroadcast(Landroid/content/Intent;I)V

    .line 662
    return-void
.end method

.method private switchRadioTechnology(I)V
    .locals 14
    .param p1, "slotId"    # I

    .prologue
    const/4 v13, 0x3

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 432
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[switchRadioTechnology] Switch slotId: "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v9, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mOldCardModes:[I

    aget v9, v9, p1

    if-ne v9, v13, :cond_0

    const-string v9, " SVLTE"

    :goto_0
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, " -->"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v9, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCardModes:[I

    aget v9, v9, p1

    if-ne v9, v13, :cond_1

    const-string v9, " SVLTE"

    :goto_1
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 435
    iget-object v9, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypes:[I

    aget v9, v9, p1

    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->is4GCdmaCard(I)Z

    move-result v1

    .line 436
    .local v1, "is4GCdmaCard":Z
    const-string v9, "ro.mtk_lte_support"

    invoke-static {v9, v11}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v10, :cond_2

    move v2, v10

    .line 437
    .local v2, "isLteSupport":Z
    :goto_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[switchRadioTechnology][is4GCdmaCard]: "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, ", [isLteSupport]: "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 440
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    check-cast v3, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    .line 441
    .local v3, "lteDcPhoneProxy":Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;
    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getSvlteRatController()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    move-result-object v8

    .line 442
    .local v8, "svlteRatController":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;
    const/16 v4, 0x8

    .line 443
    .local v4, "netWorkType":I
    sget-object v9, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCardModes:[I

    aget v9, v9, p1

    if-ne v9, v13, :cond_4

    .line 444
    iget-boolean v9, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mWaitingRilSocketConnect:Z

    if-eqz v9, :cond_3

    .line 445
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->connectRilSocket()V

    .line 519
    :goto_3
    return-void

    .line 432
    .end local v1    # "is4GCdmaCard":Z
    .end local v2    # "isLteSupport":Z
    .end local v3    # "lteDcPhoneProxy":Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;
    .end local v4    # "netWorkType":I
    .end local v8    # "svlteRatController":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;
    :cond_0
    const-string v9, " CSFB"

    goto :goto_0

    :cond_1
    const-string v9, " CSFB"

    goto :goto_1

    .restart local v1    # "is4GCdmaCard":Z
    :cond_2
    move v2, v11

    .line 436
    goto :goto_2

    .line 449
    .restart local v2    # "isLteSupport":Z
    .restart local v3    # "lteDcPhoneProxy":Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;
    .restart local v4    # "netWorkType":I
    .restart local v8    # "svlteRatController":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;
    :cond_3
    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getSubId()I

    move-result v7

    .line 450
    .local v7, "subId":I
    if-gez v7, :cond_5

    .line 451
    iget-object v9, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mNeedReSwitch:[Z

    aput-boolean v10, v9, p1

    .line 455
    :goto_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[switchRadioTechnology][needReSwitch][slotId]: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mNeedReSwitch:[Z

    aget-boolean v10, v10, p1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " subId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 458
    iget-object v9, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-static {v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getCdmaRatModeKey(I)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_4G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    invoke-virtual {v11}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->ordinal()I

    move-result v11

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 461
    .local v6, "ratMode":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getRatMode ratMode= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " subId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 462
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->values()[Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v9

    aget-object v5, v9, v6

    .line 465
    .local v5, "orginMode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    const-string v9, "persist.radio.simswitch"

    const-string v10, "1"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/lit8 v0, v9, -0x1

    .line 467
    .local v0, "capabilityPhoneId":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[switchRadioTechnology] capabilityPhoneId: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 468
    if-eqz v2, :cond_8

    if-eqz v1, :cond_8

    .line 469
    sget-object v9, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_4G_DATA_ONLY:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-ne v5, v9, :cond_6

    .line 470
    const/16 v4, 0xc0

    .line 483
    :goto_5
    if-eq p1, v0, :cond_4

    .line 484
    and-int/lit8 v4, v4, -0x41

    .line 515
    .end local v0    # "capabilityPhoneId":I
    .end local v5    # "orginMode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    .end local v6    # "ratMode":I
    .end local v7    # "subId":I
    :cond_4
    :goto_6
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->configModemStatus()V

    .line 516
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[switchRadioTechnology][netWorkType]: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 517
    iput p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSwitchingSlotId:I

    .line 518
    const/4 v9, 0x0

    invoke-virtual {v8, v4, v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->setRadioTechnology(ILandroid/os/Message;)Z

    goto/16 :goto_3

    .line 453
    .restart local v7    # "subId":I
    :cond_5
    iget-object v9, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mNeedReSwitch:[Z

    aput-boolean v11, v9, p1

    goto/16 :goto_4

    .line 472
    .restart local v0    # "capabilityPhoneId":I
    .restart local v5    # "orginMode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    .restart local v6    # "ratMode":I
    :cond_6
    sget-object v9, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_3G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-ne v5, v9, :cond_7

    .line 473
    const/16 v4, 0xb0

    goto :goto_5

    .line 477
    :cond_7
    const/16 v4, 0xf0

    goto :goto_5

    .line 488
    :cond_8
    iget-object v9, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypes:[I

    aget v9, v9, p1

    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isUsimOnlyCard(I)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 491
    sget-object v9, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_4G_DATA_ONLY:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-ne v5, v9, :cond_9

    .line 492
    const/16 v4, 0xc0

    .line 505
    :goto_7
    if-eq p1, v0, :cond_4

    .line 506
    and-int/lit8 v4, v4, -0x41

    goto :goto_6

    .line 494
    :cond_9
    sget-object v9, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_3G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-ne v5, v9, :cond_a

    .line 495
    const/16 v4, 0xb0

    goto :goto_7

    .line 499
    :cond_a
    const/16 v4, 0xf0

    goto :goto_7

    .line 509
    :cond_b
    const/16 v4, 0xb0

    goto :goto_6
.end method

.method private tryToSwitchMode()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 260
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getCdmaSocketSlotId()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getNLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    .line 263
    .local v0, "rs":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tryToSwitchMode, RadioState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mC2KCardTypeReady: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mC2KCardTypeReady:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mAlreadyRegistForRadioState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mAlreadyRegistForRadioState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 267
    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq v0, v1, :cond_2

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mC2KCardTypeReady:Z

    if-eqz v1, :cond_2

    .line 268
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mC2KCardTypeReady:Z

    .line 269
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mAlreadyRegistForRadioState:Z

    if-eqz v1, :cond_0

    .line 270
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getCdmaSocketSlotId()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getNLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRadioStateChanged(Landroid/os/Handler;)V

    .line 272
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mAlreadyRegistForRadioState:Z

    .line 274
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->onC2kCardTypeReady()V

    .line 283
    :cond_1
    :goto_0
    return-void

    .line 276
    :cond_2
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mAlreadyRegistForRadioState:Z

    if-nez v1, :cond_1

    .line 277
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mAlreadyRegistForRadioState:Z

    .line 278
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getCdmaSocketSlotId()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getNLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x68

    const/4 v3, 0x0

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private unregisterForRilConnected()V
    .locals 2

    .prologue
    .line 881
    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSlotIdWaitConnect:I

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->isValidateSlotId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 882
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterForRilConnected, phoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSlotIdWaitConnect:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 883
    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSlotIdWaitConnect:I

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getNLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRilConnected(Landroid/os/Handler;)V

    .line 885
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSlotIdWaitConnect:I

    .line 887
    :cond_0
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 210
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccController;->unregisterForC2KWPCardTypeReady(Landroid/os/Handler;)V

    .line 211
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 212
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSwitchQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 213
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mInSwitching:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 214
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mPendingCardTypes:[I

    .line 215
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mWaitingRilSocketConnect:Z

    .line 216
    iput v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSwitchingSlotId:I

    .line 217
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->unregisterForRilConnected()V

    .line 218
    iput v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSlotBeSwitchCardType:I

    .line 219
    const-string v0, "dispose!"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 220
    return-void
.end method

.method public getNeedReSwitch(I)Z
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 1261
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mNeedReSwitch:[Z

    aget-boolean v0, v0, p1

    return v0
.end method

.method public getNetWorkTypeBySlotId(I)I
    .locals 10
    .param p1, "slotId"    # I

    .prologue
    .line 366
    iget-object v7, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypes:[I

    aget v7, v7, p1

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->is4GCdmaCard(I)Z

    move-result v1

    .line 367
    .local v1, "is4GCdmaCard":Z
    const/16 v3, 0x8

    .line 368
    .local v3, "netWorkType":I
    sget-object v7, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCardModes:[I

    aget v7, v7, p1

    const/4 v8, 0x3

    if-ne v7, v8, :cond_0

    .line 369
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    .line 370
    .local v2, "lteDcPhoneProxy":Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;
    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getSubId()I

    move-result v6

    .line 371
    .local v6, "subId":I
    iget-object v7, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getCdmaRatModeKey(I)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_4G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    invoke-virtual {v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->ordinal()I

    move-result v9

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 374
    .local v5, "ratMode":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getRatMode ratMode= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " subId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 375
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->values()[Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v7

    aget-object v4, v7, v5

    .line 377
    .local v4, "orginMode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    const-string v7, "persist.radio.simswitch"

    const-string v8, "1"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit8 v0, v7, -0x1

    .line 379
    .local v0, "capabilityPhoneId":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[switchRadioTechnology] capabilityPhoneId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 381
    if-eqz v1, :cond_3

    .line 382
    sget-object v7, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_4G_DATA_ONLY:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-ne v4, v7, :cond_1

    .line 383
    const/16 v3, 0xc0

    .line 396
    :goto_0
    if-eq p1, v0, :cond_0

    .line 397
    and-int/lit8 v3, v3, -0x41

    .line 428
    .end local v0    # "capabilityPhoneId":I
    .end local v2    # "lteDcPhoneProxy":Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;
    .end local v4    # "orginMode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    .end local v5    # "ratMode":I
    .end local v6    # "subId":I
    :cond_0
    :goto_1
    return v3

    .line 385
    .restart local v0    # "capabilityPhoneId":I
    .restart local v2    # "lteDcPhoneProxy":Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;
    .restart local v4    # "orginMode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    .restart local v5    # "ratMode":I
    .restart local v6    # "subId":I
    :cond_1
    sget-object v7, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_3G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-ne v4, v7, :cond_2

    .line 386
    const/16 v3, 0xb0

    goto :goto_0

    .line 390
    :cond_2
    const/16 v3, 0xf0

    goto :goto_0

    .line 401
    :cond_3
    iget-object v7, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypes:[I

    aget v7, v7, p1

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isUsimOnlyCard(I)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 404
    sget-object v7, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_4G_DATA_ONLY:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-ne v4, v7, :cond_4

    .line 405
    const/16 v3, 0xc0

    .line 418
    :goto_2
    if-eq p1, v0, :cond_0

    .line 419
    and-int/lit8 v3, v3, -0x41

    goto :goto_1

    .line 407
    :cond_4
    sget-object v7, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_3G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-ne v4, v7, :cond_5

    .line 408
    const/16 v3, 0xb0

    goto :goto_2

    .line 412
    :cond_5
    const/16 v3, 0xf0

    goto :goto_2

    .line 422
    :cond_6
    const/16 v3, 0xb0

    goto :goto_1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 224
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 225
    .local v0, "ar":Landroid/os/AsyncResult;
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 250
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 227
    :sswitch_0
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mC2KCardTypeReady:Z

    if-eqz v1, :cond_0

    .line 228
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->tryToSwitchMode()V

    goto :goto_0

    .line 232
    :sswitch_1
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mC2KCardTypeReady:Z

    .line 233
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->tryToSwitchMode()V

    goto :goto_0

    .line 236
    :sswitch_2
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_2

    .line 237
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, -0x1

    if-le v1, v3, :cond_1

    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mWaitingRilSocketConnect:Z

    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_RIL_CONNECTED, mWaitingRilSocketConnect ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mWaitingRilSocketConnect:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 243
    :goto_2
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mWaitingRilSocketConnect:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSlotIdWaitConnect:I

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->isValidateSlotId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 244
    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSlotIdWaitConnect:I

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->setCdmaSocketSlotId(I)V

    .line 245
    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSlotIdWaitConnect:I

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->switchRadioTechnology(I)V

    .line 246
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->unregisterForRilConnected()V

    goto :goto_0

    :cond_1
    move v1, v2

    .line 237
    goto :goto_1

    .line 241
    :cond_2
    const-string v1, "Unexpected exception on EVENT_RIL_CONNECTED"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    goto :goto_2

    .line 225
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x68 -> :sswitch_0
    .end sparse-switch
.end method

.method public isSvlteModeSwitching()Z
    .locals 1

    .prologue
    .line 1182
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mInSwitching:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method
