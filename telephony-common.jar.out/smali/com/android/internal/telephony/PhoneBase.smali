.class public abstract Lcom/android/internal/telephony/PhoneBase;
.super Landroid/os/Handler;
.source "PhoneBase.java"

# interfaces
.implements Lcom/android/internal/telephony/Phone;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/PhoneBase$NetworkSelectMessage;
    }
.end annotation


# static fields
.field private static final CDMA_NON_ROAMING_LIST_OVERRIDE_PREFIX:Ljava/lang/String; = "cdma_non_roaming_list_"

.field private static final CDMA_ROAMING_LIST_OVERRIDE_PREFIX:Ljava/lang/String; = "cdma_roaming_list_"

.field private static final CFU_TIME_SLOT:Ljava/lang/String; = "persist.radio.cfu.timeslot."

.field public static final CLIR_KEY:Ljava/lang/String; = "clir_key"

.field public static final CLIR_KEY_2:Ljava/lang/String; = "clir_key_2"

.field public static final DATA_DISABLED_ON_BOOT_KEY:Ljava/lang/String; = "disabled_on_boot_key"

.field public static final DNS_SERVER_CHECK_DISABLED_KEY:Ljava/lang/String; = "dns_server_check_disabled_key"

.field protected static final EVENT_ABNORMAL_EVENT:I = 0x2e

.field protected static final EVENT_CALL_RING:I = 0xe

.field protected static final EVENT_CALL_RING_CONTINUE:I = 0xf

.field protected static final EVENT_CDMA_MCC_MNC_CHANGED:I = 0x67

.field protected static final EVENT_CDMA_SUBSCRIPTION_SOURCE_CHANGED:I = 0x1b

.field protected static final EVENT_CFU_IND:I = 0x26

.field protected static final EVENT_CFU_QUERY_TIMEOUT:I = 0x27

.field protected static final EVENT_CHARGING_STOP:I = 0x2d

.field protected static final EVENT_CIPHER_INDICATION:I = 0x2a

.field protected static final EVENT_CRSS_IND:I = 0x28

.field protected static final EVENT_DC_SWITCH_STATE_CHANGE:I = 0x7a329

.field protected static final EVENT_EMERGENCY_CALLBACK_MODE_ENTER:I = 0x19

.field protected static final EVENT_EXIT_EMERGENCY_CALLBACK_RESPONSE:I = 0x1a

.field protected static final EVENT_GET_AVAILABLE_NETWORK:I = 0x7a32a

.field protected static final EVENT_GET_AVAILABLE_NETWORK_DONE:I = 0x7a328

.field protected static final EVENT_GET_BASEBAND_VERSION_DONE:I = 0x6

.field protected static final EVENT_GET_CALL_FORWARD_DONE:I = 0xd

.field protected static final EVENT_GET_CALL_FORWARD_TIME_SLOT_DONE:I = 0xc9

.field protected static final EVENT_GET_DEVICE_IDENTITY_DONE:I = 0x15

.field protected static final EVENT_GET_IMEISV_DONE:I = 0xa

.field protected static final EVENT_GET_IMEI_DONE:I = 0x9

.field protected static final EVENT_GET_PHONE_RAT_FAMILY:I = 0x2b

.field protected static final EVENT_GET_RADIO_CAPABILITY:I = 0x23

.field protected static final EVENT_GET_SIM_STATUS_DONE:I = 0xb

.field protected static final EVENT_GET_UIM_INSERT_STATUS_RETRY:I = 0x65

.field protected static final EVENT_ICC_CHANGED:I = 0x1e

.field protected static final EVENT_ICC_RECORD_EVENTS:I = 0x1d

.field protected static final EVENT_IMS_UT_CSFB:I = 0x7d1

.field protected static final EVENT_IMS_UT_DONE:I = 0x7d0

.field protected static final EVENT_INITIATE_SILENT_REDIAL:I = 0x20

.field protected static final EVENT_LAST:I = 0x2c

.field protected static final EVENT_MMI_DONE:I = 0x4

.field protected static final EVENT_NV_READY:I = 0x17

.field protected static final EVENT_PHONE_RAT_FAMILY_CHANGED_NOTIFY:I = 0x2c

.field protected static final EVENT_QUERY_CFU:I = 0x7d2

.field protected static final EVENT_QUERY_UIM_INSERTED_STATUS_DONE:I = 0x64

.field protected static final EVENT_RADIO_AVAILABLE:I = 0x1

.field protected static final EVENT_RADIO_NOT_AVAILABLE:I = 0x21

.field protected static final EVENT_RADIO_OFF_OR_NOT_AVAILABLE:I = 0x8

.field protected static final EVENT_RADIO_ON:I = 0x5

.field protected static final EVENT_REGISTERED_TO_NETWORK:I = 0x13

.field protected static final EVENT_RUIM_READY:I = 0xcd

.field protected static final EVENT_RUIM_RECORDS_LOADED:I = 0x16

.field protected static final EVENT_SET_BAND_MODE_DONE:I = 0x2f

.field protected static final EVENT_SET_CALL_FORWARD_DONE:I = 0xc

.field protected static final EVENT_SET_CALL_FORWARD_TIME_SLOT_DONE:I = 0xca

.field protected static final EVENT_SET_CLIR_COMPLETE:I = 0x12

.field protected static final EVENT_SET_ENHANCED_VP:I = 0x18

.field protected static final EVENT_SET_MEID_DONE:I = 0x66

.field protected static final EVENT_SET_NETWORK_AUTOMATIC:I = 0x1c

.field protected static final EVENT_SET_NETWORK_AUTOMATIC_COMPLETE:I = 0x11

.field protected static final EVENT_SET_NETWORK_MANUAL_COMPLETE:I = 0x10

.field protected static final EVENT_SET_VM_NUMBER_DONE:I = 0x14

.field protected static final EVENT_SIM_RECORDS_LOADED:I = 0x3

.field protected static final EVENT_SIP_CALL_RING:I = 0x25

.field protected static final EVENT_SRVCC_STATE_CHANGED:I = 0x1f

.field protected static final EVENT_SS:I = 0x24

.field protected static final EVENT_SSN:I = 0x2

.field protected static final EVENT_UNSOL_OEM_HOOK_RAW:I = 0x22

.field protected static final EVENT_USSD:I = 0x7

.field protected static final EVENT_VOICE_CALL_INCOMING_INDICATION:I = 0x29

.field private static final GSM_NON_ROAMING_LIST_OVERRIDE_PREFIX:Ljava/lang/String; = "gsm_non_roaming_list_"

.field private static final GSM_ROAMING_LIST_OVERRIDE_PREFIX:Ljava/lang/String; = "gsm_roaming_list_"

.field private static final LOG_TAG:Ljava/lang/String; = "PhoneBase"

.field public static final NETWORK_SELECTION_KEY:Ljava/lang/String; = "network_selection_key"

.field public static final NETWORK_SELECTION_KEY_2:Ljava/lang/String; = "network_selection_key_2"

.field public static final NETWORK_SELECTION_KEY_3:Ljava/lang/String; = "network_selection_key_3"

.field public static final NETWORK_SELECTION_KEY_4:Ljava/lang/String; = "network_selection_key_4"

.field public static final NETWORK_SELECTION_NAME_KEY:Ljava/lang/String; = "network_selection_name_key"

.field public static final NETWORK_SELECTION_NAME_KEY_2:Ljava/lang/String; = "network_selection_name_key_2"

.field public static final NETWORK_SELECTION_NAME_KEY_3:Ljava/lang/String; = "network_selection_name_key_3"

.field public static final NETWORK_SELECTION_NAME_KEY_4:Ljava/lang/String; = "network_selection_name_key_4"

.field public static final VM_COUNT:Ljava/lang/String; = "vm_count_key"

.field public static final VM_ID:Ljava/lang/String; = "vm_id_key"


# instance fields
.field private final mActionAttached:Ljava/lang/String;

.field private final mActionDetached:Ljava/lang/String;

.field private mCSFallbackMode:I

.field protected final mCallInfoChangedRegistrants:Landroid/os/RegistrantList;

.field mCallRingContinueToken:I

.field mCallRingDelay:I

.field protected final mCdmaCallAcceptedRegistrants:Landroid/os/RegistrantList;

.field public mCi:Lcom/android/internal/telephony/CommandsInterface;

.field protected final mCipherIndicationRegistrants:Landroid/os/RegistrantList;

.field protected final mContext:Landroid/content/Context;

.field public mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

.field protected final mDisconnectRegistrants:Landroid/os/RegistrantList;

.field mDnsCheckDisabled:Z

.field mDoesRilSendMultipleCallRing:Z

.field protected final mHandoverRegistrants:Landroid/os/RegistrantList;

.field public mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/android/internal/telephony/uicc/IccRecords;",
            ">;"
        }
    .end annotation
.end field

.field protected final mImsConferenceCallRegistrants:Landroid/os/RegistrantList;

.field private mImsIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mImsLock:Ljava/lang/Object;

.field protected mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

.field private mImsServiceReady:Z

.field protected final mIncomingRingRegistrants:Landroid/os/RegistrantList;

.field public mIsTheCurrentActivePhone:Z

.field mIsVoiceCapable:Z

.field protected mLooper:Landroid/os/Looper;

.field protected final mMmiCompleteRegistrants:Landroid/os/RegistrantList;

.field protected final mMmiRegistrants:Landroid/os/RegistrantList;

.field private final mName:Ljava/lang/String;

.field protected final mNewRingingConnectionRegistrants:Landroid/os/RegistrantList;

.field protected mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

.field protected mPhoneId:I

.field protected final mPreciseCallStateRegistrants:Landroid/os/RegistrantList;

.field protected mRadioAccessFamily:I

.field protected final mRadioOffOrNotAvailableRegistrants:Landroid/os/RegistrantList;

.field protected final mServiceStateRegistrants:Landroid/os/RegistrantList;

.field protected final mSimRecordsLoadedRegistrants:Landroid/os/RegistrantList;

.field protected mSimulatedRadioControl:Lcom/android/internal/telephony/test/SimulatedRadioControl;

.field mSipCallRingContinueToken:I

.field public mSmsStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

.field public mSmsUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

.field protected final mSpeechCodecInfoRegistrants:Landroid/os/RegistrantList;

.field protected final mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

.field protected final mSvlteServiceStateRegistrants:Landroid/os/RegistrantList;

.field private mTelephonyTester:Lcom/android/internal/telephony/TelephonyTester;

.field protected mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/android/internal/telephony/uicc/UiccCardApplication;",
            ">;"
        }
    .end annotation
.end field

.field protected mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

.field mUnitTestMode:Z

.field protected final mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

.field private mVmCount:I

.field protected final mVoiceCallIncomingIndicationRegistrants:Landroid/os/RegistrantList;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lcom/android/internal/telephony/PhoneNotifier;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 471
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/PhoneBase;-><init>(Ljava/lang/String;Lcom/android/internal/telephony/PhoneNotifier;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Z)V

    .line 472
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/android/internal/telephony/PhoneNotifier;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Z)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p5, "unitTestMode"    # Z

    .prologue
    .line 486
    const v6, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/PhoneBase;-><init>(Ljava/lang/String;Lcom/android/internal/telephony/PhoneNotifier;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;ZI)V

    .line 487
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/android/internal/telephony/PhoneNotifier;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;ZI)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p5, "unitTestMode"    # Z
    .param p6, "phoneId"    # I

    .prologue
    const/16 v7, 0x1e

    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 501
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 116
    new-instance v2, Lcom/android/internal/telephony/PhoneBase$1;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/PhoneBase$1;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mImsIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 288
    iput v4, p0, Lcom/android/internal/telephony/PhoneBase;->mVmCount:I

    .line 294
    iput-boolean v6, p0, Lcom/android/internal/telephony/PhoneBase;->mIsTheCurrentActivePhone:Z

    .line 295
    iput-boolean v6, p0, Lcom/android/internal/telephony/PhoneBase;->mIsVoiceCapable:Z

    .line 296
    iput-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 297
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    .line 300
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    .line 310
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mImsLock:Ljava/lang/Object;

    .line 311
    iput-boolean v4, p0, Lcom/android/internal/telephony/PhoneBase;->mImsServiceReady:Z

    .line 312
    iput-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 314
    iput v6, p0, Lcom/android/internal/telephony/PhoneBase;->mRadioAccessFamily:I

    .line 317
    iput v4, p0, Lcom/android/internal/telephony/PhoneBase;->mSipCallRingContinueToken:I

    .line 321
    iput v4, p0, Lcom/android/internal/telephony/PhoneBase;->mCSFallbackMode:I

    .line 382
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mPreciseCallStateRegistrants:Landroid/os/RegistrantList;

    .line 385
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mHandoverRegistrants:Landroid/os/RegistrantList;

    .line 388
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mNewRingingConnectionRegistrants:Landroid/os/RegistrantList;

    .line 391
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mIncomingRingRegistrants:Landroid/os/RegistrantList;

    .line 394
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    .line 397
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mServiceStateRegistrants:Landroid/os/RegistrantList;

    .line 400
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    .line 403
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mMmiRegistrants:Landroid/os/RegistrantList;

    .line 406
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

    .line 409
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

    .line 412
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mRadioOffOrNotAvailableRegistrants:Landroid/os/RegistrantList;

    .line 415
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mSimRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    .line 419
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mVoiceCallIncomingIndicationRegistrants:Landroid/os/RegistrantList;

    .line 422
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mCipherIndicationRegistrants:Landroid/os/RegistrantList;

    .line 427
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mSpeechCodecInfoRegistrants:Landroid/os/RegistrantList;

    .line 431
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mCdmaCallAcceptedRegistrants:Landroid/os/RegistrantList;

    .line 436
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mImsConferenceCallRegistrants:Landroid/os/RegistrantList;

    .line 439
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mCallInfoChangedRegistrants:Landroid/os/RegistrantList;

    .line 444
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mSvlteServiceStateRegistrants:Landroid/os/RegistrantList;

    .line 502
    iput p6, p0, Lcom/android/internal/telephony/PhoneBase;->mPhoneId:I

    .line 503
    iput-object p1, p0, Lcom/android/internal/telephony/PhoneBase;->mName:Ljava/lang/String;

    .line 504
    iput-object p2, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    .line 505
    iput-object p3, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    .line 506
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mLooper:Landroid/os/Looper;

    .line 507
    iput-object p4, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 508
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".action_detached"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mActionDetached:Ljava/lang/String;

    .line 509
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".action_attached"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mActionAttached:Ljava/lang/String;

    .line 511
    sget-boolean v2, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v2, :cond_0

    .line 512
    new-instance v2, Lcom/android/internal/telephony/TelephonyTester;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/TelephonyTester;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mTelephonyTester:Lcom/android/internal/telephony/TelephonyTester;

    .line 515
    :cond_0
    invoke-virtual {p0, p5}, Lcom/android/internal/telephony/PhoneBase;->setUnitTestMode(Z)V

    .line 517
    invoke-static {p3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 518
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string v2, "dns_server_check_disabled_key"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/telephony/PhoneBase;->mDnsCheckDisabled:Z

    .line 519
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0xe

    invoke-interface {v2, p0, v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->setOnCallRing(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 527
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x112004e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/telephony/PhoneBase;->mIsVoiceCapable:Z

    .line 540
    const-string v2, "ro.telephony.call_ring.multiple"

    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/telephony/PhoneBase;->mDoesRilSendMultipleCallRing:Z

    .line 542
    const-string v2, "PhoneBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mDoesRilSendMultipleCallRing="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/PhoneBase;->mDoesRilSendMultipleCallRing:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    const-string v2, "ro.telephony.call_ring.delay"

    const/16 v3, 0xbb8

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/PhoneBase;->mCallRingDelay:I

    .line 546
    const-string v2, "PhoneBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCallRingDelay="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/PhoneBase;->mCallRingDelay:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    .line 567
    :goto_0
    return-void

    .line 550
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneBase;->setPropertiesByCarrier()V

    .line 553
    new-instance v2, Lcom/android/internal/telephony/SmsStorageMonitor;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/SmsStorageMonitor;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mSmsStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    .line 554
    new-instance v2, Lcom/android/internal/telephony/SmsUsageMonitor;

    invoke-direct {v2, p3}, Lcom/android/internal/telephony/SmsUsageMonitor;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mSmsUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    .line 555
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 556
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v2, p0, v7, v5}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 557
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v2, p0, v7, v5}, Lcom/android/internal/telephony/uicc/UiccController;->registerForApplicationChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 560
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 561
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "com.android.ims.IMS_SERVICE_UP"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 562
    const-string v2, "com.android.ims.IMS_SERVICE_DOWN"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 563
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/PhoneBase;->mImsIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 565
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x1f

    invoke-interface {v2, p0, v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForSrvccStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 566
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x22

    invoke-interface {v2, p0, v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->setOnUnsolOemHookRaw(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic access$002(Lcom/android/internal/telephony/PhoneBase;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/PhoneBase;
    .param p1, "x1"    # Z

    .prologue
    .line 113
    iput-boolean p1, p0, Lcom/android/internal/telephony/PhoneBase;->mImsServiceReady:Z

    return p1
.end method

.method private checkCorrectThread(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1254
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mLooper:Landroid/os/Looper;

    if-eq v0, v1, :cond_0

    .line 1255
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "com.android.internal.telephony.Phone must be used from within one thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1258
    :cond_0
    return-void
.end method

.method private getRoamingOverrideHelper(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 2265
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v0

    .line 2266
    .local v0, "iccId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2275
    :cond_0
    :goto_0
    return v3

    .line 2270
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2271
    .local v1, "sp":Landroid/content/SharedPreferences;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    .line 2272
    .local v2, "value":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    .line 2275
    invoke-interface {v2, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0
.end method

.method private getSavedNetworkSelection()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1122
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1123
    .local v0, "sp":Landroid/content/SharedPreferences;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "network_selection_key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private handleSetSelectNetwork(Landroid/os/AsyncResult;)V
    .locals 4
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 1102
    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/internal/telephony/PhoneBase$NetworkSelectMessage;

    if-nez v1, :cond_1

    .line 1103
    const-string v1, "PhoneBase"

    const-string v2, "unexpected result from user object."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    :cond_0
    :goto_0
    return-void

    .line 1107
    :cond_1
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/PhoneBase$NetworkSelectMessage;

    .line 1111
    .local v0, "nsm":Lcom/android/internal/telephony/PhoneBase$NetworkSelectMessage;
    iget-object v1, v0, Lcom/android/internal/telephony/PhoneBase$NetworkSelectMessage;->message:Landroid/os/Message;

    if-eqz v1, :cond_0

    .line 1112
    iget-object v1, v0, Lcom/android/internal/telephony/PhoneBase$NetworkSelectMessage;->message:Landroid/os/Message;

    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v1, v2, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1113
    iget-object v1, v0, Lcom/android/internal/telephony/PhoneBase$NetworkSelectMessage;->message:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private handleSrvccStateChanged([I)V
    .locals 8
    .param p1, "ret"    # [I

    .prologue
    .line 756
    const-string v5, "PhoneBase"

    const-string v6, "handleSrvccStateChanged"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    const/4 v0, 0x0

    .line 759
    .local v0, "conn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/Connection;>;"
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 760
    .local v1, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    sget-object v3, Lcom/android/internal/telephony/Call$SrvccState;->NONE:Lcom/android/internal/telephony/Call$SrvccState;

    .line 761
    .local v3, "srvccState":Lcom/android/internal/telephony/Call$SrvccState;
    if-eqz p1, :cond_0

    array-length v5, p1

    if-eqz v5, :cond_0

    .line 762
    const/4 v5, 0x0

    aget v4, p1, v5

    .line 764
    .local v4, "state":I
    const-string v5, "PhoneBase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "srvccState: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    packed-switch v4, :pswitch_data_0

    .line 799
    .end local v4    # "state":I
    :cond_0
    :goto_0
    return-void

    .line 768
    .restart local v4    # "state":I
    :pswitch_0
    sget-object v3, Lcom/android/internal/telephony/Call$SrvccState;->STARTED:Lcom/android/internal/telephony/Call$SrvccState;

    .line 769
    if-eqz v1, :cond_1

    .line 770
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getHandoverConnection()Ljava/util/ArrayList;

    move-result-object v0

    .line 771
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/PhoneBase;->migrateFrom(Lcom/android/internal/telephony/PhoneBase;)V

    .line 794
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v5

    invoke-virtual {v5, v3, v0}, Lcom/android/internal/telephony/CallTracker;->notifySrvccState(Lcom/android/internal/telephony/Call$SrvccState;Ljava/util/ArrayList;)V

    .line 796
    new-instance v2, Landroid/telephony/VoLteServiceState;

    invoke-direct {v2, v4}, Landroid/telephony/VoLteServiceState;-><init>(I)V

    .line 797
    .local v2, "lteState":Landroid/telephony/VoLteServiceState;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/PhoneBase;->notifyVoLteServiceStateChanged(Landroid/telephony/VoLteServiceState;)V

    goto :goto_0

    .line 773
    .end local v2    # "lteState":Landroid/telephony/VoLteServiceState;
    :cond_1
    const-string v5, "PhoneBase"

    const-string v6, "HANDOVER_STARTED: mImsPhone null"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 777
    :pswitch_1
    sget-object v3, Lcom/android/internal/telephony/Call$SrvccState;->COMPLETED:Lcom/android/internal/telephony/Call$SrvccState;

    .line 778
    if-eqz v1, :cond_2

    .line 779
    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifySrvccState(Lcom/android/internal/telephony/Call$SrvccState;)V

    goto :goto_1

    .line 781
    :cond_2
    const-string v5, "PhoneBase"

    const-string v6, "HANDOVER_COMPLETED: mImsPhone null"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 786
    :pswitch_2
    sget-object v3, Lcom/android/internal/telephony/Call$SrvccState;->FAILED:Lcom/android/internal/telephony/Call$SrvccState;

    .line 787
    goto :goto_1

    .line 766
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private static logUnexpectedCdmaMethodCall(Ljava/lang/String;)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1991
    const-string v0, "PhoneBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "() in PhoneBase should not be "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "called, CDMAPhone inactive."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1993
    return-void
.end method

.method private static logUnexpectedGsmMethodCall(Ljava/lang/String;)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 2004
    const-string v0, "PhoneBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "() in PhoneBase should not be "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "called, GSMPhone inactive."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2006
    return-void
.end method

.method private notifyIncomingRing()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1941
    iget-boolean v1, p0, Lcom/android/internal/telephony/PhoneBase;->mIsVoiceCapable:Z

    if-nez v1, :cond_0

    .line 1945
    :goto_0
    return-void

    .line 1943
    :cond_0
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v2, p0, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1944
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mIncomingRingRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0
.end method

.method private privatizeCellInfoList(Ljava/util/List;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "cellInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    const v4, 0x7fffffff

    .line 1392
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "location_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    .line 1394
    .local v10, "mode":I
    if-nez v10, :cond_2

    .line 1395
    new-instance v12, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v12, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1397
    .local v12, "privateCellInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/CellInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/CellInfo;

    .line 1398
    .local v6, "c":Landroid/telephony/CellInfo;
    instance-of v1, v6, Landroid/telephony/CellInfoCdma;

    if-eqz v1, :cond_0

    move-object v8, v6

    .line 1399
    check-cast v8, Landroid/telephony/CellInfoCdma;

    .line 1400
    .local v8, "cellInfoCdma":Landroid/telephony/CellInfoCdma;
    invoke-virtual {v8}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object v7

    .line 1401
    .local v7, "cellIdentity":Landroid/telephony/CellIdentityCdma;
    new-instance v0, Landroid/telephony/CellIdentityCdma;

    invoke-virtual {v7}, Landroid/telephony/CellIdentityCdma;->getNetworkId()I

    move-result v1

    invoke-virtual {v7}, Landroid/telephony/CellIdentityCdma;->getSystemId()I

    move-result v2

    invoke-virtual {v7}, Landroid/telephony/CellIdentityCdma;->getBasestationId()I

    move-result v3

    move v5, v4

    invoke-direct/range {v0 .. v5}, Landroid/telephony/CellIdentityCdma;-><init>(IIIII)V

    .line 1406
    .local v0, "maskedCellIdentity":Landroid/telephony/CellIdentityCdma;
    new-instance v11, Landroid/telephony/CellInfoCdma;

    invoke-direct {v11, v8}, Landroid/telephony/CellInfoCdma;-><init>(Landroid/telephony/CellInfoCdma;)V

    .line 1407
    .local v11, "privateCellInfoCdma":Landroid/telephony/CellInfoCdma;
    invoke-virtual {v11, v0}, Landroid/telephony/CellInfoCdma;->setCellIdentity(Landroid/telephony/CellIdentityCdma;)V

    .line 1408
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1410
    .end local v0    # "maskedCellIdentity":Landroid/telephony/CellIdentityCdma;
    .end local v7    # "cellIdentity":Landroid/telephony/CellIdentityCdma;
    .end local v8    # "cellInfoCdma":Landroid/telephony/CellInfoCdma;
    .end local v11    # "privateCellInfoCdma":Landroid/telephony/CellInfoCdma;
    :cond_0
    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1413
    .end local v6    # "c":Landroid/telephony/CellInfo;
    :cond_1
    move-object p1, v12

    .line 1415
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v12    # "privateCellInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/CellInfo;>;"
    :cond_2
    return-object p1
.end method

.method private sendIncomingCallRingNotification(I)V
    .locals 4
    .param p1, "token"    # I

    .prologue
    .line 1951
    iget-boolean v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIsVoiceCapable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDoesRilSendMultipleCallRing:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCallRingContinueToken:I

    if-ne p1, v0, :cond_0

    .line 1953
    const-string v0, "PhoneBase"

    const-string v1, "Sending notifyIncomingRing"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1954
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneBase;->notifyIncomingRing()V

    .line 1955
    const/16 v0, 0xf

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/PhoneBase;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/PhoneBase;->mCallRingDelay:I

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/telephony/PhoneBase;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1964
    :goto_0
    return-void

    .line 1958
    :cond_0
    const-string v0, "PhoneBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring ring notification request, mDoesRilSendMultipleCallRing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/PhoneBase;->mDoesRilSendMultipleCallRing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCallRingContinueToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/PhoneBase;->mCallRingContinueToken:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mIsVoiceCapable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/PhoneBase;->mIsVoiceCapable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setPropertiesByCarrier()V
    .locals 11

    .prologue
    .line 1265
    const-string v8, "ro.carrier"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1267
    .local v1, "carrier":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "unknown"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1295
    :cond_0
    :goto_0
    return-void

    .line 1271
    :cond_1
    iget-object v8, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1070049

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 1274
    .local v2, "carrierLocales":[Ljava/lang/CharSequence;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v8, v2

    if-ge v5, v8, :cond_0

    .line 1275
    aget-object v8, v2, v5

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1276
    .local v0, "c":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1277
    add-int/lit8 v8, v5, 0x1

    aget-object v8, v2, v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x5f

    const/16 v10, 0x2d

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v6

    .line 1278
    .local v6, "l":Ljava/util/Locale;
    invoke-virtual {v6}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    .line 1279
    .local v3, "country":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v3}, Lcom/android/internal/telephony/MccTable;->setSystemLocale(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1281
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 1283
    :try_start_0
    iget-object v8, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "wifi_country_code"

    invoke-static {v8, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1285
    :catch_0
    move-exception v4

    .line 1287
    .local v4, "e":Landroid/provider/Settings$SettingNotFoundException;
    iget-object v8, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    const-string v9, "wifi"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    .line 1289
    .local v7, "wM":Landroid/net/wifi/WifiManager;
    const/4 v8, 0x0

    invoke-virtual {v7, v3, v8}, Landroid/net/wifi/WifiManager;->setCountryCode(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1274
    .end local v3    # "country":Ljava/lang/String;
    .end local v4    # "e":Landroid/provider/Settings$SettingNotFoundException;
    .end local v6    # "l":Ljava/util/Locale;
    .end local v7    # "wM":Landroid/net/wifi/WifiManager;
    :cond_2
    add-int/lit8 v5, v5, 0x3

    goto :goto_1
.end method

.method private setRoamingOverrideHelper(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "iccId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2217
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2219
    .local v1, "spEditor":Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2220
    .local v0, "key":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2221
    :cond_0
    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2225
    :goto_0
    return-void

    .line 2223
    :cond_1
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private updateSavedNetworkOperator(Lcom/android/internal/telephony/PhoneBase$NetworkSelectMessage;)V
    .locals 6
    .param p1, "nsm"    # Lcom/android/internal/telephony/PhoneBase$NetworkSelectMessage;

    .prologue
    .line 1077
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    move-result v2

    .line 1078
    .local v2, "subId":I
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1081
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1082
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1083
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "network_selection_key"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/android/internal/telephony/PhoneBase$NetworkSelectMessage;->operatorNumeric:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1084
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "network_selection_name_key"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/android/internal/telephony/PhoneBase$NetworkSelectMessage;->operatorAlphaLong:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1087
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1088
    const-string v3, "PhoneBase"

    const-string v4, "failed to commit network selection preference"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "sp":Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    return-void

    .line 1091
    :cond_1
    const-string v3, "PhoneBase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot update network selection preference due to invalid subId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public abortEnableDedicateBearer(Ljava/lang/String;I)I
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "ddcId"    # I

    .prologue
    .line 2549
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->abortEnableDedicateBearer(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public abortFemtoCellList(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 2527
    return-void
.end method

.method public acquireOwnershipOfImsPhone(Lcom/android/internal/telephony/imsphone/ImsPhone;)V
    .locals 4
    .param p1, "imsPhone"    # Lcom/android/internal/telephony/imsphone/ImsPhone;

    .prologue
    .line 2098
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mImsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2099
    if-nez p1, :cond_0

    .line 2100
    :try_start_0
    monitor-exit v1

    .line 2120
    :goto_0
    return-void

    .line 2102
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-eqz v0, :cond_1

    .line 2103
    const-string v0, "PhoneBase"

    const-string v2, "acquireOwnershipOfImsPhone: non-null mImsPhone. Shouldn\'t happen - but disposing"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2105
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->dispose()V

    .line 2112
    :cond_1
    iput-object p1, p0, Lcom/android/internal/telephony/PhoneBase;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 2114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/PhoneBase;->mImsServiceReady:Z

    .line 2115
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->updateParentPhone(Lcom/android/internal/telephony/PhoneBase;)V

    .line 2116
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/CallManager;->registerPhone(Lcom/android/internal/telephony/Phone;)Z

    .line 2117
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    const/16 v2, 0x20

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->registerForSilentRedial(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2119
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addConferenceMember(ILjava/lang/String;I)V
    .locals 0
    .param p1, "confCallId"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "callIdToAdd"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 2692
    return-void
.end method

.method public cancelAvailableNetworks(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 2515
    return-void
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "oldPwd"    # Ljava/lang/String;
    .param p3, "newPwd"    # Ljava/lang/String;
    .param p4, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 2601
    return-void
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "oldPwd"    # Ljava/lang/String;
    .param p3, "newPwd"    # Ljava/lang/String;
    .param p4, "newCfm"    # Ljava/lang/String;
    .param p5, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 2605
    return-void
.end method

.method public clearDataBearer()V
    .locals 0

    .prologue
    .line 2589
    return-void
.end method

.method public configModemStatus(IILandroid/os/Message;)V
    .locals 1
    .param p1, "modemStatus"    # I
    .param p2, "remoteSimProtocol"    # I
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 2799
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->configModemStatus(IILandroid/os/Message;)V

    .line 2800
    return-void
.end method

.method public dial(Ljava/util/List;I)Lcom/android/internal/telephony/Connection;
    .locals 1
    .param p2, "videoState"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)",
            "Lcom/android/internal/telephony/Connection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 2706
    .local p1, "numbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method protected dialInternal(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;I)Lcom/android/internal/telephony/Connection;
    .locals 1
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .param p3, "videoState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 2158
    const/4 v0, 0x0

    return-object v0
.end method

.method public disableDedicateBearer(Ljava/lang/String;I)I
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "cid"    # I

    .prologue
    .line 2541
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->disableDedicateBearer(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public disableDnsCheck(Z)V
    .locals 3
    .param p1, "b"    # Z

    .prologue
    .line 817
    iput-boolean p1, p0, Lcom/android/internal/telephony/PhoneBase;->mDnsCheckDisabled:Z

    .line 818
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 819
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 820
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "dns_server_check_disabled_key"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 821
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 822
    return-void
.end method

.method public dispose()V
    .locals 4

    .prologue
    .line 571
    sget-object v2, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v2

    .line 572
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/PhoneBase;->mImsIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 573
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnCallRing(Landroid/os/Handler;)V

    .line 575
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->cleanUpAllConnections(Ljava/lang/String;)V

    .line 576
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/PhoneBase;->mIsTheCurrentActivePhone:Z

    .line 578
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mSmsStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    invoke-virtual {v1}, Lcom/android/internal/telephony/SmsStorageMonitor;->dispose()V

    .line 579
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mSmsUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    invoke-virtual {v1}, Lcom/android/internal/telephony/SmsUsageMonitor;->dispose()V

    .line 580
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/uicc/UiccController;->unregisterForIccChanged(Landroid/os/Handler;)V

    .line 581
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSrvccStateChanged(Landroid/os/Handler;)V

    .line 582
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnUnsolOemHookRaw(Landroid/os/Handler;)V

    .line 584
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mTelephonyTester:Lcom/android/internal/telephony/TelephonyTester;

    if-eqz v1, :cond_0

    .line 585
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mTelephonyTester:Lcom/android/internal/telephony/TelephonyTester;

    invoke-virtual {v1}, Lcom/android/internal/telephony/TelephonyTester;->dispose()V

    .line 588
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 589
    .local v0, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    if-eqz v0, :cond_1

    .line 590
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->unregisterForSilentRedial(Landroid/os/Handler;)V

    .line 591
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->dispose()V

    .line 593
    :cond_1
    monitor-exit v2

    .line 594
    return-void

    .line 593
    .end local v0    # "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public doGeneralSimAuthentication(IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "sessionId"    # I
    .param p2, "mode"    # I
    .param p3, "tag"    # I
    .param p4, "param1"    # Ljava/lang/String;
    .param p5, "param2"    # Ljava/lang/String;
    .param p6, "result"    # Landroid/os/Message;

    .prologue
    .line 2466
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 2314
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PhoneBase: subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2315
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mPhoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/PhoneBase;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2316
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mCi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2317
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mDnsCheckDisabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/PhoneBase;->mDnsCheckDisabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2318
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mDcTracker="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2319
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mDoesRilSendMultipleCallRing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/PhoneBase;->mDoesRilSendMultipleCallRing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2320
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mCallRingContinueToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/PhoneBase;->mCallRingContinueToken:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2321
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mCallRingDelay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/PhoneBase;->mCallRingDelay:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2322
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mIsTheCurrentActivePhone="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/PhoneBase;->mIsTheCurrentActivePhone:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2323
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mIsVoiceCapable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/PhoneBase;->mIsVoiceCapable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2324
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mIccRecords="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2325
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mUiccApplication="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2326
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mSmsStorageMonitor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mSmsStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2327
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mSmsUsageMonitor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mSmsUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2328
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 2329
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mLooper="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mLooper:Landroid/os/Looper;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2330
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mContext="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2331
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mNotifier="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2332
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mSimulatedRadioControl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mSimulatedRadioControl:Lcom/android/internal/telephony/test/SimulatedRadioControl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2333
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mUnitTestMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/PhoneBase;->mUnitTestMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2334
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " isDnsCheckDisabled()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->isDnsCheckDisabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2335
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getUnitTestMode()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getUnitTestMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2336
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getState()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2337
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getIccSerialNumber()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2338
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getIccRecordsLoaded()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getIccRecordsLoaded()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2339
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getMessageWaitingIndicator()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getMessageWaitingIndicator()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2340
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getCallForwardingIndicator()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getCallForwardingIndicator()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2341
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " isInEmergencyCall()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->isInEmergencyCall()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2342
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 2343
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " isInEcm()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->isInEcm()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2344
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getPhoneName()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2345
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getPhoneType()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2346
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getVoiceMessageCount()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getVoiceMessageCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2347
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getActiveApnTypes()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getActiveApnTypes()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2348
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " isDataConnectivityPossible()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->isDataConnectivityPossible()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2349
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " needsOtaServiceProvisioning="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->needsOtaServiceProvisioning()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2350
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 2351
    const-string v1, "++++++++++++++++++++++++++++++++"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2354
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2358
    :goto_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 2359
    const-string v1, "++++++++++++++++++++++++++++++++"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2362
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/ServiceStateTracker;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2366
    :goto_1
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 2367
    const-string v1, "++++++++++++++++++++++++++++++++"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2370
    :try_start_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/CallTracker;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 2374
    :goto_2
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 2375
    const-string v1, "++++++++++++++++++++++++++++++++"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2378
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v1, Lcom/android/internal/telephony/RIL;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/RIL;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 2382
    :goto_3
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 2383
    const-string v1, "++++++++++++++++++++++++++++++++"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2384
    return-void

    .line 2355
    :catch_0
    move-exception v0

    .line 2356
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 2363
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 2364
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 2371
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 2372
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 2379
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 2380
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method public enableDedicateBearer(Ljava/lang/String;ZLcom/mediatek/internal/telephony/QosStatus;Lcom/mediatek/internal/telephony/TftStatus;)I
    .locals 1
    .param p1, "apnType"    # Ljava/lang/String;
    .param p2, "signalingFlag"    # Z
    .param p3, "qosStatus"    # Lcom/mediatek/internal/telephony/QosStatus;
    .param p4, "tftStatus"    # Lcom/mediatek/internal/telephony/TftStatus;

    .prologue
    .line 2537
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->enableDedicateBearer(Ljava/lang/String;ZLcom/mediatek/internal/telephony/QosStatus;Lcom/mediatek/internal/telephony/TftStatus;)I

    move-result v0

    return v0
.end method

.method public enableEnhancedVoicePrivacy(ZLandroid/os/Message;)V
    .locals 1
    .param p1, "enable"    # Z
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1518
    const-string v0, "enableEnhancedVoicePrivacy"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    .line 1519
    return-void
.end method

.method public exitEmergencyCallbackMode()V
    .locals 1

    .prologue
    .line 1728
    const-string v0, "exitEmergencyCallbackMode"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    .line 1729
    return-void
.end method

.method public getActionAttached()Ljava/lang/String;
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mActionAttached:Ljava/lang/String;

    return-object v0
.end method

.method public getActionDetached()Ljava/lang/String;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mActionDetached:Ljava/lang/String;

    return-object v0
.end method

.method public getActiveApnHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 1901
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getActiveApnString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActiveApnTypes()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1891
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getActiveApnTypes()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAllCellInfo()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1382
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/ServiceStateTracker;->getAllCellInfo()Ljava/util/List;

    move-result-object v0

    .line 1383
    .local v0, "cellInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PhoneBase;->privatizeCellInfoList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getAvoidSYSList(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 2751
    return-void
.end method

.method public getCallForwardInTimeSlot(ILandroid/os/Message;)V
    .locals 0
    .param p1, "commandInterfaceCFReason"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 2611
    return-void
.end method

.method public getCallForwardingIndicator()Z
    .locals 2

    .prologue
    .line 1436
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1437
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getVoiceCallForwardingFlag()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCallTracker()Lcom/android/internal/telephony/CallTracker;
    .locals 1

    .prologue
    .line 1348
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCdmaEriIconIndex()I
    .locals 1

    .prologue
    .line 1674
    const-string v0, "getCdmaEriIconIndex"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    .line 1675
    const/4 v0, -0x1

    return v0
.end method

.method public getCdmaEriIconMode()I
    .locals 1

    .prologue
    .line 1685
    const-string v0, "getCdmaEriIconMode"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    .line 1686
    const/4 v0, -0x1

    return v0
.end method

.method public getCdmaEriText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1694
    const-string v0, "getCdmaEriText"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    .line 1695
    const-string v0, "GSM nw, no ERI"

    return-object v0
.end method

.method public getCdmaMin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1701
    const-string v0, "getCdmaMin"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    .line 1702
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCdmaPrlVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1715
    const-string v0, "getCdmaPrlVersion"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    .line 1716
    const/4 v0, 0x0

    return-object v0
.end method

.method public getConcatenatedBearersPropertiesOfDefaultBearer(Ljava/lang/String;)[Lcom/mediatek/internal/telephony/DedicateBearerProperties;
    .locals 1
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 2566
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getConcatenatedBearersPropertiesOfDefaultBearer(Ljava/lang/String;)[Lcom/mediatek/internal/telephony/DedicateBearerProperties;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 804
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCsFallbackStatus()I
    .locals 3

    .prologue
    .line 2720
    const-string v0, "PhoneBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCsFallbackStatus is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/PhoneBase;->mCSFallbackMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2721
    iget v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCSFallbackMode:I

    return v0
.end method

.method public getCurrentUiccAppType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    .locals 2

    .prologue
    .line 1352
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 1353
    .local v0, "currentApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v0, :cond_0

    .line 1354
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v1

    .line 1356
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    goto :goto_0
.end method

.method public getDataConnectionState()Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1

    .prologue
    .line 1997
    const-string v0, "default"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PhoneBase;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    return-object v0
.end method

.method public getDeactivateCidArray(Ljava/lang/String;)[I
    .locals 1
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 2574
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getDeactivateCidArray(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public getDefaultBearerProperties(Ljava/lang/String;)Lcom/mediatek/internal/telephony/DedicateBearerProperties;
    .locals 1
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 2562
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getDefaultBearerProperties(Ljava/lang/String;)Lcom/mediatek/internal/telephony/DedicateBearerProperties;

    move-result-object v0

    return-object v0
.end method

.method public getEfRatBalancing()I
    .locals 1

    .prologue
    .line 2442
    const/16 v0, -0x100

    return v0
.end method

.method public getEnhancedVoicePrivacy(Landroid/os/Message;)V
    .locals 1
    .param p1, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1524
    const-string v0, "getEnhancedVoicePrivacy"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    .line 1525
    return-void
.end method

.method public getFacilityLock(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 2593
    return-void
.end method

.method public getFemtoCellList(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .param p1, "operatorNumeric"    # Ljava/lang/String;
    .param p2, "rat"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 2523
    return-void
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 0

    .prologue
    .line 1325
    return-object p0
.end method

.method public getIccCard()Lcom/android/internal/telephony/IccCard;
    .locals 1

    .prologue
    .line 1361
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;
    .locals 5

    .prologue
    .line 1307
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 1310
    .local v1, "uiccApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-nez v1, :cond_0

    .line 1311
    const-string v2, "PhoneBase"

    const-string v3, "getIccFileHandler: uiccApplication == null, return null"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1312
    const/4 v0, 0x0

    .line 1317
    .local v0, "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    :goto_0
    const-string v2, "PhoneBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getIccFileHandler: fh="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    return-object v0

    .line 1314
    .end local v0    # "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    .restart local v0    # "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    goto :goto_0
.end method

.method public getIccRecordsLoaded()Z
    .locals 2

    .prologue
    .line 1373
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1374
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getRecordsLoaded()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIccSerialNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1367
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1368
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getIccId()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getImsPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 2077
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    return-object v0
.end method

.method public getIsimRecords()Lcom/android/internal/telephony/uicc/IsimRecords;
    .locals 2

    .prologue
    .line 1976
    const-string v0, "PhoneBase"

    const-string v1, "getIsimRecords() is only supported on LTE devices"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1977
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLastDataConnectionFailCause(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/DcFailCause;
    .locals 1
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 2582
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getLastDataConnectionFailCause(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    move-result-object v0

    return-object v0
.end method

.method public getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;
    .locals 1
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 1906
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;

    move-result-object v0

    return-object v0
.end method

.method public getLocatedPlmn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2501
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLteOnCdmaMode()I
    .locals 1

    .prologue
    .line 2028
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getLteOnCdmaMode()I

    move-result v0

    return v0
.end method

.method public getMessageWaitingIndicator()Z
    .locals 1

    .prologue
    .line 1431
    iget v0, p0, Lcom/android/internal/telephony/PhoneBase;->mVmCount:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMsisdn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1982
    const-string v0, "getMsisdn"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedGsmMethodCall(Ljava/lang/String;)V

    .line 1983
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMvnoMatchType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2448
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMvnoPattern(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 2452
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNai()Ljava/lang/String;
    .locals 1

    .prologue
    .line 334
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNetworkCapabilities(Ljava/lang/String;)Landroid/net/NetworkCapabilities;
    .locals 1
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 1911
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getNetworkCapabilities(Ljava/lang/String;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkHideState()I
    .locals 1

    .prologue
    .line 2497
    const/4 v0, 0x0

    return v0
.end method

.method public getNetworkSelectionMode(Landroid/os/Message;)V
    .locals 1
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 1058
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getNetworkSelectionMode(Landroid/os/Message;)V

    .line 1059
    return-void
.end method

.method public getOplmnVersion(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 2763
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getOplmnVersion(Landroid/os/Message;)V

    .line 2764
    return-void
.end method

.method public getPcoPcscf(Ljava/lang/String;)Lcom/mediatek/internal/telephony/PcscfInfo;
    .locals 1
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 2558
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getPcscf(Ljava/lang/String;)Lcom/mediatek/internal/telephony/PcscfInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPcscfAddress(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 2061
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getPcscfAddress(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneId()I
    .locals 1

    .prologue
    .line 2172
    iget v0, p0, Lcom/android/internal/telephony/PhoneBase;->mPhoneId:I

    return v0
.end method

.method public getPhoneName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getPhoneType()I
.end method

.method public getPol(Landroid/os/Message;)V
    .locals 0
    .param p1, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 2508
    return-void
.end method

.method public getPolCapability(Landroid/os/Message;)V
    .locals 0
    .param p1, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 2505
    return-void
.end method

.method public getPreferredNetworkType(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 1487
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 1488
    return-void
.end method

.method public getRadioAccessFamily()I
    .locals 1

    .prologue
    .line 2295
    iget v0, p0, Lcom/android/internal/telephony/PhoneBase;->mRadioAccessFamily:I

    return v0
.end method

.method public getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;
    .locals 1

    .prologue
    .line 1341
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSignalStrength()Landroid/telephony/SignalStrength;
    .locals 2

    .prologue
    .line 1453
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    .line 1454
    .local v0, "sst":Lcom/android/internal/telephony/ServiceStateTracker;
    if-nez v0, :cond_0

    .line 1455
    new-instance v1, Landroid/telephony/SignalStrength;

    invoke-direct {v1}, Landroid/telephony/SignalStrength;-><init>()V

    .line 1457
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v1

    goto :goto_0
.end method

.method public getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;
    .locals 1

    .prologue
    .line 1242
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mSimulatedRadioControl:Lcom/android/internal/telephony/test/SimulatedRadioControl;

    return-object v0
.end method

.method public getSmscAddress(Landroid/os/Message;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1492
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getSmscAddress(Landroid/os/Message;)V

    .line 1493
    return-void
.end method

.method public abstract getState()Lcom/android/internal/telephony/PhoneConstants$State;
.end method

.method protected getStoredVoiceMessageCount()I
    .locals 7

    .prologue
    .line 1652
    const/4 v0, 0x0

    .line 1653
    .local v0, "countVoiceMessages":I
    iget-object v4, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1654
    .local v2, "sp":Landroid/content/SharedPreferences;
    const-string v4, "vm_id_key"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1655
    .local v3, "subscriberId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 1657
    .local v1, "currentSubscriberId":Ljava/lang/String;
    const-string v4, "PhoneBase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Voicemail count retrieval for subscriberId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " current subscriberId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1660
    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1663
    const-string v4, "vm_count_key"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1664
    const-string v4, "PhoneBase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Voice Mail Count from preference = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1666
    :cond_0
    return v0
.end method

.method public getSubId()I
    .locals 2

    .prologue
    .line 2165
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/PhoneBase;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result v0

    return v0
.end method

.method public getSupportedRadioAccessFamily()I
    .locals 1

    .prologue
    .line 2300
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getSupportedRadioAccessFamily()I

    move-result v0

    return v0
.end method

.method public getSvlteServiceState()Landroid/telephony/ServiceState;
    .locals 1

    .prologue
    .line 2902
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

    .prologue
    .line 375
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getUnitTestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    const/4 v0, 0x0

    .line 378
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTimeSlot()[J
    .locals 15

    .prologue
    const/16 v14, 0xc

    const/16 v13, 0xb

    const/4 v12, 0x2

    .line 2629
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "persist.radio.cfu.timeslot."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/internal/telephony/PhoneBase;->mPhoneId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2630
    .local v7, "timeSlotKey":Ljava/lang/String;
    const-string v9, ""

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2631
    .local v8, "timeSlotString":Ljava/lang/String;
    const/4 v6, 0x0

    .line 2632
    .local v6, "timeSlot":[J
    if-eqz v8, :cond_0

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 2633
    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 2634
    .local v5, "timeArray":[Ljava/lang/String;
    array-length v9, v5

    if-ne v9, v12, :cond_0

    .line 2635
    new-array v6, v12, [J

    .line 2636
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v12, :cond_0

    .line 2637
    aget-object v9, v5, v3

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    aput-wide v10, v6, v3

    .line 2638
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 2639
    .local v0, "calenar":Ljava/util/Calendar;
    aget-wide v10, v6, v3

    invoke-virtual {v0, v10, v11}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 2640
    invoke-virtual {v0, v13}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 2641
    .local v2, "hour":I
    invoke-virtual {v0, v14}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 2642
    .local v4, "min":I
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    .line 2643
    .local v1, "calenar2":Ljava/util/Calendar;
    invoke-virtual {v1, v13, v2}, Ljava/util/Calendar;->set(II)V

    .line 2644
    invoke-virtual {v1, v14, v4}, Ljava/util/Calendar;->set(II)V

    .line 2645
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    aput-wide v10, v6, v3

    .line 2636
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2649
    .end local v0    # "calenar":Ljava/util/Calendar;
    .end local v1    # "calenar2":Ljava/util/Calendar;
    .end local v2    # "hour":I
    .end local v3    # "i":I
    .end local v4    # "min":I
    .end local v5    # "timeArray":[Ljava/lang/String;
    :cond_0
    const-string v9, "PhoneBase"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "timeSlot = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v6}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2650
    return-object v6
.end method

.method public getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;
    .locals 2

    .prologue
    .line 2052
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget v1, p0, Lcom/android/internal/telephony/PhoneBase;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    return-object v0
.end method

.method public getUnitTestMode()Z
    .locals 1

    .prologue
    .line 1152
    iget-boolean v0, p0, Lcom/android/internal/telephony/PhoneBase;->mUnitTestMode:Z

    return v0
.end method

.method public getUsimServiceTable()Lcom/android/internal/telephony/uicc/UsimServiceTable;
    .locals 2

    .prologue
    .line 2042
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 2043
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getUsimServiceTable()Lcom/android/internal/telephony/uicc/UsimServiceTable;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getVoiceMessageCount()I
    .locals 1

    .prologue
    .line 1640
    iget v0, p0, Lcom/android/internal/telephony/PhoneBase;->mVmCount:I

    return v0
.end method

.method public getVoicePhoneServiceState()I
    .locals 2

    .prologue
    .line 2181
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 2182
    .local v0, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-nez v1, :cond_0

    .line 2184
    const/4 v1, 0x0

    .line 2186
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 628
    iget v10, p1, Landroid/os/Message;->what:I

    packed-switch v10, :pswitch_data_0

    .line 636
    iget-boolean v10, p0, Lcom/android/internal/telephony/PhoneBase;->mIsTheCurrentActivePhone:Z

    if-nez v10, :cond_1

    .line 637
    const-string v10, "PhoneBase"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Received message "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p1, Landroid/os/Message;->what:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "] while being destroyed. Ignoring."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    :cond_0
    :goto_0
    return-void

    .line 632
    :pswitch_0
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/PhoneBase;->handleSetSelectNetwork(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 641
    :cond_1
    iget v10, p1, Landroid/os/Message;->what:I

    sparse-switch v10, :sswitch_data_0

    .line 751
    new-instance v10, Ljava/lang/RuntimeException;

    const-string v11, "unexpected event not handled"

    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 643
    :sswitch_0
    const-string v10, "PhoneBase"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Event EVENT_CALL_RING Received state="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 645
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v10, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v10, :cond_0

    .line 646
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v8

    .line 647
    .local v8, "state":Lcom/android/internal/telephony/PhoneConstants$State;
    iget-boolean v10, p0, Lcom/android/internal/telephony/PhoneBase;->mDoesRilSendMultipleCallRing:Z

    if-nez v10, :cond_3

    sget-object v10, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v8, v10, :cond_2

    sget-object v10, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v8, v10, :cond_3

    .line 650
    :cond_2
    iget v10, p0, Lcom/android/internal/telephony/PhoneBase;->mCallRingContinueToken:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/android/internal/telephony/PhoneBase;->mCallRingContinueToken:I

    .line 651
    iget v10, p0, Lcom/android/internal/telephony/PhoneBase;->mCallRingContinueToken:I

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/PhoneBase;->sendIncomingCallRingNotification(I)V

    goto :goto_0

    .line 653
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneBase;->notifyIncomingRing()V

    goto :goto_0

    .line 659
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v8    # "state":Lcom/android/internal/telephony/PhoneConstants$State;
    :sswitch_1
    const-string v10, "PhoneBase"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Event EVENT_CALL_RING_CONTINUE Received stat="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v10, v11, :cond_0

    .line 661
    iget v10, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/PhoneBase;->sendIncomingCallRingNotification(I)V

    goto/16 :goto_0

    .line 666
    :sswitch_2
    const/4 v10, 0x2

    new-array v6, v10, [Ljava/lang/String;

    .line 667
    .local v6, "s_fun":[Ljava/lang/String;
    const/4 v10, 0x2

    new-array v7, v10, [Ljava/lang/String;

    .line 668
    .local v7, "s_rat":[Ljava/lang/String;
    const/4 v10, 0x2

    new-array v5, v10, [Ljava/lang/String;

    .line 670
    .local v5, "s":[Ljava/lang/String;
    const-string v10, "PhoneBase"

    const-string v11, "send special AT cmd to MD"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    const/4 v10, 0x0

    const-string v11, "AT+EFUN=1"

    aput-object v11, v6, v10

    .line 673
    const/4 v10, 0x1

    const-string v11, ""

    aput-object v11, v6, v10

    .line 674
    const/4 v10, 0x0

    invoke-virtual {p0, v6, v10}, Lcom/android/internal/telephony/PhoneBase;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 680
    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "AT+ERFTX=1,0,0,"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "persist.radio.charging_stop"

    const-string v13, "40"

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v5, v10

    .line 681
    const/4 v10, 0x1

    const-string v11, ""

    aput-object v11, v5, v10

    .line 682
    const/4 v10, 0x0

    invoke-virtual {p0, v5, v10}, Lcom/android/internal/telephony/PhoneBase;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 686
    .end local v5    # "s":[Ljava/lang/String;
    .end local v6    # "s_fun":[Ljava/lang/String;
    .end local v7    # "s_rat":[Ljava/lang/String;
    :sswitch_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->onUpdateIccAvailability()V

    goto/16 :goto_0

    .line 690
    :sswitch_4
    const-string v10, "PhoneBase"

    const-string v11, "Event EVENT_INITIATE_SILENT_REDIAL Received"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 692
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v10, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v10, :cond_0

    iget-object v10, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v10, :cond_0

    .line 693
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 694
    .local v2, "dialString":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 696
    const/4 v10, 0x0

    const/4 v11, 0x0

    :try_start_0
    invoke-virtual {p0, v2, v10, v11}, Lcom/android/internal/telephony/PhoneBase;->dialInternal(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;I)Lcom/android/internal/telephony/Connection;
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 697
    :catch_0
    move-exception v3

    .line 698
    .local v3, "e":Lcom/android/internal/telephony/CallStateException;
    const-string v10, "PhoneBase"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "silent redial failed: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 704
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "dialString":Ljava/lang/String;
    .end local v3    # "e":Lcom/android/internal/telephony/CallStateException;
    :sswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 705
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v10, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v10, :cond_4

    .line 706
    iget-object v10, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v10, [I

    check-cast v10, [I

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/PhoneBase;->handleSrvccStateChanged([I)V

    goto/16 :goto_0

    .line 708
    :cond_4
    const-string v10, "PhoneBase"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Srvcc exception: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 713
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 714
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v10, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v10, :cond_5

    .line 715
    iget-object v10, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v10, [B

    move-object v1, v10

    check-cast v1, [B

    .line 716
    .local v1, "data":[B
    const-string v10, "PhoneBase"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "EVENT_UNSOL_OEM_HOOK_RAW data="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v1}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 720
    .end local v1    # "data":[B
    :cond_5
    const-string v10, "PhoneBase"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "OEM hook raw exception: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 725
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 726
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/RadioCapability;

    .line 727
    .local v4, "rc":Lcom/android/internal/telephony/RadioCapability;
    iget-object v10, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v10, :cond_6

    .line 728
    const-string v10, "PhoneBase"

    const-string v11, "get phone radio capability fail,no need to change mRadioAccessFamily"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    :goto_1
    const-string v10, "PhoneBase"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "EVENT_GET_RADIO_CAPABILITY :phone "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/internal/telephony/PhoneBase;->mPhoneId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", RAF : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/internal/telephony/PhoneBase;->mRadioAccessFamily:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 731
    :cond_6
    invoke-virtual {v4}, Lcom/android/internal/telephony/RadioCapability;->getRadioAccessFamily()I

    move-result v10

    iput v10, p0, Lcom/android/internal/telephony/PhoneBase;->mRadioAccessFamily:I

    goto :goto_1

    .line 739
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v4    # "rc":Lcom/android/internal/telephony/RadioCapability;
    :sswitch_8
    iget v9, p1, Landroid/os/Message;->arg1:I

    .line 740
    .local v9, "token":I
    const-string v10, "PhoneBase"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Event EVENT_SIP_CALL_RING Received state="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " token="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v10, v11, :cond_0

    iget v10, p0, Lcom/android/internal/telephony/PhoneBase;->mSipCallRingContinueToken:I

    if-ne v9, v10, :cond_0

    .line 742
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneBase;->notifyIncomingRing()V

    .line 743
    iget v10, p0, Lcom/android/internal/telephony/PhoneBase;->mSipCallRingContinueToken:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/android/internal/telephony/PhoneBase;->mSipCallRingContinueToken:I

    .line 744
    const/16 v10, 0x25

    iget v11, p0, Lcom/android/internal/telephony/PhoneBase;->mSipCallRingContinueToken:I

    const/4 v12, 0x0

    invoke-virtual {p0, v10, v11, v12}, Lcom/android/internal/telephony/PhoneBase;->obtainMessage(III)Landroid/os/Message;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/telephony/PhoneBase;->mCallRingDelay:I

    int-to-long v12, v11

    invoke-virtual {p0, v10, v12, v13}, Lcom/android/internal/telephony/PhoneBase;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 628
    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 641
    :sswitch_data_0
    .sparse-switch
        0xe -> :sswitch_0
        0xf -> :sswitch_1
        0x1e -> :sswitch_3
        0x1f -> :sswitch_5
        0x20 -> :sswitch_4
        0x22 -> :sswitch_6
        0x23 -> :sswitch_7
        0x25 -> :sswitch_8
        0x2d -> :sswitch_2
    .end sparse-switch
.end method

.method public hangupAll()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 2436
    return-void
.end method

.method public hasMatchedTetherApnSetting()Z
    .locals 1

    .prologue
    .line 1896
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->hasMatchedTetherApnSetting()Z

    move-result v0

    return v0
.end method

.method public invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1539
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 1540
    return-void
.end method

.method public invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "strings"    # [Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1544
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 1545
    return-void
.end method

.method public isCspPlmnEnabled()Z
    .locals 1

    .prologue
    .line 1970
    const-string v0, "isCspPlmnEnabled"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedGsmMethodCall(Ljava/lang/String;)V

    .line 1971
    const/4 v0, 0x0

    return v0
.end method

.method public isDataConnectivityPossible()Z
    .locals 1

    .prologue
    .line 1916
    const-string v0, "default"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PhoneBase;->isDataConnectivityPossible(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isDataConnectivityPossible(Ljava/lang/String;)Z
    .locals 1
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 1921
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isDataPossible(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDedicateBearer(I)Z
    .locals 1
    .param p1, "cid"    # I

    .prologue
    .line 2586
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isDedicateBearer(I)Z

    move-result v0

    return v0
.end method

.method public isDnsCheckDisabled()Z
    .locals 1

    .prologue
    .line 829
    iget-boolean v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDnsCheckDisabled:Z

    return v0
.end method

.method public isEmergencyCid(I)Z
    .locals 1
    .param p1, "cid"    # I

    .prologue
    .line 2578
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isEmergencyCid(I)Z

    move-result v0

    return v0
.end method

.method public isFeatureSupported(Lcom/android/internal/telephony/Phone$FeatureType;)Z
    .locals 3
    .param p1, "feature"    # Lcom/android/internal/telephony/Phone$FeatureType;

    .prologue
    .line 2921
    sget-object v0, Lcom/android/internal/telephony/Phone$FeatureType;->VOLTE_ENHANCED_CONFERENCE:Lcom/android/internal/telephony/Phone$FeatureType;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/Phone$FeatureType;->VOLTE_CONF_REMOVE_MEMBER:Lcom/android/internal/telephony/Phone$FeatureType;

    if-ne p1, v0, :cond_1

    .line 2923
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-eqz v0, :cond_1

    .line 2924
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isFeatureSupported(Lcom/android/internal/telephony/Phone$FeatureType;)Z

    move-result v0

    .line 2931
    :goto_0
    return v0

    .line 2930
    :cond_1
    const-string v0, "PhoneBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isFeatureSupported = False with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2931
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isImsRegistered()Z
    .locals 6

    .prologue
    .line 2250
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 2251
    .local v0, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    const/4 v1, 0x0

    .line 2252
    .local v1, "isImsRegistered":Z
    if-eqz v0, :cond_1

    .line 2253
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isImsRegistered()Z

    move-result v1

    .line 2260
    :cond_0
    :goto_0
    const-string v3, "PhoneBase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isImsRegistered ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2261
    return v1

    .line 2255
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v2

    .line 2256
    .local v2, "sst":Lcom/android/internal/telephony/ServiceStateTracker;
    if-eqz v2, :cond_0

    .line 2257
    invoke-virtual {v2}, Lcom/android/internal/telephony/ServiceStateTracker;->isImsRegistered()Z

    move-result v1

    goto :goto_0
.end method

.method public isInEcm()Z
    .locals 1

    .prologue
    .line 1630
    const/4 v0, 0x0

    return v0
.end method

.method public isInEmergencyCall()Z
    .locals 1

    .prologue
    .line 1621
    const/4 v0, 0x0

    return v0
.end method

.method public isMccMncMarkedAsNonRoaming(Ljava/lang/String;)Z
    .locals 1
    .param p1, "mccMnc"    # Ljava/lang/String;

    .prologue
    .line 2232
    const-string v0, "gsm_non_roaming_list_"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/PhoneBase;->getRoamingOverrideHelper(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isMccMncMarkedAsRoaming(Ljava/lang/String;)Z
    .locals 1
    .param p1, "mccMnc"    # Ljava/lang/String;

    .prologue
    .line 2228
    const-string v0, "gsm_roaming_list_"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/PhoneBase;->getRoamingOverrideHelper(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isMinInfoReady()Z
    .locals 1

    .prologue
    .line 1708
    const-string v0, "isMinInfoReady"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    .line 1709
    const/4 v0, 0x0

    return v0
.end method

.method public isOtaSpNumber(Ljava/lang/String;)Z
    .locals 1
    .param p1, "dialStr"    # Ljava/lang/String;

    .prologue
    .line 1770
    const/4 v0, 0x0

    return v0
.end method

.method public isRadioAvailable()Z
    .locals 1

    .prologue
    .line 2280
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isAvailable()Z

    move-result v0

    return v0
.end method

.method public isSidMarkedAsNonRoaming(I)Z
    .locals 2
    .param p1, "SID"    # I

    .prologue
    .line 2241
    const-string v0, "cdma_non_roaming_list_"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/PhoneBase;->getRoamingOverrideHelper(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSidMarkedAsRoaming(I)Z
    .locals 2
    .param p1, "SID"    # I

    .prologue
    .line 2236
    const-string v0, "cdma_roaming_list_"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/PhoneBase;->getRoamingOverrideHelper(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public migrate(Landroid/os/RegistrantList;Landroid/os/RegistrantList;)V
    .locals 3
    .param p1, "to"    # Landroid/os/RegistrantList;
    .param p2, "from"    # Landroid/os/RegistrantList;

    .prologue
    .line 892
    invoke-virtual {p2}, Landroid/os/RegistrantList;->removeCleared()V

    .line 893
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p2}, Landroid/os/RegistrantList;->size()I

    move-result v1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 894
    invoke-virtual {p2, v0}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Registrant;

    invoke-virtual {p1, v2}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 893
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 896
    :cond_0
    return-void
.end method

.method public migrateFrom(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 2
    .param p1, "from"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 879
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mHandoverRegistrants:Landroid/os/RegistrantList;

    iget-object v1, p1, Lcom/android/internal/telephony/PhoneBase;->mHandoverRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PhoneBase;->migrate(Landroid/os/RegistrantList;Landroid/os/RegistrantList;)V

    .line 880
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mPreciseCallStateRegistrants:Landroid/os/RegistrantList;

    iget-object v1, p1, Lcom/android/internal/telephony/PhoneBase;->mPreciseCallStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PhoneBase;->migrate(Landroid/os/RegistrantList;Landroid/os/RegistrantList;)V

    .line 881
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mNewRingingConnectionRegistrants:Landroid/os/RegistrantList;

    iget-object v1, p1, Lcom/android/internal/telephony/PhoneBase;->mNewRingingConnectionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PhoneBase;->migrate(Landroid/os/RegistrantList;Landroid/os/RegistrantList;)V

    .line 882
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIncomingRingRegistrants:Landroid/os/RegistrantList;

    iget-object v1, p1, Lcom/android/internal/telephony/PhoneBase;->mIncomingRingRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PhoneBase;->migrate(Landroid/os/RegistrantList;Landroid/os/RegistrantList;)V

    .line 883
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    iget-object v1, p1, Lcom/android/internal/telephony/PhoneBase;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PhoneBase;->migrate(Landroid/os/RegistrantList;Landroid/os/RegistrantList;)V

    .line 884
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mServiceStateRegistrants:Landroid/os/RegistrantList;

    iget-object v1, p1, Lcom/android/internal/telephony/PhoneBase;->mServiceStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PhoneBase;->migrate(Landroid/os/RegistrantList;Landroid/os/RegistrantList;)V

    .line 885
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    iget-object v1, p1, Lcom/android/internal/telephony/PhoneBase;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PhoneBase;->migrate(Landroid/os/RegistrantList;Landroid/os/RegistrantList;)V

    .line 886
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mMmiRegistrants:Landroid/os/RegistrantList;

    iget-object v1, p1, Lcom/android/internal/telephony/PhoneBase;->mMmiRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PhoneBase;->migrate(Landroid/os/RegistrantList;Landroid/os/RegistrantList;)V

    .line 887
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

    iget-object v1, p1, Lcom/android/internal/telephony/PhoneBase;->mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PhoneBase;->migrate(Landroid/os/RegistrantList;Landroid/os/RegistrantList;)V

    .line 888
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

    iget-object v1, p1, Lcom/android/internal/telephony/PhoneBase;->mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PhoneBase;->migrate(Landroid/os/RegistrantList;Landroid/os/RegistrantList;)V

    .line 889
    return-void
.end method

.method public modifyDedicateBearer(ILcom/mediatek/internal/telephony/QosStatus;Lcom/mediatek/internal/telephony/TftStatus;)I
    .locals 1
    .param p1, "cid"    # I
    .param p2, "qosStatus"    # Lcom/mediatek/internal/telephony/QosStatus;
    .param p3, "tftStatus"    # Lcom/mediatek/internal/telephony/TftStatus;

    .prologue
    .line 2545
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->modifyDedicateBearer(ILcom/mediatek/internal/telephony/QosStatus;Lcom/mediatek/internal/telephony/TftStatus;)I

    move-result v0

    return v0
.end method

.method public needsOtaServiceProvisioning()Z
    .locals 1

    .prologue
    .line 1761
    const/4 v0, 0x0

    return v0
.end method

.method public notifyCallForwardingIndicator()V
    .locals 2

    .prologue
    .line 2011
    const-string v0, "PhoneBase"

    const-string v1, "Error! This function should never be executed, inactive CDMAPhone."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2012
    return-void
.end method

.method public notifyCallInfoChanged(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "callInfo"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 2678
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 2679
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mCallInfoChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2680
    return-void
.end method

.method public notifyCdmaCallAccepted()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2848
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v1, p0, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 2849
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mCdmaCallAcceptedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2850
    return-void
.end method

.method public notifyCellInfo(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1606
    .local p1, "cellInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->privatizeCellInfoList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/android/internal/telephony/PhoneNotifier;->notifyCellInfo(Lcom/android/internal/telephony/Phone;Ljava/util/List;)V

    .line 1607
    return-void
.end method

.method public notifyDataActivity()V
    .locals 1

    .prologue
    .line 1569
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyDataActivity(Lcom/android/internal/telephony/Phone;)V

    .line 1570
    return-void
.end method

.method public notifyDataConnection(Ljava/lang/String;)V
    .locals 7
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 1591
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getActiveApnTypes()[Ljava/lang/String;

    move-result-object v4

    .line 1592
    .local v4, "types":[Ljava/lang/String;
    move-object v1, v4

    .local v1, "arr$":[Ljava/lang/String;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 1593
    .local v0, "apnType":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PhoneBase;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v6

    invoke-interface {v5, p0, p1, v0, v6}, Lcom/android/internal/telephony/PhoneNotifier;->notifyDataConnection(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneConstants$DataState;)V

    .line 1592
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1595
    .end local v0    # "apnType":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "apnType"    # Ljava/lang/String;

    .prologue
    .line 1587
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/PhoneBase;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v1

    invoke-interface {v0, p0, p1, p2, v1}, Lcom/android/internal/telephony/PhoneNotifier;->notifyDataConnection(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneConstants$DataState;)V

    .line 1588
    return-void
.end method

.method public notifyDataConnection(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneConstants$DataState;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "apnType"    # Ljava/lang/String;
    .param p3, "state"    # Lcom/android/internal/telephony/PhoneConstants$DataState;

    .prologue
    .line 1583
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/internal/telephony/PhoneNotifier;->notifyDataConnection(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneConstants$DataState;)V

    .line 1584
    return-void
.end method

.method public notifyDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "apnType"    # Ljava/lang/String;

    .prologue
    .line 2015
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0, p1, p2}, Lcom/android/internal/telephony/PhoneNotifier;->notifyDataConnectionFailed(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;)V

    .line 2016
    return-void
.end method

.method public notifyDataConnectionRealTimeInfo(Landroid/telephony/DataConnectionRealTimeInfo;)V
    .locals 1
    .param p1, "dcRtInfo"    # Landroid/telephony/DataConnectionRealTimeInfo;

    .prologue
    .line 1610
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0, p1}, Lcom/android/internal/telephony/PhoneNotifier;->notifyDataConnectionRealTimeInfo(Lcom/android/internal/telephony/Phone;Landroid/telephony/DataConnectionRealTimeInfo;)V

    .line 1611
    return-void
.end method

.method protected notifyDisconnectP(Lcom/android/internal/telephony/Connection;)V
    .locals 2
    .param p1, "cn"    # Lcom/android/internal/telephony/Connection;

    .prologue
    const/4 v1, 0x0

    .line 1162
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1163
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1164
    return-void
.end method

.method public notifyHandoverStateChanged(Lcom/android/internal/telephony/Connection;)V
    .locals 2
    .param p1, "cn"    # Lcom/android/internal/telephony/Connection;

    .prologue
    const/4 v1, 0x0

    .line 874
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 875
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mHandoverRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 876
    return-void
.end method

.method public notifyMessageWaitingIndicator()V
    .locals 1

    .prologue
    .line 1574
    iget-boolean v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIsVoiceCapable:Z

    if-nez v0, :cond_0

    .line 1579
    :goto_0
    return-void

    .line 1578
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyMessageWaitingChanged(Lcom/android/internal/telephony/Phone;)V

    goto :goto_0
.end method

.method public notifyNewRingingConnectionP(Lcom/android/internal/telephony/Connection;)V
    .locals 3
    .param p1, "cn"    # Lcom/android/internal/telephony/Connection;

    .prologue
    const/4 v2, 0x0

    .line 1931
    iget-boolean v1, p0, Lcom/android/internal/telephony/PhoneBase;->mIsVoiceCapable:Z

    if-nez v1, :cond_0

    .line 1935
    :goto_0
    return-void

    .line 1933
    :cond_0
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v2, p1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1934
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mNewRingingConnectionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0
.end method

.method public notifyOtaspChanged(I)V
    .locals 1
    .param p1, "otaspMode"    # I

    .prologue
    .line 1598
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0, p1}, Lcom/android/internal/telephony/PhoneNotifier;->notifyOtaspChanged(Lcom/android/internal/telephony/Phone;I)V

    .line 1599
    return-void
.end method

.method protected notifyPreciseCallStateChangedP()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 851
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v1, p0, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 852
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mPreciseCallStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 854
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyPreciseCallState(Lcom/android/internal/telephony/Phone;)V

    .line 855
    return-void
.end method

.method public notifyPreciseDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "apnType"    # Ljava/lang/String;
    .param p3, "apn"    # Ljava/lang/String;
    .param p4, "failCause"    # Ljava/lang/String;

    .prologue
    .line 2020
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/PhoneNotifier;->notifyPreciseDataConnectionFailed(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2021
    return-void
.end method

.method protected notifyServiceStateChangedP(Landroid/telephony/ServiceState;)V
    .locals 4
    .param p1, "ss"    # Landroid/telephony/ServiceState;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 1225
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1226
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mServiceStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1228
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyServiceState(Lcom/android/internal/telephony/Phone;)V

    .line 1230
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const-string v1, "ril.charging_stop_enable"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1233
    const/16 v1, 0x2d

    invoke-virtual {p0, v1, v3, v3}, Lcom/android/internal/telephony/PhoneBase;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v2, 0xea60

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/PhoneBase;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1237
    :cond_0
    return-void
.end method

.method public notifyServiceStateChangedPForRegistrants(Landroid/telephony/ServiceState;)V
    .locals 2
    .param p1, "ss"    # Landroid/telephony/ServiceState;

    .prologue
    const/4 v1, 0x0

    .line 2873
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 2874
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mServiceStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2875
    return-void
.end method

.method protected notifyServiceStateChangedPForSvlte(Landroid/telephony/ServiceState;)V
    .locals 4
    .param p1, "ss"    # Landroid/telephony/ServiceState;

    .prologue
    const/4 v2, 0x0

    .line 2858
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0, p1}, Lcom/android/internal/telephony/PhoneNotifier;->notifySvlteServiceStateChanged(Lcom/android/internal/telephony/Phone;Landroid/telephony/ServiceState;)V

    .line 2860
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const-string v0, "ril.charging_stop_enable"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2865
    const/16 v0, 0x2d

    invoke-virtual {p0, v0, v2, v2}, Lcom/android/internal/telephony/PhoneBase;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    const-wide/32 v2, 0xea60

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/telephony/PhoneBase;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2867
    :cond_0
    return-void
.end method

.method public notifySignalStrength()V
    .locals 1

    .prologue
    .line 1602
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifySignalStrength(Lcom/android/internal/telephony/Phone;)V

    .line 1603
    return-void
.end method

.method protected notifySipCallRing()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2388
    const-string v0, "PhoneBase"

    const-string v1, "notify Sip Call Ring"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2389
    iput v2, p0, Lcom/android/internal/telephony/PhoneBase;->mSipCallRingContinueToken:I

    .line 2390
    const/16 v0, 0x25

    iget v1, p0, Lcom/android/internal/telephony/PhoneBase;->mSipCallRingContinueToken:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PhoneBase;->sendMessage(Landroid/os/Message;)Z

    .line 2391
    return-void
.end method

.method public notifySvlteServiceStateChangedPForRegistrants(Landroid/telephony/ServiceState;)V
    .locals 2
    .param p1, "ss"    # Landroid/telephony/ServiceState;

    .prologue
    const/4 v1, 0x0

    .line 2896
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 2897
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mSvlteServiceStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2898
    return-void
.end method

.method public notifyVoLteServiceStateChanged(Landroid/telephony/VoLteServiceState;)V
    .locals 1
    .param p1, "lteState"    # Landroid/telephony/VoLteServiceState;

    .prologue
    .line 1614
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0, p1}, Lcom/android/internal/telephony/PhoneNotifier;->notifyVoLteServiceStateChanged(Lcom/android/internal/telephony/Phone;Landroid/telephony/VoLteServiceState;)V

    .line 1615
    return-void
.end method

.method public nvReadItem(ILandroid/os/Message;)V
    .locals 1
    .param p1, "itemID"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1549
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->nvReadItem(ILandroid/os/Message;)V

    .line 1550
    return-void
.end method

.method public nvResetConfig(ILandroid/os/Message;)V
    .locals 1
    .param p1, "resetType"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1564
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->nvResetConfig(ILandroid/os/Message;)V

    .line 1565
    return-void
.end method

.method public nvWriteCdmaPrl([BLandroid/os/Message;)V
    .locals 1
    .param p1, "preferredRoamingList"    # [B
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1559
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->nvWriteCdmaPrl([BLandroid/os/Message;)V

    .line 1560
    return-void
.end method

.method public nvWriteItem(ILjava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "itemID"    # I
    .param p2, "itemValue"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 1554
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->nvWriteItem(ILjava/lang/String;Landroid/os/Message;)V

    .line 1555
    return-void
.end method

.method protected abstract onUpdateIccAvailability()V
.end method

.method public pcscfDiscovery(Ljava/lang/String;ILandroid/os/Message;)I
    .locals 1
    .param p1, "apnType"    # Ljava/lang/String;
    .param p2, "cid"    # I
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 2554
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->pcscfDiscovery(Ljava/lang/String;ILandroid/os/Message;)I

    move-result v0

    return v0
.end method

.method public queryAvailableBandMode(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 1534
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->queryAvailableBandMode(Landroid/os/Message;)V

    .line 1535
    return-void
.end method

.method public queryCDMANetworkInfo(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 2755
    return-void
.end method

.method public queryCdmaRoamingPreference(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 1445
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->queryCdmaRoamingPreference(Landroid/os/Message;)V

    .line 1446
    return-void
.end method

.method public queryPhbStorageInfo(ILandroid/os/Message;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 2470
    return-void
.end method

.method public queryTTYMode(Landroid/os/Message;)V
    .locals 1
    .param p1, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1512
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->queryTTYMode(Landroid/os/Message;)V

    .line 1513
    return-void
.end method

.method public refreshSpnDisplay()V
    .locals 0

    .prologue
    .line 2493
    return-void
.end method

.method public registerFoT53ClirlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1849
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerFoT53ClirlInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1850
    return-void
.end method

.method public registerForCallInfoChangedNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2665
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCallInfoChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2666
    return-void
.end method

.method public registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1776
    const-string v0, "registerForCallWaiting"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    .line 1777
    return-void
.end method

.method public registerForCdmaCallAccepted(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2831
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->checkCorrectThread(Landroid/os/Handler;)V

    .line 2832
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCdmaCallAcceptedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2833
    return-void
.end method

.method public registerForCdmaOtaStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1734
    const-string v0, "registerForCdmaOtaStatusChange"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    .line 1735
    return-void
.end method

.method public registerForCipherIndication(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2412
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCipherIndicationRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2413
    return-void
.end method

.method public registerForCrssSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2396
    return-void
.end method

.method public registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 969
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->checkCorrectThread(Landroid/os/Handler;)V

    .line 971
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 972
    return-void
.end method

.method public registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1809
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1810
    return-void
.end method

.method public registerForEcmTimerReset(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1788
    const-string v0, "registerForEcmTimerReset"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    .line 1789
    return-void
.end method

.method public registerForEngModeNetworkInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2806
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForEngModeNetworkInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2807
    return-void
.end method

.method public registerForHandoverStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 859
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->checkCorrectThread(Landroid/os/Handler;)V

    .line 860
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mHandoverRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 861
    return-void
.end method

.method public registerForImsConferenceCallNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2657
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mImsConferenceCallRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2658
    return-void
.end method

.method public registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 942
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 943
    return-void
.end method

.method public registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 930
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 931
    return-void
.end method

.method public registerForIncomingRing(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 955
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->checkCorrectThread(Landroid/os/Handler;)V

    .line 957
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIncomingRingRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 958
    return-void
.end method

.method public registerForLineControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1839
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForLineControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1840
    return-void
.end method

.method public registerForMccMncChange(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2776
    return-void
.end method

.method public registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1011
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->checkCorrectThread(Landroid/os/Handler;)V

    .line 1013
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1014
    return-void
.end method

.method public registerForMmiInitiate(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 997
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->checkCorrectThread(Landroid/os/Handler;)V

    .line 999
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mMmiRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1000
    return-void
.end method

.method public registerForNeighboringInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2474
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForNeighboringInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2475
    return-void
.end method

.method public registerForNetworkInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2482
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForNetworkInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2483
    return-void
.end method

.method public registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 916
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->checkCorrectThread(Landroid/os/Handler;)V

    .line 918
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mNewRingingConnectionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 919
    return-void
.end method

.method public registerForNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1819
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1820
    return-void
.end method

.method public registerForOnHoldTone(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1196
    return-void
.end method

.method public registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 835
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->checkCorrectThread(Landroid/os/Handler;)V

    .line 837
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mPreciseCallStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 838
    return-void
.end method

.method public registerForRadioCapabilityChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2305
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioCapabilityChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2306
    return-void
.end method

.method public registerForRadioOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1881
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mRadioOffOrNotAvailableRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1882
    return-void
.end method

.method public registerForRedirectedNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1829
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForRedirectedNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1830
    return-void
.end method

.method public registerForResendIncallMute(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1206
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForResendIncallMute(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1207
    return-void
.end method

.method public registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1184
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1185
    return-void
.end method

.method public registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1170
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->checkCorrectThread(Landroid/os/Handler;)V

    .line 1172
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mServiceStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->add(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1173
    return-void
.end method

.method public registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1799
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1800
    return-void
.end method

.method public registerForSimRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1025
    const-string v0, "registerForSimRecordsLoaded"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    .line 1026
    return-void
.end method

.method public registerForSpeechCodecInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2424
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->checkCorrectThread(Landroid/os/Handler;)V

    .line 2425
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mSpeechCodecInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2426
    return-void
.end method

.method public registerForSubscriptionInfoReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1746
    const-string v0, "registerForSubscriptionInfoReady"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    .line 1747
    return-void
.end method

.method public registerForSuppServiceFailed(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 983
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->checkCorrectThread(Landroid/os/Handler;)V

    .line 985
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 986
    return-void
.end method

.method public registerForSvlteServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2880
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->checkCorrectThread(Landroid/os/Handler;)V

    .line 2882
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mSvlteServiceStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->add(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2883
    return-void
.end method

.method public registerForT53AudioControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1859
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForT53AudioControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1860
    return-void
.end method

.method public registerForTtyModeReceived(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1034
    return-void
.end method

.method public registerForUnknownConnection(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 901
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->checkCorrectThread(Landroid/os/Handler;)V

    .line 903
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 904
    return-void
.end method

.method public registerForVoiceCallIncomingIndication(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2403
    const-string v0, "PhoneBase"

    const-string v1, "registerForVoiceCallIncomingIndication"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2404
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mVoiceCallIncomingIndicationRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2405
    return-void
.end method

.method public relinquishOwnershipOfImsPhone()Lcom/android/internal/telephony/imsphone/ImsPhone;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2082
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mImsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2083
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-nez v1, :cond_0

    .line 2084
    monitor-exit v2

    .line 2092
    :goto_0
    return-object v0

    .line 2086
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 2087
    .local v0, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 2089
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/CallManager;->unregisterPhone(Lcom/android/internal/telephony/Phone;)V

    .line 2090
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->unregisterForSilentRedial(Landroid/os/Handler;)V

    .line 2092
    monitor-exit v2

    goto :goto_0

    .line 2093
    .end local v0    # "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeReferences()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 598
    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mSmsStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    .line 599
    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mSmsUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    .line 600
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 601
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 602
    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .line 603
    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 605
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 606
    .local v0, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    if-eqz v0, :cond_0

    .line 607
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->removeReferences()V

    .line 608
    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 610
    :cond_0
    return-void
.end method

.method public requestSwitchHPF(ZLandroid/os/Message;)V
    .locals 0
    .param p1, "enableHPF"    # Z
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 2743
    return-void
.end method

.method public restoreSavedNetworkSelection(Landroid/os/Message;)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 1133
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneBase;->getSavedNetworkSelection()Ljava/lang/String;

    move-result-object v0

    .line 1136
    .local v0, "networkSelection":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1137
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/CommandsInterface;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    .line 1141
    :goto_0
    return-void

    .line 1139
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->setNetworkSelectionModeManual(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public resumeCdmaRegister(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 2794
    return-void
.end method

.method public saveTimeSlot([J)V
    .locals 6
    .param p1, "timeSlot"    # [J

    .prologue
    .line 2619
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "persist.radio.cfu.timeslot."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/PhoneBase;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2620
    .local v0, "timeSlotKey":Ljava/lang/String;
    const-string v1, ""

    .line 2621
    .local v1, "timeSlotString":Ljava/lang/String;
    if-eqz p1, :cond_0

    array-length v2, p1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 2622
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    aget-wide v4, p1, v3

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    aget-wide v4, p1, v3

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2624
    :cond_0
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2625
    const-string v2, "PhoneBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "timeSlotString = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2626
    return-void
.end method

.method public selectFemtoCell(Lcom/mediatek/internal/telephony/FemtoCellInfo;Landroid/os/Message;)V
    .locals 0
    .param p1, "femtocell"    # Lcom/mediatek/internal/telephony/FemtoCellInfo;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 2531
    return-void
.end method

.method public selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V
    .locals 4
    .param p1, "network"    # Lcom/android/internal/telephony/OperatorInfo;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1065
    new-instance v1, Lcom/android/internal/telephony/PhoneBase$NetworkSelectMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/PhoneBase$NetworkSelectMessage;-><init>()V

    .line 1066
    .local v1, "nsm":Lcom/android/internal/telephony/PhoneBase$NetworkSelectMessage;
    iput-object p2, v1, Lcom/android/internal/telephony/PhoneBase$NetworkSelectMessage;->message:Landroid/os/Message;

    .line 1067
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/PhoneBase$NetworkSelectMessage;->operatorNumeric:Ljava/lang/String;

    .line 1068
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/PhoneBase$NetworkSelectMessage;->operatorAlphaLong:Ljava/lang/String;

    .line 1070
    const/16 v2, 0x10

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/PhoneBase;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1071
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lcom/android/internal/telephony/CommandsInterface;->setNetworkSelectionModeManual(Ljava/lang/String;Landroid/os/Message;)V

    .line 1073
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/PhoneBase;->updateSavedNetworkOperator(Lcom/android/internal/telephony/PhoneBase$NetworkSelectMessage;)V

    .line 1074
    return-void
.end method

.method public sendBtSimProfile(IILjava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "nAction"    # I
    .param p2, "nType"    # I
    .param p3, "strData"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 2460
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/CommandsInterface;->sendBTSIMProfile(IILjava/lang/String;Landroid/os/Message;)V

    .line 2461
    return-void
.end method

.method public sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V
    .locals 1
    .param p1, "dtmfString"    # Ljava/lang/String;
    .param p2, "on"    # I
    .param p3, "off"    # I
    .param p4, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1722
    const-string v0, "sendBurstDtmf"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    .line 1723
    return-void
.end method

.method public setAvoidSYS(ZLandroid/os/Message;)V
    .locals 0
    .param p1, "avoidSYS"    # Z
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 2747
    return-void
.end method

.method public setBandMode(ILandroid/os/Message;)V
    .locals 1
    .param p1, "bandMode"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1529
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setBandMode(ILandroid/os/Message;)V

    .line 1530
    return-void
.end method

.method public setCallForwardInTimeSlot(IILjava/lang/String;I[JLandroid/os/Message;)V
    .locals 0
    .param p1, "commandInterfaceCFAction"    # I
    .param p2, "commandInterfaceCFReason"    # I
    .param p3, "dialingNumber"    # Ljava/lang/String;
    .param p4, "timerSeconds"    # I
    .param p5, "timeSlot"    # [J
    .param p6, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 2616
    return-void
.end method

.method public setCdmaRoamingPreference(ILandroid/os/Message;)V
    .locals 1
    .param p1, "cdmaRoamingType"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1466
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setCdmaRoamingPreference(ILandroid/os/Message;)V

    .line 1467
    return-void
.end method

.method public setCdmaSubscription(ILandroid/os/Message;)V
    .locals 1
    .param p1, "cdmaSubscriptionType"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1474
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setCdmaSubscriptionSource(ILandroid/os/Message;)V

    .line 1475
    return-void
.end method

.method public setCellInfoListRate(I)V
    .locals 2
    .param p1, "rateInMillis"    # I

    .prologue
    .line 1423
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->setCellInfoListRate(ILandroid/os/Message;)V

    .line 1425
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->setCellInfoRate(I)V

    .line 1426
    return-void
.end method

.method public setCsFallbackStatus(I)V
    .locals 3
    .param p1, "newStatus"    # I

    .prologue
    .line 2734
    const-string v0, "PhoneBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCsFallbackStatus to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2735
    iput p1, p0, Lcom/android/internal/telephony/PhoneBase;->mCSFallbackMode:I

    .line 2736
    return-void
.end method

.method public setDefaultBearerConfig(Ljava/lang/String;Lcom/mediatek/internal/telephony/DefaultBearerConfig;)I
    .locals 1
    .param p1, "apnType"    # Ljava/lang/String;
    .param p2, "defaultBearerConfig"    # Lcom/mediatek/internal/telephony/DefaultBearerConfig;

    .prologue
    .line 2570
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setDefaultBearerConfig(Ljava/lang/String;Lcom/mediatek/internal/telephony/DefaultBearerConfig;)I

    move-result v0

    return v0
.end method

.method public setEchoSuppressionEnabled()V
    .locals 0

    .prologue
    .line 1218
    return-void
.end method

.method public setFacilityLock(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 2597
    return-void
.end method

.method public setImsRegistrationState(Z)V
    .locals 1
    .param p1, "registered"    # Z

    .prologue
    .line 2069
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setImsRegistrationState(Z)V

    .line 2070
    return-void
.end method

.method public setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 1045
    new-instance v1, Lcom/android/internal/telephony/PhoneBase$NetworkSelectMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/PhoneBase$NetworkSelectMessage;-><init>()V

    .line 1046
    .local v1, "nsm":Lcom/android/internal/telephony/PhoneBase$NetworkSelectMessage;
    iput-object p1, v1, Lcom/android/internal/telephony/PhoneBase$NetworkSelectMessage;->message:Landroid/os/Message;

    .line 1047
    const-string v2, ""

    iput-object v2, v1, Lcom/android/internal/telephony/PhoneBase$NetworkSelectMessage;->operatorNumeric:Ljava/lang/String;

    .line 1048
    const-string v2, ""

    iput-object v2, v1, Lcom/android/internal/telephony/PhoneBase$NetworkSelectMessage;->operatorAlphaLong:Ljava/lang/String;

    .line 1050
    const/16 v2, 0x11

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/PhoneBase;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1051
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, v0}, Lcom/android/internal/telephony/CommandsInterface;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    .line 1053
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/PhoneBase;->updateSavedNetworkOperator(Lcom/android/internal/telephony/PhoneBase$NetworkSelectMessage;)V

    .line 1054
    return-void
.end method

.method public setNetworkSelectionModeSemiAutomatic(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V
    .locals 0
    .param p1, "network"    # Lcom/android/internal/telephony/OperatorInfo;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 2518
    return-void
.end method

.method public setOnEcbModeExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1870
    const-string v0, "setOnEcbModeExitResponse"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    .line 1871
    return-void
.end method

.method public setOperatorBrandOverride(Ljava/lang/String;)Z
    .locals 1
    .param p1, "brand"    # Ljava/lang/String;

    .prologue
    .line 2191
    const/4 v0, 0x0

    return v0
.end method

.method public setPhoneId(I)V
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    .line 2818
    iput p1, p0, Lcom/android/internal/telephony/PhoneBase;->mPhoneId:I

    .line 2820
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->setInstanceId(I)V

    .line 2821
    return-void
.end method

.method public setPolEntry(Lcom/mediatek/internal/telephony/NetworkInfoWithAcT;Landroid/os/Message;)V
    .locals 0
    .param p1, "networkWithAct"    # Lcom/mediatek/internal/telephony/NetworkInfoWithAcT;
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 2511
    return-void
.end method

.method public setPreferredNetworkType(ILandroid/os/Message;)V
    .locals 1
    .param p1, "networkType"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1482
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 1483
    return-void
.end method

.method public setRadioAccessFamily(I)V
    .locals 3
    .param p1, "radioAccessFamily"    # I

    .prologue
    .line 2908
    const-string v0, "PhoneBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRadioAccessFamily: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2909
    iput p1, p0, Lcom/android/internal/telephony/PhoneBase;->mRadioAccessFamily:I

    .line 2910
    return-void
.end method

.method public setRadioCapability(Lcom/android/internal/telephony/RadioCapability;Landroid/os/Message;)V
    .locals 1
    .param p1, "rc"    # Lcom/android/internal/telephony/RadioCapability;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 2290
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setRadioCapability(Lcom/android/internal/telephony/RadioCapability;Landroid/os/Message;)V

    .line 2291
    return-void
.end method

.method public setRoamingOverride(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 2198
    .local p1, "gsmRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "gsmNonRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "cdmaRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "cdmaNonRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v0

    .line 2199
    .local v0, "iccId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2200
    const/4 v2, 0x0

    .line 2213
    :goto_0
    return v2

    .line 2203
    :cond_0
    const-string v2, "gsm_roaming_list_"

    invoke-direct {p0, p1, v2, v0}, Lcom/android/internal/telephony/PhoneBase;->setRoamingOverrideHelper(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 2204
    const-string v2, "gsm_non_roaming_list_"

    invoke-direct {p0, p2, v2, v0}, Lcom/android/internal/telephony/PhoneBase;->setRoamingOverrideHelper(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 2205
    const-string v2, "cdma_roaming_list_"

    invoke-direct {p0, p3, v2, v0}, Lcom/android/internal/telephony/PhoneBase;->setRoamingOverrideHelper(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 2206
    const-string v2, "cdma_non_roaming_list_"

    invoke-direct {p0, p4, v2, v0}, Lcom/android/internal/telephony/PhoneBase;->setRoamingOverrideHelper(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 2209
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    .line 2210
    .local v1, "tracker":Lcom/android/internal/telephony/ServiceStateTracker;
    if-eqz v1, :cond_1

    .line 2211
    invoke-virtual {v1}, Lcom/android/internal/telephony/ServiceStateTracker;->pollState()V

    .line 2213
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 1497
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V

    .line 1498
    return-void
.end method

.method public setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 364
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getUnitTestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    :goto_0
    return-void

    .line 367
    :cond_0
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setTTYMode(ILandroid/os/Message;)V
    .locals 1
    .param p1, "ttyMode"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1502
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setTTYMode(ILandroid/os/Message;)V

    .line 1503
    return-void
.end method

.method public setUiTTYMode(ILandroid/os/Message;)V
    .locals 2
    .param p1, "uiTtyMode"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1507
    const-string v0, "PhoneBase"

    const-string v1, "unexpected setUiTTYMode method call"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1508
    return-void
.end method

.method public setUnitTestMode(Z)V
    .locals 0
    .param p1, "f"    # Z

    .prologue
    .line 1146
    iput-boolean p1, p0, Lcom/android/internal/telephony/PhoneBase;->mUnitTestMode:Z

    .line 1147
    return-void
.end method

.method public setVoiceMessageCount(I)V
    .locals 0
    .param p1, "countWaiting"    # I

    .prologue
    .line 1645
    iput p1, p0, Lcom/android/internal/telephony/PhoneBase;->mVmCount:I

    .line 1647
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->notifyMessageWaitingIndicator()V

    .line 1648
    return-void
.end method

.method public setVoiceMessageWaiting(II)V
    .locals 2
    .param p1, "line"    # I
    .param p2, "countWaiting"    # I

    .prologue
    .line 2033
    const-string v0, "PhoneBase"

    const-string v1, "Error! This function should never be executed, inactive Phone."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2034
    return-void
.end method

.method public shutdownRadio()V
    .locals 1

    .prologue
    .line 2285
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->requestShutdown()V

    .line 2286
    return-void
.end method

.method public switchAntenna(II)V
    .locals 1
    .param p1, "callState"    # I
    .param p2, "ratMode"    # I

    .prologue
    .line 2937
    const-string v0, "switchAntenna"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    .line 2938
    return-void
.end method

.method public unregisterForCallInfoChangedNotification(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2669
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCallInfoChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2670
    return-void
.end method

.method public unregisterForCallWaiting(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1782
    const-string v0, "unregisterForCallWaiting"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    .line 1783
    return-void
.end method

.method public unregisterForCdmaCallAccepted(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2841
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCdmaCallAcceptedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2842
    return-void
.end method

.method public unregisterForCdmaOtaStatusChange(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1740
    const-string v0, "unregisterForCdmaOtaStatusChange"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    .line 1741
    return-void
.end method

.method public unregisterForCipherIndication(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2416
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCipherIndicationRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2417
    return-void
.end method

.method public unregisterForCrssSuppServiceNotification(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2399
    return-void
.end method

.method public unregisterForDisconnect(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 977
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 978
    return-void
.end method

.method public unregisterForDisplayInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1814
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForDisplayInfo(Landroid/os/Handler;)V

    .line 1815
    return-void
.end method

.method public unregisterForEcmTimerReset(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1794
    const-string v0, "unregisterForEcmTimerReset"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    .line 1795
    return-void
.end method

.method public unregisterForEngModeNetworkInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2811
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForEngModeNetworkInfo(Landroid/os/Handler;)V

    .line 2812
    return-void
.end method

.method public unregisterForHandoverStateChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 865
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mHandoverRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 866
    return-void
.end method

.method public unregisterForImsConferenceCallNotification(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2661
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mImsConferenceCallRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2662
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 948
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V

    .line 949
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 936
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V

    .line 937
    return-void
.end method

.method public unregisterForIncomingRing(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 963
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIncomingRingRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 964
    return-void
.end method

.method public unregisterForLineControlInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1844
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForLineControlInfo(Landroid/os/Handler;)V

    .line 1845
    return-void
.end method

.method public unregisterForMccMncChange(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2785
    return-void
.end method

.method public unregisterForMmiComplete(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1019
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->checkCorrectThread(Landroid/os/Handler;)V

    .line 1021
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1022
    return-void
.end method

.method public unregisterForMmiInitiate(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1005
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mMmiRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1006
    return-void
.end method

.method public unregisterForNeighboringInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2478
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForNeighboringInfo(Landroid/os/Handler;)V

    .line 2479
    return-void
.end method

.method public unregisterForNetworkInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2486
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForNetworkInfo(Landroid/os/Handler;)V

    .line 2487
    return-void
.end method

.method public unregisterForNewRingingConnection(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 924
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mNewRingingConnectionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 925
    return-void
.end method

.method public unregisterForNumberInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1824
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForNumberInfo(Landroid/os/Handler;)V

    .line 1825
    return-void
.end method

.method public unregisterForOnHoldTone(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1201
    return-void
.end method

.method public unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 843
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mPreciseCallStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 844
    return-void
.end method

.method public unregisterForRadioCapabilityChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2310
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRadioCapabilityChanged(Landroid/os/Handler;)V

    .line 2311
    return-void
.end method

.method public unregisterForRadioOffOrNotAvailable(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1886
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mRadioOffOrNotAvailableRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1887
    return-void
.end method

.method public unregisterForRedirectedNumberInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1834
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRedirectedNumberInfo(Landroid/os/Handler;)V

    .line 1835
    return-void
.end method

.method public unregisterForResendIncallMute(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1212
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForResendIncallMute(Landroid/os/Handler;)V

    .line 1213
    return-void
.end method

.method public unregisterForRingbackTone(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1190
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRingbackTone(Landroid/os/Handler;)V

    .line 1191
    return-void
.end method

.method public unregisterForServiceStateChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1178
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mServiceStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1179
    return-void
.end method

.method public unregisterForSignalInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1804
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSignalInfo(Landroid/os/Handler;)V

    .line 1805
    return-void
.end method

.method public unregisterForSimRecordsLoaded(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1029
    const-string v0, "unregisterForSimRecordsLoaded"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    .line 1030
    return-void
.end method

.method public unregisterForSpeechCodecInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2431
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mSpeechCodecInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2432
    return-void
.end method

.method public unregisterForSubscriptionInfoReady(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1752
    const-string v0, "unregisterForSubscriptionInfoReady"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    .line 1753
    return-void
.end method

.method public unregisterForSuppServiceFailed(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 991
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 992
    return-void
.end method

.method public unregisterForSvlteServiceStateChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2888
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mSvlteServiceStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2889
    return-void
.end method

.method public unregisterForT53AudioControlInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1864
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForT53AudioControlInfo(Landroid/os/Handler;)V

    .line 1865
    return-void
.end method

.method public unregisterForT53ClirInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1854
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForT53ClirInfo(Landroid/os/Handler;)V

    .line 1855
    return-void
.end method

.method public unregisterForTtyModeReceived(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1038
    return-void
.end method

.method public unregisterForUnknownConnection(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 909
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 910
    return-void
.end method

.method public unregisterForVoiceCallIncomingIndication(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2408
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mVoiceCallIncomingIndicationRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2409
    return-void
.end method

.method public unsetOnEcbModeExitResponse(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1876
    const-string v0, "unsetOnEcbModeExitResponse"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    .line 1877
    return-void
.end method

.method protected updateImsPhone()V
    .locals 4

    .prologue
    .line 2123
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mImsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2124
    :try_start_0
    const-string v0, "PhoneBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateImsPhone mImsServiceReady="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/PhoneBase;->mImsServiceReady:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2127
    iget-boolean v0, p0, Lcom/android/internal/telephony/PhoneBase;->mImsServiceReady:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-nez v0, :cond_1

    .line 2128
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-static {v0, p0}, Lcom/android/internal/telephony/PhoneFactory;->makeImsPhone(Lcom/android/internal/telephony/PhoneNotifier;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 2129
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/CallManager;->registerPhone(Lcom/android/internal/telephony/Phone;)Z

    .line 2130
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    const/16 v2, 0x20

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->registerForSilentRedial(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2143
    :cond_0
    :goto_0
    monitor-exit v1

    .line 2144
    return-void

    .line 2132
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/PhoneBase;->mImsServiceReady:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-eqz v0, :cond_0

    .line 2133
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/CallManager;->unregisterPhone(Lcom/android/internal/telephony/Phone;)V

    .line 2134
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->unregisterForSilentRedial(Landroid/os/Handler;)V

    .line 2136
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->dispose()V

    .line 2141
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    goto :goto_0

    .line 2143
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updatePhoneObject(I)V
    .locals 1
    .param p1, "voiceRadioTech"    # I

    .prologue
    .line 1333
    iget v0, p0, Lcom/android/internal/telephony/PhoneBase;->mPhoneId:I

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->updatePhoneObject(I)V

    .line 1335
    return-void
.end method
