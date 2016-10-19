.class public Lcom/android/internal/telephony/DctConstants;
.super Ljava/lang/Object;
.source "DctConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/DctConstants$Activity;,
        Lcom/android/internal/telephony/DctConstants$State;
    }
.end annotation


# static fields
.field public static final APN_CBS_ID:I = 0x7

.field public static final APN_CMMAIL_ID:I = 0xd

.field public static final APN_DEFAULT_ID:I = 0x0

.field public static final APN_DM_ID:I = 0xa

.field public static final APN_DUN_ID:I = 0x3

.field public static final APN_EMERGENCY_ID:I = 0x9

.field public static final APN_FOTA_ID:I = 0x6

.field public static final APN_HIPRI_ID:I = 0x4

.field public static final APN_IA_ID:I = 0x8

.field public static final APN_IMS_ID:I = 0x5

.field public static final APN_INVALID_ID:I = -0x1

.field public static final APN_MMS_ID:I = 0x1

.field public static final APN_NET_ID:I = 0xc

.field public static final APN_NUM_TYPES:I = 0x11

.field public static final APN_RCSE_ID:I = 0xe

.field public static final APN_RCS_ID:I = 0x10

.field public static final APN_SUPL_ID:I = 0x2

.field public static final APN_TYPE_KEY:Ljava/lang/String; = "apnType"

.field public static final APN_WAP_ID:I = 0xb

.field public static final APN_XCAP_ID:I = 0xf

.field public static final BASE:I = 0x42000

.field public static final CMD_CLEAR_PROVISIONING_SPINNER:I = 0x4202a

.field public static final CMD_ENABLE_MOBILE_PROVISIONING:I = 0x42025

.field public static final CMD_IS_PROVISIONING_APN:I = 0x42026

.field public static final CMD_NET_STAT_POLL:I = 0x42028

.field public static final CMD_SET_DEPENDENCY_MET:I = 0x4201f

.field public static final CMD_SET_ENABLE_FAIL_FAST_MOBILE_DATA:I = 0x42024

.field public static final CMD_SET_POLICY_DATA_ENABLE:I = 0x42020

.field public static final CMD_SET_USER_DATA_ENABLE:I = 0x4201e

.field public static final DISABLED:I = 0x0

.field public static final ENABLED:I = 0x1

.field public static final EVENT_ABORT_DEDICATE_BEARER_ENABLE:I = 0x4220b

.field public static final EVENT_APN_CHANGED:I = 0x42013

.field public static final EVENT_APN_CHANGED_DONE:I = 0x421f7

.field public static final EVENT_CDMA_DATA_DETACHED:I = 0x42014

.field public static final EVENT_CDMA_OTA_PROVISION:I = 0x42019

.field public static final EVENT_CDMA_SUBSCRIPTION_SOURCE_CHANGED:I = 0x42015

.field public static final EVENT_CHECK_FDN_LIST:I = 0x421fc

.field public static final EVENT_CLEAN_UP_ALL_CONNECTIONS:I = 0x4201d

.field public static final EVENT_CLEAN_UP_CONNECTION:I = 0x42018

.field public static final EVENT_CLEAR_DATA_BEARER:I = 0x4220a

.field public static final EVENT_DATA_CONNECTION_ATTACHED:I = 0x42010

.field public static final EVENT_DATA_CONNECTION_DETACHED:I = 0x42009

.field public static final EVENT_DATA_RAT_CHANGED:I = 0x42029

.field public static final EVENT_DATA_ROAMING_CHANGED:I = 0x421f5

.field public static final EVENT_DATA_SETUP_COMPLETE:I = 0x42000

.field public static final EVENT_DATA_SETUP_COMPLETE_ERROR:I = 0x42023

.field public static final EVENT_DATA_STALL_ALARM:I = 0x42011

.field public static final EVENT_DATA_STATE_CHANGED:I = 0x42004

.field public static final EVENT_DEDICATE_BEARER_ABORT_COMPLETE:I = 0x4220c

.field public static final EVENT_DEDICATE_BEARER_ACTIVATED_BY_NETWORK:I = 0x42205

.field public static final EVENT_DEDICATE_BEARER_DEACTIVATED_BY_NETWORK:I = 0x42207

.field public static final EVENT_DEDICATE_BEARER_MODIFIED_BY_NETWORK:I = 0x42206

.field public static final EVENT_DEDICATE_BEARER_MODIFIED_COMPLETE:I = 0x42204

.field public static final EVENT_DEDICATE_DATA_DEACTIVATE_COMPLETE:I = 0x42203

.field public static final EVENT_DEDICATE_DATA_SETUP_COMPLETE:I = 0x42202

.field public static final EVENT_DISABLE_DEDICATE_BEARER:I = 0x42200

.field public static final EVENT_DISCONNECT_DC_RETRYING:I = 0x42022

.field public static final EVENT_DISCONNECT_DONE:I = 0x4200f

.field public static final EVENT_DO_RECOVERY:I = 0x42012

.field public static final EVENT_ENABLE_DEDICATE_BEARER:I = 0x421ff

.field public static final EVENT_ENABLE_NEW_APN:I = 0x4200d

.field public static final EVENT_FDN_CHANGED:I = 0x421fb

.field public static final EVENT_ICC_CHANGED:I = 0x42021

.field public static final EVENT_INIT_EMERGENCY_APN_SETTINGS:I = 0x421f6

.field public static final EVENT_LINK_STATE_CHANGED:I = 0x4200a

.field public static final EVENT_MODIFY_DEDICATE_BEARER:I = 0x42201

.field public static final EVENT_PCSCF_DISCOVERY:I = 0x42209

.field public static final EVENT_POLL_PDP:I = 0x42005

.field public static final EVENT_PROVISIONING_APN_ALARM:I = 0x42027

.field public static final EVENT_PS_RESTRICT_DISABLED:I = 0x42017

.field public static final EVENT_PS_RESTRICT_ENABLED:I = 0x42016

.field public static final EVENT_RADIO_AVAILABLE:I = 0x42001

.field public static final EVENT_RADIO_OFF_OR_NOT_AVAILABLE:I = 0x42006

.field public static final EVENT_RECORDS_LOADED:I = 0x42002

.field public static final EVENT_REMOVE_RESTRICT_EUTRAN:I = 0x4220d

.field public static final EVENT_RESET_DONE:I = 0x4201c

.field public static final EVENT_RESET_PDP_DONE:I = 0x4220e

.field public static final EVENT_RESTART_RADIO:I = 0x4201a

.field public static final EVENT_RESTORE_DEFAULT_APN:I = 0x4200e

.field public static final EVENT_ROAMING_OFF:I = 0x4200c

.field public static final EVENT_ROAMING_ON:I = 0x4200b

.field public static final EVENT_SETUP_DATA_WHEN_LOADED:I = 0x421f8

.field public static final EVENT_SET_INTERNAL_DATA_ENABLE:I = 0x4201b

.field public static final EVENT_TRY_SETUP_DATA:I = 0x42003

.field public static final EVENT_UPDATE_CONCATENATED_BEARER_COMPLETED:I = 0x42208

.field public static final EVENT_VOICE_CALL_ENDED:I = 0x42008

.field public static final EVENT_VOICE_CALL_ENDED_PEER:I = 0x421fa

.field public static final EVENT_VOICE_CALL_STARTED:I = 0x42007

.field public static final EVENT_VOICE_CALL_STARTED_PEER:I = 0x421f9

.field public static final INVALID:I = -0x1

.field public static final MTK_BASE:I = 0x421f4

.field public static final PROVISIONING_URL_KEY:Ljava/lang/String; = "provisioningUrl"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method
