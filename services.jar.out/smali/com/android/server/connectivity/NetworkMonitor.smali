.class public Lcom/android/server/connectivity/NetworkMonitor;
.super Lcom/android/internal/util/StateMachine;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/NetworkMonitor$1;,
        Lcom/android/server/connectivity/NetworkMonitor$LingeringState;,
        Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;,
        Lcom/android/server/connectivity/NetworkMonitor$UserPromptedState;,
        Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;,
        Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;,
        Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;,
        Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;,
        Lcom/android/server/connectivity/NetworkMonitor$OfflineState;,
        Lcom/android/server/connectivity/NetworkMonitor$DefaultState;
    }
.end annotation


# static fields
.field private static final ACCEPT_CHARSET_HEADER_DEFAULT_VALUE:Ljava/lang/String; = "utf-8, utf-16, *;q=0.7"

.field private static final ACCEPT_ENCODING_HEADER_DEFAULT_VALUE:Ljava/lang/String; = "gzip,deflate"

.field private static final ACCEPT_HEADER_DEFAULT_VALUE:Ljava/lang/String; = "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8"

.field private static final ACCEPT_LANGUAGE_HEADER_DEFAULT_VALUE:Ljava/lang/String; = "zh-CN, en-US"

.field private static final ACTION_CAPTIVE_PORTAL_LOGGED_IN:Ljava/lang/String; = "android.net.netmon.captive_portal_logged_in"

.field public static final ACTION_NETWORK_CONDITIONS_MEASURED:Ljava/lang/String; = "android.net.conn.NETWORK_CONDITIONS_MEASURED"

.field private static final BASE:I = 0x82000

.field private static final BODY_BEGIN_TAG:Ljava/lang/String; = "<BODY>"

.field private static final BODY_END_TAG:Ljava/lang/String; = "</BODY>"

.field public static final CAPTIVE_PORTAL_APP_RETURN_APPEASED:I = 0x0

.field public static final CAPTIVE_PORTAL_APP_RETURN_UNWANTED:I = 0x1

.field public static final CAPTIVE_PORTAL_APP_RETURN_WANTED_AS_IS:I = 0x2

.field private static final CMD_CAPTIVE_PORTAL_APP_FINISHED:I = 0x82009

.field private static final CMD_CAPTIVE_PORTAL_LOGGED_IN:I = 0x8200f

.field public static final CMD_FORCE_REEVALUATION:I = 0x82008

.field private static final CMD_LINGER_EXPIRED:I = 0x82004

.field public static final CMD_NETWORK_CONNECTED:I = 0x82001

.field public static final CMD_NETWORK_DISCONNECTED:I = 0x82007

.field public static final CMD_NETWORK_LINGER:I = 0x82003

.field private static final CMD_REEVALUATE:I = 0x82006

.field private static final CMD_USER_WANTS_SIGN_IN:I = 0x8200a

.field private static final CONNECTION_HEADER_DEFAULT_VALUE:Ljava/lang/String; = "keep-alive"

.field private static final DBG:Z = true

.field private static final DEFAULT_LINGER_DELAY_MS:I = 0x7530

.field private static final DEFAULT_REEVALUATE_DELAY_MS:I = 0x1388

.field private static final DEFAULT_SERVER:Ljava/lang/String; = "captive.apple.com"

.field private static final EVENT_APP_BYPASSED_CAPTIVE_PORTAL:I = 0x8200c

.field private static final EVENT_APP_INDICATES_SIGN_IN_IMPOSSIBLE:I = 0x8200e

.field public static final EVENT_NETWORK_LINGER_COMPLETE:I = 0x82005

.field public static final EVENT_NETWORK_TESTED:I = 0x82002

.field private static final EVENT_NO_APP_RESPONSE:I = 0x8200d

.field public static final EVENT_PROVISIONING_NOTIFICATION:I = 0x8200b

.field public static final EXTRA_BSSID:Ljava/lang/String; = "extra_bssid"

.field public static final EXTRA_CELL_ID:Ljava/lang/String; = "extra_cellid"

.field public static final EXTRA_CONNECTIVITY_TYPE:Ljava/lang/String; = "extra_connectivity_type"

.field public static final EXTRA_IS_CAPTIVE_PORTAL:Ljava/lang/String; = "extra_is_captive_portal"

.field public static final EXTRA_NETWORK_TYPE:Ljava/lang/String; = "extra_network_type"

.field public static final EXTRA_REQUEST_TIMESTAMP_MS:Ljava/lang/String; = "extra_request_timestamp_ms"

.field public static final EXTRA_RESPONSE_RECEIVED:Ljava/lang/String; = "extra_response_received"

.field public static final EXTRA_RESPONSE_TIMESTAMP_MS:Ljava/lang/String; = "extra_response_timestamp_ms"

.field public static final EXTRA_SSID:Ljava/lang/String; = "extra_ssid"

.field private static final FILE_WIFI_SUPPLICANT:Ljava/lang/String; = "/data/misc/wifi/wpa_supplicant.conf"

.field private static final HOST_LIST:[Ljava/lang/String;

.field private static final HTTP_CONNECTION_TIMEOUT_DEFAULT_VALUE:I = 0x1388

.field private static final HTTP_HEADER_NAME_ACCEPT:Ljava/lang/String; = "Accept"

.field private static final HTTP_HEADER_NAME_ACCEPT_CHARSET:Ljava/lang/String; = "Accept-Charset"

.field private static final HTTP_HEADER_NAME_ACCEPT_ENCODING:Ljava/lang/String; = "Accept-Encoding"

.field private static final HTTP_HEADER_NAME_ACCEPT_LANGUAGE:Ljava/lang/String; = "Accept-Language"

.field private static final HTTP_HEADER_NAME_CONNECTION:Ljava/lang/String; = "Connection"

.field private static final HTTP_HEADER_NAME_USER_AGENT:Ljava/lang/String; = "User-Agent"

.field private static final HTTP_HEADER_NAME_X_REQUESTED_WITH:Ljava/lang/String; = "X-Requested-with"

.field private static final HTTP_HEADER_NAME_X_WAP_PROFILE:Ljava/lang/String; = "x-wap-profile"

.field private static final HTTP_SOCKET_CONNECTION_TIMEOUT_DEFAULT_VALUE:I = 0x1388

.field private static final INITIAL_ATTEMPTS:I = 0x3

.field private static final INVALID_UID:I = -0x1

.field private static final LENOVO_AUTO_AUTHORIZE_SUPPORT:Z = true

.field private static final LENOVO_CHECK_INVALID_WLAN_SUPPORT:Z = true

.field private static final LENOVO_POPUP_DIALOG_SUPPORT:Z = false

.field private static final LINGER_DELAY_PROPERTY:Ljava/lang/String; = "persist.netmon.linger"

.field private static final LOGGED_IN_RESULT:Ljava/lang/String; = "result"

.field public static final NETWORK_TEST_RESULT_INVALID:I = 0x1

.field public static final NETWORK_TEST_RESULT_VALID:I = 0x0

.field private static final PERIODIC_ATTEMPTS:I = 0x1

.field private static final PERMISSION_ACCESS_NETWORK_CONDITIONS:Ljava/lang/String; = "android.permission.ACCESS_NETWORK_CONDITIONS"

.field private static final REEVALUATE_ATTEMPTS:I = 0x1

.field private static final REEVALUATE_DELAY_PROPERTY:Ljava/lang/String; = "persist.netmon.reeval_delay"

.field private static final REEVALUATE_PAUSE_MS:I = 0x927c0

.field private static final RESPONSE_TOKEN:Ljava/lang/String; = "response_token"

.field private static final SOCKET_TIMEOUT_MS:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "NetworkMonitor"

.field private static final TITLE_BEGIN_TAG:Ljava/lang/String; = "<TITLE>"

.field private static final TITLE_END_TAG:Ljava/lang/String; = "</TITLE>"

.field private static final USER_AGENT_HEADER_DEFAULT_VALUE:Ljava/lang/String; = "Lenovo-S960/S104 Linux/3.0.13 Android/4.2 Release/07.05.2013 Browser/AppleWebKit534.30 Profile/ configuration"

.field private static final X_REQUESTED_WITH_HEADER_DEFAULT_VALUE:Ljava/lang/String; = "com.lenovo.browser"

.field private static final X_WAP_PROFILE_HEADER_DEFAULT_VALUE:Ljava/lang/String; = "http://218.249.47.94/xianghe/MTK_Phone_JB_UAprofile.xml"

.field private static mSkipNetworkValidation:Z


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private mCaptivePortalLoggedInResponseToken:Ljava/lang/String;

.field private mCaptivePortalLoggedInToken:I

.field private final mCaptivePortalState:Lcom/android/internal/util/State;

.field private final mConnectivityServiceHandler:Landroid/os/Handler;

.field private final mContext:Landroid/content/Context;

.field private final mDefaultRequest:Landroid/net/NetworkRequest;

.field private final mDefaultState:Lcom/android/internal/util/State;

.field private final mEvaluatingState:Lcom/android/internal/util/State;

.field private mIsCaptivePortalCheckEnabled:Z

.field private final mLingerDelayMs:I

.field private mLingerToken:I

.field private final mLingeringState:Lcom/android/internal/util/State;

.field private mMaxAttempts:I

.field private final mMaybeNotifyState:Lcom/android/internal/util/State;

.field private final mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

.field private final mOfflineState:Lcom/android/internal/util/State;

.field private final mReevaluateDelayMs:I

.field private mReevaluateToken:I

.field private mServer:Ljava/lang/String;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUidResponsibleForReeval:I

.field private mUserDoesNotWant:Z

.field private mUserPromptedState:Lcom/android/internal/util/State;

.field private mUserPromptedToken:I

.field private final mValidatedState:Lcom/android/internal/util/State;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field public systemReady:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 351
    sput-boolean v3, Lcom/android/server/connectivity/NetworkMonitor;->mSkipNetworkValidation:Z

    .line 1729
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "www.baidu.com"

    aput-object v2, v0, v1

    const-string v1, "www.sina.com.cn"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "www.bing.com"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/connectivity/NetworkMonitor;->HOST_LIST:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkRequest;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "networkAgentInfo"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p4, "defaultRequest"    # Landroid/net/NetworkRequest;

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NetworkMonitor"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 298
    iput v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mLingerToken:I

    .line 311
    iput v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mReevaluateToken:I

    .line 313
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUidResponsibleForReeval:I

    .line 315
    iput v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalLoggedInToken:I

    .line 316
    iput v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUserPromptedToken:I

    .line 327
    iput-boolean v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mIsCaptivePortalCheckEnabled:Z

    .line 330
    iput-boolean v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUserDoesNotWant:Z

    .line 340
    iput-boolean v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->systemReady:Z

    .line 342
    new-instance v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;

    invoke-direct {v0, p0, v4}, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$1;)V

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultState:Lcom/android/internal/util/State;

    .line 343
    new-instance v0, Lcom/android/server/connectivity/NetworkMonitor$OfflineState;

    invoke-direct {v0, p0, v4}, Lcom/android/server/connectivity/NetworkMonitor$OfflineState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$1;)V

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mOfflineState:Lcom/android/internal/util/State;

    .line 344
    new-instance v0, Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;

    invoke-direct {v0, p0, v4}, Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$1;)V

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mValidatedState:Lcom/android/internal/util/State;

    .line 345
    new-instance v0, Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;

    invoke-direct {v0, p0, v4}, Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$1;)V

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mMaybeNotifyState:Lcom/android/internal/util/State;

    .line 346
    new-instance v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;

    invoke-direct {v0, p0, v4}, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$1;)V

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mEvaluatingState:Lcom/android/internal/util/State;

    .line 347
    new-instance v0, Lcom/android/server/connectivity/NetworkMonitor$UserPromptedState;

    invoke-direct {v0, p0, v4}, Lcom/android/server/connectivity/NetworkMonitor$UserPromptedState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$1;)V

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUserPromptedState:Lcom/android/internal/util/State;

    .line 348
    new-instance v0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;

    invoke-direct {v0, p0, v4}, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$1;)V

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalState:Lcom/android/internal/util/State;

    .line 349
    new-instance v0, Lcom/android/server/connectivity/NetworkMonitor$LingeringState;

    invoke-direct {v0, p0, v4}, Lcom/android/server/connectivity/NetworkMonitor$LingeringState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$1;)V

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mLingeringState:Lcom/android/internal/util/State;

    .line 353
    iput-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalLoggedInResponseToken:Ljava/lang/String;

    .line 360
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    .line 361
    iput-object p2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mConnectivityServiceHandler:Landroid/os/Handler;

    .line 362
    iput-object p3, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 363
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 364
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 365
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mAlarmManager:Landroid/app/AlarmManager;

    .line 366
    iput-object p4, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultRequest:Landroid/net/NetworkRequest;

    .line 368
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/NetworkMonitor;->addState(Lcom/android/internal/util/State;)V

    .line 369
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mOfflineState:Lcom/android/internal/util/State;

    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v3}, Lcom/android/server/connectivity/NetworkMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 370
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mValidatedState:Lcom/android/internal/util/State;

    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v3}, Lcom/android/server/connectivity/NetworkMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 371
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mMaybeNotifyState:Lcom/android/internal/util/State;

    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v3}, Lcom/android/server/connectivity/NetworkMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 372
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mEvaluatingState:Lcom/android/internal/util/State;

    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor;->mMaybeNotifyState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v3}, Lcom/android/server/connectivity/NetworkMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 373
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalState:Lcom/android/internal/util/State;

    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor;->mMaybeNotifyState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v3}, Lcom/android/server/connectivity/NetworkMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 374
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUserPromptedState:Lcom/android/internal/util/State;

    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor;->mMaybeNotifyState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v3}, Lcom/android/server/connectivity/NetworkMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 375
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mLingeringState:Lcom/android/internal/util/State;

    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v3}, Lcom/android/server/connectivity/NetworkMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 376
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/NetworkMonitor;->setInitialState(Lcom/android/internal/util/State;)V

    .line 378
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "captive_portal_server"

    invoke-static {v0, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mServer:Ljava/lang/String;

    .line 380
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mServer:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "captive.apple.com"

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mServer:Ljava/lang/String;

    .line 382
    :cond_0
    const-string v0, "persist.netmon.linger"

    const/16 v3, 0x7530

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mLingerDelayMs:I

    .line 383
    const-string v0, "persist.netmon.reeval_delay"

    const/16 v3, 0x1388

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mReevaluateDelayMs:I

    .line 386
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "captive_portal_detection_enabled"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mIsCaptivePortalCheckEnabled:Z

    .line 389
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 390
    iput-boolean v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mIsCaptivePortalCheckEnabled:Z

    .line 395
    :goto_1
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalLoggedInResponseToken:Ljava/lang/String;

    .line 397
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x80c0007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/connectivity/NetworkMonitor;->mSkipNetworkValidation:Z

    .line 400
    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkMonitor;->start()V

    .line 401
    return-void

    :cond_1
    move v0, v2

    .line 386
    goto :goto_0

    .line 392
    :cond_2
    iput-boolean v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mIsCaptivePortalCheckEnabled:Z

    goto :goto_1
.end method

.method static synthetic access$1000(Lcom/android/server/connectivity/NetworkMonitor;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 140
    iget v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mMaxAttempts:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/server/connectivity/NetworkMonitor;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # I

    .prologue
    .line 140
    iput p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mMaxAttempts:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mEvaluatingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 140
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/connectivity/NetworkMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkMonitor;->quit()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/connectivity/NetworkMonitor;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 140
    iget v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUidResponsibleForReeval:I

    return v0
.end method

.method static synthetic access$1402(Lcom/android/server/connectivity/NetworkMonitor;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # I

    .prologue
    .line 140
    iput p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUidResponsibleForReeval:I

    return p1
.end method

.method static synthetic access$1500(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 140
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1602(Lcom/android/server/connectivity/NetworkMonitor;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalLoggedInResponseToken:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mValidatedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 140
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/connectivity/NetworkMonitor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUserDoesNotWant:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/android/server/connectivity/NetworkMonitor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Z

    .prologue
    .line 140
    iput-boolean p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUserDoesNotWant:Z

    return p1
.end method

.method static synthetic access$2000(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mOfflineState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 140
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mConnectivityServiceHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/connectivity/NetworkMonitor;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # I

    .prologue
    .line 140
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/connectivity/NetworkMonitor;ZZILandroid/app/PendingIntent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z
    .param p3, "x3"    # I
    .param p4, "x4"    # Landroid/app/PendingIntent;

    .prologue
    .line 140
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/connectivity/NetworkMonitor;->setProvNotificationVisibleIntent(ZZILandroid/app/PendingIntent;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 140
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/connectivity/NetworkMonitor;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 140
    iget v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mReevaluateToken:I

    return v0
.end method

.method static synthetic access$2704(Lcom/android/server/connectivity/NetworkMonitor;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 140
    iget v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mReevaluateToken:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mReevaluateToken:I

    return v0
.end method

.method static synthetic access$2800(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/net/NetworkRequest;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultRequest:Landroid/net/NetworkRequest;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 140
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3000()Z
    .locals 1

    .prologue
    .line 140
    sget-boolean v0, Lcom/android/server/connectivity/NetworkMonitor;->mSkipNetworkValidation:Z

    return v0
.end method

.method static synthetic access$3100(Lcom/android/server/connectivity/NetworkMonitor;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkMonitor;->isCaptivePortalEx()I

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Lcom/android/server/connectivity/NetworkMonitor;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mServer:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/server/connectivity/NetworkMonitor;Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 140
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->lookupHost(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/server/connectivity/NetworkMonitor;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 140
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->autoAuthorize(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3500(Lcom/android/server/connectivity/NetworkMonitor;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkMonitor;->isInvalidNetworkEx()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/server/connectivity/NetworkMonitor;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkMonitor;->getTopVisiblePackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 140
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUserPromptedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 140
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 140
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 140
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 140
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 140
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/server/connectivity/NetworkMonitor;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 140
    iget v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mReevaluateDelayMs:I

    return v0
.end method

.method static synthetic access$4600(Lcom/android/server/connectivity/NetworkMonitor;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 140
    iget v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUserPromptedToken:I

    return v0
.end method

.method static synthetic access$4604(Lcom/android/server/connectivity/NetworkMonitor;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 140
    iget v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUserPromptedToken:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUserPromptedToken:I

    return v0
.end method

.method static synthetic access$4700(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 140
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/server/connectivity/NetworkMonitor;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 140
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/server/connectivity/NetworkMonitor;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 140
    iget v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalLoggedInToken:I

    return v0
.end method

.method static synthetic access$5100(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 140
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$5200(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 140
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/server/connectivity/NetworkMonitor;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 140
    iget v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mLingerToken:I

    return v0
.end method

.method static synthetic access$5302(Lcom/android/server/connectivity/NetworkMonitor;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # I

    .prologue
    .line 140
    iput p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mLingerToken:I

    return p1
.end method

.method static synthetic access$5400(Lcom/android/server/connectivity/NetworkMonitor;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 140
    iget v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mLingerDelayMs:I

    return v0
.end method

.method static synthetic access$5500(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/app/AlarmManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 140
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mLingeringState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 140
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method private addDefaultHeader(Lorg/apache/http/client/methods/HttpGet;)V
    .locals 2
    .param p1, "getMethod"    # Lorg/apache/http/client/methods/HttpGet;

    .prologue
    .line 1251
    if-nez p1, :cond_0

    .line 1261
    :goto_0
    return-void

    .line 1253
    :cond_0
    const-string v0, "Connection"

    const-string v1, "keep-alive"

    invoke-virtual {p1, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1254
    const-string v0, "Accept"

    const-string v1, "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8"

    invoke-virtual {p1, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1255
    const-string v0, "x-wap-profile"

    const-string v1, "http://218.249.47.94/xianghe/MTK_Phone_JB_UAprofile.xml"

    invoke-virtual {p1, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1256
    const-string v0, "User-Agent"

    const-string v1, "Lenovo-S960/S104 Linux/3.0.13 Android/4.2 Release/07.05.2013 Browser/AppleWebKit534.30 Profile/ configuration"

    invoke-virtual {p1, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1257
    const-string v0, "Accept-Encoding"

    const-string v1, "gzip,deflate"

    invoke-virtual {p1, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1258
    const-string v0, "Accept-Language"

    const-string v1, "zh-CN, en-US"

    invoke-virtual {p1, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1259
    const-string v0, "Accept-Charset"

    const-string v1, "utf-8, utf-16, *;q=0.7"

    invoke-virtual {p1, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1260
    const-string v0, "X-Requested-with"

    const-string v1, "com.lenovo.browser"

    invoke-virtual {p1, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private autoAuthorize(Ljava/lang/String;)Z
    .locals 26
    .param p1, "server"    # Ljava/lang/String;

    .prologue
    .line 1461
    new-instance v10, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v10}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 1463
    .local v10, "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    const/4 v8, 0x0

    .line 1465
    .local v8, "getMethod":Lorg/apache/http/client/methods/HttpGet;
    const/4 v14, 0x0

    .line 1467
    .local v14, "response":Lorg/apache/http/HttpResponse;
    const/16 v18, 0x0

    .line 1469
    .local v18, "statusCode":I
    const/4 v15, 0x0

    .line 1471
    .local v15, "responseString":Ljava/lang/String;
    const/16 v20, 0x0

    .line 1473
    .local v20, "uriString":Ljava/lang/String;
    const/16 v19, 0x1

    .line 1475
    .local v19, "step":I
    const/4 v13, 0x0

    .line 1477
    .local v13, "redirect_count":I
    if-nez p1, :cond_0

    .line 1478
    const/16 v23, 0x0

    .line 1725
    :goto_0
    return v23

    .line 1480
    :cond_0
    const-string v23, "NetworkMonitor"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[ Auto Authorize ] :: autoAuthorize Begin, server: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1482
    if-nez v10, :cond_1

    .line 1484
    const-string v23, "NetworkMonitor"

    const-string v24, "[ Auto Authorize ] :: autoAuthorize, Null HTTP Client"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1485
    const/16 v23, 0x0

    goto :goto_0

    .line 1489
    :cond_1
    invoke-virtual {v10}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v12

    .line 1490
    .local v12, "params":Lorg/apache/http/params/HttpParams;
    if-eqz v12, :cond_2

    .line 1492
    const-string v23, "http.protocol.handle-redirects"

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-interface {v12, v0, v1}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    .line 1493
    const-string v23, "http.socket.timeout"

    const/16 v24, 0x1388

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-interface {v12, v0, v1}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 1494
    const-string v23, "http.connection.timeout"

    const/16 v24, 0x1388

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-interface {v12, v0, v1}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 1497
    :cond_2
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "http://"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 1502
    :cond_3
    const-string v23, "NetworkMonitor"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[ Auto Authorize ] :: autoAuthorize, Step 1, uri: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1506
    :try_start_0
    new-instance v9, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, v20

    invoke-direct {v9, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .end local v8    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    .local v9, "getMethod":Lorg/apache/http/client/methods/HttpGet;
    move-object v8, v9

    .line 1515
    .end local v9    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    .restart local v8    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    :goto_1
    if-nez v8, :cond_4

    .line 1517
    const-string v23, "NetworkMonitor"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[ Auto Authorize ] :: autoAuthorize, Step "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", Null Get Method"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1518
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 1507
    :catch_0
    move-exception v4

    .line 1509
    .local v4, "e0":Ljava/lang/IllegalArgumentException;
    const-string v23, "NetworkMonitor"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[ Auto Authorize ] :: autoAuthorize, Step "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", create HttpGet Fail, IllegalArgumentException occured"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1510
    .end local v4    # "e0":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v3

    .line 1512
    .local v3, "e":Ljava/lang/Exception;
    const-string v23, "NetworkMonitor"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[ Auto Authorize ] :: autoAuthorize, Step "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", create HttpGet Fail, Exception: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " occured"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1521
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/connectivity/NetworkMonitor;->addDefaultHeader(Lorg/apache/http/client/methods/HttpGet;)V

    .line 1523
    const/4 v14, 0x0

    .line 1525
    const/16 v17, 0x0

    .line 1530
    .local v17, "retry":I
    :cond_5
    :try_start_1
    invoke-virtual {v10, v8}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    move-result-object v14

    .line 1550
    :goto_2
    if-eqz v14, :cond_7

    .line 1572
    :cond_6
    :goto_3
    if-nez v14, :cond_9

    .line 1573
    const-string v23, "NetworkMonitor"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[ Auto Authorize ] :: autoAuthorize, Step "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", Null HTTP Response"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1575
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 1531
    :catch_2
    move-exception v5

    .line 1532
    .local v5, "e1":Lorg/apache/http/client/ClientProtocolException;
    const-string v23, "NetworkMonitor"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[ Auto Authorize ] :: autoAuthorize, Step "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", execute() Fail, ClientProtocolException occured"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1534
    const/4 v14, 0x0

    .line 1548
    goto :goto_2

    .line 1535
    .end local v5    # "e1":Lorg/apache/http/client/ClientProtocolException;
    :catch_3
    move-exception v6

    .line 1536
    .local v6, "e2":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 1537
    const-string v23, "NetworkMonitor"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[ Auto Authorize ] :: autoAuthorize, Step "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", execute() Fail, IOException occured"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1539
    const/4 v14, 0x0

    .line 1548
    goto :goto_2

    .line 1540
    .end local v6    # "e2":Ljava/io/IOException;
    :catch_4
    move-exception v7

    .line 1541
    .local v7, "e3":Ljava/lang/IllegalStateException;
    const-string v23, "NetworkMonitor"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[ Auto Authorize ] :: autoAuthorize, Step "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", execute() Fail, IllegalStateException occured"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1543
    const/4 v14, 0x0

    .line 1548
    goto/16 :goto_2

    .line 1544
    .end local v7    # "e3":Ljava/lang/IllegalStateException;
    :catch_5
    move-exception v3

    .line 1545
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string v23, "NetworkMonitor"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[ Auto Authorize ] :: autoAuthorize, Step "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", execute() Fail, Exception: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " occured"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1547
    const/4 v14, 0x0

    goto/16 :goto_2

    .line 1554
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_7
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "http://"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_6

    .line 1556
    add-int/lit8 v17, v17, 0x1

    const/16 v23, 0x3

    move/from16 v0, v17

    move/from16 v1, v23

    if-ge v0, v1, :cond_8

    .line 1558
    const-string v23, "NetworkMonitor"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[ Auto Authorize ] :: autoAuthorize, Step "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", execute() Fail, Retry..."

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1561
    const-wide/16 v24, 0x3e8

    :try_start_2
    invoke-static/range {v24 .. v25}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_c

    .line 1570
    :cond_8
    :goto_4
    const/16 v23, 0x3

    move/from16 v0, v17

    move/from16 v1, v23

    if-lt v0, v1, :cond_5

    goto/16 :goto_3

    .line 1578
    :cond_9
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v18

    .line 1580
    const-string v23, "NetworkMonitor"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[ Auto Authorize ] :: autoAuthorize, Step "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", responseCode: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1582
    const/16 v23, 0x12d

    move/from16 v0, v18

    move/from16 v1, v23

    if-eq v0, v1, :cond_a

    const/16 v23, 0x12e

    move/from16 v0, v18

    move/from16 v1, v23

    if-eq v0, v1, :cond_a

    .line 1584
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "http://"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_c

    .line 1585
    const-string v23, "NetworkMonitor"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[ Auto Authorize ] :: autoAuthorize, Step "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", Unexpected HTTP ResponseCode: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1586
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 1589
    :cond_a
    const-string v23, "location"

    move-object/from16 v0, v23

    invoke-interface {v14, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v11

    .line 1590
    .local v11, "locationHeader":Lorg/apache/http/Header;
    if-nez v11, :cond_b

    .line 1591
    const-string v23, "NetworkMonitor"

    const-string v24, "[ Auto Authorize ] :: autoAuthorize, Step 1, Location Header Not Found"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1592
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 1594
    :cond_b
    invoke-interface {v11}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v20

    .line 1595
    add-int/lit8 v13, v13, 0x1

    .line 1610
    .end local v11    # "locationHeader":Lorg/apache/http/Header;
    :cond_c
    const/16 v23, 0x12d

    move/from16 v0, v18

    move/from16 v1, v23

    if-eq v0, v1, :cond_d

    const/16 v23, 0x12e

    move/from16 v0, v18

    move/from16 v1, v23

    if-ne v0, v1, :cond_e

    :cond_d
    const/16 v23, 0x3

    move/from16 v0, v23

    if-le v13, v0, :cond_3

    .line 1612
    :cond_e
    const/16 v23, 0x3

    move/from16 v0, v23

    if-le v13, v0, :cond_10

    const/16 v23, 0x12d

    move/from16 v0, v18

    move/from16 v1, v23

    if-eq v0, v1, :cond_f

    const/16 v23, 0x12e

    move/from16 v0, v18

    move/from16 v1, v23

    if-ne v0, v1, :cond_10

    .line 1614
    :cond_f
    const-string v23, "NetworkMonitor"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[ Auto Authorize ] :: autoAuthorize, Step "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", Too Many Redirect"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1615
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 1618
    :cond_10
    const-string v23, "NetworkMonitor"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[ Auto Authorize ] :: autoAuthorize, Step 1 Complete, Redirect to: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1620
    add-int/lit8 v19, v19, 0x1

    .line 1623
    new-instance v8, Lorg/apache/http/client/methods/HttpGet;

    .end local v8    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    move-object/from16 v0, v20

    invoke-direct {v8, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 1625
    .restart local v8    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/connectivity/NetworkMonitor;->addDefaultHeader(Lorg/apache/http/client/methods/HttpGet;)V

    .line 1629
    :try_start_3
    invoke-virtual {v10, v8}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_3
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8

    move-result-object v14

    .line 1641
    :goto_5
    if-nez v14, :cond_11

    .line 1643
    const-string v23, "NetworkMonitor"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[ Auto Authorize ] :: autoAuthorize, Step "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", Null HTTP Response"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1644
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 1630
    :catch_6
    move-exception v5

    .line 1632
    .restart local v5    # "e1":Lorg/apache/http/client/ClientProtocolException;
    const-string v23, "NetworkMonitor"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[ Auto Authorize ] :: autoAuthorize, Step "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", execute() Fail, ClientProtocolException occured"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1633
    .end local v5    # "e1":Lorg/apache/http/client/ClientProtocolException;
    :catch_7
    move-exception v6

    .line 1635
    .restart local v6    # "e2":Ljava/io/IOException;
    const-string v23, "NetworkMonitor"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[ Auto Authorize ] :: autoAuthorize, Step "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", execute() Fail, IOException occured"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1636
    .end local v6    # "e2":Ljava/io/IOException;
    :catch_8
    move-exception v3

    .line 1638
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string v23, "NetworkMonitor"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[ Auto Authorize ] :: autoAuthorize, Step "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", execute() Fail, Exception: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " occured"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 1647
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_11
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v18

    .line 1649
    const-string v23, "NetworkMonitor"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[ Auto Authorize ] :: autoAuthorize, Step "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", responseCode: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1651
    const/16 v23, 0x191

    move/from16 v0, v18

    move/from16 v1, v23

    if-eq v0, v1, :cond_12

    .line 1653
    const-string v23, "NetworkMonitor"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[ Auto Authorize ] :: autoAuthorize, Step 2 Complete, Authorization is NOT requested, ResponseCode: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1654
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 1657
    :cond_12
    const-string v23, "NetworkMonitor"

    const-string v24, "[ Auto Authorize ] :: autoAuthorize, Step 2 Complete, Authorization is requested"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1659
    add-int/lit8 v19, v19, 0x1

    .line 1662
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->getUserNameAndPasswordForHost(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 1664
    .local v16, "result":[Ljava/lang/String;
    if-nez v16, :cond_13

    .line 1666
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const-string v24, "wifi"

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/net/wifi/WifiManager;

    .line 1668
    .local v22, "wifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v22, :cond_13

    .line 1670
    invoke-virtual/range {v22 .. v22}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v21

    .line 1672
    .local v21, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v21, :cond_13

    .line 1674
    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->getUserNameAndPasswordForAP(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 1679
    .end local v21    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    .end local v22    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_13
    if-nez v16, :cond_14

    .line 1681
    const-string v23, "NetworkMonitor"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[ Auto Authorize ] :: autoAuthorize, Step "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", Username & Password Not Found, Authorize Fail"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1682
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 1685
    :cond_14
    const-string v23, "NetworkMonitor"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[ Auto Authorize ] :: autoAuthorize, Step "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", Username: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0x0

    aget-object v25, v16, v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", Password: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "*"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1687
    new-instance v2, Lorg/apache/http/auth/NTCredentials;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v24, 0x0

    aget-object v24, v16, v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ":"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0x1

    aget-object v24, v16, v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v2, v0}, Lorg/apache/http/auth/NTCredentials;-><init>(Ljava/lang/String;)V

    .line 1689
    .local v2, "creds":Lorg/apache/http/auth/NTCredentials;
    invoke-virtual {v10}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    move-result-object v23

    sget-object v24, Lorg/apache/http/auth/AuthScope;->ANY:Lorg/apache/http/auth/AuthScope;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-interface {v0, v1, v2}, Lorg/apache/http/client/CredentialsProvider;->setCredentials(Lorg/apache/http/auth/AuthScope;Lorg/apache/http/auth/Credentials;)V

    .line 1693
    :try_start_4
    invoke-virtual {v10, v8}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_b

    move-result-object v14

    .line 1705
    :goto_6
    if-nez v14, :cond_15

    .line 1707
    const-string v23, "NetworkMonitor"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[ Auto Authorize ] :: autoAuthorize, Step "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", Null HTTP Response"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1708
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 1694
    :catch_9
    move-exception v5

    .line 1696
    .restart local v5    # "e1":Lorg/apache/http/client/ClientProtocolException;
    const-string v23, "NetworkMonitor"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[ Auto Authorize ] :: autoAuthorize, Step "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", execute() Fail, ClientProtocolException occured"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1697
    .end local v5    # "e1":Lorg/apache/http/client/ClientProtocolException;
    :catch_a
    move-exception v6

    .line 1699
    .restart local v6    # "e2":Ljava/io/IOException;
    const-string v23, "NetworkMonitor"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[ Auto Authorize ] :: autoAuthorize, Step "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", execute() Fail, IOException occured"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1700
    .end local v6    # "e2":Ljava/io/IOException;
    :catch_b
    move-exception v3

    .line 1702
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string v23, "NetworkMonitor"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[ Auto Authorize ] :: autoAuthorize, Step "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", execute() Fail, Exception: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " occured"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 1711
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_15
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v18

    .line 1713
    const-string v23, "NetworkMonitor"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[ Auto Authorize ] :: autoAuthorize, Step "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", responseCode: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1715
    const/16 v23, 0x191

    move/from16 v0, v18

    move/from16 v1, v23

    if-ne v0, v1, :cond_16

    .line 1717
    const-string v23, "NetworkMonitor"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[ Auto Authorize ] :: autoAuthorize, Step 3 Complete, Authorization is FAIL, ResponseCode: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1718
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 1721
    :cond_16
    const-string v23, "NetworkMonitor"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[ Auto Authorize ] :: autoAuthorize, Step 3 Complete, Authorization is SUCCESS, ResponseCode: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1723
    const-string v23, "NetworkMonitor"

    const-string v24, "[ Auto Authorize ] :: autoAuthorize End"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1725
    const/16 v23, 0x1

    goto/16 :goto_0

    .line 1562
    .end local v2    # "creds":Lorg/apache/http/auth/NTCredentials;
    .end local v16    # "result":[Ljava/lang/String;
    :catch_c
    move-exception v23

    goto/16 :goto_4
.end method

.method private getTopVisiblePackageName()Ljava/lang/String;
    .locals 7

    .prologue
    .line 1769
    const/4 v1, 0x0

    .line 1771
    .local v1, "packageName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1773
    .local v0, "activityManager":Landroid/app/ActivityManager;
    if-eqz v0, :cond_0

    .line 1775
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    .line 1777
    .local v3, "taskInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 1780
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1782
    .local v2, "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    if-eqz v2, :cond_0

    iget-object v4, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v4, :cond_0

    .line 1785
    iget-object v4, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1787
    const-string v4, "NetworkMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getTopVisiblePackageName, packageName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", topActivity: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1792
    .end local v2    # "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v3    # "taskInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_0
    return-object v1
.end method

.method private getUserNameAndPasswordForAP(Ljava/lang/String;)[Ljava/lang/String;
    .locals 21
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    .line 1266
    const/16 v17, 0x0

    .local v17, "userName":Ljava/lang/String;
    const/4 v10, 0x0

    .line 1268
    .local v10, "passWord":Ljava/lang/String;
    if-nez p1, :cond_1

    .line 1269
    const/4 v15, 0x0

    .line 1446
    :cond_0
    :goto_0
    return-object v15

    .line 1271
    :cond_1
    const-string v18, "NetworkMonitor"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[ Auto Authorize ] :: getUserNameAndPasswordForAP, ssid: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    const/4 v13, 0x0

    .line 1277
    .local v13, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v6, Ljava/io/File;

    const-string v18, "/data/misc/wifi/wpa_supplicant.conf"

    move-object/from16 v0, v18

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1279
    .local v6, "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_2

    .line 1281
    const-string v18, "NetworkMonitor"

    const-string v19, "[ Auto Authorize ] :: getUserNameAndPasswordForAP, Supplicant file NOT Exist"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1282
    const/4 v15, 0x0

    .line 1371
    if-eqz v13, :cond_0

    .line 1375
    :try_start_1
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1376
    :catch_0
    move-exception v5

    .line 1378
    .local v5, "e2":Ljava/io/IOException;
    const-string v18, "NetworkMonitor"

    const-string v19, "[ Auto Authorize ] :: getUserNameAndPasswordForAP, IOException occured when close BufferReader"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1285
    .end local v5    # "e2":Ljava/io/IOException;
    :cond_2
    :try_start_2
    new-instance v14, Ljava/io/BufferedReader;

    new-instance v18, Ljava/io/FileReader;

    move-object/from16 v0, v18

    invoke-direct {v0, v6}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v18

    invoke-direct {v14, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1287
    .end local v13    # "reader":Ljava/io/BufferedReader;
    .local v14, "reader":Ljava/io/BufferedReader;
    const/4 v9, 0x0

    .line 1291
    .local v9, "networkInfoMask":Z
    const/4 v12, 0x0

    .local v12, "preSharedKey":Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "identity":Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, "password":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "SSID":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1293
    .local v2, "BSSID":Ljava/lang/String;
    :cond_3
    :goto_1
    :try_start_3
    invoke-virtual {v14}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .local v8, "line":Ljava/lang/String;
    if-eqz v8, :cond_6

    .line 1295
    const/16 v16, 0x0

    .line 1297
    .local v16, "start":I
    const-string v18, "network={"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 1299
    const/4 v9, 0x1

    .line 1301
    const/4 v3, 0x0

    .line 1302
    const/4 v2, 0x0

    .line 1303
    const/4 v7, 0x0

    .line 1304
    const/4 v11, 0x0

    .line 1305
    const/4 v12, 0x0

    .line 1331
    :cond_4
    if-eqz v9, :cond_3

    .line 1333
    const-string v18, "bssid="

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    if-lez v18, :cond_a

    .line 1335
    const-string v18, "bssid="

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    const-string v19, "bssid="

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    add-int v16, v18, v19

    .line 1337
    move/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 1307
    :cond_5
    const-string v18, "}"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 1309
    const/4 v9, 0x0

    .line 1311
    const-string v18, "NetworkMonitor"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[ Auto Authorize ] :: getUserNameAndPasswordForAP, Read AP Info From Supplicant, ssid: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", BSSID: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", identity: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", password: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "*"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", psk: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "*"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1313
    if-eqz v3, :cond_4

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v18

    if-eqz v18, :cond_4

    .line 1316
    if-eqz v7, :cond_9

    if-eqz v11, :cond_9

    .line 1318
    move-object/from16 v17, v7

    .line 1319
    move-object v10, v11

    .line 1371
    .end local v16    # "start":I
    :cond_6
    :goto_2
    if-eqz v14, :cond_7

    .line 1375
    :try_start_4
    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 1436
    :cond_7
    :goto_3
    if-eqz v17, :cond_8

    if-nez v10, :cond_f

    .line 1438
    :cond_8
    const-string v18, "NetworkMonitor"

    const-string v19, "[ Auto Authorize ] :: getUserNameAndPasswordForAP, Get UserName & Password Fail"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 1321
    .restart local v16    # "start":I
    :cond_9
    if-eqz v12, :cond_6

    .line 1323
    :try_start_5
    const-string v17, ""

    .line 1324
    move-object v10, v12

    goto :goto_2

    .line 1339
    :cond_a
    const-string v18, "ssid="

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    if-lez v18, :cond_b

    .line 1341
    const-string v18, "ssid="

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    const-string v19, "ssid="

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    add-int v16, v18, v19

    .line 1343
    move/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 1345
    :cond_b
    const-string v18, "identity="

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    if-lez v18, :cond_c

    .line 1347
    const-string v18, "identity="

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    const-string v19, "identity="

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    add-int v16, v18, v19

    .line 1349
    add-int/lit8 v18, v16, 0x1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    .line 1351
    :cond_c
    const-string v18, "password="

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    if-lez v18, :cond_d

    .line 1353
    const-string v18, "password="

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    const-string v19, "password="

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    add-int v16, v18, v19

    .line 1355
    add-int/lit8 v18, v16, 0x1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_1

    .line 1357
    :cond_d
    const-string v18, "psk="

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    if-lez v18, :cond_3

    .line 1359
    const-string v18, "psk="

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    const-string v19, "psk="

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    add-int v16, v18, v19

    .line 1361
    add-int/lit8 v18, v16, 0x1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v12

    goto/16 :goto_1

    .line 1376
    .end local v16    # "start":I
    :catch_1
    move-exception v5

    .line 1378
    .restart local v5    # "e2":Ljava/io/IOException;
    const-string v18, "NetworkMonitor"

    const-string v19, "[ Auto Authorize ] :: getUserNameAndPasswordForAP, IOException occured when close BufferReader"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1365
    .end local v2    # "BSSID":Ljava/lang/String;
    .end local v3    # "SSID":Ljava/lang/String;
    .end local v5    # "e2":Ljava/io/IOException;
    .end local v6    # "file":Ljava/io/File;
    .end local v7    # "identity":Ljava/lang/String;
    .end local v8    # "line":Ljava/lang/String;
    .end local v9    # "networkInfoMask":Z
    .end local v11    # "password":Ljava/lang/String;
    .end local v12    # "preSharedKey":Ljava/lang/String;
    .end local v14    # "reader":Ljava/io/BufferedReader;
    .restart local v13    # "reader":Ljava/io/BufferedReader;
    :catch_2
    move-exception v4

    .line 1367
    .local v4, "e1":Ljava/io/IOException;
    :goto_4
    :try_start_6
    const-string v18, "NetworkMonitor"

    const-string v19, "[ Auto Authorize ] :: getUserNameAndPasswordForAP, IOException occured"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1368
    const/4 v15, 0x0

    .line 1371
    if-eqz v13, :cond_0

    .line 1375
    :try_start_7
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_0

    .line 1376
    :catch_3
    move-exception v5

    .line 1378
    .restart local v5    # "e2":Ljava/io/IOException;
    const-string v18, "NetworkMonitor"

    const-string v19, "[ Auto Authorize ] :: getUserNameAndPasswordForAP, IOException occured when close BufferReader"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1371
    .end local v4    # "e1":Ljava/io/IOException;
    .end local v5    # "e2":Ljava/io/IOException;
    :catchall_0
    move-exception v18

    :goto_5
    if-eqz v13, :cond_e

    .line 1375
    :try_start_8
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 1379
    :cond_e
    :goto_6
    throw v18

    .line 1376
    :catch_4
    move-exception v5

    .line 1378
    .restart local v5    # "e2":Ljava/io/IOException;
    const-string v19, "NetworkMonitor"

    const-string v20, "[ Auto Authorize ] :: getUserNameAndPasswordForAP, IOException occured when close BufferReader"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1442
    .end local v5    # "e2":Ljava/io/IOException;
    .end local v13    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "BSSID":Ljava/lang/String;
    .restart local v3    # "SSID":Ljava/lang/String;
    .restart local v6    # "file":Ljava/io/File;
    .restart local v7    # "identity":Ljava/lang/String;
    .restart local v8    # "line":Ljava/lang/String;
    .restart local v9    # "networkInfoMask":Z
    .restart local v11    # "password":Ljava/lang/String;
    .restart local v12    # "preSharedKey":Ljava/lang/String;
    .restart local v14    # "reader":Ljava/io/BufferedReader;
    :cond_f
    const-string v18, "NetworkMonitor"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[ Auto Authorize ] :: getUserNameAndPasswordForAP, ssid: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", userName: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", passWord: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "*"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1444
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v15, v0, [Ljava/lang/String;

    const/16 v18, 0x0

    aput-object v17, v15, v18

    const/16 v18, 0x1

    aput-object v10, v15, v18

    .line 1446
    .local v15, "result":[Ljava/lang/String;
    goto/16 :goto_0

    .line 1371
    .end local v8    # "line":Ljava/lang/String;
    .end local v15    # "result":[Ljava/lang/String;
    :catchall_1
    move-exception v18

    move-object v13, v14

    .end local v14    # "reader":Ljava/io/BufferedReader;
    .restart local v13    # "reader":Ljava/io/BufferedReader;
    goto :goto_5

    .line 1365
    .end local v13    # "reader":Ljava/io/BufferedReader;
    .restart local v14    # "reader":Ljava/io/BufferedReader;
    :catch_5
    move-exception v4

    move-object v13, v14

    .end local v14    # "reader":Ljava/io/BufferedReader;
    .restart local v13    # "reader":Ljava/io/BufferedReader;
    goto :goto_4
.end method

.method private getUserNameAndPasswordForHost(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p1, "hostName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1451
    const/4 v1, 0x0

    .local v1, "userName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1453
    .local v0, "passWord":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 1456
    :cond_0
    return-object v2
.end method

.method private isCaptivePortal()I
    .locals 15

    .prologue
    .line 977
    iget-boolean v3, p0, Lcom/android/server/connectivity/NetworkMonitor;->mIsCaptivePortalCheckEnabled:Z

    if-nez v3, :cond_1

    const/16 v11, 0xcc

    .line 1064
    :cond_0
    :goto_0
    return v11

    .line 979
    :cond_1
    const/4 v14, 0x0

    .line 980
    .local v14, "urlConnection":Ljava/net/HttpURLConnection;
    const/16 v11, 0x257

    .line 982
    .local v11, "httpResponseCode":I
    :try_start_0
    new-instance v13, Ljava/net/URL;

    const-string v3, "http"

    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor;->mServer:Ljava/lang/String;

    const-string v5, "/generate_204"

    invoke-direct {v13, v3, v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 999
    .local v13, "url":Ljava/net/URL;
    const/4 v10, 0x0

    .line 1001
    .local v10, "fetchPac":Z
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v3, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v3}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v12

    .line 1002
    .local v12, "proxyInfo":Landroid/net/ProxyInfo;
    if-eqz v12, :cond_2

    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v12}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1003
    new-instance v13, Ljava/net/URL;

    .end local v13    # "url":Ljava/net/URL;
    invoke-virtual {v12}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v13, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1004
    .restart local v13    # "url":Ljava/net/URL;
    const/4 v10, 0x1

    .line 1008
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Checking "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v4, v4, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    .line 1011
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v3, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    invoke-virtual {v3, v13}, Landroid/net/Network;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v14, v0

    .line 1012
    invoke-virtual {v14, v10}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 1013
    const/16 v3, 0x2710

    invoke-virtual {v14, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 1014
    const/16 v3, 0x2710

    invoke-virtual {v14, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 1015
    const/4 v3, 0x0

    invoke-virtual {v14, v3}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 1018
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 1020
    .local v6, "requestTimestamp":J
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    .line 1023
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 1025
    .local v8, "responseTimestamp":J
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v11

    .line 1027
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isCaptivePortal: ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " headers="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    .line 1041
    const/16 v3, 0xc8

    if-ne v11, v3, :cond_3

    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v3

    if-nez v3, :cond_3

    .line 1042
    const-string v3, "Empty 200 response interpreted as 204 response."

    invoke-virtual {p0, v3}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    .line 1043
    const/16 v11, 0xcc

    .line 1046
    :cond_3
    const/16 v3, 0xc8

    if-ne v11, v3, :cond_4

    if-eqz v10, :cond_4

    .line 1047
    const-string v3, "PAC fetch 200 response interpreted as 204 response."

    invoke-virtual {p0, v3}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    .line 1048
    const/16 v11, 0xcc

    .line 1051
    :cond_4
    const/4 v4, 0x1

    const/16 v3, 0xcc

    if-eq v11, v3, :cond_5

    const/4 v5, 0x1

    :goto_1
    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/server/connectivity/NetworkMonitor;->sendNetworkConditionsBroadcast(ZZJJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1060
    if-eqz v14, :cond_0

    .line 1061
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    .line 1051
    :cond_5
    const/4 v5, 0x0

    goto :goto_1

    .line 1054
    .end local v6    # "requestTimestamp":J
    .end local v8    # "responseTimestamp":J
    .end local v10    # "fetchPac":Z
    .end local v12    # "proxyInfo":Landroid/net/ProxyInfo;
    .end local v13    # "url":Ljava/net/URL;
    :catch_0
    move-exception v2

    .line 1055
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Probably not a portal: exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1056
    const/16 v3, 0x257

    if-ne v11, v3, :cond_6

    .line 1060
    :cond_6
    if-eqz v14, :cond_0

    .line 1061
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    .line 1060
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    if-eqz v14, :cond_7

    .line 1061
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_7
    throw v3
.end method

.method private isCaptivePortalEx()I
    .locals 21

    .prologue
    .line 1803
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/connectivity/NetworkMonitor;->mIsCaptivePortalCheckEnabled:Z

    if-nez v3, :cond_1

    .line 1804
    const/16 v14, 0xcc

    .line 1927
    :cond_0
    :goto_0
    return v14

    .line 1806
    :cond_1
    const/16 v20, 0x0

    .line 1807
    .local v20, "urlConnection":Ljava/net/HttpURLConnection;
    const/16 v14, 0x257

    .line 1809
    .local v14, "httpResponseCode":I
    const/16 v16, 0x0

    .line 1813
    .local v16, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v19, Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/connectivity/NetworkMonitor;->mServer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1816
    .local v19, "url":Ljava/net/URL;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Checking "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v19 .. v19}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v4, v4, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    .line 1818
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v3, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/net/Network;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object/from16 v20, v0

    .line 1819
    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 1820
    const/16 v3, 0x2710

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 1821
    const/16 v3, 0x2710

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 1822
    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 1825
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 1830
    .local v6, "requestTimestamp":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 1832
    .local v8, "responseTimestamp":J
    invoke-virtual/range {v20 .. v20}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v14

    .line 1835
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isCaptivePortalEx: ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " headers="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v20 .. v20}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    .line 1848
    const/16 v3, 0xc8

    if-ne v14, v3, :cond_4

    invoke-virtual/range {v20 .. v20}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v3

    if-nez v3, :cond_4

    .line 1851
    const-string v3, "Empty 200 response interpreted as 204 response."

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    .line 1852
    const/16 v14, 0xcc

    .line 1898
    :cond_2
    :goto_1
    const/4 v4, 0x1

    const/16 v3, 0xcc

    if-ne v14, v3, :cond_8

    const/4 v5, 0x1

    :goto_2
    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/server/connectivity/NetworkMonitor;->sendNetworkConditionsBroadcast(ZZJJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1910
    if-eqz v16, :cond_3

    .line 1914
    :try_start_1
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1921
    :cond_3
    :goto_3
    if-eqz v20, :cond_0

    .line 1923
    invoke-virtual/range {v20 .. v20}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    .line 1854
    :cond_4
    const/16 v3, 0xc8

    if-ne v14, v3, :cond_2

    .line 1856
    :try_start_2
    new-instance v17, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual/range {v20 .. v20}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1857
    .end local v16    # "reader":Ljava/io/BufferedReader;
    .local v17, "reader":Ljava/io/BufferedReader;
    if-eqz v17, :cond_d

    .line 1859
    const/4 v15, 0x0

    .line 1860
    .local v15, "line":Ljava/lang/String;
    :cond_5
    :goto_4
    :try_start_3
    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_d

    .line 1862
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isCaptivePortalEx, line: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    .line 1864
    const/16 v18, 0x0

    .local v18, "title":Ljava/lang/String;
    const/4 v10, 0x0

    .line 1865
    .local v10, "body":Ljava/lang/String;
    const/4 v2, -0x1

    .local v2, "begin":I
    const/4 v13, -0x1

    .line 1867
    .local v13, "end":I
    const-string v3, "<TITLE>"

    invoke-virtual {v15, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 1868
    const-string v3, "</TITLE>"

    invoke-virtual {v15, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    .line 1870
    const/4 v3, -0x1

    if-eq v2, v3, :cond_6

    const/4 v3, -0x1

    if-eq v13, v3, :cond_6

    if-le v13, v2, :cond_6

    .line 1874
    const-string v3, "<TITLE>"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v15, v3, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    .line 1877
    :cond_6
    const-string v3, "<BODY>"

    invoke-virtual {v15, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 1878
    const-string v3, "</BODY>"

    invoke-virtual {v15, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    .line 1880
    const/4 v3, -0x1

    if-eq v2, v3, :cond_7

    const/4 v3, -0x1

    if-eq v13, v3, :cond_7

    if-le v13, v2, :cond_7

    .line 1884
    const-string v3, "<BODY>"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v15, v3, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 1887
    :cond_7
    if-eqz v18, :cond_5

    const-string v3, "SUCCESS"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz v10, :cond_5

    const-string v3, "SUCCESS"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v3

    if-eqz v3, :cond_5

    .line 1892
    const/16 v14, 0xcc

    goto :goto_4

    .line 1898
    .end local v2    # "begin":I
    .end local v10    # "body":Ljava/lang/String;
    .end local v13    # "end":I
    .end local v15    # "line":Ljava/lang/String;
    .end local v17    # "reader":Ljava/io/BufferedReader;
    .end local v18    # "title":Ljava/lang/String;
    .restart local v16    # "reader":Ljava/io/BufferedReader;
    :cond_8
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 1915
    :catch_0
    move-exception v12

    .line 1917
    .local v12, "e2":Ljava/io/IOException;
    const-string v3, "NetworkMonitor"

    const-string v4, "isCaptivePortalEx, IOException occured when close BufferReader"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1899
    .end local v6    # "requestTimestamp":J
    .end local v8    # "responseTimestamp":J
    .end local v12    # "e2":Ljava/io/IOException;
    .end local v19    # "url":Ljava/net/URL;
    :catch_1
    move-exception v11

    .line 1902
    .local v11, "e":Ljava/io/IOException;
    :goto_5
    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Probably not a portal: exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1904
    const/16 v3, 0x257

    if-ne v14, v3, :cond_9

    .line 1910
    :cond_9
    if-eqz v16, :cond_a

    .line 1914
    :try_start_5
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 1921
    :cond_a
    :goto_6
    if-eqz v20, :cond_0

    .line 1923
    invoke-virtual/range {v20 .. v20}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    .line 1915
    :catch_2
    move-exception v12

    .line 1917
    .restart local v12    # "e2":Ljava/io/IOException;
    const-string v3, "NetworkMonitor"

    const-string v4, "isCaptivePortalEx, IOException occured when close BufferReader"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1910
    .end local v11    # "e":Ljava/io/IOException;
    .end local v12    # "e2":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_7
    if-eqz v16, :cond_b

    .line 1914
    :try_start_6
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 1921
    :cond_b
    :goto_8
    if-eqz v20, :cond_c

    .line 1923
    invoke-virtual/range {v20 .. v20}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_c
    throw v3

    .line 1915
    :catch_3
    move-exception v12

    .line 1917
    .restart local v12    # "e2":Ljava/io/IOException;
    const-string v4, "NetworkMonitor"

    const-string v5, "isCaptivePortalEx, IOException occured when close BufferReader"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 1910
    .end local v12    # "e2":Ljava/io/IOException;
    .end local v16    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "requestTimestamp":J
    .restart local v8    # "responseTimestamp":J
    .restart local v15    # "line":Ljava/lang/String;
    .restart local v17    # "reader":Ljava/io/BufferedReader;
    .restart local v19    # "url":Ljava/net/URL;
    :catchall_1
    move-exception v3

    move-object/from16 v16, v17

    .end local v17    # "reader":Ljava/io/BufferedReader;
    .restart local v16    # "reader":Ljava/io/BufferedReader;
    goto :goto_7

    .line 1899
    .end local v16    # "reader":Ljava/io/BufferedReader;
    .restart local v17    # "reader":Ljava/io/BufferedReader;
    :catch_4
    move-exception v11

    move-object/from16 v16, v17

    .end local v17    # "reader":Ljava/io/BufferedReader;
    .restart local v16    # "reader":Ljava/io/BufferedReader;
    goto :goto_5

    .end local v15    # "line":Ljava/lang/String;
    .end local v16    # "reader":Ljava/io/BufferedReader;
    .restart local v17    # "reader":Ljava/io/BufferedReader;
    :cond_d
    move-object/from16 v16, v17

    .end local v17    # "reader":Ljava/io/BufferedReader;
    .restart local v16    # "reader":Ljava/io/BufferedReader;
    goto/16 :goto_1
.end method

.method private isInvalidNetwork()Z
    .locals 5

    .prologue
    .line 1733
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/android/server/connectivity/NetworkMonitor;->HOST_LIST:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 1735
    sget-object v2, Lcom/android/server/connectivity/NetworkMonitor;->HOST_LIST:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-direct {p0, v2}, Lcom/android/server/connectivity/NetworkMonitor;->lookupHost(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 1737
    .local v1, "server":Ljava/net/InetAddress;
    if-eqz v1, :cond_0

    .line 1739
    const-string v2, "NetworkMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isInvalidNetwork, Host: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/server/connectivity/NetworkMonitor;->HOST_LIST:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", IP: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1740
    const/4 v2, 0x0

    .line 1746
    .end local v1    # "server":Ljava/net/InetAddress;
    :goto_1
    return v2

    .line 1733
    .restart local v1    # "server":Ljava/net/InetAddress;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1744
    .end local v1    # "server":Ljava/net/InetAddress;
    :cond_1
    const-string v2, "NetworkMonitor"

    const-string v3, "isInvalidNetwork, current WLAN network is INVALID"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1746
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private isInvalidNetworkEx()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1751
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/android/server/connectivity/NetworkMonitor;->HOST_LIST:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 1753
    sget-object v2, Lcom/android/server/connectivity/NetworkMonitor;->HOST_LIST:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-direct {p0, v2}, Lcom/android/server/connectivity/NetworkMonitor;->lookupHost(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 1755
    .local v1, "server":Ljava/net/InetAddress;
    if-eqz v1, :cond_0

    .line 1757
    const-string v2, "NetworkMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isInvalidNetworkEx, Host: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/server/connectivity/NetworkMonitor;->HOST_LIST:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", IP: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1758
    sget-object v2, Lcom/android/server/connectivity/NetworkMonitor;->HOST_LIST:[Ljava/lang/String;

    aget-object v2, v2, v0

    .line 1764
    .end local v1    # "server":Ljava/net/InetAddress;
    :goto_1
    return-object v2

    .line 1751
    .restart local v1    # "server":Ljava/net/InetAddress;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1762
    .end local v1    # "server":Ljava/net/InetAddress;
    :cond_1
    const-string v2, "NetworkMonitor"

    const-string v3, "isInvalidNetworkEx, current WLAN network is INVALID"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1764
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private lookupHost(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 10
    .param p1, "hostname"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 1154
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "lookupHost, hostName: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    .line 1155
    iget-object v7, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v7, v7, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v7, v7, Landroid/net/Network;->netId:I

    invoke-static {p1, v7}, Ljava/net/InetAddress;->getAllByNameOnNet(Ljava/lang/String;I)[Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1162
    .local v4, "inetAddress":[Ljava/net/InetAddress;
    const-string v7, "lookupHost success"

    invoke-virtual {p0, v7}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    .line 1164
    move-object v1, v4

    .local v1, "arr$":[Ljava/net/InetAddress;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v0, v1, v3

    .line 1165
    .local v0, "a":Ljava/net/InetAddress;
    instance-of v7, v0, Ljava/net/Inet4Address;

    if-eqz v7, :cond_0

    .line 1169
    .end local v0    # "a":Ljava/net/InetAddress;
    .end local v1    # "arr$":[Ljava/net/InetAddress;
    .end local v3    # "i$":I
    .end local v4    # "inetAddress":[Ljava/net/InetAddress;
    .end local v5    # "len$":I
    :goto_1
    return-object v0

    .line 1156
    :catch_0
    move-exception v2

    .line 1157
    .local v2, "e":Ljava/net/UnknownHostException;
    const-string v7, "lookupHost, UnknownHostException"

    invoke-virtual {p0, v7}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    .line 1158
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-direct {p0, v8, v9}, Lcom/android/server/connectivity/NetworkMonitor;->sendFailedCaptivePortalCheckBroadcast(J)V

    move-object v0, v6

    .line 1159
    goto :goto_1

    .line 1164
    .end local v2    # "e":Ljava/net/UnknownHostException;
    .restart local v0    # "a":Ljava/net/InetAddress;
    .restart local v1    # "arr$":[Ljava/net/InetAddress;
    .restart local v3    # "i$":I
    .restart local v4    # "inetAddress":[Ljava/net/InetAddress;
    .restart local v5    # "len$":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1168
    .end local v0    # "a":Ljava/net/InetAddress;
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-direct {p0, v8, v9}, Lcom/android/server/connectivity/NetworkMonitor;->sendFailedCaptivePortalCheckBroadcast(J)V

    move-object v0, v6

    .line 1169
    goto :goto_1
.end method

.method private sendFailedCaptivePortalCheckBroadcast(J)V
    .locals 9
    .param p1, "requestTimestampMs"    # J

    .prologue
    const/4 v2, 0x0

    .line 1173
    const-wide/16 v6, 0x0

    move-object v1, p0

    move v3, v2

    move-wide v4, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/connectivity/NetworkMonitor;->sendNetworkConditionsBroadcast(ZZJJ)V

    .line 1175
    return-void
.end method

.method private sendNetworkConditionsBroadcast(ZZJJ)V
    .locals 13
    .param p1, "responseReceived"    # Z
    .param p2, "isCaptivePortal"    # Z
    .param p3, "requestTimestampMs"    # J
    .param p5, "responseTimestampMs"    # J

    .prologue
    .line 1076
    iget-object v9, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "wifi_scan_always_enabled"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-nez v9, :cond_1

    .line 1078
    const-string v9, "Don\'t send network conditions - lacking user consent."

    invoke-virtual {p0, v9}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    .line 1148
    :cond_0
    :goto_0
    return-void

    .line 1082
    :cond_1
    iget-boolean v9, p0, Lcom/android/server/connectivity/NetworkMonitor;->systemReady:Z

    if-eqz v9, :cond_0

    .line 1084
    new-instance v7, Landroid/content/Intent;

    const-string v9, "android.net.conn.NETWORK_CONDITIONS_MEASURED"

    invoke-direct {v7, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1085
    .local v7, "latencyBroadcast":Landroid/content/Intent;
    iget-object v9, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v9, v9, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getType()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    goto :goto_0

    .line 1104
    :pswitch_0
    const-string v9, "extra_network_type"

    iget-object v10, p0, Lcom/android/server/connectivity/NetworkMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v10

    invoke-virtual {v7, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1105
    iget-object v9, p0, Lcom/android/server/connectivity/NetworkMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v6

    .line 1106
    .local v6, "info":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    if-eqz v6, :cond_0

    .line 1107
    const/4 v8, 0x0

    .line 1108
    .local v8, "numRegisteredCellInfo":I
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/CellInfo;

    .line 1109
    .local v3, "cellInfo":Landroid/telephony/CellInfo;
    invoke-virtual {v3}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1110
    add-int/lit8 v8, v8, 0x1

    .line 1111
    const/4 v9, 0x1

    if-le v8, v9, :cond_6

    .line 1112
    const-string v9, "more than one registered CellInfo.  Can\'t tell which is active.  Bailing."

    invoke-virtual {p0, v9}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1087
    .end local v3    # "cellInfo":Landroid/telephony/CellInfo;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "info":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    .end local v8    # "numRegisteredCellInfo":I
    :pswitch_1
    iget-object v9, p0, Lcom/android/server/connectivity/NetworkMonitor;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    .line 1088
    .local v4, "currentWifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v4, :cond_5

    .line 1096
    const-string v9, "extra_ssid"

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1097
    const-string v9, "extra_bssid"

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1138
    .end local v4    # "currentWifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_3
    const-string v9, "extra_connectivity_type"

    iget-object v10, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v10, v10, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v10}, Landroid/net/NetworkInfo;->getType()I

    move-result v10

    invoke-virtual {v7, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1139
    const-string v9, "extra_response_received"

    invoke-virtual {v7, v9, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1140
    const-string v9, "extra_request_timestamp_ms"

    move-wide/from16 v0, p3

    invoke-virtual {v7, v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1142
    if-eqz p1, :cond_4

    .line 1143
    const-string v9, "extra_is_captive_portal"

    invoke-virtual {v7, v9, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1144
    const-string v9, "extra_response_timestamp_ms"

    move-wide/from16 v0, p5

    invoke-virtual {v7, v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1146
    :cond_4
    iget-object v9, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    sget-object v10, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v11, "android.permission.ACCESS_NETWORK_CONDITIONS"

    invoke-virtual {v9, v7, v10, v11}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1099
    .restart local v4    # "currentWifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_5
    const-string v9, "network info is TYPE_WIFI but no ConnectionInfo found"

    invoke-virtual {p0, v9}, Lcom/android/server/connectivity/NetworkMonitor;->logw(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1116
    .end local v4    # "currentWifiInfo":Landroid/net/wifi/WifiInfo;
    .restart local v3    # "cellInfo":Landroid/telephony/CellInfo;
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v6    # "info":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    .restart local v8    # "numRegisteredCellInfo":I
    :cond_6
    instance-of v9, v3, Landroid/telephony/CellInfoCdma;

    if-eqz v9, :cond_7

    .line 1117
    check-cast v3, Landroid/telephony/CellInfoCdma;

    .end local v3    # "cellInfo":Landroid/telephony/CellInfo;
    invoke-virtual {v3}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object v2

    .line 1118
    .local v2, "cellId":Landroid/telephony/CellIdentityCdma;
    const-string v9, "extra_cellid"

    invoke-virtual {v7, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_1

    .line 1119
    .end local v2    # "cellId":Landroid/telephony/CellIdentityCdma;
    .restart local v3    # "cellInfo":Landroid/telephony/CellInfo;
    :cond_7
    instance-of v9, v3, Landroid/telephony/CellInfoGsm;

    if-eqz v9, :cond_8

    .line 1120
    check-cast v3, Landroid/telephony/CellInfoGsm;

    .end local v3    # "cellInfo":Landroid/telephony/CellInfo;
    invoke-virtual {v3}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v2

    .line 1121
    .local v2, "cellId":Landroid/telephony/CellIdentityGsm;
    const-string v9, "extra_cellid"

    invoke-virtual {v7, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 1122
    .end local v2    # "cellId":Landroid/telephony/CellIdentityGsm;
    .restart local v3    # "cellInfo":Landroid/telephony/CellInfo;
    :cond_8
    instance-of v9, v3, Landroid/telephony/CellInfoLte;

    if-eqz v9, :cond_9

    .line 1123
    check-cast v3, Landroid/telephony/CellInfoLte;

    .end local v3    # "cellInfo":Landroid/telephony/CellInfo;
    invoke-virtual {v3}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v2

    .line 1124
    .local v2, "cellId":Landroid/telephony/CellIdentityLte;
    const-string v9, "extra_cellid"

    invoke-virtual {v7, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 1125
    .end local v2    # "cellId":Landroid/telephony/CellIdentityLte;
    .restart local v3    # "cellInfo":Landroid/telephony/CellInfo;
    :cond_9
    instance-of v9, v3, Landroid/telephony/CellInfoWcdma;

    if-eqz v9, :cond_a

    .line 1126
    check-cast v3, Landroid/telephony/CellInfoWcdma;

    .end local v3    # "cellInfo":Landroid/telephony/CellInfo;
    invoke-virtual {v3}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v2

    .line 1127
    .local v2, "cellId":Landroid/telephony/CellIdentityWcdma;
    const-string v9, "extra_cellid"

    invoke-virtual {v7, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 1129
    .end local v2    # "cellId":Landroid/telephony/CellIdentityWcdma;
    .restart local v3    # "cellInfo":Landroid/telephony/CellInfo;
    :cond_a
    const-string v9, "Registered cellinfo is unrecognized"

    invoke-virtual {p0, v9}, Lcom/android/server/connectivity/NetworkMonitor;->logw(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1085
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setProvNotificationVisibleIntent(ZZILandroid/app/PendingIntent;)V
    .locals 10
    .param p1, "visible"    # Z
    .param p2, "isCaptiveProtal"    # Z
    .param p3, "id"    # I
    .param p4, "intent"    # Landroid/app/PendingIntent;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1178
    iget-object v6, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    const-string v7, "notification"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 1180
    .local v2, "notificationManager":Landroid/app/NotificationManager;
    if-eqz p1, :cond_1

    .line 1183
    new-instance v6, Landroid/app/Notification$Builder;

    iget-object v7, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x1080652

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v6

    const-string v7, "sys"

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 1192
    .local v1, "notificationBuilder":Landroid/app/Notification$Builder;
    invoke-virtual {v1, p4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1193
    if-eqz p2, :cond_0

    .line 1194
    iget-object v6, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x9090049

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1196
    .local v5, "title":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x909004a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1204
    .local v4, "summary":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1205
    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1206
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 1208
    .local v0, "n":Landroid/app/Notification;
    :try_start_0
    const-string v6, "CaptivePortal.Notification"

    invoke-virtual {v2, v6, p3, v0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1221
    .end local v0    # "n":Landroid/app/Notification;
    .end local v1    # "notificationBuilder":Landroid/app/Notification$Builder;
    .end local v4    # "summary":Ljava/lang/String;
    .end local v5    # "title":Ljava/lang/String;
    :goto_1
    return-void

    .line 1199
    .restart local v1    # "notificationBuilder":Landroid/app/Notification$Builder;
    :cond_0
    iget-object v6, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x909004c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1201
    .restart local v5    # "title":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x909004d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "summary":Ljava/lang/String;
    goto :goto_0

    .line 1209
    .restart local v0    # "n":Landroid/app/Notification;
    :catch_0
    move-exception v3

    .line 1210
    .local v3, "npe":Ljava/lang/NullPointerException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setNotificaitionVisible: visible notificationManager npe="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/connectivity/NetworkMonitor;->loge(Ljava/lang/String;)V

    .line 1211
    invoke-virtual {v3}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    .line 1215
    .end local v0    # "n":Landroid/app/Notification;
    .end local v1    # "notificationBuilder":Landroid/app/Notification$Builder;
    .end local v3    # "npe":Ljava/lang/NullPointerException;
    .end local v4    # "summary":Ljava/lang/String;
    .end local v5    # "title":Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v6, "CaptivePortal.Notification"

    invoke-virtual {v2, v6, p3}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1216
    :catch_1
    move-exception v3

    .line 1217
    .restart local v3    # "npe":Ljava/lang/NullPointerException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setNotificaitionVisible: cancel notificationManager npe="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/connectivity/NetworkMonitor;->loge(Ljava/lang/String;)V

    .line 1218
    invoke-virtual {v3}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method protected log(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkMonitor/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    return-void
.end method
