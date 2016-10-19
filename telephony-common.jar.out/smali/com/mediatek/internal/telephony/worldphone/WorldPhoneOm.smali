.class public Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;
.super Landroid/os/Handler;
.source "WorldPhoneOm.java"

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

.field private static sMccDomestic:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sModemSwitchHandler:Lcom/mediatek/internal/telephony/ModemSwitchHandler;

.field private static sNwPlmnStrings:[Ljava/lang/String;

.field private static sOperatorSpec:Ljava/lang/String;

.field private static sPlmnSs:Ljava/lang/String;

.field private static sPlmnType1:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sPlmnType3:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sProxyPhones:[Lcom/android/internal/telephony/Phone;

.field private static sRadioTechModeForWp:I

.field private static sRegion:I

.field private static sRilDataRadioTechnology:I

.field private static sRilDataRegState:I

.field private static sRilVoiceRadioTechnology:I

.field private static sRilVoiceRegState:I

.field private static sServiceState:Landroid/telephony/ServiceState;

.field private static sSuspendId:[I

.field private static sSuspendWaitImsi:[Z

.field private static sSvlteLteCi:[Lcom/android/internal/telephony/CommandsInterface;

.field private static sSvlteLtePhone:[Lcom/android/internal/telephony/Phone;

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
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v2, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sLock:Ljava/lang/Object;

    .line 72
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getProjectSimNum()I

    move-result v0

    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->PROJECT_SIM_NUM:I

    .line 73
    new-array v0, v4, [I

    const/16 v1, 0x3c

    aput v1, v0, v3

    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->FDD_STANDBY_TIMER:[I

    .line 76
    new-array v0, v4, [I

    const/16 v1, 0x28

    aput v1, v0, v3

    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->TDD_STANDBY_TIMER:[I

    .line 79
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "46000"

    aput-object v1, v0, v3

    const-string v1, "46002"

    aput-object v1, v0, v4

    const-string v1, "46007"

    aput-object v1, v0, v2

    const-string v1, "46008"

    aput-object v1, v0, v6

    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->PLMN_TABLE_TYPE1:[Ljava/lang/String;

    .line 82
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "46001"

    aput-object v1, v0, v3

    const-string v1, "46006"

    aput-object v1, v0, v4

    const-string v1, "46009"

    aput-object v1, v0, v2

    const-string v1, "45407"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "46003"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "46005"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "45502"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "46011"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->PLMN_TABLE_TYPE3:[Ljava/lang/String;

    .line 86
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "460"

    aput-object v1, v0, v3

    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->MCC_TABLE_DOMESTIC:[Ljava/lang/String;

    .line 94
    sput-object v5, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sContext:Landroid/content/Context;

    .line 95
    sput-object v5, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sDefultPhone:Lcom/android/internal/telephony/Phone;

    .line 96
    sput-object v5, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    .line 97
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->PROJECT_SIM_NUM:I

    new-array v0, v0, [Lcom/android/internal/telephony/Phone;

    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sActivePhones:[Lcom/android/internal/telephony/Phone;

    .line 98
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->PROJECT_SIM_NUM:I

    new-array v0, v0, [Lcom/android/internal/telephony/CommandsInterface;

    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sCi:[Lcom/android/internal/telephony/CommandsInterface;

    .line 102
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->PROJECT_SIM_NUM:I

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sImsi:[Ljava/lang/String;

    .line 114
    sput v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sDefaultBootuUpModem:I

    .line 115
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->PROJECT_SIM_NUM:I

    new-array v0, v0, [I

    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSuspendId:[I

    .line 116
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->PROJECT_SIM_NUM:I

    new-array v0, v0, [I

    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIccCardType:[I

    .line 118
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->PROJECT_SIM_NUM:I

    new-array v0, v0, [Z

    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsInvalidSim:[Z

    .line 119
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->PROJECT_SIM_NUM:I

    new-array v0, v0, [Z

    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSuspendWaitImsi:[Z

    .line 120
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->PROJECT_SIM_NUM:I

    new-array v0, v0, [Z

    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFirstSelect:[Z

    .line 121
    sput-object v5, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 122
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->PROJECT_SIM_NUM:I

    new-array v0, v0, [Lcom/android/internal/telephony/uicc/IccRecords;

    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIccRecordsInstance:[Lcom/android/internal/telephony/uicc/IccRecords;

    .line 124
    sput-object v5, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sModemSwitchHandler:Lcom/mediatek/internal/telephony/ModemSwitchHandler;

    .line 134
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->PROJECT_SIM_NUM:I

    new-array v0, v0, [Lcom/android/internal/telephony/Phone;

    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSvlteLtePhone:[Lcom/android/internal/telephony/Phone;

    .line 135
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->PROJECT_SIM_NUM:I

    new-array v0, v0, [Lcom/android/internal/telephony/CommandsInterface;

    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSvlteLteCi:[Lcom/android/internal/telephony/CommandsInterface;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 137
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 234
    new-instance v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;

    invoke-direct {v2, p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;-><init>(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;)V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->mWorldPhoneReceiver:Landroid/content/BroadcastReceiver;

    .line 1133
    new-instance v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$2;

    invoke-direct {v2, p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$2;-><init>(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;)V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->mTddStandByTimerRunnable:Ljava/lang/Runnable;

    .line 1144
    new-instance v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$3;

    invoke-direct {v2, p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$3;-><init>(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;)V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->mFddStandByTimerRunnable:Ljava/lang/Runnable;

    .line 138
    const-string v2, "Constructor invoked"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 139
    const-string v2, "ro.operator.optr"

    const-string v3, "OM"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sOperatorSpec:Ljava/lang/String;

    .line 140
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Operator Spec:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sOperatorSpec:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 141
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    sput-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sDefultPhone:Lcom/android/internal/telephony/Phone;

    .line 142
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v2

    sput-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    .line 143
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->PROJECT_SIM_NUM:I

    if-ge v0, v2, :cond_1

    .line 145
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSvlteLtePhone:[Lcom/android/internal/telephony/Phone;

    aput-object v4, v2, v0

    .line 146
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSvlteLteCi:[Lcom/android/internal/telephony/CommandsInterface;

    aput-object v4, v2, v0

    .line 147
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isCdmaLteDcSupport()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v0

    instance-of v2, v2, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    if-eqz v2, :cond_0

    .line 149
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Phone "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is SVLTE case so get lte phone directly"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 150
    sget-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSvlteLtePhone:[Lcom/android/internal/telephony/Phone;

    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v0

    check-cast v2, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    aput-object v2, v3, v0

    .line 151
    sget-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSvlteLteCi:[Lcom/android/internal/telephony/CommandsInterface;

    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSvlteLtePhone:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v0

    check-cast v2, Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    aput-object v2, v3, v0

    .line 154
    :cond_0
    sget-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sActivePhones:[Lcom/android/internal/telephony/Phone;

    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v0

    check-cast v2, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    aput-object v2, v3, v0

    .line 155
    sget-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sCi:[Lcom/android/internal/telephony/CommandsInterface;

    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sActivePhones:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v0

    check-cast v2, Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    aput-object v2, v3, v0

    .line 143
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 157
    :cond_1
    const/4 v0, 0x0

    :goto_1
    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->PROJECT_SIM_NUM:I

    if-ge v0, v2, :cond_3

    .line 159
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isCdmaLteDcSupport()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v0

    instance-of v2, v2, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    if-eqz v2, :cond_2

    .line 161
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSvlteLteCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    add-int/lit16 v3, v0, 0x3f2

    invoke-interface {v2, p0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->setOnPlmnChangeNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 162
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSvlteLteCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    add-int/lit16 v3, v0, 0x406

    invoke-interface {v2, p0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->setOnRegistrationSuspended(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 163
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSvlteLteCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    add-int/lit16 v3, v0, 0x3e8

    invoke-interface {v2, p0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 164
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSvlteLteCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    add-int/lit16 v3, v0, 0x410

    invoke-interface {v2, p0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->setInvalidSimInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 167
    :cond_2
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    add-int/lit8 v3, v0, 0xa

    invoke-interface {v2, p0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->setOnPlmnChangeNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 168
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    add-int/lit8 v3, v0, 0x1e

    invoke-interface {v2, p0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->setOnRegistrationSuspended(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 169
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    add-int/lit8 v3, v0, 0x0

    invoke-interface {v2, p0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 170
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    add-int/lit8 v3, v0, 0x3c

    invoke-interface {v2, p0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->setInvalidSimInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 157
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 174
    :cond_3
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isCdmaLteDcSupport()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 175
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v2

    const/16 v3, 0x41a

    invoke-virtual {v2, p0, v3, v4}, Lcom/android/internal/telephony/uicc/UiccController;->registerForC2KWPCardTypeReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 178
    :cond_4
    new-instance v2, Lcom/mediatek/internal/telephony/ModemSwitchHandler;

    invoke-direct {v2}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;-><init>()V

    sput-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sModemSwitchHandler:Lcom/mediatek/internal/telephony/ModemSwitchHandler;

    .line 179
    invoke-static {}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->getActiveModemType()I

    move-result v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->modemToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 181
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 182
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 183
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 184
    const-string v2, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 185
    const-string v2, "android.intent.action.ACTION_ADB_SWITCH_MODEM"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 186
    const-string v2, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_DONE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 188
    const-string v2, "com.mediatek.phone.ACTION_SET_RADIO_TECHNOLOGY_START"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 189
    const-string v2, "com.mediatek.phone.ACTION_SET_RADIO_TECHNOLOGY_DONE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 190
    const-string v2, "android.intent.action.ACTION_TEST_WORLDPHOE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 192
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sDefultPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v2, :cond_5

    .line 193
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sDefultPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    sput-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sContext:Landroid/content/Context;

    .line 197
    :goto_2
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x112004e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    sput-boolean v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sVoiceCapable:Z

    .line 198
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->mWorldPhoneReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 200
    sput v5, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sTddStandByCounter:I

    .line 201
    sput v5, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFddStandByCounter:I

    .line 202
    sput-boolean v5, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sWaitInTdd:Z

    .line 203
    sput-boolean v5, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sWaitInFdd:Z

    .line 204
    sput v5, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRegion:I

    .line 205
    sput-object v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sLastPlmn:Ljava/lang/String;

    .line 206
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->resetAllProperties()V

    .line 209
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sPlmnType1:Ljava/util/ArrayList;

    .line 210
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sPlmnType3:Ljava/util/ArrayList;

    .line 211
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMccDomestic:Ljava/util/ArrayList;

    .line 212
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->loadDefaultData()V

    .line 214
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getModemSelectionMode()I

    move-result v2

    if-nez v2, :cond_6

    .line 215
    const-string v2, "Auto select disable"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 217
    sput-boolean v5, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsAutoSelectEnable:Z

    .line 218
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "world_phone_auto_select_mode"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 226
    :goto_3
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->FDD_STANDBY_TIMER:[I

    sget v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFddStandByCounter:I

    sget-object v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "world_phone_fdd_modem_timer"

    sget-object v6, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->FDD_STANDBY_TIMER:[I

    sget v7, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFddStandByCounter:I

    aget v6, v6, v7

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    aput v4, v2, v3

    .line 228
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "world_phone_fdd_modem_timer"

    sget-object v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->FDD_STANDBY_TIMER:[I

    sget v5, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFddStandByCounter:I

    aget v4, v4, v5

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 230
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FDD_STANDBY_TIMER = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->FDD_STANDBY_TIMER:[I

    sget v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFddStandByCounter:I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 231
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sDefaultBootuUpModem = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sDefaultBootuUpModem:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 232
    return-void

    .line 195
    :cond_5
    const-string v2, "DefaultPhone = null"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 221
    :cond_6
    const-string v2, "Auto select enable"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 222
    sput-boolean v6, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsAutoSelectEnable:Z

    .line 223
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sContext:Landroid/content/Context;

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
    .line 70
    invoke-static {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 70
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    return v0
.end method

.method static synthetic access$1000()[Z
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFirstSelect:[Z

    return-object v0
.end method

.method static synthetic access$102(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 70
    sput p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    return p0
.end method

.method static synthetic access$1100()I
    .locals 1

    .prologue
    .line 70
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRegion:I

    return v0
.end method

.method static synthetic access$1200(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;
    .param p1, "x1"    # I

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleSwitchModem(I)V

    return-void
.end method

.method static synthetic access$1300()[Z
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSuspendWaitImsi:[Z

    return-object v0
.end method

.method static synthetic access$1400()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sNwPlmnStrings:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500()[I
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSuspendId:[I

    return-object v0
.end method

.method static synthetic access$1600(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;
    .param p1, "x1"    # I

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->resumeCampingProcedure(I)V

    return-void
.end method

.method static synthetic access$1700()[Lcom/android/internal/telephony/CommandsInterface;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sCi:[Lcom/android/internal/telephony/CommandsInterface;

    return-object v0
.end method

.method static synthetic access$1802(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 70
    sput-object p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sLastPlmn:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1900()[Z
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsInvalidSim:[Z

    return-object v0
.end method

.method static synthetic access$200()Lcom/android/internal/telephony/uicc/UiccController;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->removeModemStandByTimer()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/internal/telephony/uicc/UiccController;)Lcom/android/internal/telephony/uicc/UiccController;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccController;

    .prologue
    .line 70
    sput-object p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    return-object p0
.end method

.method static synthetic access$2102(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 70
    sput p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sDenyReason:I

    return p0
.end method

.method static synthetic access$2200()Landroid/telephony/ServiceState;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sServiceState:Landroid/telephony/ServiceState;

    return-object v0
.end method

.method static synthetic access$2202(Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;
    .locals 0
    .param p0, "x0"    # Landroid/telephony/ServiceState;

    .prologue
    .line 70
    sput-object p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sServiceState:Landroid/telephony/ServiceState;

    return-object p0
.end method

.method static synthetic access$2300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sPlmnSs:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2302(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 70
    sput-object p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sPlmnSs:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2400()I
    .locals 1

    .prologue
    .line 70
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sVoiceRegState:I

    return v0
.end method

.method static synthetic access$2402(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 70
    sput p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sVoiceRegState:I

    return p0
.end method

.method static synthetic access$2500()I
    .locals 1

    .prologue
    .line 70
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRilVoiceRegState:I

    return v0
.end method

.method static synthetic access$2502(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 70
    sput p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRilVoiceRegState:I

    return p0
.end method

.method static synthetic access$2600()I
    .locals 1

    .prologue
    .line 70
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRilVoiceRadioTechnology:I

    return v0
.end method

.method static synthetic access$2602(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 70
    sput p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRilVoiceRadioTechnology:I

    return p0
.end method

.method static synthetic access$2700()I
    .locals 1

    .prologue
    .line 70
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sDataRegState:I

    return v0
.end method

.method static synthetic access$2702(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 70
    sput p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sDataRegState:I

    return p0
.end method

.method static synthetic access$2800()I
    .locals 1

    .prologue
    .line 70
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRilDataRegState:I

    return v0
.end method

.method static synthetic access$2802(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 70
    sput p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRilDataRegState:I

    return p0
.end method

.method static synthetic access$2900()I
    .locals 1

    .prologue
    .line 70
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRilDataRadioTechnology:I

    return v0
.end method

.method static synthetic access$2902(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 70
    sput p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRilDataRadioTechnology:I

    return p0
.end method

.method static synthetic access$300()[Lcom/android/internal/telephony/uicc/IccRecords;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIccRecordsInstance:[Lcom/android/internal/telephony/uicc/IccRecords;

    return-object v0
.end method

.method static synthetic access$3000()I
    .locals 1

    .prologue
    .line 70
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRadioTechModeForWp:I

    return v0
.end method

.method static synthetic access$3002(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 70
    sput p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRadioTechModeForWp:I

    return p0
.end method

.method static synthetic access$3100(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->isNoService()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleNoService()V

    return-void
.end method

.method static synthetic access$3300(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->isInService()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;I)Lcom/android/internal/telephony/CommandsInterface;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;
    .param p1, "x1"    # I

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->getSvlteActiveCi(I)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3500()I
    .locals 1

    .prologue
    .line 70
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sDefaultBootuUpModem:I

    return v0
.end method

.method static synthetic access$3600()I
    .locals 1

    .prologue
    .line 70
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->PROJECT_SIM_NUM:I

    return v0
.end method

.method static synthetic access$3700(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleSimSwitched()V

    return-void
.end method

.method static synthetic access$3800()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sPlmnType1:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3900()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sPlmnType3:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sImsi:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4000()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMccDomestic:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4100()V
    .locals 0

    .prologue
    .line 70
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->loadDefaultData()V

    return-void
.end method

.method static synthetic access$4200()I
    .locals 1

    .prologue
    .line 70
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sTddStandByCounter:I

    return v0
.end method

.method static synthetic access$4202(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 70
    sput p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sTddStandByCounter:I

    return p0
.end method

.method static synthetic access$4208()I
    .locals 2

    .prologue
    .line 70
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sTddStandByCounter:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sTddStandByCounter:I

    return v0
.end method

.method static synthetic access$4300()[I
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->TDD_STANDBY_TIMER:[I

    return-object v0
.end method

.method static synthetic access$4400()I
    .locals 1

    .prologue
    .line 70
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFddStandByCounter:I

    return v0
.end method

.method static synthetic access$4402(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 70
    sput p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFddStandByCounter:I

    return p0
.end method

.method static synthetic access$4408()I
    .locals 2

    .prologue
    .line 70
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFddStandByCounter:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFddStandByCounter:I

    return v0
.end method

.method static synthetic access$4500()[I
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->FDD_STANDBY_TIMER:[I

    return-object v0
.end method

.method static synthetic access$500()[I
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIccCardType:[I

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;I)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;
    .param p1, "x1"    # I

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->getIccCardType(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$700()Z
    .locals 1

    .prologue
    .line 70
    sget-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsAutoSelectEnable:Z

    return v0
.end method

.method static synthetic access$800()I
    .locals 1

    .prologue
    .line 70
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUserType:I

    return v0
.end method

.method static synthetic access$802(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 70
    sput p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUserType:I

    return p0
.end method

.method static synthetic access$900(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->getUserType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private containsCdma(I)Z
    .locals 1
    .param p1, "cardType"    # I

    .prologue
    .line 1489
    and-int/lit8 v0, p1, 0x4

    if-gtz v0, :cond_0

    and-int/lit8 v0, p1, 0x8

    if-lez v0, :cond_1

    .line 1491
    :cond_0
    const/4 v0, 0x1

    .line 1493
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getIccCardType(I)I
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    .line 1046
    const-string v0, "Unknown"

    .line 1048
    .local v0, "simString":Ljava/lang/String;
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, p1

    check-cast v2, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IccCard;->getIccCardType()Ljava/lang/String;

    move-result-object v0

    .line 1049
    const-string v2, "SIM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1050
    const-string v2, "IccCard type: SIM"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1051
    const/4 v1, 0x1

    .line 1060
    .local v1, "simType":I
    :goto_0
    return v1

    .line 1052
    .end local v1    # "simType":I
    :cond_0
    const-string v2, "USIM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1053
    const-string v2, "IccCard type: USIM"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1054
    const/4 v1, 0x2

    .restart local v1    # "simType":I
    goto :goto_0

    .line 1056
    .end local v1    # "simType":I
    :cond_1
    const-string v2, "IccCard type: Unknown"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1057
    const/4 v1, 0x0

    .restart local v1    # "simType":I
    goto :goto_0
.end method

.method private getRegion(Ljava/lang/String;)I
    .locals 6
    .param p1, "plmn"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1065
    if-eqz p1, :cond_0

    const-string v4, ""

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x5

    if-ge v4, v5, :cond_1

    .line 1066
    :cond_0
    const-string v4, "[getRegion] Invalid PLMN"

    invoke-static {v4}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1077
    :goto_0
    return v3

    .line 1069
    :cond_1
    const/4 v4, 0x3

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1070
    .local v0, "currentMcc":Ljava/lang/String;
    sget-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMccDomestic:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1071
    .local v2, "mcc":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1072
    const-string v3, "[getRegion] REGION_DOMESTIC"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1073
    const/4 v3, 0x1

    goto :goto_0

    .line 1076
    .end local v2    # "mcc":Ljava/lang/String;
    :cond_3
    const-string v3, "[getRegion] REGION_FOREIGN"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1077
    const/4 v3, 0x2

    goto :goto_0
.end method

.method private getSvlteActiveCi(I)Lcom/android/internal/telephony/CommandsInterface;
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    .line 1415
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isCdmaLteDcSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1416
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[getSvlteActiveCi]: slotId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " sMajorSim="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " sRadioTechModeForWp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRadioTechModeForWp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1420
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p1

    instance-of v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    if-eqz v0, :cond_0

    .line 1421
    const-string v0, "[getSvlteActiveCi]: return sSvlteLteCi"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1422
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSvlteLteCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, p1

    .line 1429
    :goto_0
    return-object v0

    .line 1424
    :cond_0
    const-string v0, "[getSvlteActiveCi]: return sCi"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1425
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, p1

    goto :goto_0

    .line 1428
    :cond_1
    const-string v0, "[getSvlteActiveCi]: return sCi"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1429
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method private getUserType(Ljava/lang/String;)I
    .locals 4
    .param p1, "imsi"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1081
    if-eqz p1, :cond_4

    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1082
    const/4 v3, 0x5

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1083
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sPlmnType1:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1084
    .local v1, "mccmnc":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1085
    const-string v2, "[getUserType] Type1 user"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1086
    const/4 v2, 0x1

    .line 1099
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "mccmnc":Ljava/lang/String;
    :goto_0
    return v2

    .line 1089
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sPlmnType3:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1090
    .restart local v1    # "mccmnc":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1091
    const-string v2, "[getUserType] Type3 user"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1092
    const/4 v2, 0x3

    goto :goto_0

    .line 1095
    .end local v1    # "mccmnc":Ljava/lang/String;
    :cond_3
    const-string v2, "[getUserType] Type2 user"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1096
    const/4 v2, 0x2

    goto :goto_0

    .line 1098
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_4
    const-string v3, "[getUserType] null IMSI"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleInvalidSimNotify(ILandroid/os/AsyncResult;)V
    .locals 10
    .param p1, "slotId"    # I
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 707
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Slot"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 708
    iget-object v6, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_3

    iget-object v6, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v6, :cond_3

    .line 709
    iget-object v6, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [Ljava/lang/String;

    move-object v2, v6

    check-cast v2, [Ljava/lang/String;

    .line 710
    .local v2, "invalidSimInfo":[Ljava/lang/String;
    aget-object v3, v2, v9

    .line 711
    .local v3, "plmn":Ljava/lang/String;
    aget-object v6, v2, v8

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 712
    .local v1, "cs_invalid":I
    const/4 v6, 0x2

    aget-object v6, v2, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 713
    .local v4, "ps_invalid":I
    const/4 v6, 0x3

    aget-object v6, v2, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 714
    .local v0, "cause":I
    const/4 v5, -0x1

    .line 715
    .local v5, "testMode":I
    const-string v6, "gsm.gcf.testmode"

    invoke-static {v6, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 716
    if-eqz v5, :cond_1

    .line 717
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid SIM notified during test mode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 738
    .end local v0    # "cause":I
    .end local v1    # "cs_invalid":I
    .end local v2    # "invalidSimInfo":[Ljava/lang/String;
    .end local v3    # "plmn":Ljava/lang/String;
    .end local v4    # "ps_invalid":I
    .end local v5    # "testMode":I
    :cond_0
    :goto_0
    return-void

    .line 720
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

    invoke-static {v6}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 721
    sget-boolean v6, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sVoiceCapable:Z

    if-eqz v6, :cond_2

    if-ne v1, v8, :cond_2

    .line 722
    sget-object v6, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sLastPlmn:Ljava/lang/String;

    if-nez v6, :cond_2

    .line 723
    const-string v6, "CS reject, invalid SIM"

    invoke-static {v6}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 724
    sget-object v6, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsInvalidSim:[Z

    aput-boolean v8, v6, p1

    goto :goto_0

    .line 728
    :cond_2
    if-ne v4, v8, :cond_0

    .line 729
    sget-object v6, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sLastPlmn:Ljava/lang/String;

    if-nez v6, :cond_0

    .line 730
    const-string v6, "PS reject, invalid SIM"

    invoke-static {v6}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 731
    sget-object v6, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsInvalidSim:[Z

    aput-boolean v8, v6, p1

    goto :goto_0

    .line 736
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

    invoke-static {v6}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleNoService()V
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 900
    const-string v2, "[handleNoService]+ Can not find service"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 901
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUserType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " user"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 902
    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRegion:I

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->regionToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 903
    invoke-static {}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->getActiveModemType()I

    move-result v1

    .line 904
    .local v1, "mdType":I
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->modemToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 905
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    sget v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    aget-object v2, v2, v3

    check-cast v2, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v0

    .line 906
    .local v0, "iccState":Lcom/android/internal/telephony/IccCardConstants$State;
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v2, :cond_d

    .line 907
    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUserType:I

    if-ne v2, v4, :cond_8

    .line 908
    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    .line 910
    :cond_0
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->TDD_STANDBY_TIMER:[I

    sget v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sTddStandByCounter:I

    aget v2, v2, v3

    if-ltz v2, :cond_3

    .line 911
    sget-boolean v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sWaitInTdd:Z

    if-nez v2, :cond_2

    .line 912
    sput-boolean v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sWaitInTdd:Z

    .line 913
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wait "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->TDD_STANDBY_TIMER:[I

    sget v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sTddStandByCounter:I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "s. Timer index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sTddStandByCounter:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 914
    iget-object v2, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->mTddStandByTimerRunnable:Ljava/lang/Runnable;

    sget-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->TDD_STANDBY_TIMER:[I

    sget v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sTddStandByCounter:I

    aget v3, v3, v4

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v4, v3

    invoke-virtual {p0, v2, v4, v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 948
    :cond_1
    :goto_0
    const-string v2, "[handleNoService]-"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 950
    return-void

    .line 916
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Timer already set:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->TDD_STANDBY_TIMER:[I

    sget v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sTddStandByCounter:I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 919
    :cond_3
    const-string v2, "Standby in TDD modem"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 921
    :cond_4
    if-eq v1, v6, :cond_5

    if-ne v1, v5, :cond_1

    .line 923
    :cond_5
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->FDD_STANDBY_TIMER:[I

    sget v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFddStandByCounter:I

    aget v2, v2, v3

    if-ltz v2, :cond_7

    .line 924
    sget-boolean v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sWaitInFdd:Z

    if-nez v2, :cond_6

    .line 925
    sput-boolean v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sWaitInFdd:Z

    .line 926
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wait "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->FDD_STANDBY_TIMER:[I

    sget v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFddStandByCounter:I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "s. Timer index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFddStandByCounter:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 927
    iget-object v2, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->mFddStandByTimerRunnable:Ljava/lang/Runnable;

    sget-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->FDD_STANDBY_TIMER:[I

    sget v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFddStandByCounter:I

    aget v3, v3, v4

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v4, v3

    invoke-virtual {p0, v2, v4, v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 929
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Timer already set:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->FDD_STANDBY_TIMER:[I

    sget v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFddStandByCounter:I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 932
    :cond_7
    const-string v2, "Standby in FDD modem"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 935
    :cond_8
    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUserType:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_9

    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUserType:I

    if-ne v2, v5, :cond_c

    .line 936
    :cond_9
    if-eq v1, v6, :cond_a

    if-ne v1, v5, :cond_b

    .line 938
    :cond_a
    const-string v2, "Standby in FDD modem"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 940
    :cond_b
    const-string v2, "Should not enter this state"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 943
    :cond_c
    const-string v2, "Unknow user type"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 946
    :cond_d
    const-string v2, "IccState not ready"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private handlePlmnChange(Landroid/os/AsyncResult;I)V
    .locals 6
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "slotId"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 633
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getMajorSim()I

    move-result v2

    sput v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    .line 634
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

    sget v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 636
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_4

    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_4

    .line 637
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    move-object v1, v2

    check-cast v1, [Ljava/lang/String;

    .line 638
    .local v1, "plmnString":[Ljava/lang/String;
    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    if-ne p2, v2, :cond_0

    .line 639
    sput-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sNwPlmnStrings:[Ljava/lang/String;

    .line 641
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 642
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

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 641
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 645
    :cond_1
    sget-boolean v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsAutoSelectEnable:Z

    if-eqz v2, :cond_3

    .line 646
    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    if-ne v2, p2, :cond_2

    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUserType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sDenyReason:I

    if-eq v2, v5, :cond_2

    .line 648
    aget-object v2, v1, v4

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->searchForDesignateService(Ljava/lang/String;)V

    .line 652
    :cond_2
    aget-object v2, v1, v4

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->getRegion(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRegion:I

    .line 657
    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUserType:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRegion:I

    if-ne v2, v5, :cond_3

    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 660
    const/16 v2, 0x64

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleSwitchModem(I)V

    .line 666
    .end local v0    # "i":I
    .end local v1    # "plmnString":[Ljava/lang/String;
    :cond_3
    :goto_1
    return-void

    .line 664
    :cond_4
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

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private handleRadioOn(I)V
    .locals 5
    .param p1, "slotId"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 612
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getMajorSim()I

    move-result v1

    sput v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    .line 613
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRadioOn Slot:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sMajorSim:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 614
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsInvalidSim:[Z

    aput-boolean v3, v1, p1

    .line 616
    sget-boolean v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsResumeCampingFail:Z

    if-eqz v1, :cond_1

    .line 617
    const-string v1, "try to resume camping again"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 619
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isCdmaLteDcSupport()Z

    move-result v1

    if-nez v1, :cond_2

    .line 620
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, p1

    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSuspendId:[I

    aget v2, v2, p1

    invoke-interface {v1, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->setResumeRegistration(ILandroid/os/Message;)V

    .line 627
    :cond_0
    :goto_0
    sput-boolean v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsResumeCampingFail:Z

    .line 630
    :cond_1
    return-void

    .line 622
    :cond_2
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->getSvlteActiveCi(I)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v0

    .line 623
    .local v0, "ci":Lcom/android/internal/telephony/CommandsInterface;
    if-eqz v0, :cond_0

    .line 624
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSuspendId:[I

    aget v1, v1, p1

    invoke-interface {v0, v1, v4}, Lcom/android/internal/telephony/CommandsInterface;->setResumeRegistration(ILandroid/os/Message;)V

    goto :goto_0
.end method

.method private handleRegistrationSuspend(Landroid/os/AsyncResult;I)V
    .locals 5
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "slotId"    # I

    .prologue
    const/4 v4, 0x0

    .line 669
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Slot"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 670
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_5

    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_5

    .line 671
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSuspendId:[I

    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    check-cast v1, [I

    const/4 v3, 0x0

    aget v1, v1, v3

    aput v1, v2, p2

    .line 672
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Suspending with Id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSuspendId:[I

    aget v2, v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 675
    sget-boolean v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsAutoSelectEnable:Z

    if-eqz v1, :cond_3

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    if-ne v1, p2, :cond_3

    .line 677
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isCdmaLteDcSupport()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 678
    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->resumeCampingProcedure(I)V

    .line 704
    :cond_0
    :goto_0
    return-void

    .line 681
    :cond_1
    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUserType:I

    if-eqz v1, :cond_2

    .line 682
    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->resumeCampingProcedure(I)V

    goto :goto_0

    .line 684
    :cond_2
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSuspendWaitImsi:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, p2

    .line 685
    const-string v1, "User type unknown, wait for IMSI"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 689
    :cond_3
    const-string v1, "Not major slot or in maual selection mode, camp on OK"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 691
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isCdmaLteDcSupport()Z

    move-result v1

    if-nez v1, :cond_4

    .line 692
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, p2

    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSuspendId:[I

    aget v2, v2, p2

    invoke-interface {v1, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->setResumeRegistration(ILandroid/os/Message;)V

    goto :goto_0

    .line 694
    :cond_4
    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->getSvlteActiveCi(I)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v0

    .line 695
    .local v0, "ci":Lcom/android/internal/telephony/CommandsInterface;
    if-eqz v0, :cond_0

    .line 696
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSuspendId:[I

    aget v1, v1, p2

    invoke-interface {v0, v1, v4}, Lcom/android/internal/telephony/CommandsInterface;->setResumeRegistration(ILandroid/os/Message;)V

    goto :goto_0

    .line 702
    .end local v0    # "ci":Lcom/android/internal/telephony/CommandsInterface;
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AsyncResult is wrong "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleSimSwitched()V
    .locals 6

    .prologue
    const/16 v5, 0x64

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 855
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 856
    const-string v0, "Major capability turned off"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 857
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->removeModemStandByTimer()V

    .line 858
    sput v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUserType:I

    .line 897
    :goto_0
    return-void

    .line 861
    :cond_0
    sget-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsAutoSelectEnable:Z

    if-nez v0, :cond_1

    .line 862
    const-string v0, "Auto modem selection disabled"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 863
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->removeModemStandByTimer()V

    goto :goto_0

    .line 864
    :cond_1
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    const/16 v1, -0x63

    if-ne v0, v1, :cond_2

    .line 865
    const-string v0, "Major SIM unknown"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 867
    :cond_2
    const-string v0, "Auto modem selection enabled"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 868
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Major capability in slot"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 869
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sImsi:[Ljava/lang/String;

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_3

    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sImsi:[Ljava/lang/String;

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    aget-object v0, v0, v1

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 871
    :cond_3
    const-string v0, "Major slot IMSI not ready"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 872
    sput v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUserType:I

    goto :goto_0

    .line 875
    :cond_4
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sImsi:[Ljava/lang/String;

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->getUserType(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUserType:I

    .line 876
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUserType:I

    if-ne v0, v3, :cond_8

    .line 877
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sNwPlmnStrings:[Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 878
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sNwPlmnStrings:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->getRegion(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRegion:I

    .line 880
    :cond_5
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRegion:I

    if-ne v0, v3, :cond_6

    .line 881
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFirstSelect:[Z

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    aput-boolean v2, v0, v1

    .line 882
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIccCardType:[I

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->getIccCardType(I)I

    move-result v2

    aput v2, v0, v1

    .line 883
    const/16 v0, 0x65

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleSwitchModem(I)V

    goto/16 :goto_0

    .line 884
    :cond_6
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRegion:I

    if-ne v0, v4, :cond_7

    .line 885
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFirstSelect:[Z

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    aput-boolean v2, v0, v1

    .line 886
    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleSwitchModem(I)V

    goto/16 :goto_0

    .line 888
    :cond_7
    const-string v0, "Unknown region"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 890
    :cond_8
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUserType:I

    if-eq v0, v4, :cond_9

    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUserType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_a

    .line 891
    :cond_9
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFirstSelect:[Z

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    aput-boolean v2, v0, v1

    .line 892
    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleSwitchModem(I)V

    goto/16 :goto_0

    .line 894
    :cond_a
    const-string v0, "Unknown user type"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private handleSwitchModem(I)V
    .locals 10
    .param p1, "toModem"    # I

    .prologue
    const/4 v9, 0x6

    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x0

    .line 741
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getMajorSim()I

    move-result v2

    .line 743
    .local v2, "mMajorSim":I
    const/4 v0, 0x0

    .line 746
    .local v0, "ci":Lcom/android/internal/telephony/CommandsInterface;
    sget-boolean v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsAutoSelectEnable:Z

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isCdmaLteDcSupport()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 747
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->isNeedHandleSwitchForRadioTechMode()Z

    move-result v3

    if-nez v3, :cond_1

    .line 748
    const-string v3, "[handleSwitchModem]No need to handle, switch not executed!"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 852
    :cond_0
    :goto_0
    return-void

    .line 754
    :cond_1
    if-ltz v2, :cond_2

    sget-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsInvalidSim:[Z

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getModemSelectionMode()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 756
    const-string v3, "[handleSwitchModem] Invalid SIM, switch not executed!"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 759
    :cond_2
    const/16 v3, 0x65

    if-ne p1, v3, :cond_5

    .line 760
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isLteSupport()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 761
    const/4 p1, 0x6

    .line 774
    :cond_3
    :goto_1
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->getSvlteActiveCi(I)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v0

    .line 775
    if-nez v0, :cond_7

    .line 776
    const-string v3, "[handleSwitchModem] get Ci fail, switch not executed!"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 763
    :cond_4
    const/4 p1, 0x4

    goto :goto_1

    .line 765
    :cond_5
    const/16 v3, 0x64

    if-ne p1, v3, :cond_3

    .line 766
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isLteSupport()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 767
    const/4 p1, 0x5

    goto :goto_1

    .line 769
    :cond_6
    const/4 p1, 0x3

    goto :goto_1

    .line 783
    :cond_7
    sget-boolean v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsAutoSelectEnable:Z

    if-nez v3, :cond_9

    .line 784
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[handleSwitchModem] Auto select disable, storing modem type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 786
    invoke-interface {v0, p1, v5}, Lcom/android/internal/telephony/CommandsInterface;->storeModemType(ILandroid/os/Message;)V

    .line 821
    :cond_8
    :goto_2
    invoke-static {}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->getActiveModemType()I

    move-result v3

    if-ne p1, v3, :cond_11

    .line 822
    if-ne p1, v6, :cond_e

    .line 823
    const-string v3, "Already in WG modem"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 789
    :cond_9
    sget v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sDefaultBootuUpModem:I

    if-nez v3, :cond_a

    .line 790
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[handleSwitchModem] Storing modem type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 792
    invoke-interface {v0, p1, v5}, Lcom/android/internal/telephony/CommandsInterface;->storeModemType(ILandroid/os/Message;)V

    goto :goto_2

    .line 794
    :cond_a
    sget v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sDefaultBootuUpModem:I

    const/16 v4, 0x64

    if-ne v3, v4, :cond_c

    .line 795
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isLteSupport()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 796
    const-string v3, "[handleSwitchModem] Storing modem type: 3"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 798
    invoke-interface {v0, v8, v5}, Lcom/android/internal/telephony/CommandsInterface;->storeModemType(ILandroid/os/Message;)V

    goto :goto_2

    .line 801
    :cond_b
    const-string v3, "[handleSwitchModem] Storing modem type: 5"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 803
    invoke-interface {v0, v6, v5}, Lcom/android/internal/telephony/CommandsInterface;->storeModemType(ILandroid/os/Message;)V

    goto :goto_2

    .line 806
    :cond_c
    sget v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sDefaultBootuUpModem:I

    const/16 v4, 0x65

    if-ne v3, v4, :cond_8

    .line 807
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isLteSupport()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 808
    const-string v3, "[handleSwitchModem] Storing modem type: 3"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 810
    invoke-interface {v0, v9, v5}, Lcom/android/internal/telephony/CommandsInterface;->storeModemType(ILandroid/os/Message;)V

    goto :goto_2

    .line 813
    :cond_d
    const-string v3, "[handleSwitchModem] Storing modem type: 5"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 815
    invoke-interface {v0, v7, v5}, Lcom/android/internal/telephony/CommandsInterface;->storeModemType(ILandroid/os/Message;)V

    goto :goto_2

    .line 824
    :cond_e
    if-ne p1, v7, :cond_f

    .line 825
    const-string v3, "Already in TG modem"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 826
    :cond_f
    if-ne p1, v8, :cond_10

    .line 827
    const-string v3, "Already in FDD CSFB modem"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 828
    :cond_10
    if-ne p1, v9, :cond_0

    .line 829
    const-string v3, "Already in TDD CSFB modem"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 833
    :cond_11
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    sget v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->PROJECT_SIM_NUM:I

    if-ge v1, v3, :cond_13

    .line 834
    sget-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sActivePhones:[Lcom/android/internal/telephony/Phone;

    aget-object v3, v3, v1

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v3, v4, :cond_12

    .line 835
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Phone"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not idle, modem switch not allowed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 833
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 839
    :cond_13
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->removeModemStandByTimer()V

    .line 840
    if-ne p1, v6, :cond_15

    .line 841
    const-string v3, "Switching to WG modem"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 849
    :cond_14
    :goto_4
    invoke-static {p1}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->switchModem(I)V

    .line 850
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->resetNetworkProperties()V

    goto/16 :goto_0

    .line 842
    :cond_15
    if-ne p1, v7, :cond_16

    .line 843
    const-string v3, "Switching to TG modem"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_4

    .line 844
    :cond_16
    if-ne p1, v8, :cond_17

    .line 845
    const-string v3, "Switching to FDD CSFB modem"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_4

    .line 846
    :cond_17
    if-ne p1, v9, :cond_14

    .line 847
    const-string v3, "Switching to TDD CSFB modem"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_4
.end method

.method private is3GCdmaCard(I)Z
    .locals 1
    .param p1, "cardType"    # I

    .prologue
    .line 1480
    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_0

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->containsCdma(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1483
    const/4 v0, 0x1

    .line 1485
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
    .line 1472
    and-int/lit8 v0, p1, 0x2

    if-lez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->containsCdma(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1474
    const/4 v0, 0x1

    .line 1476
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isAllowCampOn(Ljava/lang/String;I)Z
    .locals 8
    .param p1, "plmnString"    # Ljava/lang/String;
    .param p2, "slotId"    # I

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x3

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 954
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[isAllowCampOn]+ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 955
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "User type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUserType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 956
    sget-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIccCardType:[I

    aget v3, v3, p2

    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->iccCardTypeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 957
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->getRegion(Ljava/lang/String;)I

    move-result v3

    sput v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRegion:I

    .line 958
    invoke-static {}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->getActiveModemType()I

    move-result v0

    .line 959
    .local v0, "mdType":I
    invoke-static {v0}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->modemToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 960
    sget v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUserType:I

    if-ne v3, v2, :cond_9

    .line 961
    sget v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRegion:I

    if-ne v3, v2, :cond_3

    .line 962
    const/4 v3, 0x6

    if-eq v0, v3, :cond_0

    if-ne v0, v7, :cond_1

    .line 964
    :cond_0
    sput v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sDenyReason:I

    .line 965
    const-string v1, "Camp on OK"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 966
    const-string v1, "[isAllowCampOn]-"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    move v1, v2

    .line 1013
    :goto_0
    return v1

    .line 968
    :cond_1
    const/4 v3, 0x5

    if-eq v0, v3, :cond_2

    if-ne v0, v5, :cond_8

    .line 970
    :cond_2
    sput v5, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sDenyReason:I

    .line 971
    const-string v2, "Camp on REJECT"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 972
    const-string v2, "[isAllowCampOn]-"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 975
    :cond_3
    sget v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRegion:I

    if-ne v3, v6, :cond_7

    .line 976
    const/4 v3, 0x6

    if-eq v0, v3, :cond_4

    if-ne v0, v7, :cond_5

    .line 978
    :cond_4
    sput v6, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sDenyReason:I

    .line 979
    const-string v2, "Camp on REJECT"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 980
    const-string v2, "[isAllowCampOn]-"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 982
    :cond_5
    const/4 v3, 0x5

    if-eq v0, v3, :cond_6

    if-ne v0, v5, :cond_8

    .line 984
    :cond_6
    sput v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sDenyReason:I

    .line 985
    const-string v1, "Camp on OK"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 986
    const-string v1, "[isAllowCampOn]-"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    move v1, v2

    .line 987
    goto :goto_0

    .line 990
    :cond_7
    const-string v3, "Unknow region"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1009
    :cond_8
    :goto_1
    sput v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sDenyReason:I

    .line 1010
    const-string v2, "Camp on REJECT"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1011
    const-string v2, "[isAllowCampOn]-"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 992
    :cond_9
    sget v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUserType:I

    if-eq v3, v6, :cond_a

    sget v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUserType:I

    if-ne v3, v5, :cond_e

    .line 993
    :cond_a
    const/4 v3, 0x6

    if-eq v0, v3, :cond_b

    if-ne v0, v7, :cond_c

    .line 995
    :cond_b
    sput v6, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sDenyReason:I

    .line 996
    const-string v2, "Camp on REJECT"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 997
    const-string v2, "[isAllowCampOn]-"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 999
    :cond_c
    const/4 v3, 0x5

    if-eq v0, v3, :cond_d

    if-ne v0, v5, :cond_8

    .line 1001
    :cond_d
    sput v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sDenyReason:I

    .line 1002
    const-string v1, "Camp on OK"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1003
    const-string v1, "[isAllowCampOn]-"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    move v1, v2

    .line 1004
    goto :goto_0

    .line 1007
    :cond_e
    const-string v3, "Unknown user type"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private isInService()Z
    .locals 3

    .prologue
    .line 1017
    const/4 v0, 0x0

    .line 1019
    .local v0, "inService":Z
    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sVoiceRegState:I

    if-eqz v1, :cond_0

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sDataRegState:I

    if-nez v1, :cond_1

    .line 1021
    :cond_0
    const/4 v0, 0x1

    .line 1023
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

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1025
    return v0
.end method

.method private isNeedHandleSwitchForRadioTechMode()Z
    .locals 3

    .prologue
    .line 1434
    const/4 v0, 0x0

    .line 1435
    .local v0, "isNeed":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[isNeedHandleSwitchForRadioTechMode] RT mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRadioTechModeForWp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1437
    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRadioTechModeForWp:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->isSpecialCardMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1439
    :cond_0
    invoke-static {}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->getActiveModemType()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    .line 1440
    const-string v1, "[isNeedHandleSwitchForRadioTechMode] SVLTE mode and MD type is LTG"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1442
    const/4 v0, 0x1

    .line 1450
    :cond_1
    :goto_0
    return v0

    .line 1444
    :cond_2
    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRadioTechModeForWp:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 1445
    const-string v1, "[isNeedHandleSwitchForRadioTechMode] CSFB mode"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1446
    const/4 v0, 0x1

    goto :goto_0

    .line 1448
    :cond_3
    const-string v1, "[isNeedHandleSwitchForRadioTechMode] no need to switch"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isNoService()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1029
    const/4 v0, 0x0

    .line 1031
    .local v0, "noService":Z
    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sVoiceRegState:I

    if-ne v1, v2, :cond_0

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRilVoiceRegState:I

    if-nez v1, :cond_0

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sDataRegState:I

    if-ne v1, v2, :cond_0

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRilDataRegState:I

    if-nez v1, :cond_0

    .line 1035
    const/4 v0, 0x1

    .line 1039
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

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1041
    return v0

    .line 1037
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSpecialCardMode()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1454
    const/4 v2, 0x0

    .line 1455
    .local v2, "specialCardMode":Z
    sget v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRadioTechModeForWp:I

    if-eqz v3, :cond_2

    .line 1456
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    .line 1457
    .local v1, "numberPhones":I
    new-array v0, v1, [I

    .line 1458
    .local v0, "cardType":[I
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccController;->getC2KWPCardType()[I

    move-result-object v0

    .line 1460
    aget v3, v0, v5

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->is4GCdmaCard(I)Z

    move-result v3

    if-eqz v3, :cond_0

    aget v3, v0, v6

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->is4GCdmaCard(I)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    aget v3, v0, v5

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->is3GCdmaCard(I)Z

    move-result v3

    if-eqz v3, :cond_2

    aget v3, v0, v6

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->is3GCdmaCard(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1462
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSpecialCardMode cardType1="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v0, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", cardType2="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v0, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1464
    const/4 v2, 0x1

    .line 1467
    .end local v0    # "cardType":[I
    .end local v1    # "numberPhones":I
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSpecialCardMode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1468
    return v2
.end method

.method private static loadDefaultData()V
    .locals 6

    .prologue
    .line 1401
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->PLMN_TABLE_TYPE1:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 1402
    .local v4, "plmn":Ljava/lang/String;
    sget-object v5, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sPlmnType1:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1401
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1405
    .end local v4    # "plmn":Ljava/lang/String;
    :cond_0
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->PLMN_TABLE_TYPE3:[Ljava/lang/String;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 1406
    .restart local v4    # "plmn":Ljava/lang/String;
    sget-object v5, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sPlmnType3:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1405
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1409
    .end local v4    # "plmn":Ljava/lang/String;
    :cond_1
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->MCC_TABLE_DOMESTIC:[Ljava/lang/String;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 1410
    .local v3, "mcc":Ljava/lang/String;
    sget-object v5, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMccDomestic:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1409
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1412
    .end local v3    # "mcc":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 1497
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WPOM]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    return-void
.end method

.method private removeModemStandByTimer()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1156
    sget-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sWaitInTdd:Z

    if-eqz v0, :cond_0

    .line 1157
    const-string v0, "Remove TDD wait timer. Set sWaitInTdd = false"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1158
    sput-boolean v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sWaitInTdd:Z

    .line 1159
    iget-object v0, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->mTddStandByTimerRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1161
    :cond_0
    sget-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sWaitInFdd:Z

    if-eqz v0, :cond_1

    .line 1162
    const-string v0, "Remove FDD wait timer. Set sWaitInFdd = false"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1163
    sput-boolean v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sWaitInFdd:Z

    .line 1164
    iget-object v0, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->mFddStandByTimerRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1166
    :cond_1
    return-void
.end method

.method private resetAllProperties()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1169
    const-string v1, "[resetAllProperties]"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1170
    const/4 v1, 0x0

    sput-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sNwPlmnStrings:[Ljava/lang/String;

    .line 1171
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->PROJECT_SIM_NUM:I

    if-ge v0, v1, :cond_0

    .line 1172
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFirstSelect:[Z

    aput-boolean v3, v1, v0

    .line 1171
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1174
    :cond_0
    sput v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sDenyReason:I

    .line 1175
    sput-boolean v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsResumeCampingFail:Z

    .line 1176
    sput v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRadioTechModeForWp:I

    .line 1177
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->resetSimProperties()V

    .line 1178
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->resetNetworkProperties()V

    .line 1179
    return-void
.end method

.method private resetNetworkProperties()V
    .locals 4

    .prologue
    .line 1182
    const-string v1, "[resetNetworkProperties]"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1183
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1184
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->PROJECT_SIM_NUM:I

    if-ge v0, v1, :cond_0

    .line 1185
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSuspendWaitImsi:[Z

    const/4 v3, 0x0

    aput-boolean v3, v1, v0

    .line 1184
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1187
    :cond_0
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sNwPlmnStrings:[Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1188
    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sNwPlmnStrings:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1189
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sNwPlmnStrings:[Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v1, v0

    .line 1188
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1192
    :cond_1
    monitor-exit v2

    .line 1193
    return-void

    .line 1192
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
    .line 1196
    const-string v1, "[resetSimProperties]"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1197
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1198
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->PROJECT_SIM_NUM:I

    if-ge v0, v1, :cond_0

    .line 1199
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sImsi:[Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v1, v0

    .line 1200
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIccCardType:[I

    const/4 v3, 0x0

    aput v3, v1, v0

    .line 1198
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1202
    :cond_0
    const/4 v1, 0x0

    sput v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUserType:I

    .line 1203
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getMajorSim()I

    move-result v1

    sput v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    .line 1204
    monitor-exit v2

    .line 1205
    return-void

    .line 1204
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private resumeCampingProcedure(I)V
    .locals 6
    .param p1, "slotId"    # I

    .prologue
    const/16 v5, 0x46

    const/4 v4, 0x0

    .line 1104
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resume camping slot "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1106
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sNwPlmnStrings:[Ljava/lang/String;

    aget-object v2, v2, v4

    if-eqz v2, :cond_4

    .line 1107
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sNwPlmnStrings:[Ljava/lang/String;

    aget-object v1, v2, v4

    .line 1108
    .local v1, "plmnString":Ljava/lang/String;
    invoke-direct {p0, v1, p1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->isAllowCampOn(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1109
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->removeModemStandByTimer()V

    .line 1111
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isCdmaLteDcSupport()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1112
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, p1

    sget-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSuspendId:[I

    aget v3, v3, p1

    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->setResumeRegistration(ILandroid/os/Message;)V

    .line 1131
    .end local v1    # "plmnString":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1114
    .restart local v1    # "plmnString":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->getSvlteActiveCi(I)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v0

    .line 1115
    .local v0, "ci":Lcom/android/internal/telephony/CommandsInterface;
    if-eqz v0, :cond_0

    .line 1116
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSuspendId:[I

    aget v2, v2, p1

    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setResumeRegistration(ILandroid/os/Message;)V

    goto :goto_0

    .line 1121
    .end local v0    # "ci":Lcom/android/internal/telephony/CommandsInterface;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Because: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sDenyReason:I

    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->denyReasonToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1122
    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sDenyReason:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 1123
    const/16 v2, 0x64

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleSwitchModem(I)V

    goto :goto_0

    .line 1124
    :cond_3
    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sDenyReason:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 1125
    const/16 v2, 0x65

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleSwitchModem(I)V

    goto :goto_0

    .line 1129
    .end local v1    # "plmnString":Ljava/lang/String;
    :cond_4
    const-string v2, "sNwPlmnStrings[0] is null"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private searchForDesignateService(Ljava/lang/String;)V
    .locals 4
    .param p1, "strPlmn"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x5

    .line 1208
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v3, :cond_2

    .line 1209
    :cond_0
    const-string v2, "[searchForDesignateService]- null source"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1223
    :cond_1
    :goto_0
    return-void

    .line 1212
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1213
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sPlmnType1:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1214
    .local v1, "mccmnc":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1215
    const-string v2, "Find TD service"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1216
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sUserType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUserType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sRegion: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRegion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1217
    invoke-static {}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->getActiveModemType()I

    move-result v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->modemToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1218
    const/16 v2, 0x65

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleSwitchModem(I)V

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 523
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 524
    .local v0, "ar":Landroid/os/AsyncResult;
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 607
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

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 609
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 526
    :sswitch_1
    const-string v1, "handleMessage : <EVENT_RADIO_ON_1>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 527
    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleRadioOn(I)V

    goto :goto_0

    .line 530
    :sswitch_2
    const-string v1, "handleMessage : <EVENT_REG_PLMN_CHANGED_1>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 531
    invoke-direct {p0, v0, v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handlePlmnChange(Landroid/os/AsyncResult;I)V

    goto :goto_0

    .line 534
    :sswitch_3
    const-string v1, "handleMessage : <EVENT_REG_SUSPENDED_1>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 535
    invoke-direct {p0, v0, v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleRegistrationSuspend(Landroid/os/AsyncResult;I)V

    goto :goto_0

    .line 538
    :sswitch_4
    const-string v1, "handleMessage : <EVENT_RADIO_ON_2>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 539
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleRadioOn(I)V

    goto :goto_0

    .line 542
    :sswitch_5
    const-string v1, "handleMessage : <EVENT_REG_PLMN_CHANGED_2>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 543
    invoke-direct {p0, v0, v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handlePlmnChange(Landroid/os/AsyncResult;I)V

    goto :goto_0

    .line 546
    :sswitch_6
    const-string v1, "handleMessage : <EVENT_REG_SUSPENDED_2>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 547
    invoke-direct {p0, v0, v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleRegistrationSuspend(Landroid/os/AsyncResult;I)V

    goto :goto_0

    .line 550
    :sswitch_7
    const-string v1, "handleMessage : <EVENT_INVALID_SIM_NOTIFY_1>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 551
    invoke-direct {p0, v3, v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleInvalidSimNotify(ILandroid/os/AsyncResult;)V

    goto :goto_0

    .line 554
    :sswitch_8
    const-string v1, "handleMessage : <EVENT_INVALID_SIM_NOTIFY_2>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 555
    invoke-direct {p0, v2, v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleInvalidSimNotify(ILandroid/os/AsyncResult;)V

    goto :goto_0

    .line 560
    :sswitch_9
    const-string v1, "handleMessage : <EVENT_RADIO_ON_SVLTE_L_1>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 561
    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleRadioOn(I)V

    goto :goto_0

    .line 564
    :sswitch_a
    const-string v1, "handleMessage : <EVENT_REG_PLMN_CHANGED_SVLTE_L_1>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 565
    invoke-direct {p0, v0, v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handlePlmnChange(Landroid/os/AsyncResult;I)V

    goto :goto_0

    .line 568
    :sswitch_b
    const-string v1, "handleMessage : <EVENT_REG_SUSPENDED_SVLTE_L_1>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 569
    invoke-direct {p0, v0, v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleRegistrationSuspend(Landroid/os/AsyncResult;I)V

    goto :goto_0

    .line 572
    :sswitch_c
    const-string v1, "handleMessage : <EVENT_RADIO_ON_SVLTE_L_2>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 573
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleRadioOn(I)V

    goto :goto_0

    .line 576
    :sswitch_d
    const-string v1, "handleMessage : <EVENT_REG_PLMN_CHANGED_SVLTE_L_2>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 577
    invoke-direct {p0, v0, v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handlePlmnChange(Landroid/os/AsyncResult;I)V

    goto :goto_0

    .line 580
    :sswitch_e
    const-string v1, "handleMessage : <EVENT_REG_SUSPENDED_SVLTE_L_2>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 581
    invoke-direct {p0, v0, v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleRegistrationSuspend(Landroid/os/AsyncResult;I)V

    goto :goto_0

    .line 584
    :sswitch_f
    const-string v1, "handleMessage : <EVENT_INVALID_SIM_NOTIFY_SVLTE_L_1>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 585
    invoke-direct {p0, v3, v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleInvalidSimNotify(ILandroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 588
    :sswitch_10
    const-string v1, "handleMessage : <EVENT_INVALID_SIM_NOTIFY_SVLTE_L_2>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 589
    invoke-direct {p0, v2, v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleInvalidSimNotify(ILandroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 600
    :sswitch_11
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 601
    const-string v1, "handleMessage : <EVENT_RESUME_CAMPING> with exception"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 602
    sput-boolean v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsResumeCampingFail:Z

    goto/16 :goto_0

    .line 524
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_4
        0xa -> :sswitch_2
        0xb -> :sswitch_5
        0x1e -> :sswitch_3
        0x1f -> :sswitch_6
        0x3c -> :sswitch_7
        0x3d -> :sswitch_8
        0x46 -> :sswitch_11
        0x3e8 -> :sswitch_9
        0x3e9 -> :sswitch_c
        0x3f2 -> :sswitch_a
        0x3f3 -> :sswitch_d
        0x406 -> :sswitch_b
        0x407 -> :sswitch_e
        0x410 -> :sswitch_f
        0x411 -> :sswitch_10
        0x41a -> :sswitch_0
    .end sparse-switch
.end method

.method public handleRadioTechModeSwitch()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1342
    const/4 v0, 0x0

    .line 1343
    .local v0, "toModem":I
    const-string v1, "[handleRadioTechModeSwitch]"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1344
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sRadioTechModeForWp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRadioTechModeForWp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1345
    sget-boolean v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsAutoSelectEnable:Z

    if-nez v1, :cond_0

    .line 1346
    const-string v1, "Auto modem selection disabled"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1347
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->removeModemStandByTimer()V

    .line 1398
    :goto_0
    return-void

    .line 1349
    :cond_0
    const-string v1, "Auto modem selection enabled"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1350
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sImsi:[Ljava/lang/String;

    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_1

    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sImsi:[Ljava/lang/String;

    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    aget-object v1, v1, v2

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1352
    :cond_1
    const-string v1, "Capaility slot IMSI not ready"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1353
    sput v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUserType:I

    goto :goto_0

    .line 1356
    :cond_2
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sImsi:[Ljava/lang/String;

    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    aget-object v1, v1, v2

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->getUserType(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUserType:I

    .line 1357
    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUserType:I

    if-ne v1, v4, :cond_7

    .line 1358
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sNwPlmnStrings:[Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 1359
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sNwPlmnStrings:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->getRegion(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRegion:I

    .line 1361
    :cond_3
    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRegion:I

    if-ne v1, v4, :cond_5

    .line 1362
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFirstSelect:[Z

    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    aput-boolean v3, v1, v2

    .line 1363
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIccCardType:[I

    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    sget v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->getIccCardType(I)I

    move-result v3

    aput v3, v1, v2

    .line 1364
    const/16 v0, 0x65

    .line 1380
    :goto_1
    const/16 v1, 0x65

    if-ne v0, v1, :cond_b

    .line 1381
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isLteSupport()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1382
    const/4 v0, 0x6

    .line 1394
    :cond_4
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[handleRadioTechModeSwitch]: switch type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1395
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleSwitchModem(I)V

    .line 1396
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->resetNetworkProperties()V

    goto/16 :goto_0

    .line 1365
    :cond_5
    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRegion:I

    if-ne v1, v5, :cond_6

    .line 1366
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFirstSelect:[Z

    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    aput-boolean v3, v1, v2

    .line 1367
    const/16 v0, 0x64

    goto :goto_1

    .line 1369
    :cond_6
    const-string v1, "Unknown region"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1372
    :cond_7
    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUserType:I

    if-eq v1, v5, :cond_8

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUserType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_9

    .line 1373
    :cond_8
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFirstSelect:[Z

    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    aput-boolean v3, v1, v2

    .line 1374
    const/16 v0, 0x64

    goto :goto_1

    .line 1376
    :cond_9
    const-string v1, "Unknown user type"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1384
    :cond_a
    const/4 v0, 0x4

    goto :goto_2

    .line 1386
    :cond_b
    const/16 v1, 0x64

    if-ne v0, v1, :cond_4

    .line 1387
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isLteSupport()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1388
    const/4 v0, 0x5

    goto :goto_2

    .line 1390
    :cond_c
    const/4 v0, 0x3

    goto :goto_2
.end method

.method public notifyRadioCapabilityChange(I)V
    .locals 10
    .param p1, "capailitySimId"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1246
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getMajorSim()I

    move-result v2

    .line 1247
    .local v2, "majorSimId":I
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getActiveSvlteModeSlotId()I

    move-result v0

    .line 1248
    .local v0, "activeSvlteModeSlotId":I
    const/4 v3, 0x0

    .line 1250
    .local v3, "toModem":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setRadioCapabilityChange] majorSimId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " capailitySimId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1252
    sget-boolean v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsAutoSelectEnable:Z

    if-nez v4, :cond_1

    .line 1253
    const-string v4, "[setRadioCapabilityChange] Auto modem selection disabled"

    invoke-static {v4}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1254
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->removeModemStandByTimer()V

    .line 1339
    :cond_0
    :goto_0
    return-void

    .line 1256
    :cond_1
    sget-object v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sImsi:[Ljava/lang/String;

    aget-object v4, v4, p1

    if-eqz v4, :cond_2

    sget-object v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sImsi:[Ljava/lang/String;

    aget-object v4, v4, p1

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1258
    :cond_2
    const-string v4, "Capaility slot IMSI not ready"

    invoke-static {v4}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1259
    sput v6, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUserType:I

    goto :goto_0

    .line 1262
    :cond_3
    sget-object v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sImsi:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->getUserType(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUserType:I

    .line 1263
    sget v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUserType:I

    if-ne v4, v7, :cond_9

    .line 1264
    sget-object v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sNwPlmnStrings:[Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 1265
    sget-object v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sNwPlmnStrings:[Ljava/lang/String;

    aget-object v4, v4, v6

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->getRegion(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRegion:I

    .line 1267
    :cond_4
    sget v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRegion:I

    if-ne v4, v7, :cond_7

    .line 1268
    sget-object v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFirstSelect:[Z

    aput-boolean v6, v4, p1

    .line 1269
    sget-object v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIccCardType:[I

    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->getIccCardType(I)I

    move-result v5

    aput v5, v4, p1

    .line 1270
    const/16 v3, 0x65

    .line 1286
    :goto_1
    const/16 v4, 0x65

    if-ne v3, v4, :cond_d

    .line 1287
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isLteSupport()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1288
    const/4 v3, 0x6

    .line 1300
    :cond_5
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyRadioCapabilityChange: Storing modem type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1303
    const/4 v1, 0x0

    .line 1304
    .local v1, "ci":Lcom/android/internal/telephony/CommandsInterface;
    const/16 v4, -0x63

    if-eq v2, v4, :cond_12

    .line 1305
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isCdmaLteDcSupport()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1306
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->isSpecialCardMode()Z

    move-result v4

    if-nez v4, :cond_10

    .line 1307
    if-eq p1, v0, :cond_f

    .line 1309
    const-string v4, "new RT mode is CSFB"

    invoke-static {v4}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1310
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->getSvlteActiveCi(I)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v1

    .line 1327
    :cond_6
    :goto_3
    if-eqz v1, :cond_0

    .line 1328
    invoke-interface {v1, v3, v9}, Lcom/android/internal/telephony/CommandsInterface;->storeModemType(ILandroid/os/Message;)V

    .line 1329
    invoke-interface {v1, v3, v9}, Lcom/android/internal/telephony/CommandsInterface;->reloadModemType(ILandroid/os/Message;)V

    .line 1330
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->resetNetworkProperties()V

    goto/16 :goto_0

    .line 1271
    .end local v1    # "ci":Lcom/android/internal/telephony/CommandsInterface;
    :cond_7
    sget v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRegion:I

    if-ne v4, v8, :cond_8

    .line 1272
    sget-object v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFirstSelect:[Z

    aput-boolean v6, v4, p1

    .line 1273
    const/16 v3, 0x64

    goto :goto_1

    .line 1275
    :cond_8
    const-string v4, "Unknown region"

    invoke-static {v4}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1278
    :cond_9
    sget v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUserType:I

    if-eq v4, v8, :cond_a

    sget v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUserType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_b

    .line 1279
    :cond_a
    sget-object v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFirstSelect:[Z

    aput-boolean v6, v4, p1

    .line 1280
    const/16 v3, 0x64

    goto :goto_1

    .line 1282
    :cond_b
    const-string v4, "Unknown user type"

    invoke-static {v4}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1290
    :cond_c
    const/4 v3, 0x4

    goto :goto_2

    .line 1292
    :cond_d
    const/16 v4, 0x64

    if-ne v3, v4, :cond_5

    .line 1293
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isLteSupport()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1294
    const/4 v3, 0x5

    goto :goto_2

    .line 1296
    :cond_e
    const/4 v3, 0x3

    goto :goto_2

    .line 1314
    .restart local v1    # "ci":Lcom/android/internal/telephony/CommandsInterface;
    :cond_f
    const/4 v4, 0x5

    if-ne v3, v4, :cond_6

    .line 1315
    const-string v4, "new RT mode is SVLTE and new type is LWG"

    invoke-static {v4}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1316
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->getSvlteActiveCi(I)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v1

    goto :goto_3

    .line 1321
    :cond_10
    const-string v4, "isSpecialCardMode=true, ignore this change!"

    invoke-static {v4}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_3

    .line 1324
    :cond_11
    sget-object v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v4, v6

    goto :goto_3

    .line 1335
    :cond_12
    const-string v4, "notifyRadioCapabilityChange: major sim is unknown"

    invoke-static {v4}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public setModemSelectionMode(II)V
    .locals 3
    .param p1, "mode"    # I
    .param p2, "modemType"    # I

    .prologue
    const/4 v2, 0x1

    .line 1227
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "world_phone_auto_select_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1229
    if-ne p1, v2, :cond_1

    .line 1230
    const-string v0, "Modem Selection <AUTO>"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1231
    sput-boolean v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsAutoSelectEnable:Z

    .line 1232
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getMajorSim()I

    move-result v0

    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    .line 1233
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleSimSwitched()V

    .line 1243
    :cond_0
    :goto_0
    return-void

    .line 1235
    :cond_1
    const-string v0, "Modem Selection <MANUAL>"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1237
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsAutoSelectEnable:Z

    .line 1238
    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleSwitchModem(I)V

    .line 1239
    invoke-static {}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->getActiveModemType()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 1240
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->removeModemStandByTimer()V

    goto :goto_0
.end method
