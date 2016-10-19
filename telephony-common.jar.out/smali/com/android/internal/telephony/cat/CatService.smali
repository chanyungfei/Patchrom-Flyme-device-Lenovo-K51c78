.class public Lcom/android/internal/telephony/cat/CatService;
.super Landroid/os/Handler;
.source "CatService.java"

# interfaces
.implements Lcom/android/internal/telephony/cat/AppInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cat/CatService$7;
    }
.end annotation


# static fields
.field static final ACTION_PREBOOT_IPO:Ljava/lang/String; = "android.intent.action.ACTION_PREBOOT_IPO"

.field static final ACTION_SHUTDOWN_IPO:Ljava/lang/String; = "android.intent.action.ACTION_SHUTDOWN_IPO"

.field static final ADDITIONAL_INFO_FOR_BIP_CHANNEL_CLOSED:I = 0x2

.field static final ADDITIONAL_INFO_FOR_BIP_CHANNEL_ID_NOT_AVAILABLE:I = 0x3

.field static final ADDITIONAL_INFO_FOR_BIP_NO_CHANNEL_AVAILABLE:I = 0x1

.field static final ADDITIONAL_INFO_FOR_BIP_NO_SPECIFIC_CAUSE:I = 0x0

.field static final ADDITIONAL_INFO_FOR_BIP_REQUESTED_BUFFER_SIZE_NOT_AVAILABLE:I = 0x4

.field static final ADDITIONAL_INFO_FOR_BIP_REQUESTED_INTERFACE_TRANSPORT_LEVEL_NOT_AVAILABLE:I = 0x6

.field static final ADDITIONAL_INFO_FOR_BIP_SECURITY_ERROR:I = 0x5

.field private static final COMMAND_SEND_STATUS:I = 0xf2

.field private static final DBG:Z = true

.field private static final DEV_ID_DISPLAY:I = 0x2

.field private static final DEV_ID_EARPIECE:I = 0x3

.field private static final DEV_ID_KEYPAD:I = 0x1

.field private static final DEV_ID_NETWORK:I = 0x83

.field private static final DEV_ID_TERMINAL:I = 0x82

.field private static final DEV_ID_UICC:I = 0x81

.field static final DISPLAY_TEXT_DISABLE_PROPERTY:Ljava/lang/String; = "persist.service.cat.dt.disable"

.field static final EVENT_LIST_ELEMENT_BROWSER_TERMINATION:I = 0x8

.field static final EVENT_LIST_ELEMENT_CALL_CONNECTED:I = 0x1

.field static final EVENT_LIST_ELEMENT_CALL_DISCONNECTED:I = 0x2

.field static final EVENT_LIST_ELEMENT_CARD_READER_STATUS:I = 0x6

.field public static final EVENT_LIST_ELEMENT_CHANNEL_STATUS:I = 0xa

.field public static final EVENT_LIST_ELEMENT_DATA_AVAILABLE:I = 0x9

.field static final EVENT_LIST_ELEMENT_IDLE_SCREEN_AVAILABLE:I = 0x5

.field static final EVENT_LIST_ELEMENT_LANGUAGE_SELECTION:I = 0x7

.field static final EVENT_LIST_ELEMENT_LOCATION_STATUS:I = 0x3

.field static final EVENT_LIST_ELEMENT_MT_CALL:I = 0x0

.field static final EVENT_LIST_ELEMENT_USER_ACTIVITY:I = 0x4

.field static final IDLE_SCREEN_ENABLE_KEY:Ljava/lang/String; = "_enable"

.field static final IDLE_SCREEN_INTENT_NAME:Ljava/lang/String; = "android.intent.action.IDLE_SCREEN_NEEDED"

.field private static final MAX_SEND_STATUS_TRY_NUM:I = 0x6

.field protected static final MSG_ID_ALPHA_NOTIFY:I = 0x9

.field public static final MSG_ID_CACHED_DISPLAY_TEXT_TIMEOUT:I = 0x2e

.field private static final MSG_ID_CALL_CTRL:I = 0x19

.field protected static final MSG_ID_CALL_SETUP:I = 0x4

.field public static final MSG_ID_CLOSE_CHANNEL_DONE:I = 0x2b

.field public static final MSG_ID_CONN_MGR_TIMEOUT:I = 0x2d

.field public static final MSG_ID_CONN_RETRY_TIMEOUT:I = 0x2f

.field static final MSG_ID_DB_HANDLER:I = 0xc

.field private static final MSG_ID_DISABLE_DISPLAY_TEXT_DELAYED:I = 0xf

.field private static final MSG_ID_EVDL_CALL:I = 0x15

.field static final MSG_ID_EVENT_DOWNLOAD:I = 0xb

.field protected static final MSG_ID_EVENT_NOTIFY:I = 0x3

.field public static final MSG_ID_GET_CHANNEL_STATUS_DONE:I = 0x2c

.field protected static final MSG_ID_ICC_CHANGED:I = 0x8

.field private static final MSG_ID_ICC_RECORDS_LOADED:I = 0x14

.field private static final MSG_ID_ICC_REFRESH:I = 0x1e

.field private static final MSG_ID_IVSR_DELAYED:I = 0xe

.field static final MSG_ID_LAUNCH_DB_SETUP_MENU:I = 0xd

.field public static final MSG_ID_MENU_INFO:I = 0x30

.field private static final MSG_ID_MODEM_EVDL_CALL_CONN_TIMEOUT:I = 0x16

.field private static final MSG_ID_MODEM_EVDL_CALL_DISCONN_TIMEOUT:I = 0x17

.field public static final MSG_ID_OPEN_CHANNEL_DONE:I = 0x28

.field protected static final MSG_ID_PROACTIVE_COMMAND:I = 0x2

.field public static final MSG_ID_RECEIVE_DATA_DONE:I = 0x2a

.field static final MSG_ID_REFRESH:I = 0x5

.field static final MSG_ID_RESPONSE:I = 0x6

.field static final MSG_ID_RIL_MSG_DECODED:I = 0xa

.field public static final MSG_ID_SEND_DATA_DONE:I = 0x29

.field public static final MSG_ID_SEND_STATUS_DONE:I = 0x31

.field public static final MSG_ID_SEND_STATUS_INTERVAL:I = 0x32

.field protected static final MSG_ID_SESSION_END:I = 0x1

.field private static final MSG_ID_SETUP_MENU_RESET:I = 0x18

.field static final MSG_ID_SIM_READY:I = 0x7

.field private static final SEND_STATUS_INTERVAL:I = 0x1388

.field static final STK_DEFAULT:Ljava/lang/String; = "Default Message"

.field private static final STK_EVDL_CALL_STATE_CALLCONN:I = 0x0

.field private static final STK_EVDL_CALL_STATE_CALLDISCONN:I = 0x1

.field static final USER_ACTIVITY_ENABLE_KEY:Ljava/lang/String; = "state"

.field static final USER_ACTIVITY_INTENT_NAME:Ljava/lang/String; = "android.intent.action.stk.USER_ACTIVITY.enable"

.field private static mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

.field private static mIsCatServiceDisposed:Z

.field protected static mLock:Ljava/lang/Object;

.field private static mLteDcPhoneProxy:Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

.field private static mNLtePhone:Lcom/android/internal/telephony/PhoneBase;

.field public static mQueryMenuFlag:Z

.field private static mRilDcArbitrator:Lcom/mediatek/internal/telephony/ltedc/IRilDcArbitrator;

.field private static mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

.field private static sInstKey:[Ljava/lang/String;

.field private static sInstance:[Lcom/android/internal/telephony/cat/CatService;

.field private static final sInstanceLock:Ljava/lang/Object;


# instance fields
.field private CACHED_DISPLAY_TIMEOUT:I

.field private CatServiceReceiver:Landroid/content/BroadcastReceiver;

.field private final DISABLE_DISPLAY_TEXT_DELAYED_TIME:I

.field private final IVSR_DELAYED_TIME:I

.field private final LTE_DC_PHONE_PROXY_ID:I

.field private MODEM_EVDL_TIMEOUT:I

.field private ResultCodeFlag:I

.field private default_send_setupmenu_tr:Z

.field private isDisplayTextDisabled:Z

.field private isIvsrBootUp:Z

.field mBipMgr:Lcom/android/internal/telephony/cat/bip/BipManager;

.field private mCachedDisplayTextCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

.field private mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

.field private final mClearDisplayTextReceiver:Landroid/content/BroadcastReceiver;

.field private mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

.field private mCmdMessage:Lcom/android/internal/telephony/cat/CatCmdMessage;

.field private mContext:Landroid/content/Context;

.field private mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

.field private mEvdlCallConnObjQ:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mEvdlCallDisConnObjQ:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mEvdlCallObj:I

.field private mEventDownloadCallConnInfo:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/internal/telephony/cat/EventDownloadCallInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mEventDownloadCallDisConnInfo:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/internal/telephony/cat/EventDownloadCallInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mEventList:[B

.field public mGotSetUpMenu:Z

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHasCachedDTCmd:Z

.field private mIsAllCallDisConn:Z

.field private mIsProactiveCmdResponsed:Z

.field private mMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

.field private mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

.field private mNLteCmdIf:Lcom/android/internal/telephony/CommandsInterface;

.field mNeedRegisterAgain:Z

.field private mNumEventDownloadCallConn:I

.field private mNumEventDownloadCallDisConn:I

.field private mPowerOnSequenceObserver:Landroid/database/ContentObserver;

.field private mReadFromPreferenceDone:Z

.field public mSaveNewSetUpMenu:Z

.field private mSendStatusCount:I

.field private mSetUpMenuFromMD:Z

.field private mSlotId:I

.field private mStkAppInstalled:Z

.field private final mStkIdleScreenAvailableReceiver:Landroid/content/BroadcastReceiver;

.field mTimeoutHandler:Landroid/os/Handler;

.field private mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

.field private final mUtkSetupEventListFilter:Landroid/content/IntentFilter;

.field private final mUtkSetupEventListReceiver:Landroid/content/BroadcastReceiver;

.field private simIdfromIntent:I

.field private simState:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 149
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/cat/CatService;->sInstanceLock:Ljava/lang/Object;

    .line 150
    sput-object v4, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    .line 161
    sput-boolean v3, Lcom/android/internal/telephony/cat/CatService;->mQueryMenuFlag:Z

    .line 218
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "sInstanceSim1"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "sInstanceSim2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "sInstanceSim3"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "sInstanceSim4"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/cat/CatService;->sInstKey:[Ljava/lang/String;

    .line 222
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/cat/CatService;->mLock:Ljava/lang/Object;

    .line 233
    sput-boolean v3, Lcom/android/internal/telephony/cat/CatService;->mIsCatServiceDisposed:Z

    .line 236
    sput-object v4, Lcom/android/internal/telephony/cat/CatService;->mLteDcPhoneProxy:Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    .line 238
    sput-object v4, Lcom/android/internal/telephony/cat/CatService;->mRilDcArbitrator:Lcom/mediatek/internal/telephony/ltedc/IRilDcArbitrator;

    return-void
.end method

.method private constructor <init>(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/UiccCardApplication;Lcom/android/internal/telephony/uicc/IccRecords;Landroid/content/Context;Lcom/android/internal/telephony/uicc/IccFileHandler;Lcom/android/internal/telephony/uicc/UiccCard;I)V
    .locals 7
    .param p1, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p2, "ca"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .param p3, "ir"    # Lcom/android/internal/telephony/uicc/IccRecords;
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "fh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;
    .param p6, "ic"    # Lcom/android/internal/telephony/uicc/UiccCard;
    .param p7, "slotId"    # I

    .prologue
    .line 452
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 153
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 154
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 156
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    .line 157
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/telephony/cat/CatService;->mStkAppInstalled:Z

    .line 160
    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    iput-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 223
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/telephony/cat/CatService;->default_send_setupmenu_tr:Z

    .line 224
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/telephony/cat/CatService;->mGotSetUpMenu:Z

    .line 225
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/telephony/cat/CatService;->mSaveNewSetUpMenu:Z

    .line 226
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/telephony/cat/CatService;->mSetUpMenuFromMD:Z

    .line 227
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/telephony/cat/CatService;->mReadFromPreferenceDone:Z

    .line 228
    const/16 v4, 0x7d0

    iput v4, p0, Lcom/android/internal/telephony/cat/CatService;->MODEM_EVDL_TIMEOUT:I

    .line 229
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mEvdlCallConnObjQ:Ljava/util/LinkedList;

    .line 230
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mEvdlCallDisConnObjQ:Ljava/util/LinkedList;

    .line 231
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/internal/telephony/cat/CatService;->mEvdlCallObj:I

    .line 239
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mNLteCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    .line 270
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mBipMgr:Lcom/android/internal/telephony/cat/bip/BipManager;

    .line 273
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/internal/telephony/cat/CatService;->ResultCodeFlag:I

    .line 274
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->simState:Ljava/lang/String;

    .line 275
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/internal/telephony/cat/CatService;->simIdfromIntent:I

    .line 277
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mCachedDisplayTextCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 279
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/telephony/cat/CatService;->mHasCachedDTCmd:Z

    .line 282
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/telephony/cat/CatService;->isIvsrBootUp:Z

    .line 283
    const v4, 0xea60

    iput v4, p0, Lcom/android/internal/telephony/cat/CatService;->IVSR_DELAYED_TIME:I

    .line 285
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/telephony/cat/CatService;->isDisplayTextDisabled:Z

    .line 286
    const/16 v4, 0x7530

    iput v4, p0, Lcom/android/internal/telephony/cat/CatService;->DISABLE_DISPLAY_TEXT_DELAYED_TIME:I

    .line 288
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/telephony/cat/CatService;->mNeedRegisterAgain:Z

    .line 291
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mEventDownloadCallDisConnInfo:Ljava/util/LinkedList;

    .line 292
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mEventDownloadCallConnInfo:Ljava/util/LinkedList;

    .line 293
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/internal/telephony/cat/CatService;->mNumEventDownloadCallDisConn:I

    .line 294
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/internal/telephony/cat/CatService;->mNumEventDownloadCallConn:I

    .line 295
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/telephony/cat/CatService;->mIsAllCallDisConn:Z

    .line 296
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/telephony/cat/CatService;->mIsProactiveCmdResponsed:Z

    .line 298
    const v4, 0x1d4c0

    iput v4, p0, Lcom/android/internal/telephony/cat/CatService;->CACHED_DISPLAY_TIMEOUT:I

    .line 299
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/internal/telephony/cat/CatService;->LTE_DC_PHONE_PROXY_ID:I

    .line 302
    const/16 v4, 0xff

    iput v4, p0, Lcom/android/internal/telephony/cat/CatService;->mSendStatusCount:I

    .line 310
    new-instance v4, Lcom/android/internal/telephony/cat/CatService$1;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/cat/CatService$1;-><init>(Lcom/android/internal/telephony/cat/CatService;)V

    iput-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mTimeoutHandler:Landroid/os/Handler;

    .line 357
    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.utk.setup_event_list"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mUtkSetupEventListFilter:Landroid/content/IntentFilter;

    .line 360
    new-instance v4, Lcom/android/internal/telephony/cat/CatService$2;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/cat/CatService$2;-><init>(Lcom/android/internal/telephony/cat/CatService;)V

    iput-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mUtkSetupEventListReceiver:Landroid/content/BroadcastReceiver;

    .line 388
    new-instance v4, Lcom/android/internal/telephony/cat/CatService$3;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/cat/CatService$3;-><init>(Lcom/android/internal/telephony/cat/CatService;)V

    iput-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mStkIdleScreenAvailableReceiver:Landroid/content/BroadcastReceiver;

    .line 438
    new-instance v4, Lcom/android/internal/telephony/cat/CatService$4;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/cat/CatService$4;-><init>(Lcom/android/internal/telephony/cat/CatService;)V

    iput-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mClearDisplayTextReceiver:Landroid/content/BroadcastReceiver;

    .line 2595
    new-instance v4, Lcom/android/internal/telephony/cat/CatService$5;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/cat/CatService$5;-><init>(Lcom/android/internal/telephony/cat/CatService;)V

    iput-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->CatServiceReceiver:Landroid/content/BroadcastReceiver;

    .line 2815
    new-instance v4, Lcom/android/internal/telephony/cat/CatService$6;

    invoke-direct {v4, p0, p0}, Lcom/android/internal/telephony/cat/CatService$6;-><init>(Lcom/android/internal/telephony/cat/CatService;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mPowerOnSequenceObserver:Landroid/database/ContentObserver;

    .line 2945
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdMessage:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 453
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    if-eqz p5, :cond_0

    if-nez p6, :cond_1

    .line 455
    :cond_0
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "Service: Input parameters must not be null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 458
    :cond_1
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    .line 459
    iput-object p4, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    .line 460
    iput p7, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    .line 461
    new-instance v4, Landroid/os/HandlerThread;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cat Telephony service"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 462
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    .line 464
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "slotId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 466
    invoke-static {p0, p5, p7}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->getInstance(Landroid/os/Handler;Lcom/android/internal/telephony/uicc/IccFileHandler;I)Lcom/android/internal/telephony/cat/RilMessageDecoder;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    .line 467
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    if-nez v4, :cond_2

    .line 468
    const-string v4, "Null RilMessageDecoder instance"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 555
    :goto_0
    return-void

    .line 471
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->start()V

    .line 474
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {v4, p0, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->setOnCatSessionEnd(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 475
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-interface {v4, p0, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->setOnCatProactiveCmd(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 476
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-interface {v4, p0, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->setOnCatEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 477
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-interface {v4, p0, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->setOnCatCallSetUp(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 479
    const-string v4, "ro.mtk_bsp_package"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 480
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0x15

    const/4 v6, 0x0

    invoke-interface {v4, p0, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->setOnStkEvdlCall(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 482
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0x18

    const/4 v6, 0x0

    invoke-interface {v4, p0, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->setOnStkSetupMenuReset(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 483
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0x1e

    const/4 v6, 0x0

    invoke-interface {v4, p0, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 485
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0x9

    const/4 v6, 0x0

    invoke-interface {v4, p0, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->setOnCatCcAlphaNotify(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 486
    sput-object p3, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 487
    sput-object p2, Lcom/android/internal/telephony/cat/CatService;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 490
    sget-object v4, Lcom/android/internal/telephony/cat/CatService;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/4 v5, 0x7

    const/4 v6, 0x0

    invoke-virtual {v4, p0, v5, v6}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 494
    sget-object v4, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    const/16 v5, 0x14

    const/4 v6, 0x0

    invoke-virtual {v4, p0, v5, v6}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 495
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registerForRecordsLoaded slotid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " instance:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 497
    const-string v4, "Get BipManager"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 498
    invoke-static {p4, p0, p7}, Lcom/android/internal/telephony/cat/bip/BipManager;->getInstance(Landroid/content/Context;Landroid/os/Handler;I)Lcom/android/internal/telephony/cat/bip/BipManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mBipMgr:Lcom/android/internal/telephony/cat/bip/BipManager;

    .line 499
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mBipMgr:Lcom/android/internal/telephony/cat/bip/BipManager;

    if-nez v4, :cond_4

    .line 500
    const-string v4, "BipManager is null!!"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 502
    :cond_4
    new-instance v1, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-direct {v1, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 504
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v4, "mediatek.intent.action.IVSR_NOTIFY"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 506
    const-string v4, "com.android.phone.ACTION_SIM_RECOVERY_DONE"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 507
    const-string v4, "android.intent.action.ACTION_MD_TYPE_CHANGE"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 508
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 509
    const-string v4, "com.mediatek.intent.action.FINISH_SWITCH_ROAMING_MODE"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 511
    :cond_5
    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 513
    .local v3, "mSIMStateChangeFilter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 514
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatService;->CatServiceReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 515
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatService;->CatServiceReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 516
    new-instance v2, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.stk.IDLE_SCREEN_AVAILABLE"

    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 517
    .local v2, "mIdleScreenAvailableFilter":Landroid/content/IntentFilter;
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatService;->mStkIdleScreenAvailableReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 518
    const-string v4, "CatService: is running"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 520
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 521
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatService;->mUtkSetupEventListReceiver:Landroid/content/BroadcastReceiver;

    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatService;->mUtkSetupEventListFilter:Landroid/content/IntentFilter;

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 523
    :cond_6
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 524
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/16 v5, 0x8

    const/4 v6, 0x0

    invoke-virtual {v4, p0, v5, v6}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 527
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatService;->isStkAppInstalled()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/telephony/cat/CatService;->mStkAppInstalled:Z

    .line 528
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 529
    iget v4, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v4}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    check-cast v4, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    sput-object v4, Lcom/android/internal/telephony/cat/CatService;->mLteDcPhoneProxy:Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    .line 530
    sget-object v4, Lcom/android/internal/telephony/cat/CatService;->mLteDcPhoneProxy:Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    if-eqz v4, :cond_8

    .line 531
    const-string v4, "STK LTE: mLteDcPhoneProxy != null "

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 532
    sget-object v4, Lcom/android/internal/telephony/cat/CatService;->mLteDcPhoneProxy:Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getRilDcArbitrator()Lcom/mediatek/internal/telephony/ltedc/IRilDcArbitrator;

    move-result-object v4

    sput-object v4, Lcom/android/internal/telephony/cat/CatService;->mRilDcArbitrator:Lcom/mediatek/internal/telephony/ltedc/IRilDcArbitrator;

    .line 533
    sget-object v4, Lcom/android/internal/telephony/cat/CatService;->mRilDcArbitrator:Lcom/mediatek/internal/telephony/ltedc/IRilDcArbitrator;

    if-eqz v4, :cond_7

    .line 534
    const-string v4, "STK LTE: mRilDcArbitrator != null "

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 536
    :cond_7
    sget-object v4, Lcom/android/internal/telephony/cat/CatService;->mLteDcPhoneProxy:Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getNLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v4

    sput-object v4, Lcom/android/internal/telephony/cat/CatService;->mNLtePhone:Lcom/android/internal/telephony/PhoneBase;

    .line 537
    sget-object v4, Lcom/android/internal/telephony/cat/CatService;->mNLtePhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v4, :cond_8

    .line 538
    const-string v4, "STK LTE: mNLtePhone != null "

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 539
    sget-object v4, Lcom/android/internal/telephony/cat/CatService;->mNLtePhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mNLteCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    .line 544
    :cond_8
    const-string v4, "ro.mtk_bsp_package"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 545
    iget-boolean v4, p0, Lcom/android/internal/telephony/cat/CatService;->mHasCachedDTCmd:Z

    if-eqz v4, :cond_9

    .line 547
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatService;->registerPowerOnSequenceObserver()V

    .line 549
    new-instance v0, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.stk.clear_display_text"

    invoke-direct {v0, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 550
    .local v0, "ClearDisplayTextFilter":Landroid/content/IntentFilter;
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatService;->mClearDisplayTextReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 553
    .end local v0    # "ClearDisplayTextFilter":Landroid/content/IntentFilter;
    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Running CAT service on Slotid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". STK app installed:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/telephony/cat/CatService;->mStkAppInstalled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/cat/CatService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/CatService;

    .prologue
    .line 140
    iget v0, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/cat/CatService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/CatService;
    .param p1, "x1"    # I

    .prologue
    .line 140
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CatService;->clearCachedDisplayText(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/cat/CatService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/CatService;

    .prologue
    .line 140
    iget v0, p0, Lcom/android/internal/telephony/cat/CatService;->simIdfromIntent:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/internal/telephony/cat/CatService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/CatService;
    .param p1, "x1"    # I

    .prologue
    .line 140
    iput p1, p0, Lcom/android/internal/telephony/cat/CatService;->simIdfromIntent:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/internal/telephony/cat/CatService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/CatService;
    .param p1, "x1"    # I

    .prologue
    .line 140
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CatService;->handleDBHandler(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/internal/telephony/cat/CatService;Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;Lcom/android/internal/telephony/uicc/IccRefreshResponse;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/CatService;
    .param p1, "x1"    # Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    .param p2, "x2"    # Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    .prologue
    .line 140
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cat/CatService;->broadcastCardStateAndIccRefreshResp(Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;Lcom/android/internal/telephony/uicc/IccRefreshResponse;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/internal/telephony/cat/CatService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/CatService;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/internal/telephony/cat/CatService;)Lcom/android/internal/telephony/cat/CatCmdMessage;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/CatService;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCachedDisplayTextCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/internal/telephony/cat/CatService;Lcom/android/internal/telephony/cat/CatCmdMessage;)Lcom/android/internal/telephony/cat/CatCmdMessage;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/CatService;
    .param p1, "x1"    # Lcom/android/internal/telephony/cat/CatCmdMessage;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatService;->mCachedDisplayTextCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/internal/telephony/cat/CatService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/CatService;

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatService;->isAlarmBoot()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/internal/telephony/cat/CatService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/CatService;

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatService;->resetPowerOnSequenceFlag()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/internal/telephony/cat/CatService;Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/CatService;
    .param p1, "x1"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .param p2, "x2"    # Lcom/android/internal/telephony/cat/ResultCode;
    .param p3, "x3"    # Z
    .param p4, "x4"    # I
    .param p5, "x5"    # Lcom/android/internal/telephony/cat/ResponseData;

    .prologue
    .line 140
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/internal/telephony/cat/CatService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/CatService;

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatService;->unregisterPowerOnSequenceObserver()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/internal/telephony/cat/CatService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/CatService;

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatService;->checkSetupWizardInstalled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/cat/CatService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/CatService;

    .prologue
    .line 140
    iget v0, p0, Lcom/android/internal/telephony/cat/CatService;->mNumEventDownloadCallConn:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/internal/telephony/cat/CatService;Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/CatService;
    .param p1, "x1"    # Lcom/android/internal/telephony/cat/CatCmdMessage;

    .prologue
    .line 140
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CatService;->broadcastCatCmdIntent(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    return-void
.end method

.method static synthetic access$210(Lcom/android/internal/telephony/cat/CatService;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/CatService;

    .prologue
    .line 140
    iget v0, p0, Lcom/android/internal/telephony/cat/CatService;->mNumEventDownloadCallConn:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/internal/telephony/cat/CatService;->mNumEventDownloadCallConn:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/cat/CatService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/CatService;

    .prologue
    .line 140
    iget v0, p0, Lcom/android/internal/telephony/cat/CatService;->mNumEventDownloadCallDisConn:I

    return v0
.end method

.method static synthetic access$310(Lcom/android/internal/telephony/cat/CatService;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/CatService;

    .prologue
    .line 140
    iget v0, p0, Lcom/android/internal/telephony/cat/CatService;->mNumEventDownloadCallDisConn:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/internal/telephony/cat/CatService;->mNumEventDownloadCallDisConn:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/cat/CatService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/CatService;

    .prologue
    .line 140
    iget v0, p0, Lcom/android/internal/telephony/cat/CatService;->mSendStatusCount:I

    return v0
.end method

.method static synthetic access$408(Lcom/android/internal/telephony/cat/CatService;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/CatService;

    .prologue
    .line 140
    iget v0, p0, Lcom/android/internal/telephony/cat/CatService;->mSendStatusCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/telephony/cat/CatService;->mSendStatusCount:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/cat/CatService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/CatService;

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatService;->sendStatusCmd()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/cat/CatService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/CatService;

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/CatService;->isDisplayTextDisabled:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/internal/telephony/cat/CatService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/CatService;
    .param p1, "x1"    # Z

    .prologue
    .line 140
    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/CatService;->isDisplayTextDisabled:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/cat/CatService;)[B
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/CatService;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mEventList:[B

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/internal/telephony/cat/CatService;[B)[B
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/CatService;
    .param p1, "x1"    # [B

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatService;->mEventList:[B

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/cat/CatService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/CatService;

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/CatService;->isIvsrBootUp:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/internal/telephony/cat/CatService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/CatService;
    .param p1, "x1"    # Z

    .prologue
    .line 140
    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/CatService;->isIvsrBootUp:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/cat/CatService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/CatService;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->simState:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/internal/telephony/cat/CatService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/CatService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatService;->simState:Ljava/lang/String;

    return-object p1
.end method

.method private broadcastAlphaMessage(Ljava/lang/String;)V
    .locals 3
    .param p1, "alphaString"    # Ljava/lang/String;

    .prologue
    .line 2276
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Broadcasting CAT Alpha message from card: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2277
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.stk.alpha_notify"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2278
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2279
    const-string v1, "alpha_string"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2280
    const-string v1, "SLOT_ID"

    iget v2, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2281
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.RECEIVE_STK_COMMANDS"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2282
    return-void
.end method

.method private broadcastCardStateAndIccRefreshResp(Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;Lcom/android/internal/telephony/uicc/IccRefreshResponse;)V
    .locals 4
    .param p1, "cardState"    # Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    .param p2, "iccRefreshState"    # Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    .prologue
    .line 2257
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.stk.icc_status_change"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2258
    .local v1, "intent":Landroid/content/Intent;
    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne p1, v2, :cond_1

    const/4 v0, 0x1

    .line 2260
    .local v0, "cardPresent":Z
    :goto_0
    if-eqz p2, :cond_0

    .line 2262
    const-string v2, "refresh_result"

    iget v3, p2, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2263
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending IccResult with Result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p2, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2268
    :cond_0
    const-string v2, "card_status"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2269
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending Card Status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "cardPresent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2271
    const-string v2, "SLOT_ID"

    iget v3, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2272
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.RECEIVE_STK_COMMANDS"

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2273
    return-void

    .line 2258
    .end local v0    # "cardPresent":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private broadcastCatCmdIntent(Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    .locals 3
    .param p1, "cmdMsg"    # Lcom/android/internal/telephony/cat/CatCmdMessage;

    .prologue
    .line 1278
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.stk.command"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1279
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "STK CMD"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1280
    const-string v1, "SLOT_ID"

    iget v2, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1281
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending CmdMsg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " on slotid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1282
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.RECEIVE_STK_COMMANDS"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1283
    return-void
.end method

.method private checkSetupWizardInstalled()Z
    .locals 11

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 2779
    const-string v3, "com.google.android.setupwizard"

    .line 2780
    .local v3, "packageName":Ljava/lang/String;
    const-string v0, "com.google.android.setupwizard.SetupWizardActivity"

    .line 2782
    .local v0, "activityName":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 2783
    .local v5, "pm":Landroid/content/pm/PackageManager;
    if-nez v5, :cond_0

    .line 2784
    const-string v7, "fail to get PM"

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2812
    :goto_0
    return v6

    .line 2789
    :cond_0
    const/4 v2, 0x1

    .line 2791
    .local v2, "isPkgInstalled":Z
    :try_start_0
    const-string v8, "com.google.android.setupwizard"

    invoke-virtual {v5, v8}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2797
    :goto_1
    if-ne v2, v7, :cond_3

    .line 2798
    new-instance v8, Landroid/content/ComponentName;

    const-string v9, "com.google.android.setupwizard"

    const-string v10, "com.google.android.setupwizard.SetupWizardActivity"

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v4

    .line 2800
    .local v4, "pkgEnabledState":I
    if-eq v4, v7, :cond_1

    if-nez v4, :cond_2

    .line 2802
    :cond_1
    const-string v6, "should not show DISPLAY_TEXT immediately"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move v6, v7

    .line 2803
    goto :goto_0

    .line 2792
    .end local v4    # "pkgEnabledState":I
    :catch_0
    move-exception v1

    .line 2793
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v8, "fail to get SetupWizard package"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2794
    const/4 v2, 0x0

    goto :goto_1

    .line 2807
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v4    # "pkgEnabledState":I
    :cond_2
    const-string v7, "Setup Wizard Activity is not activate"

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2811
    .end local v4    # "pkgEnabledState":I
    :cond_3
    const-string v7, "isPkgInstalled = false"

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private clearCachedDisplayText(I)V
    .locals 4
    .param p1, "sim_id"    # I

    .prologue
    .line 415
    const-string v1, "ro.mtk_bsp_package"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 416
    const-string v2, "CatService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearCachedDisplayText, sim_id: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", mSlotId: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", mCachedDisplayTextCmd: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCachedDisplayTextCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    iget v1, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    if-ne p1, v1, :cond_0

    .line 418
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCachedDisplayTextCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v1, :cond_2

    .line 419
    new-instance v0, Lcom/android/internal/telephony/cat/CatResponseMessage;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCachedDisplayTextCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cat/CatResponseMessage;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    .line 420
    .local v0, "resMsg":Lcom/android/internal/telephony/cat/CatResponseMessage;
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->UICC_SESSION_TERM_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 421
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/CatService;->handleCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    .line 422
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCachedDisplayTextCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 425
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatService;->unregisterPowerOnSequenceObserver()V

    .line 436
    .end local v0    # "resMsg":Lcom/android/internal/telephony/cat/CatResponseMessage;
    :cond_0
    :goto_1
    return-void

    .line 416
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 429
    :cond_2
    iget-boolean v1, p0, Lcom/android/internal/telephony/cat/CatService;->mHasCachedDTCmd:Z

    if-eqz v1, :cond_0

    .line 430
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatService;->unregisterPowerOnSequenceObserver()V

    .line 431
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatService;->resetPowerOnSequenceFlag()V

    goto :goto_1
.end method

.method private encodeOptionalTags(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;Lcom/android/internal/telephony/cat/Input;Ljava/io/ByteArrayOutputStream;)V
    .locals 3
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .param p2, "resultCode"    # Lcom/android/internal/telephony/cat/ResultCode;
    .param p3, "cmdInput"    # Lcom/android/internal/telephony/cat/Input;
    .param p4, "buf"    # Ljava/io/ByteArrayOutputStream;

    .prologue
    .line 1388
    iget v1, p1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-static {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v0

    .line 1389
    .local v0, "cmdType":Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    if-eqz v0, :cond_1

    .line 1390
    sget-object v1, Lcom/android/internal/telephony/cat/CatService$7;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    sparse-switch v1, :sswitch_data_0

    .line 1407
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "encodeOptionalTags() Unsupported Cmd details="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1413
    :cond_0
    :goto_0
    return-void

    .line 1395
    :sswitch_0
    invoke-virtual {p2}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v1

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->NO_RESPONSE_FROM_USER:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v2

    if-ne v1, v2, :cond_0

    if-eqz p3, :cond_0

    iget-object v1, p3, Lcom/android/internal/telephony/cat/Input;->duration:Lcom/android/internal/telephony/cat/Duration;

    if-eqz v1, :cond_0

    .line 1397
    invoke-direct {p0, p4, p3}, Lcom/android/internal/telephony/cat/CatService;->getInKeyResponse(Ljava/io/ByteArrayOutputStream;Lcom/android/internal/telephony/cat/Input;)V

    goto :goto_0

    .line 1401
    :sswitch_1
    iget v1, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    invoke-virtual {p2}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v1

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 1403
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/cat/CatService;->getPliResponse(Ljava/io/ByteArrayOutputStream;)V

    goto :goto_0

    .line 1411
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "encodeOptionalTags() bad Cmd details="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1390
    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_1
        0xa -> :sswitch_0
    .end sparse-switch
.end method

.method private eventDownload(III[BZ)V
    .locals 22
    .param p1, "event"    # I
    .param p2, "sourceId"    # I
    .param p3, "destinationId"    # I
    .param p4, "additionalInfo"    # [B
    .param p5, "oneShot"    # Z

    .prologue
    .line 1597
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1599
    .local v6, "buf":Ljava/io/ByteArrayOutputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatService;->mEventList:[B

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatService;->mEventList:[B

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    if-nez v18, :cond_1

    .line 1600
    :cond_0
    const-string v18, "SS-eventDownload: event list null"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1747
    :goto_0
    return-void

    .line 1603
    :cond_1
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v18

    if-eqz v18, :cond_2

    .line 1604
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getRadioTechnologyMode(I)I

    move-result v15

    .line 1605
    .local v15, "radioTechMode":I
    const/16 v18, 0x3

    move/from16 v0, v18

    if-ne v0, v15, :cond_2

    .line 1606
    const/16 v18, 0x9

    move/from16 v0, v18

    move/from16 v1, p1

    if-eq v0, v1, :cond_2

    const/16 v18, 0xa

    move/from16 v0, v18

    move/from16 v1, p1

    if-eq v0, v1, :cond_2

    .line 1608
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "SS-eventDownload: Ignore "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " by SVLTE mode."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1615
    .end local v15    # "radioTechMode":I
    :cond_2
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "SS-eventDownload: event list length:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatService;->mEventList:[B

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1616
    const/4 v10, 0x0

    .local v10, "index":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatService;->mEventList:[B

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v10, v0, :cond_5

    .line 1617
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "SS-eventDownload: event ["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatService;->mEventList:[B

    move-object/from16 v19, v0

    aget-byte v19, v19, v10

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "]"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1618
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatService;->mEventList:[B

    move-object/from16 v18, v0

    aget-byte v18, v18, v10

    move/from16 v0, v18

    move/from16 v1, p1

    if-ne v0, v1, :cond_9

    .line 1620
    const/16 v18, 0x5

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    .line 1621
    const-string v18, "SS-eventDownload: event is IDLE_SCREEN_AVAILABLE"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1622
    const-string v18, "SS-eventDownload: sent intent with idle = false"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1623
    new-instance v11, Landroid/content/Intent;

    const-string v18, "android.intent.action.IDLE_SCREEN_NEEDED"

    move-object/from16 v0, v18

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1624
    .local v11, "intent":Landroid/content/Intent;
    const-string v18, "_enable"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1625
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1646
    .end local v11    # "intent":Landroid/content/Intent;
    :cond_4
    :goto_1
    const/16 v18, 0x1

    move/from16 v0, v18

    move/from16 v1, p5

    if-ne v0, v1, :cond_5

    .line 1647
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatService;->mEventList:[B

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-byte v19, v18, v10

    .line 1660
    :cond_5
    const/16 v17, 0xd6

    .line 1661
    .local v17, "tag":I
    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1664
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1667
    sget-object v18, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->EVENT_LIST:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v18

    move/from16 v0, v18

    or-int/lit16 v0, v0, 0x80

    move/from16 v17, v0

    .line 1668
    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1669
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1670
    move/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1673
    sget-object v18, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v18

    move/from16 v0, v18

    or-int/lit16 v0, v0, 0x80

    move/from16 v17, v0

    .line 1674
    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1675
    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1676
    const-string v18, "ro.mtk_bsp_package"

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v19, "1"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_14

    .line 1677
    const/16 v18, 0x2

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_e

    .line 1678
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatService;->mEventDownloadCallDisConnInfo:Ljava/util/LinkedList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/LinkedList;->size()I

    move-result v18

    if-lez v18, :cond_c

    .line 1679
    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cat/CatService;->mIsAllCallDisConn:Z

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_a

    .line 1680
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatService;->mEventDownloadCallDisConnInfo:Ljava/util/LinkedList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/LinkedList;->size()I

    move-result v18

    if-lez v18, :cond_b

    .line 1681
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/internal/telephony/cat/CatService;->writeCallDisConnED(Ljava/io/ByteArrayOutputStream;)V

    goto :goto_2

    .line 1635
    .end local v17    # "tag":I
    :cond_6
    const/16 v18, 0x4

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    .line 1636
    const-string v18, "SS-eventDownload: event is USER_ACTIVITY"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1637
    new-instance v11, Landroid/content/Intent;

    const-string v18, "android.intent.action.stk.USER_ACTIVITY.enable"

    move-object/from16 v0, v18

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1638
    .restart local v11    # "intent":Landroid/content/Intent;
    const-string v18, "state"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1639
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 1640
    .end local v11    # "intent":Landroid/content/Intent;
    :cond_7
    const/16 v18, 0x1

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 1641
    const-string v18, "SS-eventDownload: event is CALL_CONNECTED"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1642
    :cond_8
    const/16 v18, 0x2

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 1643
    const-string v18, "SS-eventDownload: event is CALL_DISCONNECTED"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1652
    :cond_9
    add-int/lit8 v10, v10, 0x1

    .line 1653
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatService;->mEventList:[B

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ne v10, v0, :cond_3

    goto/16 :goto_0

    .line 1684
    .restart local v17    # "tag":I
    :cond_a
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/internal/telephony/cat/CatService;->writeCallDisConnED(Ljava/io/ByteArrayOutputStream;)V

    .line 1732
    :cond_b
    :goto_3
    if-eqz p4, :cond_15

    .line 1733
    move-object/from16 v4, p4

    .local v4, "arr$":[B
    array-length v13, v4

    .local v13, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_4
    if-ge v9, v13, :cond_15

    aget-byte v5, v4, v9

    .line 1734
    .local v5, "b":B
    invoke-virtual {v6, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1733
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 1687
    .end local v4    # "arr$":[B
    .end local v5    # "b":B
    .end local v9    # "i$":I
    .end local v13    # "len$":I
    :cond_c
    const-string v18, "SS-eventDownload: Wait 2s for modem CALL_DISCONNECTED"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1688
    const/16 v18, 0x17

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v14

    .line 1689
    .local v14, "msg1":Landroid/os/Message;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cat/CatService;->mEvdlCallObj:I

    move/from16 v18, v0

    const v19, 0xffff

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_d

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/cat/CatService;->mEvdlCallObj:I

    .line 1690
    :cond_d
    new-instance v18, Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cat/CatService;->mEvdlCallObj:I

    move/from16 v19, v0

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/cat/CatService;->mEvdlCallObj:I

    invoke-direct/range {v18 .. v19}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v18

    iput-object v0, v14, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1691
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatService;->mEvdlCallDisConnObjQ:Ljava/util/LinkedList;

    move-object/from16 v19, v0

    iget-object v0, v14, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Ljava/lang/Integer;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1692
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatService;->mTimeoutHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cat/CatService;->MODEM_EVDL_TIMEOUT:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v14, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1694
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cat/CatService;->mNumEventDownloadCallDisConn:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/cat/CatService;->mNumEventDownloadCallDisConn:I

    .line 1695
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "SS-eventDownload: mNumEventDownloadCallDisConn ++.["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cat/CatService;->mNumEventDownloadCallDisConn:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "]"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1698
    .end local v14    # "msg1":Landroid/os/Message;
    :cond_e
    const/16 v18, 0x1

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_13

    .line 1699
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatService;->mEventDownloadCallConnInfo:Ljava/util/LinkedList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/LinkedList;->size()I

    move-result v18

    if-lez v18, :cond_11

    .line 1700
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatService;->mEventDownloadCallConnInfo:Ljava/util/LinkedList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/cat/EventDownloadCallInfo;

    .line 1701
    .local v7, "evdlcallInfo":Lcom/android/internal/telephony/cat/EventDownloadCallInfo;
    if-eqz v7, :cond_10

    .line 1702
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "SS-eventDownload: event is CALL_CONNECTED.["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v7, Lcom/android/internal/telephony/cat/EventDownloadCallInfo;->mIsMTCall:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ","

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v7, Lcom/android/internal/telephony/cat/EventDownloadCallInfo;->mTi:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "]"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1703
    const/16 v18, 0x1

    iget v0, v7, Lcom/android/internal/telephony/cat/EventDownloadCallInfo;->mIsMTCall:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_f

    const/16 v18, 0x82

    :goto_5
    move/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1704
    const/16 v18, 0x81

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1705
    sget-object v18, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->TRANSACTION_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v17

    .line 1706
    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1707
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1708
    iget v0, v7, Lcom/android/internal/telephony/cat/EventDownloadCallInfo;->mTi:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_3

    .line 1703
    :cond_f
    const/16 v18, 0x83

    goto :goto_5

    .line 1710
    :cond_10
    const-string v18, "SS-eventDownload:O null evdlcallInfo"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1713
    .end local v7    # "evdlcallInfo":Lcom/android/internal/telephony/cat/EventDownloadCallInfo;
    :cond_11
    const/16 v18, 0x16

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v14

    .line 1714
    .restart local v14    # "msg1":Landroid/os/Message;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cat/CatService;->mEvdlCallObj:I

    move/from16 v18, v0

    const v19, 0xffff

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_12

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/cat/CatService;->mEvdlCallObj:I

    .line 1715
    :cond_12
    new-instance v18, Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cat/CatService;->mEvdlCallObj:I

    move/from16 v19, v0

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/cat/CatService;->mEvdlCallObj:I

    invoke-direct/range {v18 .. v19}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v18

    iput-object v0, v14, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1716
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatService;->mEvdlCallConnObjQ:Ljava/util/LinkedList;

    move-object/from16 v19, v0

    iget-object v0, v14, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Ljava/lang/Integer;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1717
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatService;->mTimeoutHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cat/CatService;->MODEM_EVDL_TIMEOUT:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v14, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1719
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cat/CatService;->mNumEventDownloadCallConn:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/cat/CatService;->mNumEventDownloadCallConn:I

    .line 1720
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "SS-eventDownload: mNumEventDownloadCallConn ++.["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cat/CatService;->mNumEventDownloadCallConn:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "]"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1724
    .end local v14    # "msg1":Landroid/os/Message;
    :cond_13
    move/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1725
    move/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_3

    .line 1728
    :cond_14
    move/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1729
    move/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_3

    .line 1738
    :cond_15
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v16

    .line 1741
    .local v16, "rawData":[B
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v18, v0

    add-int/lit8 v12, v18, -0x2

    .line 1742
    .local v12, "len":I
    const/16 v18, 0x1

    int-to-byte v0, v12

    move/from16 v19, v0

    aput-byte v19, v16, v18

    .line 1744
    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v8

    .line 1746
    .local v8, "hexString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v0, v8, v1}, Lcom/android/internal/telephony/CommandsInterface;->sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0
.end method

.method private getInKeyResponse(Ljava/io/ByteArrayOutputStream;Lcom/android/internal/telephony/cat/Input;)V
    .locals 2
    .param p1, "buf"    # Ljava/io/ByteArrayOutputStream;
    .param p2, "cmdInput"    # Lcom/android/internal/telephony/cat/Input;

    .prologue
    .line 1416
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DURATION:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v0

    .line 1418
    .local v0, "tag":I
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1419
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1420
    iget-object v1, p2, Lcom/android/internal/telephony/cat/Input;->duration:Lcom/android/internal/telephony/cat/Duration;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/Duration;->timeUnit:Lcom/android/internal/telephony/cat/Duration$TimeUnit;

    sget-object v1, Lcom/android/internal/telephony/cat/Duration$TimeUnit;->SECOND:Lcom/android/internal/telephony/cat/Duration$TimeUnit;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/Duration$TimeUnit;->value()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1421
    iget-object v1, p2, Lcom/android/internal/telephony/cat/Input;->duration:Lcom/android/internal/telephony/cat/Duration;

    iget v1, v1, Lcom/android/internal/telephony/cat/Duration;->timeInterval:I

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1422
    return-void
.end method

.method public static getInstance()Lcom/android/internal/telephony/cat/AppInterface;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1782
    const-string v0, "CatService"

    const-string v1, "call getInstance 4"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1784
    const/4 v0, 0x0

    invoke-static {v2, v2, v2, v0}, Lcom/android/internal/telephony/cat/CatService;->getInstance(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccCard;I)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(I)Lcom/android/internal/telephony/cat/AppInterface;
    .locals 3
    .param p0, "slotId"    # I

    .prologue
    const/4 v2, 0x0

    .line 1803
    const-string v0, "CatService"

    const-string v1, "call getInstance 3"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1804
    invoke-static {v2, v2, v2, p0}, Lcom/android/internal/telephony/cat/CatService;->getInstance(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccCard;I)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccCard;)Lcom/android/internal/telephony/cat/CatService;
    .locals 4
    .param p0, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ic"    # Lcom/android/internal/telephony/uicc/UiccCard;

    .prologue
    .line 1766
    const-string v1, "CatService"

    const-string v2, "call getInstance 2"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1767
    const/4 v0, 0x0

    .line 1768
    .local v0, "sim_id":I
    if-eqz p2, :cond_0

    .line 1769
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/UiccCard;->getPhoneId()I

    move-result v0

    .line 1770
    const-string v1, "CatService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get SIM id from UiccCard. sim id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1772
    :cond_0
    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/telephony/cat/CatService;->getInstance(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccCard;I)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v1

    return-object v1
.end method

.method public static getInstance(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccCard;I)Lcom/android/internal/telephony/cat/CatService;
    .locals 14
    .param p0, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ic"    # Lcom/android/internal/telephony/uicc/UiccCard;
    .param p3, "slotId"    # I

    .prologue
    .line 568
    const/4 v3, 0x0

    .line 569
    .local v3, "ca":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    const/4 v6, 0x0

    .line 570
    .local v6, "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    const/4 v4, 0x0

    .line 571
    .local v4, "ir":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz p2, :cond_0

    .line 575
    const/4 v1, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplicationIndex(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v3

    .line 576
    if-eqz v3, :cond_0

    .line 577
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v6

    .line 578
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v4

    .line 582
    :cond_0
    const-string v1, "CatService"

    const-string v2, "call getInstance 1"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    sget-object v12, Lcom/android/internal/telephony/cat/CatService;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v12

    .line 584
    const/4 v9, 0x0

    .line 585
    .local v9, "cmd":Ljava/lang/String;
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    if-nez v1, :cond_1

    .line 586
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v11

    .line 587
    .local v11, "simCount":I
    new-array v1, v11, [Lcom/android/internal/telephony/cat/CatService;

    sput-object v1, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    .line 588
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v11, :cond_1

    .line 589
    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    const/4 v2, 0x0

    aput-object v2, v1, v10

    .line 588
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 592
    .end local v10    # "i":I
    .end local v11    # "simCount":I
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    aget-object v1, v1, p3

    if-nez v1, :cond_4

    .line 593
    if-eqz p0, :cond_2

    if-eqz v3, :cond_2

    if-eqz v4, :cond_2

    if-eqz p1, :cond_2

    if-eqz v6, :cond_2

    if-nez p2, :cond_3

    .line 595
    :cond_2
    const/4 v1, 0x0

    monitor-exit v12

    .line 624
    :goto_1
    return-object v1

    .line 598
    :cond_3
    sget-object v13, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    new-instance v1, Lcom/android/internal/telephony/cat/CatService;

    move-object v2, p0

    move-object v5, p1

    move-object/from16 v7, p2

    move/from16 v8, p3

    invoke-direct/range {v1 .. v8}, Lcom/android/internal/telephony/cat/CatService;-><init>(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/UiccCardApplication;Lcom/android/internal/telephony/uicc/IccRecords;Landroid/content/Context;Lcom/android/internal/telephony/uicc/IccFileHandler;Lcom/android/internal/telephony/uicc/UiccCard;I)V

    aput-object v1, v13, p3

    .line 599
    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    aget-object v1, v1, p3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "create instance "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 623
    :goto_2
    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    aget-object v1, v1, p3

    invoke-direct {v1}, Lcom/android/internal/telephony/cat/CatService;->registerSATcb()V

    .line 624
    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    aget-object v1, v1, p3

    monitor-exit v12

    goto :goto_1

    .line 625
    :catchall_0
    move-exception v1

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 600
    :cond_4
    if-eqz v4, :cond_6

    :try_start_1
    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eq v1, v4, :cond_6

    .line 601
    const-string v1, "CatService"

    const-string v2, "Reinitialize the Service with SIMRecords"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    sput-object v4, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 609
    const-string v1, "CatService"

    const-string v2, "read data from sInstSim1"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    aget-object v1, v1, p3

    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->sInstKey:[Ljava/lang/String;

    aget-object v2, v2, p3

    invoke-static {v1, p1, v2}, Lcom/android/internal/telephony/cat/CatService;->readCmdFromPreference(Lcom/android/internal/telephony/cat/CatService;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 611
    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v1, :cond_5

    .line 612
    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    aget-object v2, v2, p3

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 614
    :cond_5
    sput-object v4, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 615
    sput-object v3, Lcom/android/internal/telephony/cat/CatService;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 616
    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    aget-object v2, v2, p3

    const/16 v5, 0x14

    const/4 v7, 0x0

    invoke-virtual {v1, v2, v5, v7}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 617
    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    aget-object v1, v1, p3

    invoke-static {v1, v9}, Lcom/android/internal/telephony/cat/CatService;->handleProactiveCmdFromDB(Lcom/android/internal/telephony/cat/CatService;Ljava/lang/String;)V

    .line 618
    const-string v1, "CatService"

    const-string v2, "sr changed reinitialize and return current sInstance"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 620
    :cond_6
    const-string v1, "CatService"

    const-string v2, "Return current sInstance"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method private getPliResponse(Ljava/io/ByteArrayOutputStream;)V
    .locals 5
    .param p1, "buf"    # Ljava/io/ByteArrayOutputStream;

    .prologue
    .line 1427
    const-string v2, "persist.sys.language"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1429
    .local v0, "lang":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1431
    sget-object v2, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->LANGUAGE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v1

    .line 1432
    .local v1, "tag":I
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1433
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p1, v2}, Lcom/android/internal/telephony/cat/ResponseData;->writeLength(Ljava/io/ByteArrayOutputStream;I)V

    .line 1434
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1436
    .end local v1    # "tag":I
    :cond_0
    return-void
.end method

.method public static getSaveNewSetUpMenuFlag(I)Z
    .locals 4
    .param p0, "sim_id"    # I

    .prologue
    .line 1861
    const/4 v0, 0x0

    .line 1862
    .local v0, "result":Z
    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    aget-object v1, v1, p0

    if-eqz v1, :cond_0

    .line 1863
    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    aget-object v1, v1, p0

    iget-boolean v0, v1, Lcom/android/internal/telephony/cat/CatService;->mSaveNewSetUpMenu:Z

    .line 1864
    const-string v1, "CatService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , mSaveNewSetUpMenu: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1867
    :cond_0
    return v0
.end method

.method private handleCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V
    .locals 18
    .param p1, "resMsg"    # Lcom/android/internal/telephony/cat/CatResponseMessage;

    .prologue
    .line 2370
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/cat/CatService;->validateResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2589
    :goto_0
    return-void

    .line 2373
    :cond_0
    const/4 v6, 0x0

    .line 2374
    .local v6, "resp":Lcom/android/internal/telephony/cat/ResponseData;
    const/4 v14, 0x0

    .line 2375
    .local v14, "helpRequired":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CatResponseMessage;->getCmdDetails()Lcom/android/internal/telephony/cat/CommandDetails;

    move-result-object v2

    .line 2376
    .local v2, "cmdDet":Lcom/android/internal/telephony/cat/CommandDetails;
    iget v1, v2, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-static {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v17

    .line 2378
    .local v17, "type":Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    sget-object v1, Lcom/android/internal/telephony/cat/CatService$7;->$SwitchMap$com$android$internal$telephony$cat$ResultCode:[I

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 2380
    :pswitch_0
    const/4 v14, 0x1

    .line 2393
    :pswitch_1
    sget-object v1, Lcom/android/internal/telephony/cat/CatService$7;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_1

    .line 2583
    :cond_1
    :goto_1
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mIncludeAdditionalInfo:Z

    const/4 v1, 0x1

    move-object/from16 v0, p1

    iget-boolean v5, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mIncludeAdditionalInfo:Z

    if-ne v1, v5, :cond_e

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mAdditionalInfo:[B

    if-eqz v1, :cond_e

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mAdditionalInfo:[B

    array-length v1, v1

    if-lez v1, :cond_e

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mAdditionalInfo:[B

    const/4 v5, 0x0

    aget-byte v5, v1, v5

    :goto_2
    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 2588
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    goto :goto_0

    .line 2395
    :pswitch_3
    const-string v1, "CatService"

    const-string v3, "SET_UP_MENU"

    invoke-static {v1, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2396
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->HELP_INFO_REQUIRED:Lcom/android/internal/telephony/cat/ResultCode;

    if-ne v1, v3, :cond_2

    const/4 v14, 0x1

    .line 2397
    :goto_3
    move-object/from16 v0, p1

    iget v1, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersMenuSelection:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v14}, Lcom/android/internal/telephony/cat/CatService;->sendMenuSelection(IZ)V

    goto :goto_0

    .line 2396
    :cond_2
    const/4 v14, 0x0

    goto :goto_3

    .line 2400
    :pswitch_4
    const-string v1, "CatService"

    const-string v3, "SELECT_ITEM"

    invoke-static {v1, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2401
    new-instance v6, Lcom/android/internal/telephony/cat/SelectItemResponseData;

    .end local v6    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    move-object/from16 v0, p1

    iget v1, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersMenuSelection:I

    invoke-direct {v6, v1}, Lcom/android/internal/telephony/cat/SelectItemResponseData;-><init>(I)V

    .line 2402
    .restart local v6    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    goto :goto_1

    .line 2405
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geInput()Lcom/android/internal/telephony/cat/Input;

    move-result-object v15

    .line 2406
    .local v15, "input":Lcom/android/internal/telephony/cat/Input;
    iget-boolean v1, v15, Lcom/android/internal/telephony/cat/Input;->yesNo:Z

    if-nez v1, :cond_3

    .line 2409
    if-nez v14, :cond_1

    .line 2410
    new-instance v6, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;

    .end local v6    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersInput:Ljava/lang/String;

    iget-boolean v3, v15, Lcom/android/internal/telephony/cat/Input;->ucs2:Z

    iget-boolean v4, v15, Lcom/android/internal/telephony/cat/Input;->packed:Z

    invoke-direct {v6, v1, v3, v4}, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;-><init>(Ljava/lang/String;ZZ)V

    .restart local v6    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    goto :goto_1

    .line 2414
    :cond_3
    new-instance v6, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;

    .end local v6    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    move-object/from16 v0, p1

    iget-boolean v1, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersYesNoSelection:Z

    invoke-direct {v6, v1}, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;-><init>(Z)V

    .line 2417
    .restart local v6    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    goto :goto_1

    .line 2419
    .end local v15    # "input":Lcom/android/internal/telephony/cat/Input;
    :pswitch_6
    const-string v1, "ro.mtk_bsp_package"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 2420
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/telephony/cat/CatService;->mHasCachedDTCmd:Z

    if-eqz v1, :cond_4

    .line 2421
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cat/CatService;->resetPowerOnSequenceFlag()V

    .line 2424
    :cond_4
    const/4 v1, 0x1

    new-array v13, v1, [B

    .line 2425
    .local v13, "additionalInfo":[B
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    if-ne v1, v3, :cond_5

    .line 2428
    const/4 v1, 0x0

    const/4 v3, 0x1

    aput-byte v3, v13, v1

    .line 2429
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setAdditionalInfo([B)V

    goto/16 :goto_1

    .line 2431
    :cond_5
    const/4 v1, 0x0

    move-object/from16 v0, p1

    iput-boolean v1, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mIncludeAdditionalInfo:Z

    goto/16 :goto_1

    .line 2438
    .end local v13    # "additionalInfo":[B
    :pswitch_7
    const-string v1, "[BIP]"

    const-string v3, "SS-handleCmdResponse: user accept to open channel"

    invoke-static {v1, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2439
    const/16 v1, 0x28

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v16

    .line 2440
    .local v16, "response":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v1, :cond_8

    .line 2441
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mCmdMessage:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 2442
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2443
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mEventList:[B

    if-eqz v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mEventList:[B

    array-length v1, v1

    if-nez v1, :cond_7

    .line 2444
    :cond_6
    const-string v1, "[BIP]"

    const-string v3, "Force trigger data available & channel status."

    invoke-static {v1, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2445
    const/4 v1, 0x2

    new-array v1, v1, [B

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mEventList:[B

    .line 2446
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mEventList:[B

    const/4 v3, 0x0

    const/16 v4, 0x9

    aput-byte v4, v1, v3

    .line 2447
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mEventList:[B

    const/4 v3, 0x1

    const/16 v4, 0xa

    aput-byte v4, v1, v3

    .line 2450
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mBipMgr:Lcom/android/internal/telephony/cat/bip/BipManager;

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/cat/bip/BipManager;->openChannel(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2452
    :cond_8
    const-string v1, "[BIP]"

    const-string v3, "SS-handleCmdResponse: invalid OPEN_CHANNEL"

    invoke-static {v1, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2458
    .end local v16    # "response":Landroid/os/Message;
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersConfirm:Z

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v4

    const/4 v5, 0x0

    invoke-interface {v1, v3, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->handleCallSetupRequestFromSim(ZILandroid/os/Message;)V

    .line 2465
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    goto/16 :goto_0

    .line 2487
    :pswitch_9
    sget-object v1, Lcom/android/internal/telephony/cat/CatService$7;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v3

    aget v1, v1, v3

    sparse-switch v1, :sswitch_data_0

    .line 2514
    :cond_9
    :goto_4
    const/4 v6, 0x0

    .line 2515
    goto/16 :goto_1

    .line 2489
    :sswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SS-handleCmdResponse: [BACKWARD_MOVE_BY_USER] userConfirm["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersConfirm:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "] resultCode["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2492
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x0

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->BACKWARD_MOVE_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v4

    const/4 v5, 0x0

    invoke-interface {v1, v3, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->handleCallSetupRequestFromSim(ZILandroid/os/Message;)V

    goto :goto_4

    .line 2496
    :sswitch_1
    const-string v1, "ro.mtk_bsp_package"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 2497
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/telephony/cat/CatService;->mHasCachedDTCmd:Z

    if-eqz v1, :cond_9

    .line 2498
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cat/CatService;->resetPowerOnSequenceFlag()V

    goto :goto_4

    .line 2503
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v1, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBearerDesc:Lcom/android/internal/telephony/cat/bip/BearerDesc;

    if-eqz v1, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBufferSize:I

    if-lez v1, :cond_a

    .line 2506
    new-instance v6, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;

    .end local v6    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBearerDesc:Lcom/android/internal/telephony/cat/bip/BearerDesc;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget v4, v4, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBufferSize:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v5, v5, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTransportProtocol:Lcom/android/internal/telephony/cat/bip/TransportProtocol;

    iget v5, v5, Lcom/android/internal/telephony/cat/bip/TransportProtocol;->protocolType:I

    invoke-direct {v6, v1, v3, v4, v5}, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;-><init>(Lcom/android/internal/telephony/cat/bip/ChannelStatus;Lcom/android/internal/telephony/cat/bip/BearerDesc;II)V

    .line 2508
    .restart local v6    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_4

    .line 2510
    :cond_a
    const-string v1, "[BIP]"

    const-string v3, "SS-handleCmdResponse: mCurrentCmd = null"

    invoke-static {v1, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 2517
    :pswitch_a
    sget-object v1, Lcom/android/internal/telephony/cat/CatService$7;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_2

    goto/16 :goto_1

    .line 2519
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersConfirm:Z

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v4

    const/4 v5, 0x0

    invoke-interface {v1, v3, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->handleCallSetupRequestFromSim(ZILandroid/os/Message;)V

    .line 2526
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    goto/16 :goto_0

    .line 2529
    :pswitch_c
    const-string v1, "ro.mtk_bsp_package"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 2530
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/telephony/cat/CatService;->mHasCachedDTCmd:Z

    if-eqz v1, :cond_b

    .line 2531
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cat/CatService;->resetPowerOnSequenceFlag()V

    .line 2534
    :cond_b
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mAdditionalInfo:[B

    if-eqz v1, :cond_1

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mAdditionalInfo:[B

    array-length v1, v1

    if-lez v1, :cond_1

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mAdditionalInfo:[B

    const/4 v3, 0x0

    aget-byte v1, v1, v3

    if-eqz v1, :cond_1

    .line 2536
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v4, 0x1

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mAdditionalInfo:[B

    const/4 v5, 0x0

    aget-byte v5, v1, v5

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 2538
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    goto/16 :goto_0

    .line 2547
    :pswitch_d
    sget-object v1, Lcom/android/internal/telephony/cat/CatService$7;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    iget v3, v2, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-static {v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_3

    goto/16 :goto_1

    .line 2549
    :pswitch_e
    const-string v1, "[BIP]"

    const-string v3, "SS-handleCmdResponse: User don\'t accept open channel"

    invoke-static {v1, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2550
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v1, :cond_c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBearerDesc:Lcom/android/internal/telephony/cat/bip/BearerDesc;

    if-eqz v1, :cond_c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBufferSize:I

    if-lez v1, :cond_c

    .line 2558
    new-instance v6, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;

    .end local v6    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBearerDesc:Lcom/android/internal/telephony/cat/bip/BearerDesc;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget v4, v4, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBufferSize:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v5, v5, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTransportProtocol:Lcom/android/internal/telephony/cat/bip/TransportProtocol;

    iget v5, v5, Lcom/android/internal/telephony/cat/bip/TransportProtocol;->protocolType:I

    invoke-direct {v6, v1, v3, v4, v5}, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;-><init>(Lcom/android/internal/telephony/cat/bip/ChannelStatus;Lcom/android/internal/telephony/cat/bip/BearerDesc;II)V

    .line 2560
    .restart local v6    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 2562
    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-nez v1, :cond_d

    .line 2563
    const-string v1, "[BIP]"

    const-string v3, "SS-handleCmdResponse: mCurrent is null"

    invoke-static {v1, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2565
    :cond_d
    const-string v1, "[BIP]"

    const-string v3, "SS-handleCmdResponse: other params is invalid"

    invoke-static {v1, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2574
    :pswitch_f
    iget v1, v2, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    sget-object v3, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->LAUNCH_BROWSER:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v3

    if-ne v1, v3, :cond_1

    .line 2575
    const-string v1, "send TR for LAUNCH_BROWSER_ERROR"

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2576
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v10, 0x1

    const/4 v11, 0x2

    const/4 v12, 0x0

    move-object/from16 v7, p0

    move-object v8, v2

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 2583
    :cond_e
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 2378
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_d
        :pswitch_f
    .end packed-switch

    .line 2393
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_8
        :pswitch_6
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_7
    .end packed-switch

    .line 2487
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0x11 -> :sswitch_2
    .end sparse-switch

    .line 2517
    :pswitch_data_2
    .packed-switch 0x3
        :pswitch_b
        :pswitch_c
    .end packed-switch

    .line 2547
    :pswitch_data_3
    .packed-switch 0x11
        :pswitch_e
    .end packed-switch
.end method

.method private handleCommand(Lcom/android/internal/telephony/cat/CommandParams;Z)V
    .locals 43
    .param p1, "cmdParams"    # Lcom/android/internal/telephony/cat/CommandParams;
    .param p2, "isProactiveCmd"    # Z

    .prologue
    .line 835
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->name()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 838
    new-instance v14, Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Lcom/android/internal/telephony/cat/CatCmdMessage;-><init>(Lcom/android/internal/telephony/cat/CommandParams;)V

    .line 842
    .local v14, "cmdMsg":Lcom/android/internal/telephony/cat/CatCmdMessage;
    const/16 v34, 0x0

    .line 847
    .local v34, "response":Landroid/os/Message;
    const/16 v25, 0x0

    .line 848
    .local v25, "isAlarmState":Z
    const/16 v26, 0x0

    .line 849
    .local v26, "isFlightMode":Z
    const/16 v19, 0x0

    .line 851
    .local v19, "flightMode":I
    sget-object v3, Lcom/android/internal/telephony/cat/CatService$7;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 1269
    const-string v3, "Unsupported command"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1274
    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :cond_0
    :goto_0
    return-void

    .line 853
    .restart local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :pswitch_0
    invoke-virtual {v14}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/cat/CatService;->removeMenu(Lcom/android/internal/telephony/cat/Menu;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 854
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/cat/CatService;->mMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 858
    :goto_1
    const-string v3, "CAT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mSetUpMenuFromMD: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/internal/telephony/cat/CatService;->mSetUpMenuFromMD:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    invoke-virtual {v14}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 860
    invoke-virtual {v14}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/telephony/cat/CatService;->mSetUpMenuFromMD:Z

    const/4 v5, 0x1

    if-ne v3, v5, :cond_4

    const/4 v3, 0x1

    :goto_2
    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/cat/Menu;->setSetUpMenuFlag(I)V

    .line 862
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/telephony/cat/CatService;->mSetUpMenuFromMD:Z

    if-nez v3, :cond_5

    .line 864
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/telephony/cat/CatService;->mIsProactiveCmdResponsed:Z

    .line 1272
    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :cond_2
    :goto_3
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 1273
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/internal/telephony/cat/CatService;->broadcastCatCmdIntent(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    goto :goto_0

    .line 856
    .restart local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :cond_3
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/internal/telephony/cat/CatService;->mMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    goto :goto_1

    .line 860
    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    .line 867
    :cond_5
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/telephony/cat/CatService;->mSetUpMenuFromMD:Z

    .line 868
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/cat/CatService;->ResultCodeFlag:I

    if-nez v3, :cond_6

    .line 869
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto :goto_3

    .line 870
    :cond_6
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/cat/CatService;->ResultCodeFlag:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 871
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto :goto_3

    .line 877
    :pswitch_1
    const-string v3, "ro.mtk_bsp_package"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 878
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/telephony/cat/CatService;->mHasCachedDTCmd:Z

    if-eqz v3, :cond_8

    .line 879
    const-string v3, "[CacheDT cache DISPLAY_TEXT"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 881
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "dialog_sequence_settings"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v36

    .line 885
    .local v36, "seqValue":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "seqValue in CatService, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v36

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 887
    const/4 v3, 0x2

    move/from16 v0, v36

    if-eq v0, v3, :cond_8

    .line 888
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/internal/telephony/cat/CatService;->mCachedDisplayTextCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 889
    if-nez v36, :cond_7

    .line 891
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "dialog_sequence_settings"

    const/4 v5, 0x2

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 896
    :cond_7
    const-string v3, "[CacheDT set current cmd as DISPLAY_TEXT"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 897
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 898
    const/16 v3, 0x2e

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/cat/CatService;->CACHED_DISPLAY_TIMEOUT:I

    int-to-long v4, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/internal/telephony/cat/CatService;->startTimeOut(IJ)V

    goto/16 :goto_0

    .line 912
    .end local v36    # "seqValue":I
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cat/CatService;->isAlarmBoot()Z

    move-result v25

    .line 914
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v19

    .line 920
    :goto_4
    if-eqz v19, :cond_9

    const/16 v26, 0x1

    .line 921
    :goto_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAlarmState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isFlightMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", flightMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 924
    if-eqz v25, :cond_a

    if-eqz v26, :cond_a

    .line 925
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 916
    :catch_0
    move-exception v16

    .line 917
    .local v16, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v3, "fail to get property from Settings"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 918
    const/16 v19, 0x0

    goto :goto_4

    .line 920
    .end local v16    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_9
    const/16 v26, 0x0

    goto :goto_5

    .line 930
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cat/CatService;->checkSetupWizardInstalled()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_b

    .line 931
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->BACKWARD_MOVE_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 937
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/telephony/cat/CatService;->isIvsrBootUp:Z

    if-eqz v3, :cond_c

    .line 938
    const-string v3, "[IVSR send TR directly"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 939
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->BACKWARD_MOVE_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 943
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/telephony/cat/CatService;->isDisplayTextDisabled:Z

    if-eqz v3, :cond_d

    .line 944
    const-string v3, "[Sim Recovery send TR directly"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 945
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->BACKWARD_MOVE_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 948
    :cond_d
    const/4 v3, 0x1

    const-string v4, "persist.service.cat.dt.disable"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v3, v4, :cond_2

    .line 949
    const-string v3, "Filter DISPLAY_TEXT command."

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 950
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->BACKWARD_MOVE_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 957
    :pswitch_2
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/telephony/cat/CatService;->mIsProactiveCmdResponsed:Z

    .line 958
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_IDLE_MODE_TEXT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    .line 959
    const-string v3, "remove event list because of SIM Refresh"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 960
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/cat/CatService;->mEventList:[B

    goto/16 :goto_3

    :pswitch_3
    move-object/from16 v3, p1

    .line 964
    check-cast v3, Lcom/android/internal/telephony/cat/DisplayTextParams;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/DisplayTextParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_e

    move-object/from16 v3, p1

    check-cast v3, Lcom/android/internal/telephony/cat/DisplayTextParams;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/DisplayTextParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-boolean v3, v3, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    if-nez v3, :cond_e

    move-object/from16 v3, p1

    check-cast v3, Lcom/android/internal/telephony/cat/DisplayTextParams;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/DisplayTextParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-nez v3, :cond_e

    .line 967
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 972
    :cond_e
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_3

    .line 977
    :pswitch_4
    const/4 v2, 0x0

    .line 979
    .local v2, "resp":Lcom/android/internal/telephony/cat/ResponseData;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v3, v3, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_f

    .line 981
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    .line 982
    .local v11, "cal":Ljava/util/Calendar;
    const/16 v42, 0x0

    .line 983
    .local v42, "temp":I
    const/16 v23, 0x0

    .line 984
    .local v23, "hibyte":I
    const/16 v28, 0x0

    .line 985
    .local v28, "lobyte":I
    const/4 v3, 0x7

    new-array v15, v3, [B

    .line 987
    .local v15, "datetime":[B
    const/4 v3, 0x1

    invoke-virtual {v11, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit16 v0, v3, -0x7d0

    move/from16 v42, v0

    .line 988
    div-int/lit8 v23, v42, 0xa

    .line 989
    rem-int/lit8 v3, v42, 0xa

    shl-int/lit8 v28, v3, 0x4

    .line 990
    const/4 v3, 0x0

    or-int v4, v28, v23

    int-to-byte v4, v4

    aput-byte v4, v15, v3

    .line 992
    const/4 v3, 0x2

    invoke-virtual {v11, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v42, v3, 0x1

    .line 993
    div-int/lit8 v23, v42, 0xa

    .line 994
    rem-int/lit8 v3, v42, 0xa

    shl-int/lit8 v28, v3, 0x4

    .line 995
    const/4 v3, 0x1

    or-int v4, v28, v23

    int-to-byte v4, v4

    aput-byte v4, v15, v3

    .line 997
    const/4 v3, 0x5

    invoke-virtual {v11, v3}, Ljava/util/Calendar;->get(I)I

    move-result v42

    .line 998
    div-int/lit8 v23, v42, 0xa

    .line 999
    rem-int/lit8 v3, v42, 0xa

    shl-int/lit8 v28, v3, 0x4

    .line 1000
    const/4 v3, 0x2

    or-int v4, v28, v23

    int-to-byte v4, v4

    aput-byte v4, v15, v3

    .line 1002
    const/16 v3, 0xb

    invoke-virtual {v11, v3}, Ljava/util/Calendar;->get(I)I

    move-result v42

    .line 1003
    div-int/lit8 v23, v42, 0xa

    .line 1004
    rem-int/lit8 v3, v42, 0xa

    shl-int/lit8 v28, v3, 0x4

    .line 1005
    const/4 v3, 0x3

    or-int v4, v28, v23

    int-to-byte v4, v4

    aput-byte v4, v15, v3

    .line 1007
    const/16 v3, 0xc

    invoke-virtual {v11, v3}, Ljava/util/Calendar;->get(I)I

    move-result v42

    .line 1008
    div-int/lit8 v23, v42, 0xa

    .line 1009
    rem-int/lit8 v3, v42, 0xa

    shl-int/lit8 v28, v3, 0x4

    .line 1010
    const/4 v3, 0x4

    or-int v4, v28, v23

    int-to-byte v4, v4

    aput-byte v4, v15, v3

    .line 1012
    const/16 v3, 0xd

    invoke-virtual {v11, v3}, Ljava/util/Calendar;->get(I)I

    move-result v42

    .line 1013
    div-int/lit8 v23, v42, 0xa

    .line 1014
    rem-int/lit8 v3, v42, 0xa

    shl-int/lit8 v28, v3, 0x4

    .line 1015
    const/4 v3, 0x5

    or-int v4, v28, v23

    int-to-byte v4, v4

    aput-byte v4, v15, v3

    .line 1018
    const/16 v3, 0xf

    invoke-virtual {v11, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const v4, 0xdbba0

    div-int v42, v3, v4

    .line 1019
    div-int/lit8 v23, v42, 0xa

    .line 1020
    rem-int/lit8 v3, v42, 0xa

    shl-int/lit8 v28, v3, 0x4

    .line 1021
    const/4 v3, 0x6

    or-int v4, v28, v23

    int-to-byte v4, v4

    aput-byte v4, v15, v3

    .line 1023
    new-instance v2, Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;

    .end local v2    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    const/4 v3, 0x0

    aget-byte v3, v15, v3

    const/4 v4, 0x1

    aget-byte v4, v15, v4

    const/4 v5, 0x2

    aget-byte v5, v15, v5

    const/4 v6, 0x3

    aget-byte v6, v15, v6

    const/4 v7, 0x4

    aget-byte v7, v15, v7

    const/4 v8, 0x5

    aget-byte v8, v15, v8

    const/4 v9, 0x6

    aget-byte v9, v15, v9

    invoke-direct/range {v2 .. v9}, Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;-><init>(IIIIIII)V

    .line 1027
    .restart local v2    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p0

    move-object v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 1031
    .end local v11    # "cal":Ljava/util/Calendar;
    .end local v15    # "datetime":[B
    .end local v23    # "hibyte":I
    .end local v28    # "lobyte":I
    .end local v42    # "temp":I
    :cond_f
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v3, v3, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 1033
    const/4 v3, 0x2

    new-array v0, v3, [B

    move-object/from16 v27, v0

    .line 1034
    .local v27, "lang":[B
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v29

    .line 1036
    .local v29, "locale":Ljava/util/Locale;
    const/4 v3, 0x0

    invoke-virtual/range {v29 .. v29}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v27, v3

    .line 1037
    const/4 v3, 0x1

    invoke-virtual/range {v29 .. v29}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v27, v3

    .line 1039
    new-instance v2, Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;

    .end local v2    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    move-object/from16 v0, v27

    invoke-direct {v2, v0}, Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;-><init>([B)V

    .line 1041
    .restart local v2    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p0

    move-object v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .end local v2    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    .end local v27    # "lang":[B
    .end local v29    # "locale":Ljava/util/Locale;
    :pswitch_5
    move-object/from16 v3, p1

    .line 1049
    check-cast v3, Lcom/android/internal/telephony/cat/LaunchBrowserParams;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/LaunchBrowserParams;->mConfirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v3, :cond_2

    move-object/from16 v3, p1

    check-cast v3, Lcom/android/internal/telephony/cat/LaunchBrowserParams;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/LaunchBrowserParams;->mConfirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    const-string v4, "Default Message"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1051
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const v4, 0x10405d2

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v30

    .line 1052
    .local v30, "message":Ljava/lang/CharSequence;
    check-cast p1, Lcom/android/internal/telephony/cat/LaunchBrowserParams;

    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/LaunchBrowserParams;->mConfirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    invoke-interface/range {v30 .. v30}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    goto/16 :goto_3

    .line 1058
    .end local v30    # "message":Ljava/lang/CharSequence;
    .restart local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :pswitch_6
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cat/CatService;->isAlarmBoot()Z

    move-result v25

    .line 1060
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v19

    .line 1066
    :goto_6
    if-eqz v19, :cond_10

    const/16 v26, 0x1

    .line 1067
    :goto_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAlarmState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isFlightMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", flightMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1069
    if-eqz v25, :cond_2

    if-eqz v26, :cond_2

    .line 1070
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->UICC_SESSION_TERM_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 1062
    :catch_1
    move-exception v16

    .line 1063
    .restart local v16    # "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v3, "fail to get property from Settings"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1064
    const/16 v19, 0x0

    goto :goto_6

    .line 1066
    .end local v16    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_10
    const/16 v26, 0x0

    goto :goto_7

    .line 1077
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatService;->simState:Ljava/lang/String;

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatService;->simState:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "READY"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatService;->simState:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "IMSI"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatService;->simState:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "LOADED"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatService;->simState:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1081
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 1089
    :pswitch_8
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/telephony/cat/CatService;->mIsProactiveCmdResponsed:Z

    move-object/from16 v3, p1

    .line 1090
    check-cast v3, Lcom/android/internal/telephony/cat/DisplayTextParams;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/DisplayTextParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v3, :cond_2

    move-object/from16 v3, p1

    check-cast v3, Lcom/android/internal/telephony/cat/DisplayTextParams;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/DisplayTextParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    const-string v4, "Default Message"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1092
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const v4, 0x10405d1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v30

    .line 1093
    .restart local v30    # "message":Ljava/lang/CharSequence;
    check-cast p1, Lcom/android/internal/telephony/cat/DisplayTextParams;

    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/DisplayTextParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    invoke-interface/range {v30 .. v30}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    goto/16 :goto_3

    .line 1097
    .end local v30    # "message":Ljava/lang/CharSequence;
    .restart local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :pswitch_9
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/telephony/cat/CatService;->mIsProactiveCmdResponsed:Z

    goto/16 :goto_3

    :pswitch_a
    move-object/from16 v3, p1

    .line 1100
    check-cast v3, Lcom/android/internal/telephony/cat/CallSetupParams;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/CallSetupParams;->mConfirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v3, :cond_2

    move-object/from16 v3, p1

    check-cast v3, Lcom/android/internal/telephony/cat/CallSetupParams;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/CallSetupParams;->mConfirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    const-string v4, "Default Message"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1102
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const v4, 0x10405d3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v30

    .line 1103
    .restart local v30    # "message":Ljava/lang/CharSequence;
    check-cast p1, Lcom/android/internal/telephony/cat/CallSetupParams;

    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CallSetupParams;->mConfirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    invoke-interface/range {v30 .. v30}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    goto/16 :goto_3

    .line 1115
    .end local v30    # "message":Ljava/lang/CharSequence;
    .restart local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :pswitch_b
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/telephony/cat/CatService;->mIsProactiveCmdResponsed:Z

    .line 1116
    check-cast p1, Lcom/android/internal/telephony/cat/SetupEventListParams;

    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/SetupEventListParams;->eventList:[B

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/cat/CatService;->mEventList:[B

    goto/16 :goto_0

    .line 1119
    .restart local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :pswitch_c
    const-string v3, "SS-handleProactiveCommand: process OPEN_CHANNEL"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1120
    sget-object v12, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 1121
    .local v12, "call_state":Lcom/android/internal/telephony/PhoneConstants$State;
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v13

    .line 1122
    .local v13, "callmgr":Lcom/android/internal/telephony/CallManager;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v41

    .line 1123
    .local v41, "subId":[I
    const/4 v3, 0x0

    aget v3, v41, v3

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v33

    .line 1124
    .local v33, "phoneId":I
    invoke-static/range {v33 .. v33}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v31

    .line 1125
    .local v31, "myPhone":Lcom/android/internal/telephony/Phone;
    if-nez v31, :cond_11

    .line 1126
    const-string v3, "CatService"

    const-string v4, "myPhone is still null"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1130
    :cond_11
    invoke-interface/range {v31 .. v31}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getNetworkType()I

    move-result v3

    const/4 v4, 0x2

    if-gt v3, v4, :cond_12

    if-eqz v13, :cond_12

    .line 1131
    invoke-virtual {v13}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v12

    .line 1133
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v12, v3, :cond_2

    .line 1134
    const-string v3, "[BIP]"

    const-string v4, "SS-handleProactiveCommand: ME is busy on call"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1135
    new-instance v3, Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatService;->mBipMgr:Lcom/android/internal/telephony/cat/bip/BipManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/bip/BipManager;->getFreeChannelId()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/android/internal/telephony/cat/bip/ChannelStatus;-><init>(III)V

    iput-object v3, v14, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatusData:Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    .line 1138
    iget-object v3, v14, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatusData:Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    const/4 v4, 0x0

    iput v4, v3, Lcom/android/internal/telephony/cat/bip/ChannelStatus;->mChannelStatus:I

    .line 1139
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 1140
    const/16 v3, 0x28

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v14}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v34

    .line 1142
    invoke-virtual/range {v34 .. v34}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1146
    :cond_12
    const-string v3, "[BIP]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SS-handleProactiveCommand: type:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {v31 .. v31}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getNetworkType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",or null callmgr"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1150
    .end local v12    # "call_state":Lcom/android/internal/telephony/PhoneConstants$State;
    .end local v13    # "callmgr":Lcom/android/internal/telephony/CallManager;
    .end local v31    # "myPhone":Lcom/android/internal/telephony/Phone;
    .end local v33    # "phoneId":I
    .end local v41    # "subId":[I
    :pswitch_d
    const-string v3, "SS-handleProactiveCommand: process CLOSE_CHANNEL"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1151
    const/16 v3, 0x2b

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v34

    .line 1152
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/internal/telephony/cat/CatService;->mCmdMessage:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 1153
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatService;->mBipMgr:Lcom/android/internal/telephony/cat/bip/BipManager;

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/cat/bip/BipManager;->closeChannel(Landroid/os/Message;)V

    goto/16 :goto_3

    .line 1156
    :pswitch_e
    const-string v3, "SS-handleProactiveCommand: process RECEIVE_DATA"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1157
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/internal/telephony/cat/CatService;->mCmdMessage:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 1158
    const/16 v3, 0x2a

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v34

    .line 1159
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatService;->mBipMgr:Lcom/android/internal/telephony/cat/bip/BipManager;

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/cat/bip/BipManager;->receiveData(Landroid/os/Message;)V

    goto/16 :goto_3

    .line 1162
    :pswitch_f
    const-string v3, "SS-handleProactiveCommand: process SEND_DATA"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1163
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/internal/telephony/cat/CatService;->mCmdMessage:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 1164
    const/16 v3, 0x29

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v34

    .line 1165
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatService;->mBipMgr:Lcom/android/internal/telephony/cat/bip/BipManager;

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/cat/bip/BipManager;->sendData(Landroid/os/Message;)V

    goto/16 :goto_3

    .line 1168
    :pswitch_10
    const-string v3, "SS-handleProactiveCommand: process GET_CHANNEL_STATUS"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1169
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/internal/telephony/cat/CatService;->mCmdMessage:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 1170
    const/16 v3, 0x2c

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v34

    .line 1171
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatService;->mBipMgr:Lcom/android/internal/telephony/cat/bip/BipManager;

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/cat/bip/BipManager;->getChannelStatus(Landroid/os/Message;)V

    goto/16 :goto_3

    .line 1174
    :pswitch_11
    const/4 v4, 0x1

    move-object/from16 v3, p1

    check-cast v3, Lcom/android/internal/telephony/cat/ActivateParams;

    iget v3, v3, Lcom/android/internal/telephony/cat/ActivateParams;->mTarget:I

    if-ne v4, v3, :cond_19

    .line 1176
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Activate UICC-CLF interface mSlotId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1177
    const/16 v35, 0x0

    .line 1181
    .local v35, "result":Z
    const/16 v32, 0x0

    .line 1182
    .local v32, "nfcAdapter":Ljava/lang/Class;
    const/16 v24, 0x0

    .line 1183
    .local v24, "infcAdapterGsmaExtras":Ljava/lang/Class;
    const/16 v18, 0x0

    .line 1184
    .local v18, "field":Ljava/lang/reflect/Field;
    const/16 v20, 0x0

    .line 1185
    .local v20, "getDefaultAdapter":Ljava/lang/reflect/Method;
    const/16 v21, 0x0

    .line 1186
    .local v21, "getNfcAdapterGsmaExtrasInterface":Ljava/lang/reflect/Method;
    const/16 v37, 0x0

    .line 1187
    .local v37, "setNfcSwpActive":Ljava/lang/reflect/Method;
    const/4 v10, 0x0

    .line 1188
    .local v10, "adapter":Ljava/lang/Object;
    const/16 v22, 0x0

    .line 1191
    .local v22, "gsmaExtras":Ljava/lang/Object;
    :try_start_2
    const-string v3, "android.nfc.NfcAdapter"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v32

    .line 1192
    const-string v3, "android.nfc.INfcAdapterGsmaExtras"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v24

    .line 1195
    const-string v3, "SIM_1"

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v18

    .line 1196
    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v38

    .line 1197
    .local v38, "sim1":I
    const-string v3, "SIM_2"

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v18

    .line 1198
    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v39

    .line 1199
    .local v39, "sim2":I
    const-string v3, "SIM_3"

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v18

    .line 1200
    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v40

    .line 1202
    .local v40, "sim3":I
    const-string v3, "getDefaultAdapter"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    move-object/from16 v0, v32

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v20

    .line 1204
    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    aput-object v6, v4, v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 1205
    if-nez v10, :cond_13

    .line 1206
    const-string v3, "Cannot get NFC Default Adapter !!!"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1207
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_6

    goto/16 :goto_0

    .line 1241
    .end local v10    # "adapter":Ljava/lang/Object;
    .end local v22    # "gsmaExtras":Ljava/lang/Object;
    .end local v38    # "sim1":I
    .end local v39    # "sim2":I
    .end local v40    # "sim3":I
    :catch_2
    move-exception v17

    .line 1242
    .local v17, "ex":Ljava/lang/ClassNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Activate UICC-CLF failed !!! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1243
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 1212
    .end local v17    # "ex":Ljava/lang/ClassNotFoundException;
    .restart local v10    # "adapter":Ljava/lang/Object;
    .restart local v22    # "gsmaExtras":Ljava/lang/Object;
    .restart local v38    # "sim1":I
    .restart local v39    # "sim2":I
    .restart local v40    # "sim3":I
    :cond_13
    :try_start_3
    const-string v3, "getNfcAdapterGsmaExtrasInterface"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    move-object/from16 v0, v32

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v21

    .line 1214
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    move-object/from16 v0, v21

    invoke-virtual {v0, v10, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 1215
    if-nez v22, :cond_14

    .line 1216
    const-string v3, "NfcAdapterGsmaExtras service is null !!!"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1217
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_6

    goto/16 :goto_0

    .line 1245
    .end local v10    # "adapter":Ljava/lang/Object;
    .end local v22    # "gsmaExtras":Ljava/lang/Object;
    .end local v38    # "sim1":I
    .end local v39    # "sim2":I
    .end local v40    # "sim3":I
    :catch_3
    move-exception v17

    .line 1246
    .local v17, "ex":Ljava/lang/NoSuchFieldException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Activate UICC-CLF failed !!! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1247
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 1222
    .end local v17    # "ex":Ljava/lang/NoSuchFieldException;
    .restart local v10    # "adapter":Ljava/lang/Object;
    .restart local v22    # "gsmaExtras":Ljava/lang/Object;
    .restart local v38    # "sim1":I
    .restart local v39    # "sim2":I
    .restart local v40    # "sim3":I
    :cond_14
    :try_start_4
    const-string v3, "setNfcSwpActive"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v37

    .line 1225
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    if-nez v3, :cond_16

    .line 1226
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, v37

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v35

    .line 1233
    :cond_15
    :goto_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setNfcSwpActive result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1234
    if-eqz v35, :cond_18

    .line 1235
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_6

    goto/16 :goto_0

    .line 1249
    .end local v10    # "adapter":Ljava/lang/Object;
    .end local v22    # "gsmaExtras":Ljava/lang/Object;
    .end local v38    # "sim1":I
    .end local v39    # "sim2":I
    .end local v40    # "sim3":I
    :catch_4
    move-exception v17

    .line 1250
    .local v17, "ex":Ljava/lang/NoSuchMethodException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Activate UICC-CLF failed !!! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1251
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 1227
    .end local v17    # "ex":Ljava/lang/NoSuchMethodException;
    .restart local v10    # "adapter":Ljava/lang/Object;
    .restart local v22    # "gsmaExtras":Ljava/lang/Object;
    .restart local v38    # "sim1":I
    .restart local v39    # "sim2":I
    .restart local v40    # "sim3":I
    :cond_16
    const/4 v3, 0x1

    :try_start_5
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    if-ne v3, v4, :cond_17

    .line 1228
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, v37

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v35

    goto :goto_8

    .line 1229
    :cond_17
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    if-ne v3, v4, :cond_15

    .line 1230
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, v37

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v35

    goto/16 :goto_8

    .line 1238
    :cond_18
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_5} :catch_6

    goto/16 :goto_0

    .line 1253
    .end local v10    # "adapter":Ljava/lang/Object;
    .end local v22    # "gsmaExtras":Ljava/lang/Object;
    .end local v38    # "sim1":I
    .end local v39    # "sim2":I
    .end local v40    # "sim3":I
    :catch_5
    move-exception v17

    .line 1254
    .local v17, "ex":Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Activate UICC-CLF failed !!! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1255
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 1257
    .end local v17    # "ex":Ljava/lang/IllegalAccessException;
    :catch_6
    move-exception v17

    .line 1258
    .local v17, "ex":Ljava/lang/reflect/InvocationTargetException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Activate UICC-CLF failed !!! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1259
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 1263
    .end local v17    # "ex":Ljava/lang/reflect/InvocationTargetException;
    .end local v18    # "field":Ljava/lang/reflect/Field;
    .end local v20    # "getDefaultAdapter":Ljava/lang/reflect/Method;
    .end local v21    # "getNfcAdapterGsmaExtrasInterface":Ljava/lang/reflect/Method;
    .end local v24    # "infcAdapterGsmaExtras":Ljava/lang/Class;
    .end local v32    # "nfcAdapter":Ljava/lang/Class;
    .end local v35    # "result":Z
    .end local v37    # "setNfcSwpActive":Ljava/lang/reflect/Method;
    :cond_19
    const-string v3, "Unsupport target or interface !!!"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1264
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 851
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_a
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method private handleDBHandler(I)V
    .locals 3
    .param p1, "sim_id"    # I

    .prologue
    .line 2349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleDBHandler, sim_id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2350
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->sInstKey:[Ljava/lang/String;

    aget-object v1, v1, p1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/cat/CatService;->saveCmdToPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2351
    return-void
.end method

.method private handleEventDownload(Lcom/android/internal/telephony/cat/CatResponseMessage;)V
    .locals 6
    .param p1, "resMsg"    # Lcom/android/internal/telephony/cat/CatResponseMessage;

    .prologue
    .line 2344
    iget v1, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mEvent:I

    iget v2, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mSourceId:I

    iget v3, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mDestinationId:I

    iget-object v4, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mAdditionalInfo:[B

    iget-boolean v5, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mOneShot:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->eventDownload(III[BZ)V

    .line 2346
    return-void
.end method

.method private static handleProactiveCmdFromDB(Lcom/android/internal/telephony/cat/CatService;Ljava/lang/String;)V
    .locals 4
    .param p0, "inst"    # Lcom/android/internal/telephony/cat/CatService;
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 1809
    const-string v1, "ro.mtk_bsp_package"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1810
    if-nez p1, :cond_0

    .line 1811
    const-string v1, "CatService"

    const-string v2, "handleProactiveCmdFromDB: cmd = null"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1824
    :goto_0
    return-void

    .line 1815
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatService;->default_send_setupmenu_tr:Z

    .line 1817
    const-string v1, "CatService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " handleProactiveCmdFromDB: cmd = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1818
    new-instance v0, Lcom/android/internal/telephony/cat/RilMessage;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p1}, Lcom/android/internal/telephony/cat/RilMessage;-><init>(ILjava/lang/String;)V

    .line 1819
    .local v0, "rilMsg":Lcom/android/internal/telephony/cat/RilMessage;
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->sendStartDecodingMessageParams(Lcom/android/internal/telephony/cat/RilMessage;)V

    .line 1820
    const-string v1, "CatService"

    const-string v2, "handleProactiveCmdFromDB: over"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1822
    .end local v0    # "rilMsg":Lcom/android/internal/telephony/cat/RilMessage;
    :cond_1
    const-string v1, "CatService"

    const-string v2, "BSP package does not support db cache."

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleRilMsg(Lcom/android/internal/telephony/cat/RilMessage;)V
    .locals 9
    .param p1, "rilMsg"    # Lcom/android/internal/telephony/cat/RilMessage;

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 716
    if-nez p1, :cond_1

    .line 802
    :cond_0
    :goto_0
    return-void

    .line 721
    :cond_1
    const/4 v7, 0x0

    .line 722
    .local v7, "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    iget v1, p1, Lcom/android/internal/telephony/cat/RilMessage;->mId:I

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 795
    :sswitch_0
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatService;->handleSessionEnd()V

    goto :goto_0

    .line 724
    :sswitch_1
    iget-object v7, p1, Lcom/android/internal/telephony/cat/RilMessage;->mData:Ljava/lang/Object;

    .end local v7    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    check-cast v7, Lcom/android/internal/telephony/cat/CommandParams;

    .line 725
    .restart local v7    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    if-eqz v7, :cond_0

    .line 726
    iget-object v1, p1, Lcom/android/internal/telephony/cat/RilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    if-ne v1, v2, :cond_2

    .line 727
    invoke-direct {p0, v7, v4}, Lcom/android/internal/telephony/cat/CatService;->handleCommand(Lcom/android/internal/telephony/cat/CommandParams;Z)V

    goto :goto_0

    .line 731
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "event notify error code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/internal/telephony/cat/RilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 732
    iget-object v1, p1, Lcom/android/internal/telephony/cat/RilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/cat/ResultCode;

    if-ne v1, v2, :cond_4

    iget-object v1, v7, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v1, v1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    const/16 v2, 0x11

    if-eq v1, v2, :cond_3

    iget-object v1, v7, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v1, v1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    const/16 v2, 0x12

    if-eq v1, v2, :cond_3

    iget-object v1, v7, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v1, v1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    const/16 v2, 0x13

    if-eq v1, v2, :cond_3

    iget-object v1, v7, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v1, v1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    const/16 v2, 0x14

    if-ne v1, v2, :cond_4

    .line 738
    :cond_3
    const-string v1, "notify user text message even though get icon fail"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 739
    invoke-direct {p0, v7, v4}, Lcom/android/internal/telephony/cat/CatService;->handleCommand(Lcom/android/internal/telephony/cat/CommandParams;Z)V

    .line 741
    :cond_4
    iget-object v1, v7, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v1, v1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    const/16 v2, 0x40

    if-ne v1, v2, :cond_0

    .line 742
    const-string v1, "Open Channel with ResultCode"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 743
    invoke-direct {p0, v7, v4}, Lcom/android/internal/telephony/cat/CatService;->handleCommand(Lcom/android/internal/telephony/cat/CommandParams;Z)V

    goto :goto_0

    .line 753
    :sswitch_2
    iget v1, p1, Lcom/android/internal/telephony/cat/RilMessage;->mId:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 754
    iput-boolean v4, p0, Lcom/android/internal/telephony/cat/CatService;->mIsProactiveCmdResponsed:Z

    .line 757
    :cond_5
    :try_start_0
    iget-object v1, p1, Lcom/android/internal/telephony/cat/RilMessage;->mData:Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/cat/CommandParams;

    move-object v7, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 768
    if-eqz v7, :cond_0

    .line 769
    iget-object v1, p1, Lcom/android/internal/telephony/cat/RilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    if-ne v1, v2, :cond_6

    .line 770
    iput v4, p0, Lcom/android/internal/telephony/cat/CatService;->ResultCodeFlag:I

    .line 771
    iget-boolean v1, p1, Lcom/android/internal/telephony/cat/RilMessage;->mSetUpMenuFromMD:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatService;->mSetUpMenuFromMD:Z

    .line 772
    invoke-direct {p0, v7, v3}, Lcom/android/internal/telephony/cat/CatService;->handleCommand(Lcom/android/internal/telephony/cat/CommandParams;Z)V

    goto/16 :goto_0

    .line 758
    :catch_0
    move-exception v8

    .line 760
    .local v8, "e":Ljava/lang/ClassCastException;
    const-string v1, "Fail to parse proactive command"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 762
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v1, :cond_0

    .line 763
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v2, v1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 773
    .end local v8    # "e":Ljava/lang/ClassCastException;
    :cond_6
    iget-object v1, p1, Lcom/android/internal/telephony/cat/RilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/cat/ResultCode;

    if-ne v1, v2, :cond_7

    .line 774
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/internal/telephony/cat/CatService;->ResultCodeFlag:I

    .line 775
    iget-boolean v1, p1, Lcom/android/internal/telephony/cat/RilMessage;->mSetUpMenuFromMD:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatService;->mSetUpMenuFromMD:Z

    .line 776
    invoke-direct {p0, v7, v3}, Lcom/android/internal/telephony/cat/CatService;->handleCommand(Lcom/android/internal/telephony/cat/CommandParams;Z)V

    goto/16 :goto_0

    .line 781
    :cond_7
    const-string v1, "CAT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SS-handleMessage: invalid proactive command: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v7, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v3, v3, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    iget-object v2, v7, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget-object v3, p1, Lcom/android/internal/telephony/cat/RilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 789
    :sswitch_3
    iget-object v7, p1, Lcom/android/internal/telephony/cat/RilMessage;->mData:Ljava/lang/Object;

    .end local v7    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    check-cast v7, Lcom/android/internal/telephony/cat/CommandParams;

    .line 790
    .restart local v7    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    if-eqz v7, :cond_0

    .line 791
    invoke-direct {p0, v7, v4}, Lcom/android/internal/telephony/cat/CatService;->handleCommand(Lcom/android/internal/telephony/cat/CommandParams;Z)V

    goto/16 :goto_0

    .line 722
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_1
        0x5 -> :sswitch_3
        0x30 -> :sswitch_2
    .end sparse-switch
.end method

.method private handleSessionEnd()V
    .locals 3

    .prologue
    .line 1290
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SESSION END on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1292
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 1293
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.stk.session_end"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1294
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "SLOT_ID"

    iget v2, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1295
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.RECEIVE_STK_COMMANDS"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1296
    return-void
.end method

.method private isAlarmBoot()Z
    .locals 2

    .prologue
    .line 2774
    const-string v1, "sys.boot.reason"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2775
    .local v0, "bootReason":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isSetUpMenuCmd(Ljava/lang/String;)Z
    .locals 7
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x35

    const/16 v5, 0x32

    const/4 v2, 0x0

    .line 1831
    const/4 v1, 0x0

    .line 1833
    .local v1, "validCmd":Z
    if-nez p1, :cond_0

    .line 1852
    :goto_0
    return v2

    .line 1837
    :cond_0
    const/4 v3, 0x2

    :try_start_0
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x38

    if-ne v3, v4, :cond_2

    const/4 v3, 0x3

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x31

    if-ne v3, v4, :cond_2

    .line 1838
    const/16 v3, 0xc

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_1

    const/16 v3, 0xd

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v6, :cond_1

    .line 1839
    const/4 v1, 0x1

    :cond_1
    :goto_1
    move v2, v1

    .line 1852
    goto :goto_0

    .line 1842
    :cond_2
    const/16 v3, 0xa

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_1

    const/16 v3, 0xb

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-ne v2, v6, :cond_1

    .line 1843
    const/4 v1, 0x1

    goto :goto_1

    .line 1846
    :catch_0
    move-exception v0

    .line 1847
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IndexOutOfBoundsException isSetUpMenuCmd: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1848
    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto :goto_0
.end method

.method private isStkAppInstalled()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 2700
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.stk.command"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2701
    .local v1, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 2702
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/16 v5, 0x80

    invoke-virtual {v3, v1, v5}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 2704
    .local v0, "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v0, :cond_1

    move v2, v4

    .line 2706
    .local v2, "numReceiver":I
    :goto_0
    if-lez v2, :cond_0

    const/4 v4, 0x1

    :cond_0
    return v4

    .line 2704
    .end local v2    # "numReceiver":I
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_0
.end method

.method private isSupportedSetupEventCommand(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z
    .locals 7
    .param p1, "cmdMsg"    # Lcom/android/internal/telephony/cat/CatCmdMessage;

    .prologue
    .line 810
    const/4 v2, 0x1

    .line 812
    .local v2, "flag":Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getSetEventList()Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    move-result-object v5

    iget-object v0, v5, Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;->eventList:[I

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget v1, v0, v3

    .line 813
    .local v1, "eventVal":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Event: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 814
    packed-switch v1, :pswitch_data_0

    .line 821
    :pswitch_0
    const/4 v2, 0x0

    .line 812
    :pswitch_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 824
    .end local v1    # "eventVal":I
    :cond_0
    return v2

    .line 814
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static readCmdFromPreference(Lcom/android/internal/telephony/cat/CatService;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "inst"    # Lcom/android/internal/telephony/cat/CatService;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 2969
    const/4 v1, 0x0

    .line 2970
    .local v1, "preferences":Landroid/content/SharedPreferences;
    const-string v2, ""

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2972
    .local v0, "cmd":Ljava/lang/String;
    sget-object v3, Lcom/android/internal/telephony/cat/CatService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2973
    :try_start_0
    iget-boolean v2, p0, Lcom/android/internal/telephony/cat/CatService;->mReadFromPreferenceDone:Z

    if-nez v2, :cond_1

    .line 2974
    const-string v2, "set_up_menu"

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2975
    const-string v2, ""

    invoke-interface {v1, p2, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2976
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/telephony/cat/CatService;->mReadFromPreferenceDone:Z

    .line 2977
    const-string v2, "CatService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readCmdFromPreference, key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", cmd: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2981
    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2982
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 2983
    const/4 v0, 0x0

    .line 2985
    :cond_0
    return-object v0

    .line 2979
    :cond_1
    :try_start_1
    const-string v2, "CatService"

    const-string v4, "readCmdFromPreference, do not read again"

    invoke-static {v2, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2981
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private registerPowerOnSequenceObserver()V
    .locals 4

    .prologue
    .line 2908
    const-string v1, "ro.mtk_bsp_package"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2909
    const-string v1, "call registerPowerOnSequenceObserver"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2910
    const-string v1, "dialog_sequence_settings"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2911
    .local v0, "uri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->mPowerOnSequenceObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2913
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatService;->mHasCachedDTCmd:Z

    .line 2915
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_0
    return-void
.end method

.method private registerSATcb()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1750
    const-string v0, "CatService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerSATcb, mNeedRegisterAgain: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cat/CatService;->mNeedRegisterAgain:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1751
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/CatService;->mNeedRegisterAgain:Z

    if-eqz v0, :cond_1

    .line 1753
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnCatSessionEnd(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1754
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x3

    invoke-interface {v0, p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnCatEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1755
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x4

    invoke-interface {v0, p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnCatCallSetUp(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1756
    const-string v0, "ro.mtk_bsp_package"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1757
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x15

    invoke-interface {v0, p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnStkEvdlCall(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1759
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x18

    invoke-interface {v0, p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnStkSetupMenuReset(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1760
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x9

    invoke-interface {v0, p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnCatCcAlphaNotify(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1761
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/CatService;->mNeedRegisterAgain:Z

    .line 1763
    :cond_1
    return-void
.end method

.method private removeMenu(Lcom/android/internal/telephony/cat/Menu;)Z
    .locals 5
    .param p1, "menu"    # Lcom/android/internal/telephony/cat/Menu;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2333
    :try_start_0
    iget-object v3, p1, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v1, :cond_0

    iget-object v3, p1, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    if-nez v3, :cond_0

    .line 2340
    :goto_0
    return v1

    .line 2336
    :catch_0
    move-exception v0

    .line 2337
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v2, "Unable to get Menu\'s items size"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_0
    move v1, v2

    .line 2340
    goto :goto_0
.end method

.method private resetPowerOnSequenceFlag()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2927
    const-string v1, "ro.mtk_bsp_package"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2928
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dialog_sequence_settings"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2932
    .local v0, "seqValue":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call resetPowerOnSequenceFlag, seqValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2934
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2936
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dialog_sequence_settings"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2941
    :cond_0
    iput-boolean v3, p0, Lcom/android/internal/telephony/cat/CatService;->mHasCachedDTCmd:Z

    .line 2943
    .end local v0    # "seqValue":I
    :cond_1
    return-void
.end method

.method private static saveCmdToPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "cmd"    # Ljava/lang/String;

    .prologue
    .line 2957
    const/4 v1, 0x0

    .line 2958
    .local v1, "preferences":Landroid/content/SharedPreferences;
    const/4 v0, 0x0

    .line 2959
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    sget-object v3, Lcom/android/internal/telephony/cat/CatService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2960
    :try_start_0
    const-string v2, "CatService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "saveCmdToPreference, key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", cmd: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2961
    const-string v2, "set_up_menu"

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2962
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2963
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2964
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2965
    monitor-exit v3

    .line 2966
    return-void

    .line 2965
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private sendMenuSelection(IZ)V
    .locals 9
    .param p1, "menuId"    # I
    .param p2, "helpRequired"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1440
    const-string v5, "CatService"

    const-string v6, "sendMenuSelection SET_UP_MENU"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1442
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1445
    .local v0, "buf":Ljava/io/ByteArrayOutputStream;
    const/16 v4, 0xd3

    .line 1446
    .local v4, "tag":I
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1449
    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1452
    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v5

    or-int/lit16 v4, v5, 0x80

    .line 1453
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1454
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1455
    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1456
    const/16 v5, 0x81

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1459
    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ITEM_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v5

    or-int/lit16 v4, v5, 0x80

    .line 1460
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1461
    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1462
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1465
    if-eqz p2, :cond_0

    .line 1466
    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->HELP_REQUEST:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v4

    .line 1467
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1468
    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1471
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 1474
    .local v3, "rawData":[B
    array-length v5, v3

    add-int/lit8 v2, v5, -0x2

    .line 1475
    .local v2, "len":I
    int-to-byte v5, v2

    aput-byte v5, v3, v8

    .line 1477
    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 1479
    .local v1, "hexString":Ljava/lang/String;
    const-string v5, "CatService"

    const-string v6, "sendMenuSelection before"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1480
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v6, 0x0

    invoke-interface {v5, v1, v6}, Lcom/android/internal/telephony/CommandsInterface;->sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V

    .line 1481
    const-string v5, "CatService"

    const-string v6, "sendMenuSelection after"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1482
    const/16 v5, 0xf

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cat/CatService;->cancelTimeOut(I)V

    .line 1483
    const-string v5, "[Reset Disable Display Text flag because MENU_SELECTION"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1484
    iput-boolean v7, p0, Lcom/android/internal/telephony/cat/CatService;->isDisplayTextDisabled:Z

    .line 1485
    return-void
.end method

.method private sendStatusCmd()V
    .locals 11

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1380
    const-string v0, "sendStatusCmd"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1381
    const/16 v0, 0x31

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    .line 1382
    .local v10, "response":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xf2

    move v4, v2

    move v5, v2

    move v6, v2

    move-object v7, v3

    move-object v8, v3

    move-object v9, v3

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1384
    return-void
.end method

.method private sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V
    .locals 9
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .param p2, "resultCode"    # Lcom/android/internal/telephony/cat/ResultCode;
    .param p3, "includeAdditionalInfo"    # Z
    .param p4, "additionalInfo"    # I
    .param p5, "resp"    # Lcom/android/internal/telephony/cat/ResponseData;

    .prologue
    const/4 v3, 0x2

    const/4 v6, 0x1

    .line 1303
    if-nez p1, :cond_0

    .line 1304
    const-string v6, "SS-sendTR: cmdDet is null"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1377
    :goto_0
    return-void

    .line 1308
    :cond_0
    sget-object v7, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_MENU:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v7

    iget v8, p1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    if-ne v7, v8, :cond_1

    sget-boolean v7, Lcom/android/internal/telephony/cat/CatService;->mQueryMenuFlag:Z

    if-eqz v7, :cond_1

    .line 1309
    const-string v6, "Ignore response from query menu case"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1310
    const/4 v6, 0x0

    sput-boolean v6, Lcom/android/internal/telephony/cat/CatService;->mQueryMenuFlag:Z

    goto :goto_0

    .line 1314
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SS-sendTR: command type is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1315
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1317
    .local v0, "buf":Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    .line 1318
    .local v1, "cmdInput":Lcom/android/internal/telephony/cat/Input;
    iget-object v7, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v7, :cond_2

    .line 1319
    iget-object v7, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geInput()Lcom/android/internal/telephony/cat/Input;

    move-result-object v1

    .line 1321
    :cond_2
    iput-boolean v6, p0, Lcom/android/internal/telephony/cat/CatService;->mIsProactiveCmdResponsed:Z

    .line 1324
    sget-object v7, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->COMMAND_DETAILS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v5

    .line 1325
    .local v5, "tag":I
    iget-boolean v7, p1, Lcom/android/internal/telephony/cat/CommandDetails;->compRequired:Z

    if-eqz v7, :cond_3

    .line 1326
    or-int/lit16 v5, v5, 0x80

    .line 1328
    :cond_3
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1329
    const/4 v7, 0x3

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1330
    iget v7, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandNumber:I

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1331
    iget v7, p1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1332
    iget v7, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1341
    sget-object v7, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v7

    or-int/lit16 v5, v7, 0x80

    .line 1342
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1343
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1344
    const/16 v7, 0x82

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1345
    const/16 v7, 0x81

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1348
    sget-object v7, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->RESULT:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v5

    .line 1349
    iget-boolean v7, p1, Lcom/android/internal/telephony/cat/CommandDetails;->compRequired:Z

    if-eqz v7, :cond_4

    .line 1350
    or-int/lit16 v5, v5, 0x80

    .line 1352
    :cond_4
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1353
    if-eqz p3, :cond_6

    .line 1354
    .local v3, "length":I
    :goto_1
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1355
    invoke-virtual {p2}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1358
    if-eqz p3, :cond_5

    .line 1359
    invoke-virtual {v0, p4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1363
    :cond_5
    if-eqz p5, :cond_7

    .line 1364
    const-string v6, "SS-sendTR: write response data into TR"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1365
    invoke-virtual {p5, v0}, Lcom/android/internal/telephony/cat/ResponseData;->format(Ljava/io/ByteArrayOutputStream;)V

    .line 1370
    :goto_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 1371
    .local v4, "rawData":[B
    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    .line 1373
    .local v2, "hexString":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TERMINAL RESPONSE: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1376
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v7, 0x0

    invoke-interface {v6, v2, v7}, Lcom/android/internal/telephony/CommandsInterface;->sendTerminalResponse(Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .end local v2    # "hexString":Ljava/lang/String;
    .end local v3    # "length":I
    .end local v4    # "rawData":[B
    :cond_6
    move v3, v6

    .line 1353
    goto :goto_1

    .line 1367
    .restart local v3    # "length":I
    :cond_7
    invoke-direct {p0, p1, p2, v1, v0}, Lcom/android/internal/telephony/cat/CatService;->encodeOptionalTags(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;Lcom/android/internal/telephony/cat/Input;Ljava/io/ByteArrayOutputStream;)V

    goto :goto_2
.end method

.method private sendTerminalResponseByCurrentCmd(Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    .locals 7
    .param p1, "catCmd"    # Lcom/android/internal/telephony/cat/CatCmdMessage;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 629
    if-nez p1, :cond_0

    .line 630
    const-string v0, "catCmd is null."

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 648
    :goto_0
    return-void

    .line 633
    :cond_0
    iget-object v0, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v0, v0, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-static {v0}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v6

    .line 634
    .local v6, "cmdType":Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Send TR for cmd: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 635
    sget-object v0, Lcom/android/internal/telephony/cat/CatService$7;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 644
    iget-object v1, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->UICC_SESSION_TERM_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    move-object v0, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto :goto_0

    .line 638
    :pswitch_0
    iget-object v1, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    move-object v0, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto :goto_0

    .line 641
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v1

    invoke-interface {v0, v3, v1, v5}, Lcom/android/internal/telephony/CommandsInterface;->handleCallSetupRequestFromSim(ZILandroid/os/Message;)V

    goto :goto_0

    .line 635
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private unregisterPowerOnSequenceObserver()V
    .locals 2

    .prologue
    .line 2918
    const-string v0, "ro.mtk_bsp_package"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2919
    const-string v0, "call unregisterPowerOnSequenceObserver"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2920
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mPowerOnSequenceObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2922
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cat/CatService;->cancelTimeOut(I)V

    .line 2924
    :cond_0
    return-void
.end method

.method private validateResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)Z
    .locals 4
    .param p1, "resMsg"    # Lcom/android/internal/telephony/cat/CatResponseMessage;

    .prologue
    const/4 v1, 0x0

    .line 2317
    const/4 v0, 0x0

    .line 2319
    .local v0, "ret":Z
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v2, :cond_1

    .line 2321
    iget-object v2, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v2, v2, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v3, v3, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    .line 2322
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SS-validateResponse: ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v2, v2, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v2, v2, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move v1, v0

    .line 2328
    :goto_1
    return v1

    :cond_0
    move v0, v1

    .line 2321
    goto :goto_0

    .line 2327
    :cond_1
    const-string v2, "SS-validateResponse: mCurrentCmd is null"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private writeCallDisConnED(Ljava/io/ByteArrayOutputStream;)V
    .locals 7
    .param p1, "buffer"    # Ljava/io/ByteArrayOutputStream;

    .prologue
    const/4 v6, 0x1

    .line 1487
    const-string v4, "ro.mtk_bsp_package"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1488
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mEventDownloadCallDisConnInfo:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/EventDownloadCallInfo;

    .line 1489
    .local v0, "evdlcallInfo":Lcom/android/internal/telephony/cat/EventDownloadCallInfo;
    const/4 v2, 0x0

    .line 1491
    .local v2, "tag":I
    if-eqz v0, :cond_4

    .line 1492
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SS-eventDownload: event is CALL_DISCONNECTED.["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/android/internal/telephony/cat/EventDownloadCallInfo;->mIsFarEnd:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/android/internal/telephony/cat/EventDownloadCallInfo;->mTi:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/android/internal/telephony/cat/EventDownloadCallInfo;->mCauseLen:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/android/internal/telephony/cat/EventDownloadCallInfo;->mCause:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1493
    iget v4, v0, Lcom/android/internal/telephony/cat/EventDownloadCallInfo;->mIsFarEnd:I

    if-ne v6, v4, :cond_1

    const/16 v4, 0x83

    :goto_0
    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1494
    const/16 v4, 0x81

    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1495
    sget-object v4, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->TRANSACTION_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v2

    .line 1496
    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1497
    invoke-virtual {p1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1498
    iget v4, v0, Lcom/android/internal/telephony/cat/EventDownloadCallInfo;->mTi:I

    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1499
    iget v4, v0, Lcom/android/internal/telephony/cat/EventDownloadCallInfo;->mCauseLen:I

    if-nez v4, :cond_2

    .line 1500
    sget-object v4, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->CAUSE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v4

    or-int/lit16 v2, v4, 0x80

    .line 1501
    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1502
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1519
    .end local v0    # "evdlcallInfo":Lcom/android/internal/telephony/cat/EventDownloadCallInfo;
    .end local v2    # "tag":I
    :cond_0
    :goto_1
    return-void

    .line 1493
    .restart local v0    # "evdlcallInfo":Lcom/android/internal/telephony/cat/EventDownloadCallInfo;
    .restart local v2    # "tag":I
    :cond_1
    const/16 v4, 0x82

    goto :goto_0

    .line 1503
    :cond_2
    const/16 v4, 0xff

    iget v5, v0, Lcom/android/internal/telephony/cat/EventDownloadCallInfo;->mCauseLen:I

    if-eq v4, v5, :cond_3

    .line 1504
    sget-object v4, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->CAUSE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v4

    or-int/lit16 v2, v4, 0x80

    .line 1505
    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1506
    iget v4, v0, Lcom/android/internal/telephony/cat/EventDownloadCallInfo;->mCauseLen:I

    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1507
    iget v4, v0, Lcom/android/internal/telephony/cat/EventDownloadCallInfo;->mCauseLen:I

    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_2
    if-ltz v1, :cond_0

    .line 1508
    iget v4, v0, Lcom/android/internal/telephony/cat/EventDownloadCallInfo;->mCause:I

    mul-int/lit8 v5, v1, 0x8

    shr-int/2addr v4, v5

    and-int/lit16 v3, v4, 0xff

    .line 1509
    .local v3, "temp":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SS-eventDownload:cause:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1510
    iget v4, v0, Lcom/android/internal/telephony/cat/EventDownloadCallInfo;->mCause:I

    mul-int/lit8 v5, v1, 0x8

    shr-int/2addr v4, v5

    and-int/lit16 v4, v4, 0xff

    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1507
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 1513
    .end local v1    # "i":I
    .end local v3    # "temp":I
    :cond_3
    const-string v4, "SS-eventDownload:no cause value"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 1516
    :cond_4
    const-string v4, "SS-eventDownload:X null evdlcallInfo"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method cancelTimeOut(I)V
    .locals 2
    .param p1, "msg"    # I

    .prologue
    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelTimeOut, sim_id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", msg id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 348
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mTimeoutHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 349
    return-void
.end method

.method public dispose()V
    .locals 4

    .prologue
    .line 651
    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 652
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disposing CatService object : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 653
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 655
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->CatServiceReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 656
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mStkIdleScreenAvailableReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 657
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 658
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mUtkSetupEventListReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 660
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/CatService;->mIsProactiveCmdResponsed:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v0, :cond_1

    .line 661
    const-string v0, "Send TR for the last pending commands."

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 662
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponseByCurrentCmd(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    .line 666
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/cat/CatService;->broadcastCardStateAndIccRefreshResp(Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;Lcom/android/internal/telephony/uicc/IccRefreshResponse;)V

    .line 668
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnCatSessionEnd(Landroid/os/Handler;)V

    .line 669
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnCatProactiveCmd(Landroid/os/Handler;)V

    .line 670
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnCatEvent(Landroid/os/Handler;)V

    .line 671
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnCatCallSetUp(Landroid/os/Handler;)V

    .line 672
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnCatCcAlphaNotify(Landroid/os/Handler;)V

    .line 674
    const-string v0, "ro.mtk_bsp_package"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 675
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnStkEvdlCall(Landroid/os/Handler;)V

    .line 677
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnStkSetupMenuReset(Landroid/os/Handler;)V

    .line 678
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/CatService;->mNeedRegisterAgain:Z

    .line 680
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForIccRefresh(Landroid/os/Handler;)V

    .line 681
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-eqz v0, :cond_3

    .line 682
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccController;->unregisterForIccChanged(Landroid/os/Handler;)V

    .line 683
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 685
    :cond_3
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_4

    .line 686
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 688
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mBipMgr:Lcom/android/internal/telephony/cat/bip/BipManager;

    if-eqz v0, :cond_5

    .line 689
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mBipMgr:Lcom/android/internal/telephony/cat/bip/BipManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/bip/BipManager;->dispose()V

    .line 691
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->dispose()V

    .line 692
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    .line 694
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 695
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 696
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cat/CatService;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 699
    iget v0, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/CatService;->handleDBHandler(I)V

    .line 700
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    if-eqz v0, :cond_6

    .line 701
    iget v0, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 702
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    iget v2, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    const/4 v3, 0x0

    aput-object v3, v0, v2

    .line 707
    :cond_6
    :goto_0
    monitor-exit v1

    .line 708
    return-void

    .line 704
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error: invaild slot id: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 707
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 712
    const-string v0, "Service finalized"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 713
    return-void
.end method

.method public getCmdMessage()Lcom/android/internal/telephony/cat/CatCmdMessage;
    .locals 2

    .prologue
    .line 2948
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCmdMessage, command type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdMessage:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdMessage:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdMessage:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v0, v0, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2949
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdMessage:Lcom/android/internal/telephony/cat/CatCmdMessage;

    return-object v0

    .line 2948
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 2592
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;
    .locals 1

    .prologue
    .line 2953
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 41
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1872
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMessage["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1873
    const/16 v23, 0x0

    .line 1874
    .local v23, "cmd":Lcom/android/internal/telephony/cat/CatCmdMessage;
    const/4 v9, 0x0

    .line 1875
    .local v9, "resp":Lcom/android/internal/telephony/cat/ResponseData;
    const/16 v36, 0x0

    .line 1877
    .local v36, "ret":I
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 2245
    :pswitch_0
    new-instance v4, Ljava/lang/AssertionError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unrecognized CAT command: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 1884
    :pswitch_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ril message arrived, slotid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1885
    const/16 v27, 0x0

    .line 1886
    .local v27, "data":Ljava/lang/String;
    const/16 v30, 0x0

    .line 1887
    .local v30, "flag":Z
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v4, :cond_0

    .line 1888
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/os/AsyncResult;

    .line 1889
    .local v18, "ar":Landroid/os/AsyncResult;
    if-eqz v18, :cond_0

    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_0

    .line 1891
    :try_start_0
    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object/from16 v27, v0

    .line 1892
    const-string v4, "ro.mtk_bsp_package"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1894
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cat/CatService;->isSetUpMenuCmd(Ljava/lang/String;)Z

    move-result v32

    .line 1895
    .local v32, "isValid":Z
    if-eqz v32, :cond_0

    sget-object v4, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    aget-object v4, v4, v5

    move-object/from16 v0, p0

    if-ne v0, v4, :cond_0

    .line 1896
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ril message arrived : save data to db "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1897
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/android/internal/telephony/cat/CatService;->sInstKey:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    aget-object v5, v5, v6

    move-object/from16 v0, v27

    invoke-static {v4, v5, v0}, Lcom/android/internal/telephony/cat/CatService;->saveCmdToPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1898
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/telephony/cat/CatService;->mSaveNewSetUpMenu:Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1899
    const/16 v30, 0x1

    .line 1910
    .end local v18    # "ar":Landroid/os/AsyncResult;
    .end local v32    # "isValid":Z
    :cond_0
    :goto_0
    const/16 v4, 0x30

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    if-ne v4, v5, :cond_3

    if-nez v27, :cond_3

    .line 1911
    const-string v4, "STKMENU: data of ril message is null."

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2247
    .end local v27    # "data":Ljava/lang/String;
    .end local v30    # "flag":Z
    :cond_1
    :goto_1
    :pswitch_2
    return-void

    .line 1902
    .restart local v18    # "ar":Landroid/os/AsyncResult;
    .restart local v27    # "data":Ljava/lang/String;
    .restart local v30    # "flag":Z
    :cond_2
    :try_start_1
    const-string v4, "BSP package always set SET_UP_MENU from MD."

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1903
    const/16 v30, 0x1

    goto :goto_0

    .line 1905
    :catch_0
    move-exception v28

    .line 1906
    .local v28, "e":Ljava/lang/ClassCastException;
    goto :goto_1

    .line 1914
    .end local v18    # "ar":Landroid/os/AsyncResult;
    .end local v28    # "e":Ljava/lang/ClassCastException;
    :cond_3
    new-instance v37, Lcom/android/internal/telephony/cat/RilMessage;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, v37

    move-object/from16 v1, v27

    invoke-direct {v0, v4, v1}, Lcom/android/internal/telephony/cat/RilMessage;-><init>(ILjava/lang/String;)V

    .line 1915
    .local v37, "rilMsg":Lcom/android/internal/telephony/cat/RilMessage;
    move-object/from16 v0, v37

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cat/RilMessage;->setSetUpMenuFromMD(Z)V

    .line 1916
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->sendStartDecodingMessageParams(Lcom/android/internal/telephony/cat/RilMessage;)V

    .line 1917
    const/16 v4, 0x30

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    if-ne v4, v5, :cond_4

    .line 1918
    const-string v4, "Ignore response from query menu case"

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1919
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/internal/telephony/cat/CatService;->mQueryMenuFlag:Z

    .line 1922
    :cond_4
    const/4 v4, 0x1

    const-string v5, "gsm.sim.ril.testsim"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    const-string v5, "persist.radio.biptest"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    if-eq v4, v5, :cond_1

    .line 1927
    const/16 v4, 0xff

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/cat/CatService;->mSendStatusCount:I

    goto :goto_1

    .line 1931
    .end local v27    # "data":Ljava/lang/String;
    .end local v30    # "flag":Z
    .end local v37    # "rilMsg":Lcom/android/internal/telephony/cat/RilMessage;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    new-instance v5, Lcom/android/internal/telephony/cat/RilMessage;

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->what:I

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/android/internal/telephony/cat/RilMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->sendStartDecodingMessageParams(Lcom/android/internal/telephony/cat/RilMessage;)V

    goto :goto_1

    .line 1936
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/cat/RilMessage;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/cat/CatService;->handleRilMsg(Lcom/android/internal/telephony/cat/RilMessage;)V

    goto/16 :goto_1

    .line 1939
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/cat/CatResponseMessage;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/cat/CatService;->handleCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    goto/16 :goto_1

    .line 1942
    :pswitch_6
    const-string v4, "MSG_ID_ICC_CHANGED"

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1943
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cat/CatService;->updateIccAvailability()V

    goto/16 :goto_1

    .line 1946
    :pswitch_7
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v4, :cond_6

    .line 1947
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/os/AsyncResult;

    .line 1948
    .restart local v18    # "ar":Landroid/os/AsyncResult;
    if-eqz v18, :cond_5

    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_5

    .line 1949
    sget-object v5, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v4}, Lcom/android/internal/telephony/cat/CatService;->broadcastCardStateAndIccRefreshResp(Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;Lcom/android/internal/telephony/uicc/IccRefreshResponse;)V

    goto/16 :goto_1

    .line 1952
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Icc REFRESH with exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1955
    .end local v18    # "ar":Landroid/os/AsyncResult;
    :cond_6
    const-string v4, "IccRefresh Message is null"

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1959
    :pswitch_8
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/cat/CatResponseMessage;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/cat/CatService;->handleEventDownload(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    goto/16 :goto_1

    .line 1962
    :pswitch_9
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/cat/CatService;->handleDBHandler(I)V

    goto/16 :goto_1

    .line 1965
    :pswitch_a
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v36, v0

    .line 1966
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    .end local v23    # "cmd":Lcom/android/internal/telephony/cat/CatCmdMessage;
    check-cast v23, Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 1969
    .restart local v23    # "cmd":Lcom/android/internal/telephony/cat/CatCmdMessage;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-nez v4, :cond_7

    .line 1970
    const-string v4, "[BIP]"

    const-string v5, "SS-handleMessage: skip open channel response because current cmd is null"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1972
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v4, :cond_8

    .line 1973
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v4, v4, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v4, v4, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    sget-object v5, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->OPEN_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v5

    if-eq v4, v5, :cond_8

    .line 1974
    const-string v4, "[BIP]"

    const-string v5, "SS-handleMessage: skip open channel response because current cmd type is not OPEN_CHANNEL"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1978
    :cond_8
    if-nez v36, :cond_9

    .line 1979
    new-instance v9, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;

    .end local v9    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatusData:Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBearerDesc:Lcom/android/internal/telephony/cat/bip/BearerDesc;

    move-object/from16 v0, v23

    iget v6, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBufferSize:I

    move-object/from16 v0, v23

    iget-object v7, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTransportProtocol:Lcom/android/internal/telephony/cat/bip/TransportProtocol;

    iget v7, v7, Lcom/android/internal/telephony/cat/bip/TransportProtocol;->protocolType:I

    invoke-direct {v9, v4, v5, v6, v7}, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;-><init>(Lcom/android/internal/telephony/cat/bip/ChannelStatus;Lcom/android/internal/telephony/cat/bip/BearerDesc;II)V

    .line 1981
    .restart local v9    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    const-string v4, "[BIP]"

    const-string v5, "SS-handleMessage: open channel successfully"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1982
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v5, v4, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v6, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_1

    .line 1983
    :cond_9
    const/4 v4, 0x3

    move/from16 v0, v36

    if-ne v0, v4, :cond_a

    .line 1984
    new-instance v9, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;

    .end local v9    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatusData:Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBearerDesc:Lcom/android/internal/telephony/cat/bip/BearerDesc;

    move-object/from16 v0, v23

    iget v6, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBufferSize:I

    move-object/from16 v0, v23

    iget-object v7, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTransportProtocol:Lcom/android/internal/telephony/cat/bip/TransportProtocol;

    iget v7, v7, Lcom/android/internal/telephony/cat/bip/TransportProtocol;->protocolType:I

    invoke-direct {v9, v4, v5, v6, v7}, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;-><init>(Lcom/android/internal/telephony/cat/bip/ChannelStatus;Lcom/android/internal/telephony/cat/bip/BearerDesc;II)V

    .line 1986
    .restart local v9    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    const-string v4, "[BIP]"

    const-string v5, "SS-handleMessage: open channel with modified parameters"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1987
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v5, v4, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v6, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_WITH_MODIFICATION:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_1

    .line 1989
    :cond_a
    const/4 v4, 0x6

    move/from16 v0, v36

    if-ne v0, v4, :cond_b

    .line 1990
    new-instance v9, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;

    .end local v9    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    const/4 v4, 0x0

    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBearerDesc:Lcom/android/internal/telephony/cat/bip/BearerDesc;

    move-object/from16 v0, v23

    iget v6, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBufferSize:I

    move-object/from16 v0, v23

    iget-object v7, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTransportProtocol:Lcom/android/internal/telephony/cat/bip/TransportProtocol;

    iget v7, v7, Lcom/android/internal/telephony/cat/bip/TransportProtocol;->protocolType:I

    invoke-direct {v9, v4, v5, v6, v7}, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;-><init>(Lcom/android/internal/telephony/cat/bip/ChannelStatus;Lcom/android/internal/telephony/cat/bip/BearerDesc;II)V

    .line 1992
    .restart local v9    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    const-string v4, "[BIP]"

    const-string v5, "SS-handleMessage: ME is busy on call"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1993
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v5, v4, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v6, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v7, 0x1

    const/4 v8, 0x2

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_1

    .line 1997
    :cond_b
    new-instance v9, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;

    .end local v9    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatusData:Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBearerDesc:Lcom/android/internal/telephony/cat/bip/BearerDesc;

    move-object/from16 v0, v23

    iget v6, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBufferSize:I

    move-object/from16 v0, v23

    iget-object v7, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTransportProtocol:Lcom/android/internal/telephony/cat/bip/TransportProtocol;

    iget v7, v7, Lcom/android/internal/telephony/cat/bip/TransportProtocol;->protocolType:I

    invoke-direct {v9, v4, v5, v6, v7}, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;-><init>(Lcom/android/internal/telephony/cat/bip/ChannelStatus;Lcom/android/internal/telephony/cat/bip/BearerDesc;II)V

    .line 1999
    .restart local v9    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    const-string v4, "[BIP]"

    const-string v5, "SS-handleMessage: open channel failed"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2000
    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v6, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_1

    .line 2004
    :pswitch_b
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v36, v0

    .line 2005
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v38, v0

    .line 2006
    .local v38, "size":I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    .end local v23    # "cmd":Lcom/android/internal/telephony/cat/CatCmdMessage;
    check-cast v23, Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 2007
    .restart local v23    # "cmd":Lcom/android/internal/telephony/cat/CatCmdMessage;
    new-instance v9, Lcom/android/internal/telephony/cat/SendDataResponseData;

    .end local v9    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    move/from16 v0, v38

    invoke-direct {v9, v0}, Lcom/android/internal/telephony/cat/SendDataResponseData;-><init>(I)V

    .line 2008
    .restart local v9    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    if-nez v36, :cond_c

    .line 2009
    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v6, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_1

    .line 2010
    :cond_c
    const/4 v4, 0x7

    move/from16 v0, v36

    if-ne v0, v4, :cond_d

    .line 2011
    move-object/from16 v0, v23

    iget-object v11, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v12, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v13, 0x1

    const/4 v14, 0x3

    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_1

    .line 2014
    :cond_d
    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v6, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_1

    .line 2018
    .end local v38    # "size":I
    :pswitch_c
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v36, v0

    .line 2019
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    .end local v23    # "cmd":Lcom/android/internal/telephony/cat/CatCmdMessage;
    check-cast v23, Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 2020
    .restart local v23    # "cmd":Lcom/android/internal/telephony/cat/CatCmdMessage;
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelData:[B

    move-object/from16 v21, v0

    .line 2021
    .local v21, "buffer":[B
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mRemainingDataLength:I

    move/from16 v34, v0

    .line 2023
    .local v34, "remainingCount":I
    new-instance v9, Lcom/android/internal/telephony/cat/ReceiveDataResponseData;

    .end local v9    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    move-object/from16 v0, v21

    move/from16 v1, v34

    invoke-direct {v9, v0, v1}, Lcom/android/internal/telephony/cat/ReceiveDataResponseData;-><init>([BI)V

    .line 2024
    .restart local v9    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    if-nez v36, :cond_e

    .line 2025
    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v6, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_1

    .line 2026
    :cond_e
    const/16 v4, 0x9

    move/from16 v0, v36

    if-ne v0, v4, :cond_f

    .line 2027
    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v6, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_WITH_MISSING_INFO:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_1

    .line 2030
    :cond_f
    move-object/from16 v0, v23

    iget-object v11, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v12, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_1

    .line 2034
    .end local v21    # "buffer":[B
    .end local v34    # "remainingCount":I
    :pswitch_d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    .end local v23    # "cmd":Lcom/android/internal/telephony/cat/CatCmdMessage;
    check-cast v23, Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 2035
    .restart local v23    # "cmd":Lcom/android/internal/telephony/cat/CatCmdMessage;
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    if-nez v4, :cond_10

    .line 2036
    move-object/from16 v0, v23

    iget-object v11, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v12, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_1

    .line 2037
    :cond_10
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_11

    .line 2038
    move-object/from16 v0, v23

    iget-object v11, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v12, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v13, 0x1

    const/4 v14, 0x3

    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_1

    .line 2040
    :cond_11
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    const/16 v5, 0x8

    if-ne v4, v5, :cond_1

    .line 2041
    move-object/from16 v0, v23

    iget-object v11, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v12, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v13, 0x1

    const/4 v14, 0x2

    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_1

    .line 2046
    :pswitch_e
    const/16 v19, 0x0

    .line 2047
    .local v19, "arrList":Ljava/util/ArrayList;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v36, v0

    .line 2048
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    .end local v23    # "cmd":Lcom/android/internal/telephony/cat/CatCmdMessage;
    check-cast v23, Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 2049
    .restart local v23    # "cmd":Lcom/android/internal/telephony/cat/CatCmdMessage;
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatusList:Ljava/util/List;

    move-object/from16 v19, v0

    .end local v19    # "arrList":Ljava/util/ArrayList;
    check-cast v19, Ljava/util/ArrayList;

    .line 2051
    .restart local v19    # "arrList":Ljava/util/ArrayList;
    const-string v4, "[BIP]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SS-handleCmdResponse: MSG_ID_GET_CHANNEL_STATUS_DONE:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2052
    new-instance v9, Lcom/android/internal/telephony/cat/GetMultipleChannelStatusResponseData;

    .end local v9    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    move-object/from16 v0, v19

    invoke-direct {v9, v0}, Lcom/android/internal/telephony/cat/GetMultipleChannelStatusResponseData;-><init>(Ljava/util/ArrayList;)V

    .line 2053
    .restart local v9    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v6, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_1

    .line 2056
    .end local v19    # "arrList":Ljava/util/ArrayList;
    :pswitch_f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    .end local v23    # "cmd":Lcom/android/internal/telephony/cat/CatCmdMessage;
    check-cast v23, Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 2057
    .restart local v23    # "cmd":Lcom/android/internal/telephony/cat/CatCmdMessage;
    new-instance v9, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;

    .end local v9    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatusData:Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBearerDesc:Lcom/android/internal/telephony/cat/bip/BearerDesc;

    move-object/from16 v0, v23

    iget v6, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBufferSize:I

    move-object/from16 v0, v23

    iget-object v7, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTransportProtocol:Lcom/android/internal/telephony/cat/bip/TransportProtocol;

    iget v7, v7, Lcom/android/internal/telephony/cat/bip/TransportProtocol;->protocolType:I

    invoke-direct {v9, v4, v5, v6, v7}, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;-><init>(Lcom/android/internal/telephony/cat/bip/ChannelStatus;Lcom/android/internal/telephony/cat/bip/BearerDesc;II)V

    .line 2059
    .restart local v9    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    const-string v4, "[BIP]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SS-handleMessage: timeout for ConnMgr intent. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v23

    iget-object v6, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v6, v6, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2061
    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v6, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_1

    .line 2064
    :pswitch_10
    const-string v4, "[BIP]"

    const-string v5, "SS-handleMessage: timeout for ConnMgr RETRY. "

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2067
    :pswitch_11
    const-string v4, "SIM ready. Reporting STK service running now..."

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2068
    const-string v4, "ro.mtk_bsp_package"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    .line 2069
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->setStkEvdlCallByAP(ILandroid/os/Message;)V

    .line 2073
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->reportStkServiceIsRunning(Landroid/os/Message;)V

    .line 2078
    const/4 v4, 0x1

    const-string v5, "gsm.sim.ril.testsim"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    const-string v5, "persist.radio.biptest"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v4, v5, :cond_1

    .line 2081
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/cat/CatService;->mSendStatusCount:I

    .line 2082
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cat/CatService;->sendStatusCmd()V

    .line 2083
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/cat/CatService;->mSendStatusCount:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/cat/CatService;->mSendStatusCount:I

    goto/16 :goto_1

    .line 2071
    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->setStkEvdlCallByAP(ILandroid/os/Message;)V

    goto :goto_2

    .line 2088
    :pswitch_12
    const-string v4, "[IVSR cancel IVSR flag"

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2089
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/telephony/cat/CatService;->isIvsrBootUp:Z

    goto/16 :goto_1

    .line 2093
    :pswitch_13
    const-string v4, "ro.mtk_bsp_package"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2094
    const-string v4, "RIL event download for call."

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2095
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v4, :cond_1

    .line 2096
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/os/AsyncResult;

    .line 2097
    .restart local v18    # "ar":Landroid/os/AsyncResult;
    if-eqz v18, :cond_1

    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_1

    .line 2098
    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    move-object/from16 v29, v4

    check-cast v29, [I

    .line 2099
    .local v29, "evdlCalldata":[I
    new-instance v10, Lcom/android/internal/telephony/cat/EventDownloadCallInfo;

    const/4 v4, 0x0

    aget v11, v29, v4

    const/4 v4, 0x1

    aget v12, v29, v4

    const/4 v4, 0x2

    aget v13, v29, v4

    const/4 v4, 0x3

    aget v14, v29, v4

    const/4 v4, 0x4

    aget v15, v29, v4

    const/4 v4, 0x5

    aget v16, v29, v4

    invoke-direct/range {v10 .. v16}, Lcom/android/internal/telephony/cat/EventDownloadCallInfo;-><init>(IIIIII)V

    .line 2104
    .local v10, "eventDownloadCallInfo":Lcom/android/internal/telephony/cat/EventDownloadCallInfo;
    const/16 v4, 0xff

    iget v5, v10, Lcom/android/internal/telephony/cat/EventDownloadCallInfo;->mCauseLen:I

    if-le v4, v5, :cond_14

    .line 2105
    iget v4, v10, Lcom/android/internal/telephony/cat/EventDownloadCallInfo;->mCauseLen:I

    shr-int/lit8 v4, v4, 0x1

    iput v4, v10, Lcom/android/internal/telephony/cat/EventDownloadCallInfo;->mCauseLen:I

    .line 2109
    :goto_3
    const/4 v4, 0x0

    aget v4, v29, v4

    if-nez v4, :cond_15

    .line 2110
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatService;->mEventDownloadCallConnInfo:Ljava/util/LinkedList;

    invoke-virtual {v4, v10}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 2111
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/cat/CatService;->mNumEventDownloadCallConn:I

    if-lez v4, :cond_13

    .line 2112
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/cat/CatService;->mNumEventDownloadCallConn:I

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/cat/CatService;->mNumEventDownloadCallConn:I

    .line 2113
    const/16 v4, 0x16

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cat/CatService;->mEvdlCallConnObjQ:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/telephony/cat/CatService;->removeMessages(ILjava/lang/Object;)V

    .line 2114
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mNumEventDownloadCallConn --.["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/cat/CatService;->mNumEventDownloadCallConn:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2115
    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v11, p0

    invoke-direct/range {v11 .. v16}, Lcom/android/internal/telephony/cat/CatService;->eventDownload(III[BZ)V

    .line 2126
    :cond_13
    :goto_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Evdl data:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget v5, v29, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    aget v5, v29, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x2

    aget v5, v29, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x3

    aget v5, v29, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x4

    aget v5, v29, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2107
    :cond_14
    const/16 v4, 0xff

    iput v4, v10, Lcom/android/internal/telephony/cat/EventDownloadCallInfo;->mCauseLen:I

    goto/16 :goto_3

    .line 2118
    :cond_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatService;->mEventDownloadCallDisConnInfo:Ljava/util/LinkedList;

    invoke-virtual {v4, v10}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 2119
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/cat/CatService;->mNumEventDownloadCallDisConn:I

    if-lez v4, :cond_13

    .line 2120
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/cat/CatService;->mNumEventDownloadCallDisConn:I

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/cat/CatService;->mNumEventDownloadCallDisConn:I

    .line 2121
    const/16 v4, 0x17

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cat/CatService;->mEvdlCallDisConnObjQ:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/telephony/cat/CatService;->removeMessages(ILjava/lang/Object;)V

    .line 2122
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mNumEventDownloadCallDisConn --.["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/cat/CatService;->mNumEventDownloadCallDisConn:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2123
    const/4 v12, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v11, p0

    invoke-direct/range {v11 .. v16}, Lcom/android/internal/telephony/cat/CatService;->eventDownload(III[BZ)V

    goto/16 :goto_4

    .line 2132
    .end local v10    # "eventDownloadCallInfo":Lcom/android/internal/telephony/cat/EventDownloadCallInfo;
    .end local v18    # "ar":Landroid/os/AsyncResult;
    .end local v29    # "evdlCalldata":[I
    :pswitch_14
    const-string v4, "SETUP_MENU_RESET : Setup menu reset."

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2133
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/os/AsyncResult;

    .line 2134
    .restart local v18    # "ar":Landroid/os/AsyncResult;
    if-eqz v18, :cond_16

    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_16

    .line 2135
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/telephony/cat/CatService;->mSaveNewSetUpMenu:Z

    goto/16 :goto_1

    .line 2137
    :cond_16
    const-string v4, "SETUP_MENU_RESET : AsyncResult null."

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2141
    .end local v18    # "ar":Landroid/os/AsyncResult;
    :pswitch_15
    const-string v4, "RIL event Call Ctrl."

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2155
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v4, :cond_1

    .line 2156
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/os/AsyncResult;

    .line 2157
    .restart local v18    # "ar":Landroid/os/AsyncResult;
    if-eqz v18, :cond_1

    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_1

    .line 2158
    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/String;

    move-object/from16 v22, v4

    check-cast v22, [Ljava/lang/String;

    .line 2159
    .local v22, "callCtrlInfo":[Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "callCtrlInfo.length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, v22, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v5, v22, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x2

    aget-object v5, v22, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2162
    const/16 v33, 0x0

    .line 2164
    .local v33, "rawData":[B
    const/4 v4, 0x1

    :try_start_2
    aget-object v4, v22, v4

    if-eqz v4, :cond_17

    const/4 v4, 0x1

    aget-object v4, v22, v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_17

    .line 2165
    const/4 v4, 0x1

    aget-object v4, v22, v4

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v33

    .line 2175
    const/16 v17, 0x0

    .line 2177
    .local v17, "alphaId":Ljava/lang/String;
    const/4 v4, 0x0

    :try_start_3
    move-object/from16 v0, v33

    array-length v5, v0

    move-object/from16 v0, v33

    invoke-static {v0, v4, v5}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v17

    .line 2183
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CC Alpha msg: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", sim id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2184
    new-instance v40, Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct/range {v40 .. v40}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    .line 2185
    .local v40, "textMessage":Lcom/android/internal/telephony/cat/TextMessage;
    new-instance v24, Lcom/android/internal/telephony/cat/CommandDetails;

    invoke-direct/range {v24 .. v24}, Lcom/android/internal/telephony/cat/CommandDetails;-><init>()V

    .line 2186
    .local v24, "cmdDet":Lcom/android/internal/telephony/cat/CommandDetails;
    sget-object v4, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->CALLCTRL_RSP_MSG:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v4

    move-object/from16 v0, v24

    iput v4, v0, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    .line 2187
    move-object/from16 v0, v17

    move-object/from16 v1, v40

    iput-object v0, v1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 2188
    new-instance v26, Lcom/android/internal/telephony/cat/CallCtrlBySimParams;

    const/4 v4, 0x0

    aget-object v4, v22, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x2

    aget-object v5, v22, v5

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    move-object/from16 v2, v40

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/android/internal/telephony/cat/CallCtrlBySimParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;ILjava/lang/String;)V

    .line 2190
    .local v26, "cmdParams":Lcom/android/internal/telephony/cat/CallCtrlBySimParams;
    new-instance v25, Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct/range {v25 .. v26}, Lcom/android/internal/telephony/cat/CatCmdMessage;-><init>(Lcom/android/internal/telephony/cat/CommandParams;)V

    .line 2191
    .local v25, "cmdMsg":Lcom/android/internal/telephony/cat/CatCmdMessage;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cat/CatService;->broadcastCatCmdIntent(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    goto/16 :goto_1

    .line 2167
    .end local v17    # "alphaId":Ljava/lang/String;
    .end local v24    # "cmdDet":Lcom/android/internal/telephony/cat/CommandDetails;
    .end local v25    # "cmdMsg":Lcom/android/internal/telephony/cat/CatCmdMessage;
    .end local v26    # "cmdParams":Lcom/android/internal/telephony/cat/CallCtrlBySimParams;
    .end local v40    # "textMessage":Lcom/android/internal/telephony/cat/TextMessage;
    :cond_17
    :try_start_4
    const-string v4, "Null CC alpha id."

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1

    .line 2170
    :catch_1
    move-exception v28

    .line 2172
    .local v28, "e":Ljava/lang/Exception;
    const-string v4, "CC message drop"

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2179
    .end local v28    # "e":Ljava/lang/Exception;
    .restart local v17    # "alphaId":Ljava/lang/String;
    :catch_2
    move-exception v28

    .line 2180
    .local v28, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v4, "IndexOutOfBoundsException adnStringFieldToString"

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2196
    .end local v17    # "alphaId":Ljava/lang/String;
    .end local v18    # "ar":Landroid/os/AsyncResult;
    .end local v22    # "callCtrlInfo":[Ljava/lang/String;
    .end local v28    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v33    # "rawData":[B
    :pswitch_16
    const-string v4, "MSG_ID_LAUNCH_DB_SETUP_MENU"

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2197
    const/16 v39, 0x0

    .line 2198
    .local v39, "strCmd":Ljava/lang/String;
    const/16 v31, 0x0

    .line 2200
    .local v31, "inst":Lcom/android/internal/telephony/cat/CatService;
    sget-object v4, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    aget-object v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/android/internal/telephony/cat/CatService;->sInstKey:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    aget-object v6, v6, v7

    invoke-static {v4, v5, v6}, Lcom/android/internal/telephony/cat/CatService;->readCmdFromPreference(Lcom/android/internal/telephony/cat/CatService;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 2202
    sget-object v4, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    aget-object v4, v4, v5

    if-eqz v4, :cond_1

    if-eqz v39, :cond_1

    .line 2203
    sget-object v4, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    aget-object v4, v4, v5

    move-object/from16 v0, v39

    invoke-static {v4, v0}, Lcom/android/internal/telephony/cat/CatService;->handleProactiveCmdFromDB(Lcom/android/internal/telephony/cat/CatService;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2207
    .end local v31    # "inst":Lcom/android/internal/telephony/cat/CatService;
    .end local v39    # "strCmd":Ljava/lang/String;
    :pswitch_17
    const-string v4, "MSG_ID_SEND_STATUS_DONE"

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2208
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v4, :cond_1b

    .line 2210
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Landroid/os/AsyncResult;

    .line 2211
    .local v20, "asr":Landroid/os/AsyncResult;
    move-object/from16 v0, v20

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_18

    .line 2212
    const-string v4, "SEND_STATUS_DONE AsyncResult exception"

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2216
    :cond_18
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 2217
    .local v35, "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SEND_STATUS_DONE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v35 .. v35}, Lcom/android/internal/telephony/uicc/IccIoResult;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mSendStatusCount: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/cat/CatService;->mSendStatusCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2220
    invoke-virtual/range {v35 .. v35}, Lcom/android/internal/telephony/uicc/IccIoResult;->getException()Lcom/android/internal/telephony/uicc/IccException;

    move-result-object v4

    if-eqz v4, :cond_19

    .line 2221
    const-string v4, "SEND_STATUS_DONE IccException"

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2225
    :cond_19
    const/16 v4, 0x91

    move-object/from16 v0, v35

    iget v5, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw1:I

    if-eq v4, v5, :cond_1a

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/cat/CatService;->mSendStatusCount:I

    const/4 v5, 0x6

    if-ge v4, v5, :cond_1a

    const/4 v4, 0x1

    const-string v5, "gsm.sim.ril.testsim"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v4, v5, :cond_1a

    const/4 v4, 0x1

    const-string v5, "persist.radio.biptest"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v4, v5, :cond_1a

    .line 2230
    const/16 v4, 0x32

    const-wide/16 v6, 0x1388

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6, v7}, Lcom/android/internal/telephony/cat/CatService;->startTimeOut(IJ)V

    .line 2233
    :cond_1a
    const/16 v4, 0x91

    move-object/from16 v0, v35

    iget v5, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw1:I

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    const-string v5, "gsm.sim.ril.testsim"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    const-string v5, "persist.radio.biptest"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v4, v5, :cond_1

    .line 2238
    const/16 v4, 0xff

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/cat/CatService;->mSendStatusCount:I

    goto/16 :goto_1

    .line 2241
    .end local v20    # "asr":Landroid/os/AsyncResult;
    .end local v35    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    :cond_1b
    const-string v4, "SEND_STATUS_DONE msg.obj is null"

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1877
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_5
        :pswitch_11
        :pswitch_6
        :pswitch_15
        :pswitch_4
        :pswitch_8
        :pswitch_9
        :pswitch_16
        :pswitch_12
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_13
        :pswitch_0
        :pswitch_0
        :pswitch_14
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_0
        :pswitch_10
        :pswitch_1
        :pswitch_17
    .end packed-switch
.end method

.method public isCallDisConnReceived()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2993
    const-string v1, "ro.mtk_bsp_package"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2994
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mEventDownloadCallDisConnInfo:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 2996
    :cond_0
    return v0
.end method

.method public declared-synchronized onCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V
    .locals 2
    .param p1, "resMsg"    # Lcom/android/internal/telephony/cat/CatResponseMessage;

    .prologue
    .line 2286
    monitor-enter p0

    if-nez p1, :cond_0

    .line 2292
    :goto_0
    monitor-exit p0

    return-void

    .line 2290
    :cond_0
    const/4 v1, 0x6

    :try_start_0
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2291
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2286
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onDBHandler(I)V
    .locals 3
    .param p1, "sim_id"    # I

    .prologue
    .line 2306
    monitor-enter p0

    const/16 v1, 0xc

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v1, p1, v2}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 2307
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2308
    monitor-exit p0

    return-void

    .line 2306
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onEventDownload(Lcom/android/internal/telephony/cat/CatResponseMessage;)V
    .locals 2
    .param p1, "resMsg"    # Lcom/android/internal/telephony/cat/CatResponseMessage;

    .prologue
    .line 2295
    monitor-enter p0

    if-nez p1, :cond_0

    .line 2301
    :goto_0
    monitor-exit p0

    return-void

    .line 2299
    :cond_0
    const/16 v1, 0xb

    :try_start_0
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2300
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2295
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onLaunchCachedSetupMenu()V
    .locals 4

    .prologue
    .line 2312
    monitor-enter p0

    const/16 v1, 0xd

    :try_start_0
    iget v2, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 2313
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2314
    monitor-exit p0

    return-void

    .line 2312
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public queryStkSetUpMenuFromMD()V
    .locals 3

    .prologue
    .line 3004
    const-string v1, "query stk menu from modem"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3005
    const/16 v1, 0x30

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3007
    .local v0, "msg":Landroid/os/Message;
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3008
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mNLteCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v1, :cond_1

    .line 3009
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mNLteCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Lcom/android/internal/telephony/CommandsInterface;->queryStkSetUpMenuFromMD(Ljava/lang/String;Landroid/os/Message;)V

    .line 3014
    :cond_0
    :goto_0
    return-void

    .line 3011
    :cond_1
    const-string v1, "mNLteCmdIf is null."

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setAllCallDisConn(Z)V
    .locals 2
    .param p1, "isDisConn"    # Z

    .prologue
    .line 2988
    const-string v0, "ro.mtk_bsp_package"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2989
    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/CatService;->mIsAllCallDisConn:Z

    .line 2991
    :cond_0
    return-void
.end method

.method startTimeOut(IJ)V
    .locals 2
    .param p1, "msg"    # I
    .param p2, "delay"    # J

    .prologue
    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startTimeOut, sim_id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", msg id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 353
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cat/CatService;->cancelTimeOut(I)V

    .line 354
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mTimeoutHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mTimeoutHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 355
    return-void
.end method

.method public update(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccCard;)V
    .locals 6
    .param p1, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "ic"    # Lcom/android/internal/telephony/uicc/UiccCard;

    .prologue
    .line 2711
    const/4 v0, 0x0

    .line 2712
    .local v0, "ca":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    const/4 v1, 0x0

    .line 2714
    .local v1, "ir":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz p3, :cond_0

    .line 2718
    const/4 v2, 0x0

    invoke-virtual {p3, v2}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplicationIndex(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    .line 2719
    if-eqz v0, :cond_0

    .line 2720
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    .line 2724
    :cond_0
    sget-object v3, Lcom/android/internal/telephony/cat/CatService;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2725
    if-eqz v1, :cond_3

    :try_start_0
    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eq v2, v1, :cond_3

    .line 2726
    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v2, :cond_1

    .line 2727
    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 2730
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v2, :cond_2

    .line 2731
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unregisterForReady slotid: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "instance : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2732
    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 2734
    :cond_2
    const-string v2, "Reinitialize the Service with SIMRecords and UiccCardApplication"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2736
    sput-object v1, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 2737
    sput-object v0, Lcom/android/internal/telephony/cat/CatService;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 2740
    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    const/16 v4, 0x14

    const/4 v5, 0x0

    invoke-virtual {v2, p0, v4, v5}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2741
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerForRecordsLoaded slotid="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " instance:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2743
    :cond_3
    monitor-exit v3

    .line 2744
    return-void

    .line 2743
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method updateIccAvailability()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2747
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-nez v3, :cond_1

    .line 2748
    const-string v3, "updateIccAvailability, mUiccController is null"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2769
    :cond_0
    :goto_0
    return-void

    .line 2752
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 2753
    .local v1, "newState":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget v4, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    .line 2754
    .local v0, "newCard":Lcom/android/internal/telephony/uicc/UiccCard;
    if-eqz v0, :cond_2

    .line 2755
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v1

    .line 2757
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 2758
    .local v2, "oldState":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 2759
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Slot id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " New Card State = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Old Card State = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2760
    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v2, v3, :cond_3

    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-eq v1, v3, :cond_3

    .line 2762
    invoke-direct {p0, v1, v5}, Lcom/android/internal/telephony/cat/CatService;->broadcastCardStateAndIccRefreshResp(Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;Lcom/android/internal/telephony/uicc/IccRefreshResponse;)V

    goto :goto_0

    .line 2763
    :cond_3
    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-eq v2, v3, :cond_0

    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v1, v3, :cond_0

    .line 2766
    const-string v3, "SIM present. Reporting STK service running now..."

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2767
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->reportStkServiceIsRunning(Landroid/os/Message;)V

    goto :goto_0
.end method
