.class public Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;
.super Landroid/os/Handler;
.source "WorldPhoneOp01.java"

# interfaces
.implements Lcom/mediatek/internal/telephony/worldphone/IWorldPhone;


# static fields
.field private static final FDD_STANDBY_TIMER:[I

.field private static final MCC_TABLE_DOMESTIC:[Ljava/lang/String;

.field private static final PLMN_TABLE_TYPE1:[Ljava/lang/String;

.field private static final PLMN_TABLE_TYPE3:[Ljava/lang/String;

.field private static final PROJECT_SIM_NUM:I

.field private static final TDD_STANDBY_TIMER:[I

.field private static sActivePhones:[Lcom/android/internal/telephony/Phone;

.field private static sCi:[Lcom/android/internal/telephony/CommandsInterface;

.field private static sContext:Landroid/content/Context;

.field private static sDataRegState:I

.field private static sDefaultBootuUpModem:I

.field private static sDefultPhone:Lcom/android/internal/telephony/Phone;

.field private static sDenyReason:I

.field private static sFddStandByCounter:I

.field private static sFirstSelect:[Z

.field private static sIccCardType:[I

.field private static sIccRecordsInstance:[Lcom/android/internal/telephony/uicc/IccRecords;

.field private static sImsi:[Ljava/lang/String;

.field private static sIsAutoSelectEnable:Z

.field private static sIsInvalidSim:[Z

.field private static sIsResumeCampingFail:Z

.field private static sLastPlmn:Ljava/lang/String;

.field private static sLock:Ljava/lang/Object;

.field private static sMajorSim:I

.field private static sModemSwitchHandler:Lcom/mediatek/internal/telephony/ModemSwitchHandler;

.field private static sNwPlmnStrings:[Ljava/lang/String;

.field private static sOperatorSpec:Ljava/lang/String;

.field private static sPlmnSs:Ljava/lang/String;

.field private static sProxyPhones:[Lcom/android/internal/telephony/Phone;

.field private static sRegion:I

.field private static sRilDataRadioTechnology:I

.field private static sRilDataRegState:I

.field private static sRilVoiceRadioTechnology:I

.field private static sRilVoiceRegState:I

.field private static sServiceState:Landroid/telephony/ServiceState;

.field private static sSuspendId:[I

.field private static sSuspendWaitImsi:[Z

.field private static sSwitchModemCauseType:I

.field private static sTddStandByCounter:I

.field private static sUiccController:Lcom/android/internal/telephony/uicc/UiccController;

.field private static sUserType:I

.field private static sVoiceCapable:Z

.field private static sVoiceRegState:I

.field private static sWaitInFdd:Z

.field private static sWaitInTdd:Z


# instance fields
.field private mFddStandByTimerRunnable:Ljava/lang/Runnable;

.field private mTddStandByTimerRunnable:Ljava/lang/Runnable;

.field private final mWorldPhoneReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sLock:Ljava/lang/Object;

    .line 67
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getProjectSimNum()I

    move-result v0

    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->PROJECT_SIM_NUM:I

    .line 68
    new-array v0, v4, [I

    const/16 v1, 0x3c

    aput v1, v0, v3

    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->FDD_STANDBY_TIMER:[I

    .line 71
    new-array v0, v4, [I

    const/16 v1, 0x28

    aput v1, v0, v3

    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->TDD_STANDBY_TIMER:[I

    .line 74
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "46000"

    aput-object v1, v0, v3

    const-string v1, "46002"

    aput-object v1, v0, v4

    const-string v1, "46007"

    aput-object v1, v0, v6

    const-string v1, "46008"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "00101"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "00211"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "00321"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "00431"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "00541"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "00651"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "00761"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "00871"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "00902"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "01012"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "01122"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "01232"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "46004"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "46602"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "50270"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "46003"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->PLMN_TABLE_TYPE1:[Ljava/lang/String;

    .line 81
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "46001"

    aput-object v1, v0, v3

    const-string v1, "46006"

    aput-object v1, v0, v4

    const-string v1, "46009"

    aput-object v1, v0, v6

    const-string v1, "45407"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "46005"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "45502"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "46011"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->PLMN_TABLE_TYPE3:[Ljava/lang/String;

    .line 85
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "460"

    aput-object v1, v0, v3

    const-string v1, "001"

    aput-object v1, v0, v4

    const-string v1, "002"

    aput-object v1, v0, v6

    const-string v1, "003"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "004"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "005"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "006"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "007"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "008"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "009"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "010"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "011"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "012"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->MCC_TABLE_DOMESTIC:[Ljava/lang/String;

    .line 92
    sput-object v5, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sContext:Landroid/content/Context;

    .line 93
    sput-object v5, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sDefultPhone:Lcom/android/internal/telephony/Phone;

    .line 94
    sput-object v5, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    .line 95
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->PROJECT_SIM_NUM:I

    new-array v0, v0, [Lcom/android/internal/telephony/Phone;

    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sActivePhones:[Lcom/android/internal/telephony/Phone;

    .line 96
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->PROJECT_SIM_NUM:I

    new-array v0, v0, [Lcom/android/internal/telephony/CommandsInterface;

    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sCi:[Lcom/android/internal/telephony/CommandsInterface;

    .line 100
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->PROJECT_SIM_NUM:I

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sImsi:[Ljava/lang/String;

    .line 112
    sput v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sDefaultBootuUpModem:I

    .line 113
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->PROJECT_SIM_NUM:I

    new-array v0, v0, [I

    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSuspendId:[I

    .line 114
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->PROJECT_SIM_NUM:I

    new-array v0, v0, [I

    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIccCardType:[I

    .line 116
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->PROJECT_SIM_NUM:I

    new-array v0, v0, [Z

    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsInvalidSim:[Z

    .line 117
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->PROJECT_SIM_NUM:I

    new-array v0, v0, [Z

    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSuspendWaitImsi:[Z

    .line 118
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->PROJECT_SIM_NUM:I

    new-array v0, v0, [Z

    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sFirstSelect:[Z

    .line 119
    sput-object v5, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 120
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->PROJECT_SIM_NUM:I

    new-array v0, v0, [Lcom/android/internal/telephony/uicc/IccRecords;

    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIccRecordsInstance:[Lcom/android/internal/telephony/uicc/IccRecords;

    .line 122
    sput-object v5, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sModemSwitchHandler:Lcom/mediatek/internal/telephony/ModemSwitchHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 131
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 192
    new-instance v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01$1;

    invoke-direct {v2, p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01$1;-><init>(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;)V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->mWorldPhoneReceiver:Landroid/content/BroadcastReceiver;

    .line 922
    new-instance v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01$2;

    invoke-direct {v2, p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01$2;-><init>(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;)V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->mTddStandByTimerRunnable:Ljava/lang/Runnable;

    .line 935
    new-instance v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01$3;

    invoke-direct {v2, p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01$3;-><init>(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;)V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->mFddStandByTimerRunnable:Ljava/lang/Runnable;

    .line 132
    const-string v2, "Constructor invoked"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 133
    const-string v2, "ro.operator.optr"

    const-string v3, "OM"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sOperatorSpec:Ljava/lang/String;

    .line 134
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Operator Spec:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sOperatorSpec:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 135
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    sput-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sDefultPhone:Lcom/android/internal/telephony/Phone;

    .line 136
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v2

    sput-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    .line 137
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->PROJECT_SIM_NUM:I

    if-ge v0, v2, :cond_0

    .line 138
    sget-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sActivePhones:[Lcom/android/internal/telephony/Phone;

    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v0

    check-cast v2, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    aput-object v2, v3, v0

    .line 139
    sget-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sCi:[Lcom/android/internal/telephony/CommandsInterface;

    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sActivePhones:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v0

    check-cast v2, Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    aput-object v2, v3, v0

    .line 137
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 141
    :cond_0
    const/4 v0, 0x0

    :goto_1
    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->PROJECT_SIM_NUM:I

    if-ge v0, v2, :cond_1

    .line 142
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    add-int/lit8 v3, v0, 0xa

    invoke-interface {v2, p0, v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->setOnPlmnChangeNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 143
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    add-int/lit8 v3, v0, 0x1e

    invoke-interface {v2, p0, v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->setOnRegistrationSuspended(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 144
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    add-int/lit8 v3, v0, 0x0

    invoke-interface {v2, p0, v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 145
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    add-int/lit8 v3, v0, 0x3c

    invoke-interface {v2, p0, v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->setInvalidSimInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 141
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 148
    :cond_1
    new-instance v2, Lcom/mediatek/internal/telephony/ModemSwitchHandler;

    invoke-direct {v2}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;-><init>()V

    sput-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sModemSwitchHandler:Lcom/mediatek/internal/telephony/ModemSwitchHandler;

    .line 149
    invoke-static {}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->getActiveModemType()I

    move-result v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->modemToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 151
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 152
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 153
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 154
    const-string v2, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 155
    const-string v2, "android.intent.action.ACTION_ADB_SWITCH_MODEM"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 156
    const-string v2, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_DONE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 157
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sDefultPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v2, :cond_2

    .line 158
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sDefultPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    sput-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sContext:Landroid/content/Context;

    .line 162
    :goto_2
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x112004e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    sput-boolean v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sVoiceCapable:Z

    .line 163
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->mWorldPhoneReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 165
    sput v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sTddStandByCounter:I

    .line 166
    sput v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sFddStandByCounter:I

    .line 167
    sput-boolean v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sWaitInTdd:Z

    .line 168
    sput-boolean v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sWaitInFdd:Z

    .line 169
    sput v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sRegion:I

    .line 170
    sput-object v5, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sLastPlmn:Ljava/lang/String;

    .line 171
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->resetAllProperties()V

    .line 172
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getModemSelectionMode()I

    move-result v2

    if-nez v2, :cond_3

    .line 173
    const-string v2, "Auto select disable"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 175
    sput-boolean v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsAutoSelectEnable:Z

    .line 176
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "world_phone_auto_select_mode"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 184
    :goto_3
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->FDD_STANDBY_TIMER:[I

    sget v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sFddStandByCounter:I

    sget-object v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "world_phone_fdd_modem_timer"

    sget-object v6, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->FDD_STANDBY_TIMER:[I

    sget v7, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sFddStandByCounter:I

    aget v6, v6, v7

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    aput v4, v2, v3

    .line 186
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "world_phone_fdd_modem_timer"

    sget-object v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->FDD_STANDBY_TIMER:[I

    sget v5, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sFddStandByCounter:I

    aget v4, v4, v5

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 188
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FDD_STANDBY_TIMER = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->FDD_STANDBY_TIMER:[I

    sget v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sFddStandByCounter:I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 189
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sDefaultBootuUpModem = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sDefaultBootuUpModem:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 190
    return-void

    .line 160
    :cond_2
    const-string v2, "DefaultPhone = null"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 179
    :cond_3
    const-string v2, "Auto select enable"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 180
    sput-boolean v6, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsAutoSelectEnable:Z

    .line 181
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "world_phone_auto_select_mode"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-static {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 65
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I

    return v0
.end method

.method static synthetic access$1000()[Z
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sFirstSelect:[Z

    return-object v0
.end method

.method static synthetic access$102(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 65
    sput p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I

    return p0
.end method

.method static synthetic access$1100()I
    .locals 1

    .prologue
    .line 65
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSwitchModemCauseType:I

    return v0
.end method

.method static synthetic access$1102(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 65
    sput p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSwitchModemCauseType:I

    return p0
.end method

.method static synthetic access$1200()I
    .locals 1

    .prologue
    .line 65
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sRegion:I

    return v0
.end method

.method static synthetic access$1300(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;
    .param p1, "x1"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handleSwitchModem(I)V

    return-void
.end method

.method static synthetic access$1400()[Z
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSuspendWaitImsi:[Z

    return-object v0
.end method

.method static synthetic access$1500()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sNwPlmnStrings:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600()[I
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSuspendId:[I

    return-object v0
.end method

.method static synthetic access$1700(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;
    .param p1, "x1"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->resumeCampingProcedure(I)V

    return-void
.end method

.method static synthetic access$1800()[Lcom/android/internal/telephony/CommandsInterface;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sCi:[Lcom/android/internal/telephony/CommandsInterface;

    return-object v0
.end method

.method static synthetic access$1902(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 65
    sput-object p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sLastPlmn:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200()Lcom/android/internal/telephony/uicc/UiccController;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    return-object v0
.end method

.method static synthetic access$2000()[Z
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsInvalidSim:[Z

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/internal/telephony/uicc/UiccController;)Lcom/android/internal/telephony/uicc/UiccController;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccController;

    .prologue
    .line 65
    sput-object p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->removeModemStandByTimer()V

    return-void
.end method

.method static synthetic access$2202(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 65
    sput p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sDenyReason:I

    return p0
.end method

.method static synthetic access$2300()Landroid/telephony/ServiceState;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sServiceState:Landroid/telephony/ServiceState;

    return-object v0
.end method

.method static synthetic access$2302(Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;
    .locals 0
    .param p0, "x0"    # Landroid/telephony/ServiceState;

    .prologue
    .line 65
    sput-object p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sServiceState:Landroid/telephony/ServiceState;

    return-object p0
.end method

.method static synthetic access$2400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sPlmnSs:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2402(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 65
    sput-object p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sPlmnSs:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2500()I
    .locals 1

    .prologue
    .line 65
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sVoiceRegState:I

    return v0
.end method

.method static synthetic access$2502(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 65
    sput p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sVoiceRegState:I

    return p0
.end method

.method static synthetic access$2600()I
    .locals 1

    .prologue
    .line 65
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sRilVoiceRegState:I

    return v0
.end method

.method static synthetic access$2602(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 65
    sput p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sRilVoiceRegState:I

    return p0
.end method

.method static synthetic access$2700()I
    .locals 1

    .prologue
    .line 65
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sRilVoiceRadioTechnology:I

    return v0
.end method

.method static synthetic access$2702(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 65
    sput p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sRilVoiceRadioTechnology:I

    return p0
.end method

.method static synthetic access$2800()I
    .locals 1

    .prologue
    .line 65
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sDataRegState:I

    return v0
.end method

.method static synthetic access$2802(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 65
    sput p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sDataRegState:I

    return p0
.end method

.method static synthetic access$2900()I
    .locals 1

    .prologue
    .line 65
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sRilDataRegState:I

    return v0
.end method

.method static synthetic access$2902(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 65
    sput p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sRilDataRegState:I

    return p0
.end method

.method static synthetic access$300()[Lcom/android/internal/telephony/uicc/IccRecords;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIccRecordsInstance:[Lcom/android/internal/telephony/uicc/IccRecords;

    return-object v0
.end method

.method static synthetic access$3000()I
    .locals 1

    .prologue
    .line 65
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sRilDataRadioTechnology:I

    return v0
.end method

.method static synthetic access$3002(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 65
    sput p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sRilDataRadioTechnology:I

    return p0
.end method

.method static synthetic access$3100(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->isNoService()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handleNoService()V

    return-void
.end method

.method static synthetic access$3300(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->isInService()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3400()I
    .locals 1

    .prologue
    .line 65
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sDefaultBootuUpModem:I

    return v0
.end method

.method static synthetic access$3500()I
    .locals 1

    .prologue
    .line 65
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->PROJECT_SIM_NUM:I

    return v0
.end method

.method static synthetic access$3600(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handleSimSwitched()V

    return-void
.end method

.method static synthetic access$3700()I
    .locals 1

    .prologue
    .line 65
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sTddStandByCounter:I

    return v0
.end method

.method static synthetic access$3702(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 65
    sput p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sTddStandByCounter:I

    return p0
.end method

.method static synthetic access$3708()I
    .locals 2

    .prologue
    .line 65
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sTddStandByCounter:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sTddStandByCounter:I

    return v0
.end method

.method static synthetic access$3800()[I
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->TDD_STANDBY_TIMER:[I

    return-object v0
.end method

.method static synthetic access$3900()I
    .locals 1

    .prologue
    .line 65
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sFddStandByCounter:I

    return v0
.end method

.method static synthetic access$3902(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 65
    sput p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sFddStandByCounter:I

    return p0
.end method

.method static synthetic access$3908()I
    .locals 2

    .prologue
    .line 65
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sFddStandByCounter:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sFddStandByCounter:I

    return v0
.end method

.method static synthetic access$400()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sImsi:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4000()[I
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->FDD_STANDBY_TIMER:[I

    return-object v0
.end method

.method static synthetic access$500()[I
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIccCardType:[I

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;I)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;
    .param p1, "x1"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->getIccCardType(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$700()Z
    .locals 1

    .prologue
    .line 65
    sget-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsAutoSelectEnable:Z

    return v0
.end method

.method static synthetic access$800()I
    .locals 1

    .prologue
    .line 65
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sUserType:I

    return v0
.end method

.method static synthetic access$802(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 65
    sput p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sUserType:I

    return p0
.end method

.method static synthetic access$900(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->getUserType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private getIccCardType(I)I
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    .line 840
    const-string v0, "Unknown"

    .line 842
    .local v0, "simString":Ljava/lang/String;
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, p1

    check-cast v2, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IccCard;->getIccCardType()Ljava/lang/String;

    move-result-object v0

    .line 843
    const-string v2, "SIM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 844
    const-string v2, "IccCard type: SIM"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 845
    const/4 v1, 0x1

    .line 854
    .local v1, "simType":I
    :goto_0
    return v1

    .line 846
    .end local v1    # "simType":I
    :cond_0
    const-string v2, "USIM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 847
    const-string v2, "IccCard type: USIM"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 848
    const/4 v1, 0x2

    .restart local v1    # "simType":I
    goto :goto_0

    .line 850
    .end local v1    # "simType":I
    :cond_1
    const-string v2, "IccCard type: Unknown"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 851
    const/4 v1, 0x0

    .restart local v1    # "simType":I
    goto :goto_0
.end method

.method private getRegion(Ljava/lang/String;)I
    .locals 9
    .param p1, "plmn"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x5

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 859
    if-eqz p1, :cond_0

    const-string v7, ""

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v7, v8, :cond_2

    .line 860
    :cond_0
    const-string v5, "[getRegion] Invalid PLMN"

    invoke-static {v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    move v5, v6

    .line 877
    :cond_1
    :goto_0
    return v5

    .line 865
    :cond_2
    invoke-virtual {p1, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 866
    .local v1, "currentMcc":Ljava/lang/String;
    const-string v7, "46602"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "50270"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 869
    const/4 v7, 0x3

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 870
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->MCC_TABLE_DOMESTIC:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_4

    aget-object v4, v0, v2

    .line 871
    .local v4, "mcc":Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 872
    const-string v6, "[getRegion] REGION_DOMESTIC"

    invoke-static {v6}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 870
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 876
    .end local v4    # "mcc":Ljava/lang/String;
    :cond_4
    const-string v5, "[getRegion] REGION_FOREIGN"

    invoke-static {v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 877
    const/4 v5, 0x2

    goto :goto_0
.end method

.method private getUserType(Ljava/lang/String;)I
    .locals 6
    .param p1, "imsi"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 881
    if-eqz p1, :cond_4

    const-string v5, ""

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 882
    const/4 v5, 0x5

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 883
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->PLMN_TABLE_TYPE1:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 884
    .local v3, "mccmnc":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 885
    const-string v4, "[getUserType] Type1 user"

    invoke-static {v4}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 886
    const/4 v4, 0x1

    .line 899
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "mccmnc":Ljava/lang/String;
    :goto_1
    return v4

    .line 883
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    .restart local v3    # "mccmnc":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 889
    .end local v3    # "mccmnc":Ljava/lang/String;
    :cond_1
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->PLMN_TABLE_TYPE3:[Ljava/lang/String;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 890
    .restart local v3    # "mccmnc":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 891
    const-string v4, "[getUserType] Type3 user"

    invoke-static {v4}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 892
    const/4 v4, 0x3

    goto :goto_1

    .line 889
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 895
    .end local v3    # "mccmnc":Ljava/lang/String;
    :cond_3
    const-string v4, "[getUserType] Type2 user"

    invoke-static {v4}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 896
    const/4 v4, 0x2

    goto :goto_1

    .line 898
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    :cond_4
    const-string v5, "[getUserType] null IMSI"

    invoke-static {v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private handleInvalidSimNotify(ILandroid/os/AsyncResult;)V
    .locals 10
    .param p1, "slotId"    # I
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 495
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Slot"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 496
    iget-object v6, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_3

    iget-object v6, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v6, :cond_3

    .line 497
    iget-object v6, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [Ljava/lang/String;

    move-object v2, v6

    check-cast v2, [Ljava/lang/String;

    .line 498
    .local v2, "invalidSimInfo":[Ljava/lang/String;
    aget-object v3, v2, v9

    .line 499
    .local v3, "plmn":Ljava/lang/String;
    aget-object v6, v2, v8

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 500
    .local v1, "cs_invalid":I
    const/4 v6, 0x2

    aget-object v6, v2, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 501
    .local v4, "ps_invalid":I
    const/4 v6, 0x3

    aget-object v6, v2, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 502
    .local v0, "cause":I
    const/4 v5, -0x1

    .line 503
    .local v5, "testMode":I
    const-string v6, "gsm.gcf.testmode"

    invoke-static {v6, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 504
    if-eqz v5, :cond_1

    .line 505
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid SIM notified during test mode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 526
    .end local v0    # "cause":I
    .end local v1    # "cs_invalid":I
    .end local v2    # "invalidSimInfo":[Ljava/lang/String;
    .end local v3    # "plmn":Ljava/lang/String;
    .end local v4    # "ps_invalid":I
    .end local v5    # "testMode":I
    :cond_0
    :goto_0
    return-void

    .line 508
    .restart local v0    # "cause":I
    .restart local v1    # "cs_invalid":I
    .restart local v2    # "invalidSimInfo":[Ljava/lang/String;
    .restart local v3    # "plmn":Ljava/lang/String;
    .restart local v4    # "ps_invalid":I
    .restart local v5    # "testMode":I
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "testMode:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", cause: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", cs_invalid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", ps_invalid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", plmn: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 509
    sget-boolean v6, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sVoiceCapable:Z

    if-eqz v6, :cond_2

    if-ne v1, v8, :cond_2

    .line 510
    sget-object v6, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sLastPlmn:Ljava/lang/String;

    if-nez v6, :cond_2

    .line 511
    const-string v6, "CS reject, invalid SIM"

    invoke-static {v6}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 512
    sget-object v6, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsInvalidSim:[Z

    aput-boolean v8, v6, p1

    goto :goto_0

    .line 516
    :cond_2
    if-ne v4, v8, :cond_0

    .line 517
    sget-object v6, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sLastPlmn:Ljava/lang/String;

    if-nez v6, :cond_0

    .line 518
    const-string v6, "PS reject, invalid SIM"

    invoke-static {v6}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 519
    sget-object v6, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsInvalidSim:[Z

    aput-boolean v8, v6, p1

    goto :goto_0

    .line 524
    .end local v0    # "cause":I
    .end local v1    # "cs_invalid":I
    .end local v2    # "invalidSimInfo":[Ljava/lang/String;
    .end local v3    # "plmn":Ljava/lang/String;
    .end local v4    # "ps_invalid":I
    .end local v5    # "testMode":I
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AsyncResult is wrong "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleNoService()V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 663
    const-string v2, "[handleNoService]+ Can not find service"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 664
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sUserType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " user"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 665
    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sRegion:I

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->regionToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 666
    invoke-static {}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->getActiveModemType()I

    move-result v1

    .line 667
    .local v1, "mdType":I
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->modemToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 668
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    sget v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I

    aget-object v2, v2, v3

    check-cast v2, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v0

    .line 669
    .local v0, "iccState":Lcom/android/internal/telephony/IccCardConstants$State;
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v2, :cond_11

    .line 670
    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sUserType:I

    if-eq v2, v4, :cond_0

    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sUserType:I

    if-ne v2, v6, :cond_a

    .line 671
    :cond_0
    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    if-ne v1, v7, :cond_5

    .line 673
    :cond_1
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->TDD_STANDBY_TIMER:[I

    sget v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sTddStandByCounter:I

    aget v2, v2, v3

    if-ltz v2, :cond_4

    .line 674
    sget-boolean v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sWaitInTdd:Z

    if-nez v2, :cond_3

    .line 675
    sput-boolean v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sWaitInTdd:Z

    .line 676
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wait "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->TDD_STANDBY_TIMER:[I

    sget v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sTddStandByCounter:I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "s. Timer index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sTddStandByCounter:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 677
    iget-object v2, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->mTddStandByTimerRunnable:Ljava/lang/Runnable;

    sget-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->TDD_STANDBY_TIMER:[I

    sget v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sTddStandByCounter:I

    aget v3, v3, v4

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v4, v3

    invoke-virtual {p0, v2, v4, v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 726
    :cond_2
    :goto_0
    const-string v2, "[handleNoService]-"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 728
    return-void

    .line 679
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Timer already set:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->TDD_STANDBY_TIMER:[I

    sget v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sTddStandByCounter:I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 682
    :cond_4
    const-string v2, "Standby in TDD modem"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 684
    :cond_5
    if-eq v1, v8, :cond_6

    if-ne v1, v5, :cond_2

    .line 686
    :cond_6
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->FDD_STANDBY_TIMER:[I

    sget v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sFddStandByCounter:I

    aget v2, v2, v3

    if-ltz v2, :cond_9

    .line 687
    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sRegion:I

    if-ne v2, v6, :cond_8

    .line 688
    sget-boolean v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sWaitInFdd:Z

    if-nez v2, :cond_7

    .line 689
    sput-boolean v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sWaitInFdd:Z

    .line 690
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wait "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->FDD_STANDBY_TIMER:[I

    sget v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sFddStandByCounter:I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "s. Timer index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sFddStandByCounter:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 691
    iget-object v2, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->mFddStandByTimerRunnable:Ljava/lang/Runnable;

    sget-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->FDD_STANDBY_TIMER:[I

    sget v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sFddStandByCounter:I

    aget v3, v3, v4

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v4, v3

    invoke-virtual {p0, v2, v4, v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 693
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Timer already set:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->FDD_STANDBY_TIMER:[I

    sget v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sFddStandByCounter:I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 696
    :cond_8
    sput v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSwitchModemCauseType:I

    .line 697
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sSwitchModemCauseType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSwitchModemCauseType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 698
    const/16 v2, 0x65

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handleSwitchModem(I)V

    goto/16 :goto_0

    .line 701
    :cond_9
    const-string v2, "Standby in FDD modem"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 704
    :cond_a
    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sUserType:I

    if-ne v2, v5, :cond_10

    .line 705
    const-string v2, "ro.mtk_world_phone_policy"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 706
    if-eq v1, v8, :cond_b

    if-ne v1, v5, :cond_c

    .line 708
    :cond_b
    const-string v2, "Standby in FDD modem"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 710
    :cond_c
    const-string v2, "Should not enter this state"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 713
    :cond_d
    const/4 v2, 0x6

    if-eq v1, v2, :cond_e

    if-ne v1, v7, :cond_f

    .line 715
    :cond_e
    const-string v2, "Standby in TDD modem"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 717
    :cond_f
    const-string v2, "Should not enter this state"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 721
    :cond_10
    const-string v2, "Unknow user type"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 724
    :cond_11
    const-string v2, "IccState not ready"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private handlePlmnChange(Landroid/os/AsyncResult;I)V
    .locals 6
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "slotId"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 436
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getMajorSim()I

    move-result v2

    sput v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I

    .line 437
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Slot:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sMajorSim:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 438
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_5

    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_5

    .line 439
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    move-object v1, v2

    check-cast v1, [Ljava/lang/String;

    .line 440
    .local v1, "plmnString":[Ljava/lang/String;
    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I

    if-ne p2, v2, :cond_0

    .line 441
    sput-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sNwPlmnStrings:[Ljava/lang/String;

    .line 443
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 444
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "plmnString["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 443
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 447
    :cond_1
    sget-boolean v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsAutoSelectEnable:Z

    if-eqz v2, :cond_4

    .line 448
    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I

    if-ne v2, p2, :cond_3

    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sUserType:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sUserType:I

    if-ne v2, v5, :cond_3

    :cond_2
    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sDenyReason:I

    if-eq v2, v5, :cond_3

    .line 450
    aget-object v2, v1, v4

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->searchForDesignateService(Ljava/lang/String;)V

    .line 454
    :cond_3
    aget-object v2, v1, v4

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->getRegion(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sRegion:I

    .line 459
    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sUserType:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_4

    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sRegion:I

    if-ne v2, v5, :cond_4

    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    .line 461
    sput v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSwitchModemCauseType:I

    .line 462
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sSwitchModemCauseType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSwitchModemCauseType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 463
    const/16 v2, 0x64

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handleSwitchModem(I)V

    .line 469
    .end local v0    # "i":I
    .end local v1    # "plmnString":[Ljava/lang/String;
    :cond_4
    :goto_1
    return-void

    .line 467
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AsyncResult is wrong "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private handleRadioOn(I)V
    .locals 4
    .param p1, "slotId"    # I

    .prologue
    const/4 v3, 0x0

    .line 423
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getMajorSim()I

    move-result v0

    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I

    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleRadioOn Slot:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " sMajorSim:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 425
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsInvalidSim:[Z

    aput-boolean v3, v0, p1

    .line 427
    sget-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsResumeCampingFail:Z

    if-eqz v0, :cond_0

    .line 428
    const-string v0, "try to resume camping again"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 429
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, p1

    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSuspendId:[I

    aget v1, v1, p1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setResumeRegistration(ILandroid/os/Message;)V

    .line 430
    sput-boolean v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsResumeCampingFail:Z

    .line 433
    :cond_0
    return-void
.end method

.method private handleRegistrationSuspend(Landroid/os/AsyncResult;I)V
    .locals 3
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "slotId"    # I

    .prologue
    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Slot"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 473
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_2

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 474
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSuspendId:[I

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    check-cast v0, [I

    const/4 v2, 0x0

    aget v0, v0, v2

    aput v0, v1, p2

    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Suspending with Id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSuspendId:[I

    aget v1, v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 478
    sget-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsAutoSelectEnable:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I

    if-ne v0, p2, :cond_1

    .line 479
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sUserType:I

    if-eqz v0, :cond_0

    .line 480
    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->resumeCampingProcedure(I)V

    .line 492
    :goto_0
    return-void

    .line 482
    :cond_0
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSuspendWaitImsi:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p2

    .line 483
    const-string v0, "User type unknown, wait for IMSI"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 486
    :cond_1
    const-string v0, "Not major slot, camp on OK"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 487
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, p2

    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSuspendId:[I

    aget v1, v1, p2

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setResumeRegistration(ILandroid/os/Message;)V

    goto :goto_0

    .line 490
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncResult is wrong "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleSimSwitched()V
    .locals 7

    .prologue
    const/16 v6, 0x65

    const/16 v5, 0x64

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 612
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 613
    const-string v0, "Major capability turned off"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 614
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->removeModemStandByTimer()V

    .line 615
    sput v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sUserType:I

    .line 660
    :goto_0
    return-void

    .line 618
    :cond_0
    sget-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsAutoSelectEnable:Z

    if-nez v0, :cond_1

    .line 619
    const-string v0, "Auto modem selection disabled"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 620
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->removeModemStandByTimer()V

    goto :goto_0

    .line 621
    :cond_1
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I

    const/16 v1, -0x63

    if-ne v0, v1, :cond_2

    .line 622
    const-string v0, "Major SIM unknown"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 624
    :cond_2
    const-string v0, "Auto modem selection enabled"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 625
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Major capability in slot"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 626
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sImsi:[Ljava/lang/String;

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_3

    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sImsi:[Ljava/lang/String;

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I

    aget-object v0, v0, v1

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 628
    :cond_3
    const-string v0, "Major slot IMSI not ready"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 629
    sput v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sUserType:I

    goto :goto_0

    .line 632
    :cond_4
    const/16 v0, 0xff

    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSwitchModemCauseType:I

    .line 633
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sSwitchModemCauseType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSwitchModemCauseType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 634
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sImsi:[Ljava/lang/String;

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->getUserType(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sUserType:I

    .line 635
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sUserType:I

    if-eq v0, v3, :cond_5

    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sUserType:I

    if-ne v0, v4, :cond_9

    .line 636
    :cond_5
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sNwPlmnStrings:[Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 637
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sNwPlmnStrings:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->getRegion(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sRegion:I

    .line 639
    :cond_6
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sRegion:I

    if-ne v0, v3, :cond_7

    .line 640
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sFirstSelect:[Z

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I

    aput-boolean v2, v0, v1

    .line 641
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIccCardType:[I

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I

    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->getIccCardType(I)I

    move-result v2

    aput v2, v0, v1

    .line 642
    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handleSwitchModem(I)V

    goto/16 :goto_0

    .line 643
    :cond_7
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sRegion:I

    if-ne v0, v4, :cond_8

    .line 644
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sFirstSelect:[Z

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I

    aput-boolean v2, v0, v1

    .line 645
    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handleSwitchModem(I)V

    goto/16 :goto_0

    .line 647
    :cond_8
    const-string v0, "Unknown region"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 649
    :cond_9
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sUserType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_b

    .line 650
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sFirstSelect:[Z

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I

    aput-boolean v2, v0, v1

    .line 651
    const-string v0, "ro.mtk_world_phone_policy"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 652
    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handleSwitchModem(I)V

    goto/16 :goto_0

    .line 654
    :cond_a
    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handleSwitchModem(I)V

    goto/16 :goto_0

    .line 657
    :cond_b
    const-string v0, "Unknown user type"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private handleSwitchModem(I)V
    .locals 9
    .param p1, "toModem"    # I

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 529
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getMajorSim()I

    move-result v1

    .line 530
    .local v1, "mMajorSim":I
    if-ltz v1, :cond_1

    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsInvalidSim:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getModemSelectionMode()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 532
    const-string v2, "Invalid SIM, switch not executed!"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 609
    :cond_0
    :goto_0
    return-void

    .line 535
    :cond_1
    const/16 v2, 0x65

    if-ne p1, v2, :cond_5

    .line 536
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isLteSupport()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 537
    const/4 p1, 0x6

    .line 550
    :cond_2
    :goto_1
    sget-boolean v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsAutoSelectEnable:Z

    if-nez v2, :cond_7

    .line 551
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Storing modem type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 552
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v4

    invoke-interface {v2, p1, v5}, Lcom/android/internal/telephony/CommandsInterface;->storeModemType(ILandroid/os/Message;)V

    .line 575
    :cond_3
    :goto_2
    invoke-static {}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->getActiveModemType()I

    move-result v2

    if-ne p1, v2, :cond_f

    .line 576
    if-ne p1, v6, :cond_c

    .line 577
    const-string v2, "Already in WG modem"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 539
    :cond_4
    const/4 p1, 0x4

    goto :goto_1

    .line 541
    :cond_5
    const/16 v2, 0x64

    if-ne p1, v2, :cond_2

    .line 542
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isLteSupport()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 543
    const/4 p1, 0x5

    goto :goto_1

    .line 545
    :cond_6
    const/4 p1, 0x3

    goto :goto_1

    .line 554
    :cond_7
    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sDefaultBootuUpModem:I

    if-nez v2, :cond_8

    .line 555
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Storing modem type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 556
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v4

    invoke-interface {v2, p1, v5}, Lcom/android/internal/telephony/CommandsInterface;->storeModemType(ILandroid/os/Message;)V

    goto :goto_2

    .line 557
    :cond_8
    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sDefaultBootuUpModem:I

    const/16 v3, 0x64

    if-ne v2, v3, :cond_a

    .line 558
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isLteSupport()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 559
    const-string v2, "Storing modem type: 3"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 560
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v4

    invoke-interface {v2, v8, v5}, Lcom/android/internal/telephony/CommandsInterface;->storeModemType(ILandroid/os/Message;)V

    goto :goto_2

    .line 562
    :cond_9
    const-string v2, "Storing modem type: 5"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 563
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v4

    invoke-interface {v2, v6, v5}, Lcom/android/internal/telephony/CommandsInterface;->storeModemType(ILandroid/os/Message;)V

    goto :goto_2

    .line 565
    :cond_a
    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sDefaultBootuUpModem:I

    const/16 v3, 0x65

    if-ne v2, v3, :cond_3

    .line 566
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isLteSupport()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 567
    const-string v2, "Storing modem type: 3"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 568
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v4

    const/4 v3, 0x6

    invoke-interface {v2, v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->storeModemType(ILandroid/os/Message;)V

    goto :goto_2

    .line 570
    :cond_b
    const-string v2, "Storing modem type: 5"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 571
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v4

    invoke-interface {v2, v7, v5}, Lcom/android/internal/telephony/CommandsInterface;->storeModemType(ILandroid/os/Message;)V

    goto/16 :goto_2

    .line 578
    :cond_c
    if-ne p1, v7, :cond_d

    .line 579
    const-string v2, "Already in TG modem"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 580
    :cond_d
    if-ne p1, v8, :cond_e

    .line 581
    const-string v2, "Already in FDD CSFB modem"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 582
    :cond_e
    const/4 v2, 0x6

    if-ne p1, v2, :cond_0

    .line 583
    const-string v2, "Already in TDD CSFB modem"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 587
    :cond_f
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->PROJECT_SIM_NUM:I

    if-ge v0, v2, :cond_11

    .line 588
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sActivePhones:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v0

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v2, v3, :cond_10

    .line 589
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Phone"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not idle, modem switch not allowed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 587
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 593
    :cond_11
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->removeModemStandByTimer()V

    .line 594
    if-ne p1, v6, :cond_13

    .line 595
    const-string v2, "Switching to WG modem"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 604
    :cond_12
    :goto_4
    const-string v2, "ril.switch.modem.cause.type"

    sget v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSwitchModemCauseType:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    invoke-static {p1}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->switchModem(I)V

    .line 607
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->resetNetworkProperties()V

    goto/16 :goto_0

    .line 596
    :cond_13
    if-ne p1, v7, :cond_14

    .line 597
    const-string v2, "Switching to TG modem"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto :goto_4

    .line 598
    :cond_14
    if-ne p1, v8, :cond_15

    .line 599
    const-string v2, "Switching to FDD CSFB modem"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto :goto_4

    .line 600
    :cond_15
    const/4 v2, 0x6

    if-ne p1, v2, :cond_12

    .line 601
    const-string v2, "Switching to TDD CSFB modem"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto :goto_4
.end method

.method private isAllowCampOn(Ljava/lang/String;I)Z
    .locals 8
    .param p1, "plmnString"    # Ljava/lang/String;
    .param p2, "slotId"    # I

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 732
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[isAllowCampOn]+ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 733
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "User type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sUserType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 734
    sget-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIccCardType:[I

    aget v3, v3, p2

    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->iccCardTypeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 735
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->getRegion(Ljava/lang/String;)I

    move-result v3

    sput v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sRegion:I

    .line 736
    invoke-static {}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->getActiveModemType()I

    move-result v0

    .line 737
    .local v0, "mdType":I
    invoke-static {v0}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->modemToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 738
    sget v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sUserType:I

    if-eq v3, v1, :cond_0

    sget v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sUserType:I

    if-ne v3, v6, :cond_a

    .line 739
    :cond_0
    sget v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sRegion:I

    if-ne v3, v1, :cond_4

    .line 740
    const/4 v3, 0x6

    if-eq v0, v3, :cond_1

    if-ne v0, v7, :cond_2

    .line 742
    :cond_1
    sput v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sDenyReason:I

    .line 743
    const-string v2, "Camp on OK"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 744
    const-string v2, "[isAllowCampOn]-"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 807
    :goto_0
    return v1

    .line 746
    :cond_2
    const/4 v3, 0x5

    if-eq v0, v3, :cond_3

    if-ne v0, v5, :cond_9

    .line 748
    :cond_3
    sput v5, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sDenyReason:I

    .line 749
    const-string v1, "Camp on REJECT"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 750
    const-string v1, "[isAllowCampOn]-"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    move v1, v2

    .line 751
    goto :goto_0

    .line 753
    :cond_4
    sget v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sRegion:I

    if-ne v3, v6, :cond_8

    .line 754
    const/4 v3, 0x6

    if-eq v0, v3, :cond_5

    if-ne v0, v7, :cond_6

    .line 756
    :cond_5
    sput v6, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sDenyReason:I

    .line 757
    const-string v1, "Camp on REJECT"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 758
    const-string v1, "[isAllowCampOn]-"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    move v1, v2

    .line 759
    goto :goto_0

    .line 760
    :cond_6
    const/4 v3, 0x5

    if-eq v0, v3, :cond_7

    if-ne v0, v5, :cond_9

    .line 762
    :cond_7
    sput v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sDenyReason:I

    .line 763
    const-string v2, "Camp on OK"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 764
    const-string v2, "[isAllowCampOn]-"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 768
    :cond_8
    const-string v3, "Unknow region"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 803
    :cond_9
    :goto_1
    sput v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sDenyReason:I

    .line 804
    const-string v1, "Camp on REJECT"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 805
    const-string v1, "[isAllowCampOn]-"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    move v1, v2

    .line 807
    goto :goto_0

    .line 770
    :cond_a
    sget v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sUserType:I

    if-ne v3, v5, :cond_12

    .line 771
    const-string v3, "ro.mtk_world_phone_policy"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 772
    const/4 v3, 0x6

    if-eq v0, v3, :cond_b

    if-ne v0, v7, :cond_c

    .line 774
    :cond_b
    sput v6, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sDenyReason:I

    .line 775
    const-string v1, "Camp on REJECT"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 776
    const-string v1, "[isAllowCampOn]-"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    move v1, v2

    .line 777
    goto :goto_0

    .line 778
    :cond_c
    const/4 v3, 0x5

    if-eq v0, v3, :cond_d

    if-ne v0, v5, :cond_9

    .line 780
    :cond_d
    sput v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sDenyReason:I

    .line 781
    const-string v2, "Camp on OK"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 782
    const-string v2, "[isAllowCampOn]-"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 786
    :cond_e
    const/4 v3, 0x6

    if-eq v0, v3, :cond_f

    if-ne v0, v7, :cond_10

    .line 788
    :cond_f
    sput v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sDenyReason:I

    .line 789
    const-string v2, "Camp on OK"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 790
    const-string v2, "[isAllowCampOn]-"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 792
    :cond_10
    const/4 v3, 0x5

    if-eq v0, v3, :cond_11

    if-ne v0, v5, :cond_9

    .line 794
    :cond_11
    sput v5, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sDenyReason:I

    .line 795
    const-string v1, "Camp on REJECT"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 796
    const-string v1, "[isAllowCampOn]-"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    move v1, v2

    .line 797
    goto/16 :goto_0

    .line 801
    :cond_12
    const-string v3, "Unknown user type"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private isInService()Z
    .locals 3

    .prologue
    .line 811
    const/4 v0, 0x0

    .line 813
    .local v0, "inService":Z
    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sVoiceRegState:I

    if-eqz v1, :cond_0

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sDataRegState:I

    if-nez v1, :cond_1

    .line 815
    :cond_0
    const/4 v0, 0x1

    .line 817
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inService: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 819
    return v0
.end method

.method private isNoService()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 823
    const/4 v0, 0x0

    .line 825
    .local v0, "noService":Z
    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sVoiceRegState:I

    if-ne v1, v2, :cond_0

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sRilVoiceRegState:I

    if-nez v1, :cond_0

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sDataRegState:I

    if-ne v1, v2, :cond_0

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sRilDataRegState:I

    if-nez v1, :cond_0

    .line 829
    const/4 v0, 0x1

    .line 833
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "noService: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 835
    return v0

    .line 831
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 1102
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WPOP01]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    return-void
.end method

.method private removeModemStandByTimer()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 949
    sget-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sWaitInTdd:Z

    if-eqz v0, :cond_0

    .line 950
    const-string v0, "Remove TDD wait timer. Set sWaitInTdd = false"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 951
    sput-boolean v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sWaitInTdd:Z

    .line 952
    iget-object v0, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->mTddStandByTimerRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 954
    :cond_0
    sget-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sWaitInFdd:Z

    if-eqz v0, :cond_1

    .line 955
    const-string v0, "Remove FDD wait timer. Set sWaitInFdd = false"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 956
    sput-boolean v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sWaitInFdd:Z

    .line 957
    iget-object v0, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->mFddStandByTimerRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 959
    :cond_1
    return-void
.end method

.method private resetAllProperties()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 962
    const-string v1, "[resetAllProperties]"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 963
    const/4 v1, 0x0

    sput-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sNwPlmnStrings:[Ljava/lang/String;

    .line 964
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->PROJECT_SIM_NUM:I

    if-ge v0, v1, :cond_0

    .line 965
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sFirstSelect:[Z

    aput-boolean v2, v1, v0

    .line 964
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 967
    :cond_0
    sput v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sDenyReason:I

    .line 968
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->resetSimProperties()V

    .line 969
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->resetNetworkProperties()V

    .line 970
    return-void
.end method

.method private resetNetworkProperties()V
    .locals 4

    .prologue
    .line 973
    const-string v1, "[resetNetworkProperties]"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 974
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 975
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->PROJECT_SIM_NUM:I

    if-ge v0, v1, :cond_0

    .line 976
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSuspendWaitImsi:[Z

    const/4 v3, 0x0

    aput-boolean v3, v1, v0

    .line 975
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 978
    :cond_0
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sNwPlmnStrings:[Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 979
    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sNwPlmnStrings:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 980
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sNwPlmnStrings:[Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v1, v0

    .line 979
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 983
    :cond_1
    const/16 v1, 0xff

    sput v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSwitchModemCauseType:I

    .line 984
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sSwitchModemCauseType = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSwitchModemCauseType:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 985
    monitor-exit v2

    .line 986
    return-void

    .line 985
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private resetSimProperties()V
    .locals 4

    .prologue
    .line 989
    const-string v1, "[resetSimProperties]"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 990
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 991
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->PROJECT_SIM_NUM:I

    if-ge v0, v1, :cond_0

    .line 992
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sImsi:[Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v1, v0

    .line 993
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIccCardType:[I

    const/4 v3, 0x0

    aput v3, v1, v0

    .line 991
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 995
    :cond_0
    const/4 v1, 0x0

    sput v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sUserType:I

    .line 996
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getMajorSim()I

    move-result v1

    sput v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I

    .line 997
    monitor-exit v2

    .line 998
    return-void

    .line 997
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private resumeCampingProcedure(I)V
    .locals 4
    .param p1, "slotId"    # I

    .prologue
    const/4 v3, 0x0

    .line 904
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resume camping slot"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 905
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sNwPlmnStrings:[Ljava/lang/String;

    aget-object v0, v1, v3

    .line 906
    .local v0, "plmnString":Ljava/lang/String;
    invoke-direct {p0, v0, p1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->isAllowCampOn(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 907
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->removeModemStandByTimer()V

    .line 909
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, p1

    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSuspendId:[I

    aget v2, v2, p1

    const/16 v3, 0x46

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setResumeRegistration(ILandroid/os/Message;)V

    .line 920
    :cond_0
    :goto_0
    return-void

    .line 911
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Because: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sDenyReason:I

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->denyReasonToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 912
    sput v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSwitchModemCauseType:I

    .line 913
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sSwitchModemCauseType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSwitchModemCauseType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 914
    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sDenyReason:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 915
    const/16 v1, 0x64

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handleSwitchModem(I)V

    goto :goto_0

    .line 916
    :cond_2
    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sDenyReason:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 917
    const/16 v1, 0x65

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handleSwitchModem(I)V

    goto :goto_0
.end method

.method private searchForDesignateService(Ljava/lang/String;)V
    .locals 7
    .param p1, "strPlmn"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 1001
    if-nez p1, :cond_1

    .line 1002
    const-string v4, "[searchForDesignateService]- null source"

    invoke-static {v4}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1018
    :cond_0
    :goto_0
    return-void

    .line 1005
    :cond_1
    const/4 v4, 0x5

    invoke-virtual {p1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1006
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->PLMN_TABLE_TYPE1:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 1007
    .local v3, "mccmnc":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1008
    const-string v4, "Find TD service"

    invoke-static {v4}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1009
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sUserType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sUserType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sRegion: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sRegion:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1010
    invoke-static {}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->getActiveModemType()I

    move-result v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->modemToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1011
    sput v6, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSwitchModemCauseType:I

    .line 1012
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sSwitchModemCauseType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSwitchModemCauseType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1013
    const/16 v4, 0x65

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handleSwitchModem(I)V

    goto :goto_0

    .line 1006
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 375
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 376
    .local v0, "ar":Landroid/os/AsyncResult;
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 418
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 420
    :cond_0
    :goto_0
    return-void

    .line 378
    :sswitch_0
    const-string v1, "handleMessage : <EVENT_RADIO_ON>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 379
    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handleRadioOn(I)V

    goto :goto_0

    .line 382
    :sswitch_1
    const-string v1, "handleMessage : <EVENT_REG_PLMN_CHANGED>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 383
    invoke-direct {p0, v0, v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handlePlmnChange(Landroid/os/AsyncResult;I)V

    goto :goto_0

    .line 386
    :sswitch_2
    const-string v1, "handleMessage : <EVENT_REG_SUSPENDED>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 387
    invoke-direct {p0, v0, v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handleRegistrationSuspend(Landroid/os/AsyncResult;I)V

    goto :goto_0

    .line 390
    :sswitch_3
    const-string v1, "handleMessage : <EVENT_RADIO_ON>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 391
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handleRadioOn(I)V

    goto :goto_0

    .line 394
    :sswitch_4
    const-string v1, "handleMessage : <EVENT_REG_PLMN_CHANGED>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 395
    invoke-direct {p0, v0, v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handlePlmnChange(Landroid/os/AsyncResult;I)V

    goto :goto_0

    .line 398
    :sswitch_5
    const-string v1, "handleMessage : <EVENT_REG_SUSPENDED>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 399
    invoke-direct {p0, v0, v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handleRegistrationSuspend(Landroid/os/AsyncResult;I)V

    goto :goto_0

    .line 402
    :sswitch_6
    const-string v1, "handleMessage : <EVENT_INVALID_SIM_NOTIFY>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 403
    invoke-direct {p0, v3, v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handleInvalidSimNotify(ILandroid/os/AsyncResult;)V

    goto :goto_0

    .line 406
    :sswitch_7
    const-string v1, "handleMessage : <EVENT_INVALID_SIM_NOTIFY>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 407
    invoke-direct {p0, v2, v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handleInvalidSimNotify(ILandroid/os/AsyncResult;)V

    goto :goto_0

    .line 411
    :sswitch_8
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 412
    const-string v1, "handleMessage : <EVENT_RESUME_CAMPING> with exception"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 413
    sput-boolean v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsResumeCampingFail:Z

    goto :goto_0

    .line 376
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_3
        0xa -> :sswitch_1
        0xb -> :sswitch_4
        0x1e -> :sswitch_2
        0x1f -> :sswitch_5
        0x3c -> :sswitch_6
        0x3d -> :sswitch_7
        0x46 -> :sswitch_8
    .end sparse-switch
.end method

.method public notifyRadioCapabilityChange(I)V
    .locals 6
    .param p1, "capailitySimId"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1043
    const/4 v0, 0x0

    .line 1044
    .local v0, "toModem":I
    const-string v1, "[setRadioCapabilityChange]"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1045
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Major capability will be set to slot:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1046
    sget-boolean v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsAutoSelectEnable:Z

    if-nez v1, :cond_0

    .line 1047
    const-string v1, "Auto modem selection disabled"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1048
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->removeModemStandByTimer()V

    .line 1099
    :goto_0
    return-void

    .line 1050
    :cond_0
    const-string v1, "Auto modem selection enabled"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1051
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sImsi:[Ljava/lang/String;

    aget-object v1, v1, p1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sImsi:[Ljava/lang/String;

    aget-object v1, v1, p1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1053
    :cond_1
    const-string v1, "Capaility slot IMSI not ready"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1054
    sput v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sUserType:I

    goto :goto_0

    .line 1057
    :cond_2
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sImsi:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->getUserType(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sUserType:I

    .line 1058
    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sUserType:I

    if-eq v1, v4, :cond_3

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sUserType:I

    if-ne v1, v5, :cond_8

    .line 1059
    :cond_3
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sNwPlmnStrings:[Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 1060
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sNwPlmnStrings:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->getRegion(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sRegion:I

    .line 1062
    :cond_4
    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sRegion:I

    if-ne v1, v4, :cond_6

    .line 1063
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sFirstSelect:[Z

    aput-boolean v3, v1, p1

    .line 1064
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIccCardType:[I

    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->getIccCardType(I)I

    move-result v2

    aput v2, v1, p1

    .line 1065
    const/16 v0, 0x65

    .line 1081
    :goto_1
    const/16 v1, 0x65

    if-ne v0, v1, :cond_b

    .line 1082
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isLteSupport()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1083
    const/4 v0, 0x6

    .line 1095
    :cond_5
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyRadioCapabilityChange: Storing modem type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1096
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v3

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->reloadModemType(ILandroid/os/Message;)V

    .line 1097
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->resetNetworkProperties()V

    goto :goto_0

    .line 1066
    :cond_6
    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sRegion:I

    if-ne v1, v5, :cond_7

    .line 1067
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sFirstSelect:[Z

    aput-boolean v3, v1, p1

    .line 1068
    const/16 v0, 0x64

    goto :goto_1

    .line 1070
    :cond_7
    const-string v1, "Unknown region"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1073
    :cond_8
    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sUserType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_9

    .line 1074
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sFirstSelect:[Z

    aput-boolean v3, v1, p1

    .line 1075
    const/16 v0, 0x64

    goto :goto_1

    .line 1077
    :cond_9
    const-string v1, "Unknown user type"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1085
    :cond_a
    const/4 v0, 0x4

    goto :goto_2

    .line 1087
    :cond_b
    const/16 v1, 0x64

    if-ne v0, v1, :cond_5

    .line 1088
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isLteSupport()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1089
    const/4 v0, 0x5

    goto :goto_2

    .line 1091
    :cond_c
    const/4 v0, 0x3

    goto :goto_2
.end method

.method public setModemSelectionMode(II)V
    .locals 3
    .param p1, "mode"    # I
    .param p2, "modemType"    # I

    .prologue
    const/4 v2, 0x1

    .line 1022
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "world_phone_auto_select_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1024
    if-ne p1, v2, :cond_1

    .line 1025
    const-string v0, "Modem Selection <AUTO>"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1026
    sput-boolean v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsAutoSelectEnable:Z

    .line 1027
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getMajorSim()I

    move-result v0

    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I

    .line 1028
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handleSimSwitched()V

    .line 1040
    :cond_0
    :goto_0
    return-void

    .line 1030
    :cond_1
    const-string v0, "Modem Selection <MANUAL>"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1032
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsAutoSelectEnable:Z

    .line 1033
    const/16 v0, 0xff

    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSwitchModemCauseType:I

    .line 1034
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sSwitchModemCauseType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSwitchModemCauseType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1035
    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handleSwitchModem(I)V

    .line 1036
    invoke-static {}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->getActiveModemType()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 1037
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->removeModemStandByTimer()V

    goto :goto_0
.end method
