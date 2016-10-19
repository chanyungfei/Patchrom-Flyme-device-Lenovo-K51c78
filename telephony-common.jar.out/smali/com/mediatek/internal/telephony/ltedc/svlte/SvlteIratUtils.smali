.class public Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteIratUtils;
.super Ljava/lang/Object;
.source "SvlteIratUtils.java"


# static fields
.field public static final ACTION_IRAT_PS_TYPE_CHANGED:Ljava/lang/String; = "com.mediatek.action.irat.ps.type.changed"

.field public static final APP_FAM_UNKNOWN:I = 0x0

.field public static final BASE_IRAT_DATA_CONNECTION:I = 0x45000

.field public static final EVENT_IRAT_DATA_RAT_CHANGED:I = 0x45000

.field public static final EVENT_LTE_RECORDS_LOADED:I = 0x45001

.field public static final EVENT_RETRY_SETUP_DATA_FOR_IRAT:I = 0x45002

.field public static final EXTRA_PS_TYPE:Ljava/lang/String; = "extra_ps_type"

.field public static final PHONE_IN_CDMA_MODE:I = 0x2

.field public static final PHONE_IN_GSM_MODE:I = 0x1

.field public static final PHONE_IN_SVLTE_MODE:I = 0x3

.field public static final PS_SERVICE_ON_CDMA:I = 0x0

.field public static final PS_SERVICE_ON_LTE:I = 0x1

.field public static final PS_SERVICE_UNKNOWN:I = -0x1

.field public static final RAT_GROUP_3GPP:I = 0x1

.field public static final RAT_GROUP_3GPP2:I = 0x2

.field private static sSvltePhoneProxy:Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteIratUtils;->sSvltePhoneProxy:Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIratSupportSlotId()I
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public static getRadioGroupByRat(I)I
    .locals 1
    .param p0, "radioTech"    # I

    .prologue
    .line 116
    const/4 v0, 0x4

    if-lt p0, v0, :cond_0

    const/16 v0, 0x8

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0xc

    if-lt p0, v0, :cond_2

    const/16 v0, 0xd

    if-gt p0, v0, :cond_2

    .line 120
    :cond_1
    const/4 v0, 0x2

    .line 122
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getSvltePhoneProxy()Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;
    .locals 1

    .prologue
    .line 131
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteIratUtils;->sSvltePhoneProxy:Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    return-object v0
.end method

.method public static getUiccFamilyByRat(I)I
    .locals 1
    .param p0, "radioTech"    # I

    .prologue
    .line 96
    if-nez p0, :cond_0

    .line 97
    const/4 v0, 0x0

    .line 105
    :goto_0
    return v0

    .line 100
    :cond_0
    const/4 v0, 0x4

    if-lt p0, v0, :cond_1

    const/16 v0, 0x8

    if-le p0, v0, :cond_2

    :cond_1
    const/16 v0, 0xc

    if-ne p0, v0, :cond_3

    .line 103
    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    .line 105
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isIratSupport()Z
    .locals 1

    .prologue
    .line 50
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaIratSupport()Z

    move-result v0

    return v0
.end method

.method public static isIratSupportPhone(I)Z
    .locals 1
    .param p0, "phoneId"    # I

    .prologue
    .line 78
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteIratUtils;->isIratSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p0, :cond_0

    sget v0, Landroid/telephony/SubscriptionManager;->LTE_DC_PHONE_ID:I

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isIratSupportPhone(Lcom/android/internal/telephony/Phone;)Z
    .locals 2
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 68
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    .line 69
    .local v0, "phoneId":I
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteIratUtils;->isIratSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteIratUtils;->isIratSupportPhone(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isMdIratSupport()Z
    .locals 1

    .prologue
    .line 58
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaMdIratSupport()Z

    move-result v0

    return v0
.end method

.method public static setSvltePhoneProxy(Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;)V
    .locals 0
    .param p0, "svltePhoneProxy"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    .prologue
    .line 140
    sput-object p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteIratUtils;->sSvltePhoneProxy:Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    .line 141
    return-void
.end method
