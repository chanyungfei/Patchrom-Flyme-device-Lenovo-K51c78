.class public Lcom/android/internal/telephony/PhoneConstants;
.super Ljava/lang/Object;
.source "PhoneConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/PhoneConstants$CardUnavailableReason;,
        Lcom/android/internal/telephony/PhoneConstants$DataState;,
        Lcom/android/internal/telephony/PhoneConstants$State;
    }
.end annotation


# static fields
.field public static final APN_ALREADY_ACTIVE:I = 0x0

.field public static final APN_ALREADY_INACTIVE:I = 0x4

.field public static final APN_REQUEST_FAILED:I = 0x3

.field public static final APN_REQUEST_STARTED:I = 0x1

.field public static final APN_TYPE_ALL:Ljava/lang/String; = "*"

.field public static final APN_TYPE_CBS:Ljava/lang/String; = "cbs"

.field public static final APN_TYPE_CMMAIL:Ljava/lang/String; = "cmmail"

.field public static final APN_TYPE_DEFAULT:Ljava/lang/String; = "default"

.field public static final APN_TYPE_DM:Ljava/lang/String; = "dm"

.field public static final APN_TYPE_DUN:Ljava/lang/String; = "dun"

.field public static final APN_TYPE_EMERGENCY:Ljava/lang/String; = "emergency"

.field public static final APN_TYPE_FOTA:Ljava/lang/String; = "fota"

.field public static final APN_TYPE_HIPRI:Ljava/lang/String; = "hipri"

.field public static final APN_TYPE_IA:Ljava/lang/String; = "ia"

.field public static final APN_TYPE_IMS:Ljava/lang/String; = "ims"

.field public static final APN_TYPE_MMS:Ljava/lang/String; = "mms"

.field public static final APN_TYPE_NET:Ljava/lang/String; = "net"

.field public static final APN_TYPE_NOT_AVAILABLE:I = 0x2

.field public static final APN_TYPE_RCS:Ljava/lang/String; = "rcs"

.field public static final APN_TYPE_RCSE:Ljava/lang/String; = "rcse"

.field public static final APN_TYPE_SUPL:Ljava/lang/String; = "supl"

.field public static final APN_TYPE_TETHERING:Ljava/lang/String; = "tethering"

.field public static final APN_TYPE_WAP:Ljava/lang/String; = "wap"

.field public static final APN_TYPE_XCAP:Ljava/lang/String; = "xcap"

.field public static final APPTYPE_CSIM:I = 0x4

.field public static final APPTYPE_ISIM:I = 0x5

.field public static final APPTYPE_RUIM:I = 0x3

.field public static final APPTYPE_SIM:I = 0x1

.field public static final APPTYPE_UNKNOWN:I = 0x0

.field public static final APPTYPE_USIM:I = 0x2

.field public static final CAPABILITY_3G:I = 0x1

.field public static final CFU_QUERY_TYPE_DEF_VALUE:Ljava/lang/String; = "0"

.field public static final CFU_QUERY_TYPE_PROP:Ljava/lang/String; = "persist.radio.cfu.querytype"

.field public static final DATA_APN_KEY:Ljava/lang/String; = "apn"

.field public static final DATA_APN_TYPE_KEY:Ljava/lang/String; = "apnType"

.field public static final DATA_FAILURE_CAUSE_KEY:Ljava/lang/String; = "failCause"

.field public static final DATA_IFACE_NAME_KEY:Ljava/lang/String; = "iface"

.field public static final DATA_IMS_CHANGED_KEY:Ljava/lang/String; = "imsDataChanged"

.field public static final DATA_LINK_PROPERTIES_KEY:Ljava/lang/String; = "linkProperties"

.field public static final DATA_NETWORK_CAPABILITIES_KEY:Ljava/lang/String; = "networkCapabilities"

.field public static final DATA_NETWORK_ROAMING_KEY:Ljava/lang/String; = "networkRoaming"

.field public static final DATA_NETWORK_TYPE_KEY:Ljava/lang/String; = "networkType"

.field public static final DEFAULT_CARD_INDEX:I = 0x0

.field public static final EVENT_SUBSCRIPTION_ACTIVATED:I = 0x1f4

.field public static final EVENT_SUBSCRIPTION_DEACTIVATED:I = 0x1f5

.field public static final FAILURE_REASON_KEY:Ljava/lang/String; = "reason"

.field public static final IMS_STATE_DISABLED:I = 0x0

.field public static final IMS_STATE_DISABLING:I = 0x3

.field public static final IMS_STATE_ENABLE:I = 0x1

.field public static final IMS_STATE_ENABLING:I = 0x2

.field public static final LTE_ON_CDMA_FALSE:I = 0x0

.field public static final LTE_ON_CDMA_TRUE:I = 0x1

.field public static final LTE_ON_CDMA_UNKNOWN:I = -0x1

.field public static final MAX_PHONE_COUNT_DUAL_SIM:I = 0x2

.field public static final MAX_PHONE_COUNT_SINGLE_SIM:I = 0x1

.field public static final MAX_PHONE_COUNT_TRI_SIM:I = 0x3

.field public static final MISC_FEATURE_CONFIG_MASK_AUTO_SWITCH_RAT:I = 0x1

.field public static final MVNO_TYPE_GID:Ljava/lang/String; = "gid"

.field public static final MVNO_TYPE_IMSI:Ljava/lang/String; = "imsi"

.field public static final MVNO_TYPE_NONE:Ljava/lang/String; = ""

.field public static final MVNO_TYPE_PNN:Ljava/lang/String; = "pnn"

.field public static final MVNO_TYPE_SPN:Ljava/lang/String; = "spn"

.field public static final NETWORK_UNAVAILABLE_KEY:Ljava/lang/String; = "networkUnvailable"

.field public static final OLD_PHONE_KEY:Ljava/lang/String; = "oldphone"

.field public static final OLD_SLOT_KEY:Ljava/lang/String; = "oldslot"

.field public static final OLD_SUBSCRIPTION_KEY:Ljava/lang/String; = "oldsubscription"

.field public static final PHONE_IN_ECM_STATE:Ljava/lang/String; = "phoneinECMState"

.field public static final PHONE_KEY:Ljava/lang/String; = "phone"

.field public static final PHONE_NAME_KEY:Ljava/lang/String; = "phoneName"

.field public static final PHONE_TYPE_CDMA:I = 0x2

.field public static final PHONE_TYPE_GSM:I = 0x1

.field public static final PHONE_TYPE_IMS:I = 0x5

.field public static final PHONE_TYPE_KEY:Ljava/lang/String; = "phoneType"

.field public static final PHONE_TYPE_NONE:I = 0x0

.field public static final PHONE_TYPE_SIP:I = 0x3

.field public static final PHONE_TYPE_THIRD_PARTY:I = 0x4

.field public static final PIN_GENERAL_FAILURE:I = 0x2

.field public static final PIN_PASSWORD_INCORRECT:I = 0x1

.field public static final PIN_RESULT_SUCCESS:I = 0x0

.field public static final PRESENTATION_ALLOWED:I = 0x1

.field public static final PRESENTATION_PAYPHONE:I = 0x4

.field public static final PRESENTATION_RESTRICTED:I = 0x2

.field public static final PRESENTATION_UNKNOWN:I = 0x3

.field public static final PROPERTY_CAPABILITY_SWITCH:Ljava/lang/String; = "persist.radio.simswitch"

.field public static final RAT_MODE_C2K:I = 0x7

.field public static final RAT_MODE_GSM:I = 0x0

.field public static final REASON_LINK_PROPERTIES_CHANGED:Ljava/lang/String; = "linkPropertiesChanged"

.field public static final RIL_CARD_MAX_APPS:I = 0x8

.field public static final SIM_ID_1:I = 0x0

.field public static final SIM_ID_2:I = 0x1

.field public static final SIM_ID_3:I = 0x2

.field public static final SIM_ID_4:I = 0x3

.field public static final SLOT_KEY:Ljava/lang/String; = "slot"

.field public static final STATE_CHANGE_REASON_KEY:Ljava/lang/String; = "reason"

.field public static final STATE_CONNECTED:I = 0x1

.field public static final STATE_DISCONNECTED:I = 0x0

.field public static final STATE_KEY:Ljava/lang/String; = "state"

.field public static final SUB1:I = 0x0

.field public static final SUB2:I = 0x1

.field public static final SUB3:I = 0x2

.field public static final SUBSCRIPTION_KEY:Ljava/lang/String; = "subscription"

.field public static final SUB_SETTING:Ljava/lang/String; = "subSettings"

.field public static final UNSET_MTU:I = 0x0

.field public static final UT_CSFB_ONCE:I = 0x1

.field public static final UT_CSFB_PS_PREFERRED:I = 0x0

.field public static final UT_CSFB_UNTIL_NEXT_BOOT:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    return-void
.end method
