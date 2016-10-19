.class public Lcom/android/internal/telephony/uicc/UiccCard;
.super Ljava/lang/Object;
.source "UiccCard.java"


# static fields
.field protected static final DBG:Z = true

.field private static final EVENT_C2K_WP_CARD_TYPE_READY:I = 0x68

.field private static final EVENT_CARD_ADDED:I = 0xe

.field private static final EVENT_CARD_REMOVED:I = 0xd

.field private static final EVENT_CARRIER_PRIVILIGES_LOADED:I = 0x14

.field private static final EVENT_CDMA_CARD_IMSI_DONE:I = 0x66

.field private static final EVENT_CDMA_CARD_TYPE:I = 0x67

.field private static final EVENT_CLOSE_LOGICAL_CHANNEL_DONE:I = 0x10

.field private static final EVENT_GET_ATR_DONE:I = 0x64

.field private static final EVENT_OPEN_CHANNEL_WITH_SW_DONE:I = 0x65

.field private static final EVENT_OPEN_LOGICAL_CHANNEL_DONE:I = 0xf

.field private static final EVENT_SIM_IO_DONE:I = 0x13

.field private static final EVENT_TRANSMIT_APDU_BASIC_CHANNEL_DONE:I = 0x12

.field private static final EVENT_TRANSMIT_APDU_LOGICAL_CHANNEL_DONE:I = 0x11

.field protected static final LOG_TAG:Ljava/lang/String; = "UiccCard"

.field private static final OPERATOR_BRAND_OVERRIDE_PREFIX:Ljava/lang/String; = "operator_branding_"

.field private static final PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

.field static final UICCCARD_PROPERTY_RIL_UICC_TYPE:[Ljava/lang/String;


# instance fields
.field private mAbsentRegistrants:Landroid/os/RegistrantList;

.field private mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

.field private mCarrierPrivilegeRegistrants:Landroid/os/RegistrantList;

.field private mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

.field private mCatService:Lcom/android/internal/telephony/cat/CatService;

.field private mCdmaCsimImsi:Ljava/lang/String;

.field private mCdmaSubscriptionAppIndex:I

.field private mCdmaUsimImsi:Ljava/lang/String;

.field private mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mCsimRecords:Lcom/android/internal/telephony/uicc/IccRecords;

.field private mCsimRigisterDone:Z

.field private mGsmUmtsSubscriptionAppIndex:I

.field protected mHandler:Landroid/os/Handler;

.field private mIccType:Ljava/lang/String;

.field private mImsSubscriptionAppIndex:I

.field private mIsSvlte:Z

.field private mLastRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

.field private final mLock:Ljava/lang/Object;

.field private mPhoneId:I

.field private mSvlteCardType:Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;

.field private mSvlteCi:Lcom/android/internal/telephony/CommandsInterface;

.field private mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

.field private mUniversalPinState:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

.field private mUsimRecords:Lcom/android/internal/telephony/uicc/IccRecords;

.field private mUsimRigisterDone:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 121
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "gsm.ril.uicctype"

    aput-object v1, v0, v2

    const-string v1, "gsm.ril.uicctype.2"

    aput-object v1, v0, v3

    const-string v1, "gsm.ril.uicctype.3"

    aput-object v1, v0, v4

    const-string v1, "gsm.ril.uicctype.4"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/internal/telephony/uicc/UiccCard;->UICCCARD_PROPERTY_RIL_UICC_TYPE:[Ljava/lang/String;

    .line 131
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "gsm.ril.fulluicctype"

    aput-object v1, v0, v2

    const-string v1, "gsm.ril.fulluicctype.2"

    aput-object v1, v0, v3

    const-string v1, "gsm.ril.fulluicctype.3"

    aput-object v1, v0, v4

    const-string v1, "gsm.ril.fulluicctype.4"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/internal/telephony/uicc/UiccCard;->PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    .line 88
    iput v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mGsmUmtsSubscriptionAppIndex:I

    .line 89
    iput v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCdmaSubscriptionAppIndex:I

    .line 90
    iput v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mImsSubscriptionAppIndex:I

    .line 91
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/internal/telephony/uicc/UiccCardApplication;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 96
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLastRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 99
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mAbsentRegistrants:Landroid/os/RegistrantList;

    .line 100
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRegistrants:Landroid/os/RegistrantList;

    .line 128
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mIccType:Ljava/lang/String;

    .line 130
    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mIsSvlte:Z

    .line 138
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUsimRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 139
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCsimRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 140
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCdmaCsimImsi:Ljava/lang/String;

    .line 141
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCdmaUsimImsi:Ljava/lang/String;

    .line 142
    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCsimRigisterDone:Z

    .line 143
    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUsimRigisterDone:Z

    .line 145
    sget-object v0, Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;->UNKNOW_CARD:Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mSvlteCardType:Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;

    .line 501
    new-instance v0, Lcom/android/internal/telephony/uicc/UiccCard$2;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/uicc/UiccCard$2;-><init>(Lcom/android/internal/telephony/uicc/UiccCard;)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mHandler:Landroid/os/Handler;

    .line 162
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;)V
    .locals 4
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "ics"    # Lcom/android/internal/telephony/uicc/IccCardStatus;

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    .line 88
    iput v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mGsmUmtsSubscriptionAppIndex:I

    .line 89
    iput v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCdmaSubscriptionAppIndex:I

    .line 90
    iput v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mImsSubscriptionAppIndex:I

    .line 91
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/internal/telephony/uicc/UiccCardApplication;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 96
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLastRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 99
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mAbsentRegistrants:Landroid/os/RegistrantList;

    .line 100
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRegistrants:Landroid/os/RegistrantList;

    .line 128
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mIccType:Ljava/lang/String;

    .line 130
    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mIsSvlte:Z

    .line 138
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUsimRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 139
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCsimRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 140
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCdmaCsimImsi:Ljava/lang/String;

    .line 141
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCdmaUsimImsi:Ljava/lang/String;

    .line 142
    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCsimRigisterDone:Z

    .line 143
    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUsimRigisterDone:Z

    .line 145
    sget-object v0, Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;->UNKNOW_CARD:Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mSvlteCardType:Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;

    .line 501
    new-instance v0, Lcom/android/internal/telephony/uicc/UiccCard$2;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/uicc/UiccCard$2;-><init>(Lcom/android/internal/telephony/uicc/UiccCard;)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mHandler:Landroid/os/Handler;

    .line 149
    const-string v0, "Creating"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 150
    iget-object v0, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 151
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCard;->update(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;)V

    .line 152
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;I)V
    .locals 4
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "ics"    # Lcom/android/internal/telephony/uicc/IccCardStatus;
    .param p4, "phoneId"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    .line 88
    iput v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mGsmUmtsSubscriptionAppIndex:I

    .line 89
    iput v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCdmaSubscriptionAppIndex:I

    .line 90
    iput v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mImsSubscriptionAppIndex:I

    .line 91
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/internal/telephony/uicc/UiccCardApplication;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 96
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLastRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 99
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mAbsentRegistrants:Landroid/os/RegistrantList;

    .line 100
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRegistrants:Landroid/os/RegistrantList;

    .line 128
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mIccType:Ljava/lang/String;

    .line 130
    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mIsSvlte:Z

    .line 138
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUsimRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 139
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCsimRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 140
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCdmaCsimImsi:Ljava/lang/String;

    .line 141
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCdmaUsimImsi:Ljava/lang/String;

    .line 142
    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCsimRigisterDone:Z

    .line 143
    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUsimRigisterDone:Z

    .line 145
    sget-object v0, Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;->UNKNOW_CARD:Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mSvlteCardType:Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;

    .line 501
    new-instance v0, Lcom/android/internal/telephony/uicc/UiccCard$2;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/uicc/UiccCard$2;-><init>(Lcom/android/internal/telephony/uicc/UiccCard;)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mHandler:Landroid/os/Handler;

    .line 155
    iget-object v0, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 156
    iput p4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mPhoneId:I

    .line 157
    const-string v0, "Creating"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCard;->update(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;)V

    .line 159
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;ILcom/android/internal/telephony/CommandsInterface;)V
    .locals 4
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "ics"    # Lcom/android/internal/telephony/uicc/IccCardStatus;
    .param p4, "phoneId"    # I
    .param p5, "svlteCi"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v3, 0x0

    .line 1118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    .line 88
    iput v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mGsmUmtsSubscriptionAppIndex:I

    .line 89
    iput v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCdmaSubscriptionAppIndex:I

    .line 90
    iput v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mImsSubscriptionAppIndex:I

    .line 91
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/internal/telephony/uicc/UiccCardApplication;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 96
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLastRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 99
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mAbsentRegistrants:Landroid/os/RegistrantList;

    .line 100
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRegistrants:Landroid/os/RegistrantList;

    .line 128
    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mIccType:Ljava/lang/String;

    .line 130
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mIsSvlte:Z

    .line 138
    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUsimRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 139
    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCsimRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 140
    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCdmaCsimImsi:Ljava/lang/String;

    .line 141
    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCdmaUsimImsi:Ljava/lang/String;

    .line 142
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCsimRigisterDone:Z

    .line 143
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUsimRigisterDone:Z

    .line 145
    sget-object v0, Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;->UNKNOW_CARD:Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mSvlteCardType:Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;

    .line 501
    new-instance v0, Lcom/android/internal/telephony/uicc/UiccCard$2;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/uicc/UiccCard$2;-><init>(Lcom/android/internal/telephony/uicc/UiccCard;)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mHandler:Landroid/os/Handler;

    .line 1120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Creating phoneId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",svlteCi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 1123
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mIsSvlte:Z

    .line 1125
    iput-object p5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mSvlteCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 1126
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x68

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/UiccController;->registerForC2KWPCardTypeReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1127
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-interface {p2, v0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForCdmaCardType(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1130
    :cond_0
    iget-object v0, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 1131
    iput p4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mPhoneId:I

    .line 1132
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCard;->update(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;)V

    .line 1133
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;IZ)V
    .locals 4
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "ics"    # Lcom/android/internal/telephony/uicc/IccCardStatus;
    .param p4, "phoneId"    # I
    .param p5, "isUpdateSiminfo"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 908
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    .line 88
    iput v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mGsmUmtsSubscriptionAppIndex:I

    .line 89
    iput v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCdmaSubscriptionAppIndex:I

    .line 90
    iput v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mImsSubscriptionAppIndex:I

    .line 91
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/internal/telephony/uicc/UiccCardApplication;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 96
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLastRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 99
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mAbsentRegistrants:Landroid/os/RegistrantList;

    .line 100
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRegistrants:Landroid/os/RegistrantList;

    .line 128
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mIccType:Ljava/lang/String;

    .line 130
    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mIsSvlte:Z

    .line 138
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUsimRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 139
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCsimRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 140
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCdmaCsimImsi:Ljava/lang/String;

    .line 141
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCdmaUsimImsi:Ljava/lang/String;

    .line 142
    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCsimRigisterDone:Z

    .line 143
    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUsimRigisterDone:Z

    .line 145
    sget-object v0, Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;->UNKNOW_CARD:Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mSvlteCardType:Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;

    .line 501
    new-instance v0, Lcom/android/internal/telephony/uicc/UiccCard$2;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/uicc/UiccCard$2;-><init>(Lcom/android/internal/telephony/uicc/UiccCard;)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mHandler:Landroid/os/Handler;

    .line 909
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Creating simId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",isUpdateSiminfo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 910
    iget-object v0, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 911
    iput p4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mPhoneId:I

    .line 912
    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/android/internal/telephony/uicc/UiccCard;->update(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;Z)V

    .line 913
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/uicc/UiccCard;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccCard;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccCard;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/uicc/UiccCard;)Lcom/android/internal/telephony/uicc/IccRecords;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccCard;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUsimRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/internal/telephony/uicc/UiccCard;Lcom/android/internal/telephony/uicc/IccRecords;)Lcom/android/internal/telephony/uicc/IccRecords;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccCard;
    .param p1, "x1"    # Lcom/android/internal/telephony/uicc/IccRecords;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUsimRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/internal/telephony/uicc/UiccCard;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccCard;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCdmaUsimImsi:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccCard;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCdmaUsimImsi:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/internal/telephony/uicc/UiccCard;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccCard;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCdmaCsimImsi:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccCard;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCdmaCsimImsi:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/internal/telephony/uicc/UiccCard;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccCard;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccCard;->broadcastCdmaCardImsiIntent()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/internal/telephony/uicc/UiccCard;)Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccCard;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mSvlteCardType:Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/internal/telephony/uicc/UiccCard;Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;)Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccCard;
    .param p1, "x1"    # Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mSvlteCardType:Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/internal/telephony/uicc/UiccCard;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccCard;

    .prologue
    .line 79
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mPhoneId:I

    return v0
.end method

.method static synthetic access$1600(Lcom/android/internal/telephony/uicc/UiccCard;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccCard;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/uicc/UiccCard;->broadcastSvlteCardTypeChanged(II)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccCard;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCard;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/uicc/UiccCard;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccCard;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/uicc/UiccCard;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccCard;
    .param p1, "x1"    # Z

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCard;->onIccSwap(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/uicc/UiccCard;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccCard;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccCard;->onCarrierPriviligesLoadedMessage()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/uicc/UiccCard;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccCard;

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mIsSvlte:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/uicc/UiccCard;)[Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccCard;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/uicc/UiccCard;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccCard;

    .prologue
    .line 79
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mGsmUmtsSubscriptionAppIndex:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/uicc/UiccCard;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccCard;

    .prologue
    .line 79
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCdmaSubscriptionAppIndex:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/uicc/UiccCard;)Lcom/android/internal/telephony/uicc/IccRecords;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccCard;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCsimRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/internal/telephony/uicc/UiccCard;Lcom/android/internal/telephony/uicc/IccRecords;)Lcom/android/internal/telephony/uicc/IccRecords;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccCard;
    .param p1, "x1"    # Lcom/android/internal/telephony/uicc/IccRecords;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCsimRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    return-object p1
.end method

.method private broadcastCdmaCardImsiIntent()V
    .locals 3

    .prologue
    .line 1240
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CDMA_CARD_IMSI"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1241
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "cdma_card_csim_imsi"

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCdmaCsimImsi:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1242
    const-string v1, "cdma_card_usim_imsi"

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCdmaUsimImsi:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1243
    const-string v1, "svlte_mode_slot_id"

    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getActiveSvlteModeSlotId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1245
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Broadcasting intent broadcastCdmaCardImsiIntent mCdmaCsimImsi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCdmaCsimImsi:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCdmaUsimImsi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCdmaUsimImsi:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " getActiveSvlteModeSlotId() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getActiveSvlteModeSlotId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 1248
    const-string v1, "android.permission.READ_PHONE_STATE"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 1249
    return-void
.end method

.method private broadcastSvlteCardTypeChanged(II)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "cardType"    # I

    .prologue
    .line 958
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SVLTE_CARD_TYPE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 959
    .local v0, "i":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 960
    const-string v1, "slot"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 961
    const-string v1, "svlte_card_type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 962
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Broadcasting intent ACTION_SVLTE_CARD_TYPE, slotId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", cardType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 964
    const-string v1, "android.permission.READ_PHONE_STATE"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 966
    return-void
.end method

.method private checkIndex(ILcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)I
    .locals 3
    .param p1, "index"    # I
    .param p2, "expectedAppType"    # Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    .param p3, "altExpectedAppType"    # Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .prologue
    const/4 v0, -0x1

    .line 374
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v1, v1

    if-lt p1, v1, :cond_2

    .line 375
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "App index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is invalid since there are no applications"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccCard;->loge(Ljava/lang/String;)V

    move p1, v0

    .line 400
    .end local p1    # "index":I
    :cond_1
    :goto_0
    return p1

    .line 379
    .restart local p1    # "index":I
    :cond_2
    if-gez p1, :cond_3

    move p1, v0

    .line 381
    goto :goto_0

    .line 384
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v1, v1, p1

    if-nez v1, :cond_4

    .line 385
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "App index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is null since there are no applications"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccCard;->loge(Ljava/lang/String;)V

    move p1, v0

    .line 386
    goto :goto_0

    .line 389
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkIndex mUiccApplications["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "].getType()= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 392
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v1

    if-eq v1, p2, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v1

    if-eq v1, p3, :cond_1

    .line 394
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "App index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is invalid since it\'s not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccCard;->loge(Ljava/lang/String;)V

    move p1, v0

    .line 396
    goto/16 :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 838
    const-string v0, "UiccCard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (phoneId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 842
    const-string v0, "UiccCard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (phoneId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    return-void
.end method

.method private onCarrierPriviligesLoadedMessage()V
    .locals 2

    .prologue
    .line 592
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 593
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 594
    monitor-exit v1

    .line 595
    return-void

    .line 594
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onIccSwap(Z)V
    .locals 11
    .param p1, "isAdded"    # Z

    .prologue
    .line 447
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x112003e

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 450
    .local v2, "isHotSwapSupported":Z
    const/4 v2, 0x1

    .line 451
    if-eqz v2, :cond_0

    .line 452
    const-string v8, "onIccSwap: isHotSwapSupported is true, don\'t prompt for rebooting"

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 499
    :goto_0
    return-void

    .line 455
    :cond_0
    const-string v8, "onIccSwap: isHotSwapSupported is false, prompt for rebooting"

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 457
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 462
    const/4 v3, 0x0

    .line 468
    .local v3, "listener":Landroid/content/DialogInterface$OnClickListener;
    :try_start_0
    new-instance v4, Lcom/android/internal/telephony/uicc/UiccCard$1;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/uicc/UiccCard$1;-><init>(Lcom/android/internal/telephony/uicc/UiccCard;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 483
    .end local v3    # "listener":Landroid/content/DialogInterface$OnClickListener;
    .local v4, "listener":Landroid/content/DialogInterface$OnClickListener;
    :try_start_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    .line 485
    .local v6, "r":Landroid/content/res/Resources;
    if-eqz p1, :cond_1

    const v8, 0x10404e4

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 487
    .local v7, "title":Ljava/lang/String;
    :goto_1
    if-eqz p1, :cond_2

    const v8, 0x10404e5

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 489
    .local v5, "message":Ljava/lang/String;
    :goto_2
    const v8, 0x10404e6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 491
    .local v0, "buttonTxt":Ljava/lang/String;
    new-instance v8, Landroid/app/AlertDialog$Builder;

    iget-object v10, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mContext:Landroid/content/Context;

    invoke-direct {v8, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v0, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 496
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/16 v10, 0x7d3

    invoke-virtual {v8, v10}, Landroid/view/Window;->setType(I)V

    .line 497
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 498
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "buttonTxt":Ljava/lang/String;
    .end local v1    # "dialog":Landroid/app/AlertDialog;
    .end local v5    # "message":Ljava/lang/String;
    .end local v6    # "r":Landroid/content/res/Resources;
    .end local v7    # "title":Ljava/lang/String;
    :catchall_0
    move-exception v8

    move-object v3, v4

    .end local v4    # "listener":Landroid/content/DialogInterface$OnClickListener;
    .restart local v3    # "listener":Landroid/content/DialogInterface$OnClickListener;
    :goto_3
    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v8

    .line 485
    .end local v3    # "listener":Landroid/content/DialogInterface$OnClickListener;
    .restart local v4    # "listener":Landroid/content/DialogInterface$OnClickListener;
    .restart local v6    # "r":Landroid/content/res/Resources;
    :cond_1
    const v8, 0x10404e1

    :try_start_3
    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 487
    .restart local v7    # "title":Ljava/lang/String;
    :cond_2
    const v8, 0x10404e2

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v5

    goto :goto_2

    .line 498
    .end local v4    # "listener":Landroid/content/DialogInterface$OnClickListener;
    .end local v6    # "r":Landroid/content/res/Resources;
    .end local v7    # "title":Ljava/lang/String;
    .restart local v3    # "listener":Landroid/content/DialogInterface$OnClickListener;
    :catchall_1
    move-exception v8

    goto :goto_3
.end method

.method private sanitizeApplicationIndexes()V
    .locals 3

    .prologue
    .line 360
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mGsmUmtsSubscriptionAppIndex:I

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccCard;->checkIndex(ILcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mGsmUmtsSubscriptionAppIndex:I

    .line 362
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCdmaSubscriptionAppIndex:I

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccCard;->checkIndex(ILcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCdmaSubscriptionAppIndex:I

    .line 364
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mImsSubscriptionAppIndex:I

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_ISIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccCard;->checkIndex(ILcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mImsSubscriptionAppIndex:I

    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sanitizeApplicationIndexes  GSM index= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mGsmUmtsSubscriptionAppIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  CDMA index = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCdmaSubscriptionAppIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  IMS index = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mImsSubscriptionAppIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 371
    return-void
.end method


# virtual methods
.method public areCarrierPriviligeRulesLoaded()Z
    .locals 1

    .prologue
    .line 754
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->areCarrierPriviligeRulesLoaded()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected createAndUpdateCatService(Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 2
    .param p1, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v0, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    .line 332
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    if-nez v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mPhoneId:I

    invoke-static {p1, v0, p0, v1}, Lcom/android/internal/telephony/cat/CatService;->getInstance(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccCard;I)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    .line 343
    :goto_0
    return-void

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, v1, p0}, Lcom/android/internal/telephony/cat/CatService;->update(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccCard;)V

    goto :goto_0

    .line 338
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    if-eqz v0, :cond_2

    .line 339
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatService;->dispose()V

    .line 341
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    goto :goto_0
.end method

.method public dispose()V
    .locals 7

    .prologue
    .line 165
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 166
    :try_start_0
    const-string v4, "Disposing card"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 167
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/CatService;->dispose()V

    .line 168
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .local v1, "arr$":[Lcom/android/internal/telephony/uicc/UiccCardApplication;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v0, v1, v2

    .line 169
    .local v0, "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v0, :cond_1

    .line 170
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->dispose()V

    .line 168
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 173
    .end local v0    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_2
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    .line 174
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 175
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    .line 177
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mIsSvlte:Z

    if-eqz v4, :cond_3

    .line 178
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mSvlteCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mHandler:Landroid/os/Handler;

    invoke-interface {v4, v6}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForEusimReady(Landroid/os/Handler;)V

    .line 179
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mHandler:Landroid/os/Handler;

    invoke-interface {v4, v6}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCdmaCardType(Landroid/os/Handler;)V

    .line 182
    :cond_3
    monitor-exit v5

    .line 183
    return-void

    .line 182
    .end local v1    # "arr$":[Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 846
    const-string v6, "UiccCard:"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 847
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " mCi="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 848
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " mLastRadioState="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLastRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 849
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " mCatService="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 850
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " mAbsentRegistrants: size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mAbsentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v7}, Landroid/os/RegistrantList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 851
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mAbsentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v6}, Landroid/os/RegistrantList;->size()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 852
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mAbsentRegistrants["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mAbsentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v6, v2}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Registrant;

    invoke-virtual {v6}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 851
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 855
    :cond_0
    const/4 v2, 0x0

    :goto_1
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v6}, Landroid/os/RegistrantList;->size()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 856
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mCarrierPrivilegeRegistrants["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v6, v2}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Registrant;

    invoke-virtual {v6}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 855
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 859
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " mCardState="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 860
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " mUniversalPinState="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUniversalPinState:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 861
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " mGsmUmtsSubscriptionAppIndex="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mGsmUmtsSubscriptionAppIndex:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 862
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " mCdmaSubscriptionAppIndex="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCdmaSubscriptionAppIndex:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 863
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " mImsSubscriptionAppIndex="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mImsSubscriptionAppIndex:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 864
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " mImsSubscriptionAppIndex="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mImsSubscriptionAppIndex:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 865
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " mUiccApplications: length="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 866
    const/4 v2, 0x0

    :goto_2
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v6, v6

    if-ge v2, v6, :cond_3

    .line 867
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v6, v6, v2

    if-nez v6, :cond_2

    .line 868
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mUiccApplications["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 866
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 870
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mUiccApplications["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v7, v7, v2

    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v7, v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 874
    :cond_3
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 876
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .local v1, "arr$":[Lcom/android/internal/telephony/uicc/UiccCardApplication;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_4
    if-ge v3, v5, :cond_5

    aget-object v0, v1, v3

    .line 877
    .local v0, "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v0, :cond_4

    .line 878
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 879
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 876
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 883
    .end local v0    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_5
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v5, v1

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v5, :cond_7

    aget-object v0, v1, v3

    .line 884
    .restart local v0    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v0, :cond_6

    .line 885
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v4

    .line 886
    .local v4, "ir":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v4, :cond_6

    .line 887
    invoke-virtual {v4, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccRecords;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 888
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 883
    .end local v4    # "ir":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 893
    .end local v0    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_7
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    if-nez v6, :cond_8

    .line 894
    const-string v6, " mCarrierPrivilegeRules: null"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 899
    :goto_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " mCarrierPrivilegeRegistrants: size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v7}, Landroid/os/RegistrantList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 900
    const/4 v2, 0x0

    :goto_7
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v6}, Landroid/os/RegistrantList;->size()I

    move-result v6

    if-ge v2, v6, :cond_9

    .line 901
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mCarrierPrivilegeRegistrants["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v6, v2}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Registrant;

    invoke-virtual {v6}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 900
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 896
    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " mCarrierPrivilegeRules: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 897
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    invoke-virtual {v6, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_6

    .line 904
    :cond_9
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 905
    return-void
.end method

.method public exchangeSimIo(IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 11
    .param p1, "fileID"    # I
    .param p2, "command"    # I
    .param p3, "p1"    # I
    .param p4, "p2"    # I
    .param p5, "p3"    # I
    .param p6, "pathID"    # Ljava/lang/String;
    .param p7, "data"    # Ljava/lang/String;
    .param p8, "pin2"    # Ljava/lang/String;
    .param p9, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 917
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x13

    move-object/from16 v0, p9

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    move v2, p2

    move v3, p1

    move-object/from16 v4, p6

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-interface/range {v1 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 919
    return-void
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 351
    const-string v0, "UiccCard finalized"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 352
    return-void
.end method

.method public getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .locals 3
    .param p1, "family"    # I

    .prologue
    .line 621
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 622
    const/16 v0, 0x8

    .line 623
    .local v0, "index":I
    packed-switch p1, :pswitch_data_0

    .line 634
    :goto_0
    if-ltz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 635
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v1, v1, v0

    monitor-exit v2

    .line 637
    :goto_1
    return-object v1

    .line 625
    :pswitch_0
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mGsmUmtsSubscriptionAppIndex:I

    .line 626
    goto :goto_0

    .line 628
    :pswitch_1
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCdmaSubscriptionAppIndex:I

    .line 629
    goto :goto_0

    .line 631
    :pswitch_2
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mImsSubscriptionAppIndex:I

    goto :goto_0

    .line 637
    :cond_0
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_1

    .line 638
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 623
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getApplicationByType(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 657
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 658
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 659
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->ordinal()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 661
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v1, v1, v0

    monitor-exit v2

    .line 664
    :goto_1
    return-object v1

    .line 658
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 664
    :cond_1
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_1

    .line 665
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getApplicationIndex(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 642
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 643
    if-ltz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 644
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v0, v0, p1

    monitor-exit v1

    .line 646
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 647
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    .locals 2

    .prologue
    .line 609
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 610
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    monitor-exit v1

    return-object v0

    .line 611
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCarrierPackageNamesForIntent(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Ljava/util/List;
    .locals 1
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 790
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->getCarrierPackageNamesForIntent(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getCarrierPrivilegeStatus(Landroid/content/pm/PackageManager;Ljava/lang/String;)I
    .locals 1
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 771
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->getCarrierPrivilegeStatus(Landroid/content/pm/PackageManager;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getCarrierPrivilegeStatus(Landroid/content/pm/Signature;Ljava/lang/String;)I
    .locals 1
    .param p1, "signature"    # Landroid/content/pm/Signature;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 762
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->getCarrierPrivilegeStatus(Landroid/content/pm/Signature;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getCarrierPrivilegeStatusForCurrentTransaction(Landroid/content/pm/PackageManager;)I
    .locals 1
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 780
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->getCarrierPrivilegeStatusForCurrentTransaction(Landroid/content/pm/PackageManager;)I

    move-result v0

    goto :goto_0
.end method

.method public getCatService()Lcom/android/internal/telephony/cat/CatService;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    return-object v0
.end method

.method public getFullIccCardType()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 939
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccCard;->PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mPhoneId:I

    aget-object v0, v0, v1

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIccCardType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 933
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccCard;->UICCCARD_PROPERTY_RIL_UICC_TYPE:[Ljava/lang/String;

    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mPhoneId:I

    aget-object v0, v0, v1

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mIccType:Ljava/lang/String;

    .line 934
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getIccCardType(): iccType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mIccType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", slot "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 935
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mIccType:Ljava/lang/String;

    return-object v0
.end method

.method public getIccId()Ljava/lang/String;
    .locals 6

    .prologue
    .line 826
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .local v1, "arr$":[Lcom/android/internal/telephony/uicc/UiccCardApplication;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v0, v1, v2

    .line 827
    .local v0, "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v0, :cond_0

    .line 828
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v3

    .line 829
    .local v3, "ir":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/IccRecords;->getIccId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 830
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/IccRecords;->getIccId()Ljava/lang/String;

    move-result-object v5

    .line 834
    .end local v0    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v3    # "ir":Lcom/android/internal/telephony/uicc/IccRecords;
    :goto_1
    return-object v5

    .line 826
    .restart local v0    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 834
    .end local v0    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public getNumApplications()I
    .locals 5

    .prologue
    .line 737
    const/4 v2, 0x0

    .line 738
    .local v2, "count":I
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .local v1, "arr$":[Lcom/android/internal/telephony/uicc/UiccCardApplication;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v1, v3

    .line 739
    .local v0, "a":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v0, :cond_0

    .line 740
    add-int/lit8 v2, v2, 0x1

    .line 738
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 743
    .end local v0    # "a":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_1
    return v2
.end method

.method public getOperatorBrandOverride()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 816
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccCard;->getIccId()Ljava/lang/String;

    move-result-object v0

    .line 817
    .local v0, "iccId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 821
    :goto_0
    return-object v2

    .line 820
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 821
    .local v1, "sp":Landroid/content/SharedPreferences;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "operator_branding_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getPhoneId()I
    .locals 1

    .prologue
    .line 747
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mPhoneId:I

    return v0
.end method

.method public getSvlteCardType()I
    .locals 2

    .prologue
    .line 951
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSvlteCardType(): mSvlteCardType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mSvlteCardType:Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", slot "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 954
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mSvlteCardType:Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;->getValue()I

    move-result v0

    return v0
.end method

.method public getUniversalPinState()Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;
    .locals 2

    .prologue
    .line 615
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 616
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUniversalPinState:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    monitor-exit v1

    return-object v0

    .line 617
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public iccCloseLogicalChannel(ILandroid/os/Message;)V
    .locals 3
    .param p1, "channel"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 697
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x10

    invoke-virtual {v1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->iccCloseLogicalChannel(ILandroid/os/Message;)V

    .line 699
    return-void
.end method

.method public iccExchangeSimIO(IIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 11
    .param p1, "fileID"    # I
    .param p2, "command"    # I
    .param p3, "p1"    # I
    .param p4, "p2"    # I
    .param p5, "p3"    # I
    .param p6, "pathID"    # Ljava/lang/String;
    .param p7, "response"    # Landroid/os/Message;

    .prologue
    .line 724
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x13

    move-object/from16 v0, p7

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    move v2, p2

    move v3, p1

    move-object/from16 v4, p6

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    invoke-interface/range {v1 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 726
    return-void
.end method

.method public iccGetAtr(Landroid/os/Message;)V
    .locals 3
    .param p1, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 922
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->iccGetATR(Landroid/os/Message;)V

    .line 923
    return-void
.end method

.method public iccOpenChannelWithSw(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "AID"    # Ljava/lang/String;
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 970
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->iccOpenChannelWithSw(Ljava/lang/String;Landroid/os/Message;)V

    .line 972
    return-void
.end method

.method public iccOpenLogicalChannel(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "AID"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 689
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xf

    invoke-virtual {v1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->iccOpenLogicalChannel(Ljava/lang/String;Landroid/os/Message;)V

    .line 691
    return-void
.end method

.method public iccTransmitApduBasicChannel(IIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 8
    .param p1, "cla"    # I
    .param p2, "command"    # I
    .param p3, "p1"    # I
    .param p4, "p2"    # I
    .param p5, "p3"    # I
    .param p6, "data"    # Ljava/lang/String;
    .param p7, "response"    # Landroid/os/Message;

    .prologue
    .line 715
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x12

    invoke-virtual {v1, v2, p7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/CommandsInterface;->iccTransmitApduBasicChannel(IIIIILjava/lang/String;Landroid/os/Message;)V

    .line 717
    return-void
.end method

.method public iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 10
    .param p1, "channel"    # I
    .param p2, "cla"    # I
    .param p3, "command"    # I
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "data"    # Ljava/lang/String;
    .param p8, "response"    # Landroid/os/Message;

    .prologue
    .line 706
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x11

    move-object/from16 v0, p8

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-interface/range {v1 .. v9}, Lcom/android/internal/telephony/CommandsInterface;->iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;Landroid/os/Message;)V

    .line 708
    return-void
.end method

.method public isApplicationOnIcc(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Z
    .locals 3
    .param p1, "type"    # Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .prologue
    .line 598
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 599
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 600
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 601
    const/4 v1, 0x1

    monitor-exit v2

    .line 604
    :goto_1
    return v1

    .line 599
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 604
    :cond_1
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_1

    .line 605
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerCdmaCardImsiDone(I)V
    .locals 6
    .param p1, "index"    # I

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x66

    const/16 v3, 0x64

    const/4 v2, 0x1

    .line 1213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerCdmaCardImsiDone: index ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mCdmaSubscriptionAppIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCdmaSubscriptionAppIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mGsmUmtsSubscriptionAppIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mGsmUmtsSubscriptionAppIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 1216
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCsimRigisterDone:Z

    if-nez v0, :cond_1

    if-eq p1, v3, :cond_1

    .line 1217
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCdmaSubscriptionAppIndex:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCdmaSubscriptionAppIndex:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 1219
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCdmaSubscriptionAppIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCsimRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1220
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCsimRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v0, :cond_0

    .line 1221
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCsimRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForImsiReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1222
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCsimRigisterDone:Z

    .line 1223
    const-string v0, "registerCdmaCardImsiDone: index != UiccController.INDEX_SVLTE"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 1237
    :cond_0
    :goto_0
    return-void

    .line 1226
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUsimRigisterDone:Z

    if-nez v0, :cond_0

    if-ne p1, v3, :cond_0

    .line 1227
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mGsmUmtsSubscriptionAppIndex:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mGsmUmtsSubscriptionAppIndex:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 1229
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mGsmUmtsSubscriptionAppIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUsimRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1230
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUsimRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v0, :cond_0

    .line 1231
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUsimRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForImsiReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1232
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUsimRigisterDone:Z

    .line 1233
    const-string v0, "registerCdmaCardImsiDone: index == UiccController.INDEX_SVLTE"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public registerForAbsent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 407
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 408
    :try_start_0
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 410
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mAbsentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 412
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v1, v3, :cond_0

    .line 413
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 415
    :cond_0
    monitor-exit v2

    .line 416
    return-void

    .line 415
    .end local v0    # "r":Landroid/os/Registrant;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerForCarrierPrivilegeRulesLoaded(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 428
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 429
    :try_start_0
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 431
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 433
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccCard;->areCarrierPriviligeRulesLoaded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 434
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 436
    :cond_0
    monitor-exit v2

    .line 437
    return-void

    .line 436
    .end local v0    # "r":Landroid/os/Registrant;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public resetAppWithAid(Ljava/lang/String;)Z
    .locals 4
    .param p1, "aid"    # Ljava/lang/String;

    .prologue
    .line 672
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 673
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 674
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getAid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 676
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->dispose()V

    .line 677
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/4 v3, 0x0

    aput-object v3, v1, v0

    .line 678
    const/4 v1, 0x1

    monitor-exit v2

    .line 681
    :goto_1
    return v1

    .line 673
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 681
    :cond_1
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_1

    .line 682
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public sendEnvelopeWithStatus(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 732
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->sendEnvelopeWithStatus(Ljava/lang/String;Landroid/os/Message;)V

    .line 733
    return-void
.end method

.method public setOperatorBrandOverride(Ljava/lang/String;)Z
    .locals 5
    .param p1, "brand"    # Ljava/lang/String;

    .prologue
    .line 796
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setOperatorBrandOverride: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 797
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current iccId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccCard;->getIccId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 799
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccCard;->getIccId()Ljava/lang/String;

    move-result-object v0

    .line 800
    .local v0, "iccId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 801
    const/4 v3, 0x0

    .line 812
    :goto_0
    return v3

    .line 804
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 806
    .local v2, "spEditor":Landroid/content/SharedPreferences$Editor;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "operator_branding_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 807
    .local v1, "key":Ljava/lang/String;
    if-nez p1, :cond_1

    .line 808
    invoke-interface {v2, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 812
    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    .line 810
    :cond_1
    invoke-interface {v2, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1
.end method

.method public unregisterForAbsent(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 419
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 420
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mAbsentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 421
    monitor-exit v1

    .line 422
    return-void

    .line 421
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterForCarrierPrivilegeRulesLoaded(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 440
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 441
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 442
    monitor-exit v1

    .line 443
    return-void

    .line 442
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public update(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;)V
    .locals 11
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "ics"    # Lcom/android/internal/telephony/uicc/IccCardStatus;

    .prologue
    .line 186
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 187
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 188
    .local v2, "oldState":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    iget-object v5, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    iput-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 189
    iget-object v5, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mUniversalPinState:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    iput-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUniversalPinState:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 192
    iget v5, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mImsSubscriptionAppIndex:I

    iput v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mImsSubscriptionAppIndex:I

    .line 193
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mContext:Landroid/content/Context;

    .line 194
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 197
    const/4 v4, -0x1

    .line 198
    .local v4, "targetIndex":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "update mIsSvlte="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v7, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mIsSvlte:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 199
    iget-boolean v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mIsSvlte:Z

    if-eqz v5, :cond_9

    .line 200
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 202
    .local v0, "appType":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    array-length v5, v5

    if-ge v1, v5, :cond_1

    .line 203
    iget-object v5, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    aget-object v5, v5, v1

    if-eqz v5, :cond_5

    iget-object v5, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    aget-object v5, v5, v1

    iget-object v5, v5, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    sget-object v7, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-eq v5, v7, :cond_0

    iget-object v5, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    aget-object v5, v5, v1

    iget-object v5, v5, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    sget-object v7, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-eq v5, v7, :cond_0

    iget-object v5, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    aget-object v5, v5, v1

    iget-object v5, v5, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    sget-object v7, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-eq v5, v7, :cond_0

    iget-object v5, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    aget-object v5, v5, v1

    iget-object v5, v5, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    sget-object v7, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v5, v7, :cond_5

    .line 212
    :cond_0
    iget-object v5, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    aget-object v5, v5, v1

    iget-object v0, v5, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 216
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "update appType="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 217
    sget-object v5, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-eq v0, v5, :cond_2

    sget-object v5, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v0, v5, :cond_6

    .line 219
    :cond_2
    iget v5, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCdmaSubscriptionAppIndex:I

    iput v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCdmaSubscriptionAppIndex:I

    .line 220
    iget v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCdmaSubscriptionAppIndex:I

    .line 222
    iget v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mGsmUmtsSubscriptionAppIndex:I

    if-ne v4, v5, :cond_3

    .line 223
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mGsmUmtsSubscriptionAppIndex:I

    .line 224
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "reset mGsmUmtsSubscriptionAppIndex to "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mGsmUmtsSubscriptionAppIndex:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 245
    .end local v0    # "appType":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    .end local v1    # "i":I
    :cond_3
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "update targetIndex="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "  mGsmUmtsSubscriptionAppIndex="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mGsmUmtsSubscriptionAppIndex:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "  mCdmaSubscriptionAppIndex="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCdmaSubscriptionAppIndex:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "  mUiccApplications.length="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v7, v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 251
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    array-length v7, v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " applications"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 252
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v5, v5

    if-ge v1, v5, :cond_f

    .line 253
    if-eq v4, v1, :cond_a

    if-ltz v4, :cond_a

    .line 252
    :cond_4
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 202
    .restart local v0    # "appType":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 227
    :cond_6
    sget-object v5, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-eq v0, v5, :cond_7

    sget-object v5, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v0, v5, :cond_8

    .line 229
    :cond_7
    iget v5, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mGsmUmtsSubscriptionAppIndex:I

    iput v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mGsmUmtsSubscriptionAppIndex:I

    .line 230
    iget v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mGsmUmtsSubscriptionAppIndex:I

    .line 232
    iget v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCdmaSubscriptionAppIndex:I

    if-ne v4, v5, :cond_3

    .line 233
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCdmaSubscriptionAppIndex:I

    .line 234
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "reset mCdmaSubscriptionAppIndex to "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCdmaSubscriptionAppIndex:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 326
    .end local v0    # "appType":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    .end local v1    # "i":I
    .end local v2    # "oldState":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    .end local v4    # "targetIndex":I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 238
    .restart local v0    # "appType":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    .restart local v1    # "i":I
    .restart local v2    # "oldState":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    .restart local v4    # "targetIndex":I
    :cond_8
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "update, but appType: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/UiccCard;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 241
    .end local v0    # "appType":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    .end local v1    # "i":I
    :cond_9
    iget v5, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mGsmUmtsSubscriptionAppIndex:I

    iput v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mGsmUmtsSubscriptionAppIndex:I

    .line 242
    iget v5, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCdmaSubscriptionAppIndex:I

    iput v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCdmaSubscriptionAppIndex:I

    goto/16 :goto_1

    .line 256
    .restart local v1    # "i":I
    :cond_a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mUiccApplications[i]="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v7, v7, v1

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 257
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v5, v5, v1

    if-nez v5, :cond_c

    .line 259
    iget-object v5, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    array-length v5, v5

    if-ge v1, v5, :cond_4

    .line 260
    iget-boolean v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mIsSvlte:Z

    if-eqz v5, :cond_b

    iget v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mGsmUmtsSubscriptionAppIndex:I

    if-ne v4, v5, :cond_b

    .line 261
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    new-instance v7, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    iget-object v8, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    aget-object v8, v8, v1

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mSvlteCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v7, p0, v8, v9, v10}, Lcom/android/internal/telephony/uicc/UiccCardApplication;-><init>(Lcom/android/internal/telephony/uicc/UiccCard;Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    aput-object v7, v5, v1

    .line 267
    :goto_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "new mUiccApplications["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "]"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 264
    :cond_b
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    new-instance v7, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    iget-object v8, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    aget-object v8, v8, v1

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v7, p0, v8, v9, v10}, Lcom/android/internal/telephony/uicc/UiccCardApplication;-><init>(Lcom/android/internal/telephony/uicc/UiccCard;Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    aput-object v7, v5, v1

    goto :goto_4

    .line 269
    :cond_c
    iget-object v5, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    array-length v5, v5

    if-lt v1, v5, :cond_d

    .line 271
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v5, v5, v1

    if-eqz v5, :cond_4

    .line 272
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->dispose()V

    .line 273
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/4 v7, 0x0

    aput-object v7, v5, v1

    .line 274
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dispose mUiccApplications["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "]"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 278
    :cond_d
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v5, v5, v1

    if-eqz v5, :cond_4

    .line 279
    iget-boolean v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mIsSvlte:Z

    if-eqz v5, :cond_e

    iget v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mGsmUmtsSubscriptionAppIndex:I

    if-ne v4, v5, :cond_e

    .line 280
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v5, v5, v1

    iget-object v7, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    aget-object v7, v7, v1

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mSvlteCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v5, v7, v8, v9}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->update(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 284
    :goto_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "update mUiccApplications["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "]"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 282
    :cond_e
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v5, v5, v1

    iget-object v7, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    aget-object v7, v7, v1

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v5, v7, v8, v9}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->update(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    goto :goto_5

    .line 288
    :cond_f
    iget-boolean v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mIsSvlte:Z

    if-eqz v5, :cond_13

    .line 289
    iget v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mGsmUmtsSubscriptionAppIndex:I

    if-ne v4, v5, :cond_10

    .line 290
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mSvlteCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/UiccCard;->createAndUpdateCatService(Lcom/android/internal/telephony/CommandsInterface;)V

    .line 299
    :cond_10
    :goto_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Before privilege rules: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 300
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    if-nez v5, :cond_14

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    sget-object v7, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v5, v7, :cond_14

    .line 301
    new-instance v5, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x14

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-direct {v5, p0, v7}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;-><init>(Lcom/android/internal/telephony/uicc/UiccCard;Landroid/os/Message;)V

    iput-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    .line 307
    :cond_11
    :goto_7
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccCard;->sanitizeApplicationIndexes()V

    .line 309
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v3

    .line 310
    .local v3, "radioState":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "update: radioState="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " mLastRadioState="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLastRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 313
    sget-object v5, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_ON:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v3, v5, :cond_12

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLastRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    sget-object v7, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_ON:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v5, v7, :cond_12

    .line 314
    sget-object v5, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-eq v2, v5, :cond_15

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    sget-object v7, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v5, v7, :cond_15

    .line 316
    const-string v5, "update: notify card removed"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 317
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mAbsentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v5}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 318
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mHandler:Landroid/os/Handler;

    const/16 v8, 0xd

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 325
    :cond_12
    :goto_8
    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLastRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 326
    monitor-exit v6

    .line 327
    return-void

    .line 295
    .end local v3    # "radioState":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :cond_13
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/UiccCard;->createAndUpdateCatService(Lcom/android/internal/telephony/CommandsInterface;)V

    goto/16 :goto_6

    .line 303
    :cond_14
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    if-eqz v5, :cond_11

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    sget-object v7, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-eq v5, v7, :cond_11

    .line 304
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    goto :goto_7

    .line 319
    .restart local v3    # "radioState":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :cond_15
    sget-object v5, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v2, v5, :cond_12

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    sget-object v7, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-eq v5, v7, :cond_12

    .line 321
    const-string v5, "update: notify card added"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 322
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mHandler:Landroid/os/Handler;

    const/16 v8, 0xe

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_8
.end method

.method public update(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;Z)V
    .locals 11
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "ics"    # Lcom/android/internal/telephony/uicc/IccCardStatus;
    .param p4, "isUpdateSimInfo"    # Z

    .prologue
    .line 975
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 976
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 977
    .local v2, "oldState":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    iget-object v5, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    iput-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 978
    iget-object v5, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mUniversalPinState:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    iput-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUniversalPinState:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 981
    iget v5, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mImsSubscriptionAppIndex:I

    iput v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mImsSubscriptionAppIndex:I

    .line 982
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mContext:Landroid/content/Context;

    .line 983
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 986
    const/4 v4, -0x1

    .line 987
    .local v4, "targetIndex":I
    iget-boolean v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mIsSvlte:Z

    if-eqz v5, :cond_9

    .line 988
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 990
    .local v0, "appType":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    array-length v5, v5

    if-ge v1, v5, :cond_1

    .line 991
    iget-object v5, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    aget-object v5, v5, v1

    if-eqz v5, :cond_5

    iget-object v5, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    aget-object v5, v5, v1

    iget-object v5, v5, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    sget-object v7, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-eq v5, v7, :cond_0

    iget-object v5, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    aget-object v5, v5, v1

    iget-object v5, v5, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    sget-object v7, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-eq v5, v7, :cond_0

    iget-object v5, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    aget-object v5, v5, v1

    iget-object v5, v5, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    sget-object v7, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-eq v5, v7, :cond_0

    iget-object v5, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    aget-object v5, v5, v1

    iget-object v5, v5, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    sget-object v7, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v5, v7, :cond_5

    .line 1000
    :cond_0
    iget-object v5, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    aget-object v5, v5, v1

    iget-object v0, v5, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 1004
    :cond_1
    sget-object v5, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-eq v0, v5, :cond_2

    sget-object v5, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v0, v5, :cond_6

    .line 1006
    :cond_2
    iget v5, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCdmaSubscriptionAppIndex:I

    iput v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCdmaSubscriptionAppIndex:I

    .line 1007
    iget v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCdmaSubscriptionAppIndex:I

    .line 1009
    iget v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mGsmUmtsSubscriptionAppIndex:I

    if-ne v4, v5, :cond_3

    .line 1010
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mGsmUmtsSubscriptionAppIndex:I

    .line 1011
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "reset mGsmUmtsSubscriptionAppIndex to "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mGsmUmtsSubscriptionAppIndex:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 1032
    .end local v0    # "appType":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    .end local v1    # "i":I
    :cond_3
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "update targetIndex="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "  mGsmUmtsSubscriptionAppIndex="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mGsmUmtsSubscriptionAppIndex:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "  mCdmaSubscriptionAppIndex="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCdmaSubscriptionAppIndex:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "  mUiccApplications.length="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v7, v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 1038
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    array-length v7, v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " applications"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 1039
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v5, v5

    if-ge v1, v5, :cond_f

    .line 1040
    if-eq v4, v1, :cond_a

    if-ltz v4, :cond_a

    .line 1039
    :cond_4
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 990
    .restart local v0    # "appType":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1014
    :cond_6
    sget-object v5, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-eq v0, v5, :cond_7

    sget-object v5, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v0, v5, :cond_8

    .line 1016
    :cond_7
    iget v5, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mGsmUmtsSubscriptionAppIndex:I

    iput v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mGsmUmtsSubscriptionAppIndex:I

    .line 1017
    iget v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mGsmUmtsSubscriptionAppIndex:I

    .line 1019
    iget v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCdmaSubscriptionAppIndex:I

    if-ne v4, v5, :cond_3

    .line 1020
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCdmaSubscriptionAppIndex:I

    .line 1021
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "reset mCdmaSubscriptionAppIndex to "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCdmaSubscriptionAppIndex:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1105
    .end local v0    # "appType":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    .end local v1    # "i":I
    .end local v2    # "oldState":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    .end local v4    # "targetIndex":I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 1025
    .restart local v0    # "appType":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    .restart local v1    # "i":I
    .restart local v2    # "oldState":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    .restart local v4    # "targetIndex":I
    :cond_8
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "update, but appType: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/UiccCard;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1028
    .end local v0    # "appType":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    .end local v1    # "i":I
    :cond_9
    iget v5, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mGsmUmtsSubscriptionAppIndex:I

    iput v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mGsmUmtsSubscriptionAppIndex:I

    .line 1029
    iget v5, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCdmaSubscriptionAppIndex:I

    iput v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCdmaSubscriptionAppIndex:I

    goto/16 :goto_1

    .line 1043
    .restart local v1    # "i":I
    :cond_a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mUiccApplications[i]="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v7, v7, v1

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 1044
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v5, v5, v1

    if-nez v5, :cond_c

    .line 1046
    iget-object v5, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    array-length v5, v5

    if-ge v1, v5, :cond_4

    .line 1047
    iget-boolean v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mIsSvlte:Z

    if-eqz v5, :cond_b

    iget v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mGsmUmtsSubscriptionAppIndex:I

    if-ne v4, v5, :cond_b

    .line 1048
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    new-instance v7, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    iget-object v8, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    aget-object v8, v8, v1

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mSvlteCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v7, p0, v8, v9, v10}, Lcom/android/internal/telephony/uicc/UiccCardApplication;-><init>(Lcom/android/internal/telephony/uicc/UiccCard;Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    aput-object v7, v5, v1

    .line 1054
    :goto_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "new mUiccApplications["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "]"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1051
    :cond_b
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    new-instance v7, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    iget-object v8, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    aget-object v8, v8, v1

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v7, p0, v8, v9, v10}, Lcom/android/internal/telephony/uicc/UiccCardApplication;-><init>(Lcom/android/internal/telephony/uicc/UiccCard;Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    aput-object v7, v5, v1

    goto :goto_4

    .line 1056
    :cond_c
    iget-object v5, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    array-length v5, v5

    if-lt v1, v5, :cond_d

    .line 1058
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v5, v5, v1

    if-eqz v5, :cond_4

    .line 1059
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->dispose()V

    .line 1060
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/4 v7, 0x0

    aput-object v7, v5, v1

    .line 1061
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dispose mUiccApplications["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "]"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1065
    :cond_d
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v5, v5, v1

    if-eqz v5, :cond_4

    .line 1066
    iget-boolean v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mIsSvlte:Z

    if-eqz v5, :cond_e

    iget v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mGsmUmtsSubscriptionAppIndex:I

    if-ne v4, v5, :cond_e

    .line 1067
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v5, v5, v1

    iget-object v7, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    aget-object v7, v7, v1

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mSvlteCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v5, v7, v8, v9}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->update(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 1071
    :goto_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "update mUiccApplications["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "]"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1069
    :cond_e
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v5, v5, v1

    iget-object v7, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    aget-object v7, v7, v1

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v5, v7, v8, v9}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->update(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    goto :goto_5

    .line 1075
    :cond_f
    iget-boolean v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mIsSvlte:Z

    if-eqz v5, :cond_12

    .line 1076
    iget v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mGsmUmtsSubscriptionAppIndex:I

    if-ne v4, v5, :cond_10

    .line 1077
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mSvlteCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/UiccCard;->createAndUpdateCatService(Lcom/android/internal/telephony/CommandsInterface;)V

    .line 1084
    :cond_10
    :goto_6
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccCard;->sanitizeApplicationIndexes()V

    .line 1086
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v3

    .line 1087
    .local v3, "radioState":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "update: radioState="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " mLastRadioState="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLastRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "isUpdateSimInfo= "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 1090
    if-eqz p4, :cond_11

    .line 1091
    sget-object v5, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_ON:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v3, v5, :cond_11

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLastRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    sget-object v7, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_ON:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v5, v7, :cond_11

    .line 1092
    sget-object v5, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-eq v2, v5, :cond_13

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    sget-object v7, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v5, v7, :cond_13

    .line 1094
    const-string v5, "update: notify card removed"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 1095
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mAbsentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v5}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1096
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mHandler:Landroid/os/Handler;

    const/16 v8, 0xd

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1104
    :cond_11
    :goto_7
    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLastRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 1105
    monitor-exit v6

    .line 1106
    return-void

    .line 1082
    .end local v3    # "radioState":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :cond_12
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/UiccCard;->createAndUpdateCatService(Lcom/android/internal/telephony/CommandsInterface;)V

    goto :goto_6

    .line 1097
    .restart local v3    # "radioState":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :cond_13
    sget-object v5, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v2, v5, :cond_11

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    sget-object v7, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-eq v5, v7, :cond_11

    .line 1099
    const-string v5, "update: notify card added"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 1100
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mHandler:Landroid/os/Handler;

    const/16 v8, 0xe

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_7
.end method
