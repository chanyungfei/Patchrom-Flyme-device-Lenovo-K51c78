.class public Lcom/android/server/am/AppPcService;
.super Lcom/android/internal/app/IAppPcService$Stub;
.source "AppPcService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/AppPcService$AppPcServiceResources;,
        Lcom/android/server/am/AppPcService$FirewallRule;,
        Lcom/android/server/am/AppPcService$FirewallRuleSet;,
        Lcom/android/server/am/AppPcService$NetworkBlockSocketServer;,
        Lcom/android/server/am/AppPcService$SendOrderedBroadcastAsUserParam;,
        Lcom/android/server/am/AppPcService$PermCheck;,
        Lcom/android/server/am/AppPcService$PermControlService;,
        Lcom/android/server/am/AppPcService$LongDistancePrefix;,
        Lcom/android/server/am/AppPcService$PmInstallApkMsg;
    }
.end annotation


# static fields
.field private static final ACCESS_COARSE_LOCATION:I = 0x0

.field private static final ACCESS_FINE_LOCATION:I = 0x1

.field private static final ACCESS_NETWORK_STATE:I = 0x9

.field private static final ACCESS_WIFI_STATE:I = 0x8

.field private static final ACTION_APPWIDGET:Ljava/lang/String; = "android.appwidget.action"

.field private static final ACTION_TELEPHONY:Ljava/lang/String; = "android.provider.Telephony"

.field private static final APPPCSERVICE_VERSION:Ljava/lang/String; = "201508131751"

.field private static final APP_LOCK:I = 0x17

.field private static final AUTO_BOOT:I = 0x15

.field private static final BLACKNUM_NUMBER:Ljava/lang/String; = "number"

.field private static final BLACKNUM_TYPE:Ljava/lang/String; = "type"

.field private static final BLACKNUM_TYPE_AD:I = 0x1

.field private static final BLACKNUM_TYPE_BLACKLIST:I = -0x2

.field private static final BLACKNUM_TYPE_CUSTOM:I = -0x1

.field private static final BLACKNUM_TYPE_EXPRESS:I = 0x4

.field private static final BLACKNUM_TYPE_FRAUD:I = 0x3

.field private static final BLACKNUM_TYPE_HARASSMENT:I = 0x2

.field private static final BLACKNUM_TYPE_INSURANCE_FINANCE:I = 0x7

.field private static final BLACKNUM_TYPE_NORMAL:I = 0x0

.field private static final BLACKNUM_TYPE_REALTOR:I = 0x6

.field private static final BLACKNUM_TYPE_TAKEOUT:I = 0x5

.field private static final BLOCKED_CALL_LOG_URI:Landroid/net/Uri;

.field private static final BLUETOOTH:I = 0xb

.field private static final BLUETOOTH_ADMIN:I = 0xa

.field private static final CALL_PHONE:I = 0xc

.field private static final CAMERA:I = 0x13

.field public static final DEBUG:Z

.field private static final E2E_SYSTEM_URI:Landroid/net/Uri;

.field private static final E2E_SYSTEM_URI_STRING:Ljava/lang/String; = "content://com.lenovo.lsf.bwprovider/sys_annoy_block"

.field private static final E2E_URI:Landroid/net/Uri;

.field private static final E2E_URI_STRING:Ljava/lang/String; = "content://com.lenovo.lsf.bwprovider/usr_annoy_block"

.field private static final EXTRA_SECURITY_BUNDLE:Ljava/lang/String; = "security_bundle"

.field private static final EXTRA_SECURITY_COMPONENTANME:Ljava/lang/String; = "security_componentname"

.field private static final EXTRA_SECURITY_FLAGS:Ljava/lang/String; = "security_flags"

.field private static final EXTRA_SECURITY_PACKAGE:Ljava/lang/String; = "security_package"

.field private static final EXTRA_SECURITY_TASK:Ljava/lang/String; = "security_task"

.field private static final HARASS_CALL_CHECK_URI:Landroid/net/Uri;

.field private static final HARASS_CALL_CHECK_URI_STRING:Ljava/lang/String; = "content://com.lenovo.security.harassintercept.HarassCallCheckProvider"

.field public static final INCOMING_TYPE:I = 0x1

.field private static final INSTRUCTION_SMS_LENGTH:I = 0x9

.field private static final INSTRUCTION_SMS_PASSWORD_LENGTH:I = 0x6

.field private static final KEY_ACCOUNT_COMP_NAME:Ljava/lang/String; = "account_comp_name"

.field private static final KEY_ACCOUNT_ID:Ljava/lang/String; = "account_id"

.field private static final KEY_DATE:Ljava/lang/String; = "date"

.field private static final KEY_FEATURES:Ljava/lang/String; = "features"

.field private static final KEY_NUMBER:Ljava/lang/String; = "number"

.field private static final MSG_BASE:I = 0x1

.field private static final MSG_PM_INSTALL_APK:I = 0x9

.field private static final MSG_SEND_ORDERED_BROADCAST_AS_USER:I = 0x7

.field private static final MSG_SET_APPLICATION_ENABLED_SETTING:I = 0x3

.field private static final MSG_SET_NOTIFICATIONS_ENABLED_FOR_PACKAGE:I = 0x4

.field private static final MSG_SET_UID_POLICY:I = 0x5

.field private static final MSG_SHOW_NETWORK_BLOCK_TOAST:I = 0x8

.field private static final MSG_START_ACTIVITY_FOR_RESULT:I = 0x6

.field private static final MSG_STOP_SERVICE:I = 0x2

.field private static final PRE_SECURITY_APP_LOCK:Ljava/lang/String; = "security_app_lock"

.field private static final READ_CALENDAR:I = 0x6

.field private static final READ_CALL_LOG:I = 0x4

.field private static final READ_CONTACTS:I = 0x2

.field private static final READ_SMS:I = 0xd

.field private static final RECEIVE_MMS:I = 0x11

.field private static final RECEIVE_SMS:I = 0x10

.field private static final RECEIVE_WAP_PUSH:I = 0x12

.field private static final RECORD_AUDIO:I = 0x14

.field private static final SEND_MMS:I = 0x16

.field private static final SEND_SMS:I = 0xf

.field public static final SERVICE_NAME:Ljava/lang/String; = "lenovopermission"

.field public static final TAG:Ljava/lang/String; = "Security_AppPcService"

.field private static final WRITE_CALENDAR:I = 0x7

.field private static final WRITE_CALL_LOG:I = 0x5

.field private static final WRITE_CONTACTS:I = 0x3

.field private static final WRITE_SMS:I = 0xe

.field private static sAndroidPerms:[Ljava/lang/String;

.field private static sPermissionDbCode:[I

.field private static sSecurityPkg:Ljava/lang/String;


# instance fields
.field private final CHECK_BACKGROUND_GPS_ENABLE:Z

.field private final FEATURE_HARASSMENT_INTERCEPT_ENABLE:Z

.field private final FEATURE_NEW_HARASSMENT_INTERCEPT_ENABLE:Z

.field private final HARASSMENT_INTERCEPTION_ENABLED_MIN_VER:I

.field private final IS_SECURITY_APP_EXIST:Z

.field private final NEW_HARASSMENT_INTERCEPTION_ENABLED_MIN_VER:I

.field private final RECORD_CHECK_HISTORY_ENABLE:Z

.field private final RECORD_CHECK_HISTORY_ENABLE_MIN_VER:I

.field private mAppLockInfo:Landroid/content/pm/ActivityInfo;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mLastNetworkBlockToastTimes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworkBlockSocketServer:Lcom/android/server/am/AppPcService$NetworkBlockSocketServer;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private mPermControlService:Lcom/android/server/am/AppPcService$PermControlService;

.field private sControllableSystemApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x18

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 112
    const-string v0, "eng"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "userdebug"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/android/server/am/AppPcService;->DEBUG:Z

    .line 139
    new-array v0, v4, [Ljava/lang/String;

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v3, v0, v1

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const-string v2, "android.permission.READ_CONTACTS"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "android.permission.WRITE_CONTACTS"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "android.permission.READ_CALL_LOG"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "android.permission.WRITE_CALL_LOG"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "android.permission.READ_CALENDAR"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "android.permission.WRITE_CALENDAR"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "android.permission.ACCESS_WIFI_STATE"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "android.permission.BLUETOOTH"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "android.permission.CALL_PHONE"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "android.permission.READ_SMS"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "android.permission.WRITE_SMS"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "android.permission.SEND_SMS"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "android.permission.RECEIVE_SMS"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "android.permission.RECEIVE_MMS"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "android.permission.RECEIVE_WAP_PUSH"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "android.permission.CAMERA"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "android.permission.RECORD_AUDIO"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "android.permission.RECEIVE_BOOT_COMPLETED"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "lenovo.permission.SEND_MMS"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "lenovo.permission.APP_LOCK"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/am/AppPcService;->sAndroidPerms:[Ljava/lang/String;

    .line 196
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/am/AppPcService;->sPermissionDbCode:[I

    .line 253
    const-string v0, "com.lenovo.security"

    sput-object v0, Lcom/android/server/am/AppPcService;->sSecurityPkg:Ljava/lang/String;

    .line 681
    const-string v0, "content://com.lenovo.lsf.bwprovider/usr_annoy_block"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/AppPcService;->E2E_URI:Landroid/net/Uri;

    .line 683
    const-string v0, "content://com.lenovo.lsf.bwprovider/sys_annoy_block"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/AppPcService;->E2E_SYSTEM_URI:Landroid/net/Uri;

    .line 699
    const-string v0, "content://blocked-mms-sms/block_calllog"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/AppPcService;->BLOCKED_CALL_LOG_URI:Landroid/net/Uri;

    .line 788
    const-string v0, "content://com.lenovo.security.harassintercept.HarassCallCheckProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/AppPcService;->HARASS_CALL_CHECK_URI:Landroid/net/Uri;

    return-void

    :cond_1
    move v0, v1

    .line 112
    goto/16 :goto_0

    .line 196
    :array_0
    .array-data 4
        0x0
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xe
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v9, 0x4c4db10

    const v8, 0x4c4b400

    const v7, 0x42c6ba0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 256
    invoke-direct {p0}, Lcom/android/internal/app/IAppPcService$Stub;-><init>()V

    .line 224
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/am/AppPcService;->mAppLockInfo:Landroid/content/pm/ActivityInfo;

    .line 227
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/AppPcService;->sControllableSystemApps:Ljava/util/List;

    .line 241
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/AppPcService;->mLastNetworkBlockToastTimes:Ljava/util/HashMap;

    .line 243
    iput v7, p0, Lcom/android/server/am/AppPcService;->HARASSMENT_INTERCEPTION_ENABLED_MIN_VER:I

    .line 245
    iput v9, p0, Lcom/android/server/am/AppPcService;->NEW_HARASSMENT_INTERCEPTION_ENABLED_MIN_VER:I

    .line 247
    iput v8, p0, Lcom/android/server/am/AppPcService;->RECORD_CHECK_HISTORY_ENABLE_MIN_VER:I

    .line 1027
    new-instance v3, Lcom/android/server/am/AppPcService$5;

    invoke-direct {v3, p0}, Lcom/android/server/am/AppPcService$5;-><init>(Lcom/android/server/am/AppPcService;)V

    iput-object v3, p0, Lcom/android/server/am/AppPcService;->mHandler:Landroid/os/Handler;

    .line 257
    const-string v3, "Security_AppPcService"

    const-string v6, "init AppPcService"

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iput-object p1, p0, Lcom/android/server/am/AppPcService;->mContext:Landroid/content/Context;

    .line 259
    iget-object v3, p0, Lcom/android/server/am/AppPcService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/AppPcService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 261
    :try_start_0
    new-instance v1, Landroid/content/ComponentName;

    sget-object v3, Lcom/android/server/am/AppPcService;->sSecurityPkg:Ljava/lang/String;

    const-string v6, "com.lenovo.security.applock.AppsLockActivity"

    invoke-direct {v1, v3, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    .local v1, "cn":Landroid/content/ComponentName;
    iget-object v3, p0, Lcom/android/server/am/AppPcService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v6, 0x0

    invoke-virtual {v3, v1, v6}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/AppPcService;->mAppLockInfo:Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    .end local v1    # "cn":Landroid/content/ComponentName;
    :goto_0
    new-instance v3, Lcom/android/server/am/AppPcService$1;

    invoke-direct {v3, p0}, Lcom/android/server/am/AppPcService$1;-><init>(Lcom/android/server/am/AppPcService;)V

    invoke-virtual {v3}, Lcom/android/server/am/AppPcService$1;->start()V

    .line 275
    iget-object v3, p0, Lcom/android/server/am/AppPcService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/am/AppPcService$AppPcServiceResources;->getVersionCodeFromSecurityApp(Landroid/content/Context;)I

    move-result v0

    .line 276
    .local v0, "apkVersionCode":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    move v3, v4

    :goto_1
    iput-boolean v3, p0, Lcom/android/server/am/AppPcService;->IS_SECURITY_APP_EXIST:Z

    .line 278
    if-lt v0, v7, :cond_1

    move v3, v4

    :goto_2
    iput-boolean v3, p0, Lcom/android/server/am/AppPcService;->FEATURE_HARASSMENT_INTERCEPT_ENABLE:Z

    .line 279
    if-lt v0, v9, :cond_2

    move v3, v4

    :goto_3
    iput-boolean v3, p0, Lcom/android/server/am/AppPcService;->FEATURE_NEW_HARASSMENT_INTERCEPT_ENABLE:Z

    .line 280
    if-lt v0, v8, :cond_3

    :goto_4
    iput-boolean v4, p0, Lcom/android/server/am/AppPcService;->RECORD_CHECK_HISTORY_ENABLE:Z

    .line 281
    iget-boolean v3, p0, Lcom/android/server/am/AppPcService;->RECORD_CHECK_HISTORY_ENABLE:Z

    iput-boolean v3, p0, Lcom/android/server/am/AppPcService;->CHECK_BACKGROUND_GPS_ENABLE:Z

    .line 282
    return-void

    .line 263
    .end local v0    # "apkVersionCode":I
    :catch_0
    move-exception v2

    .line 264
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "Security_AppPcService"

    const-string v6, "Bad ComponentName while traversing activity parent metadata"

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "apkVersionCode":I
    :cond_0
    move v3, v5

    .line 276
    goto :goto_1

    :cond_1
    move v3, v5

    .line 278
    goto :goto_2

    :cond_2
    move v3, v5

    .line 279
    goto :goto_3

    :cond_3
    move v4, v5

    .line 280
    goto :goto_4
.end method

.method static synthetic access$000(Lcom/android/server/am/AppPcService;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppPcService;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/server/am/AppPcService;->sControllableSystemApps:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/server/am/AppPcService;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/AppPcService;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/server/am/AppPcService;->sControllableSystemApps:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/server/am/AppPcService;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppPcService;

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/server/am/AppPcService;->getControllableSystemApps()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/android/server/am/AppPcService;->BLOCKED_CALL_LOG_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/am/AppPcService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppPcService;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/server/am/AppPcService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/am/AppPcService;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/AppPcService;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/server/am/AppPcService;->handleStopService(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/am/AppPcService;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/AppPcService;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/server/am/AppPcService;->handleSetApplicationEnabledSetting(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/am/AppPcService;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/AppPcService;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/server/am/AppPcService;->handleSetNotificationsEnabledForPackage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/am/AppPcService;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/AppPcService;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/server/am/AppPcService;->handleStartActivityForResult(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/am/AppPcService;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/AppPcService;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/server/am/AppPcService;->handleSetUidPolicy(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/am/AppPcService;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/AppPcService;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/server/am/AppPcService;->handleSendOrderedBroadcastAsUser(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/am/AppPcService;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/AppPcService;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/server/am/AppPcService;->handleShowNetworkBlockToast(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/am/AppPcService;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/AppPcService;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/server/am/AppPcService;->handlePmInstallApk(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$2500()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/android/server/am/AppPcService;->sAndroidPerms:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/am/AppPcService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppPcService;

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/android/server/am/AppPcService;->CHECK_BACKGROUND_GPS_ENABLE:Z

    return v0
.end method

.method static synthetic access$2900(Lcom/android/server/am/AppPcService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppPcService;

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/android/server/am/AppPcService;->RECORD_CHECK_HISTORY_ENABLE:Z

    return v0
.end method

.method static synthetic access$3300(Lcom/android/server/am/AppPcService;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppPcService;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/server/am/AppPcService;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$5500()[I
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/android/server/am/AppPcService;->sPermissionDbCode:[I

    return-object v0
.end method

.method static synthetic access$5600(Lcom/android/server/am/AppPcService;)Lcom/android/server/am/AppPcService$PermControlService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppPcService;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/server/am/AppPcService;->mPermControlService:Lcom/android/server/am/AppPcService$PermControlService;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/android/server/am/AppPcService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppPcService;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/server/am/AppPcService;->mLastNetworkBlockToastTimes:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/android/server/am/AppPcService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppPcService;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/server/am/AppPcService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5900()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/android/server/am/AppPcService;->sSecurityPkg:Ljava/lang/String;

    return-object v0
.end method

.method private checkPermission()Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 418
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 421
    .local v2, "uid":I
    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/AppPcService;->mPackageManager:Landroid/content/pm/PackageManager;

    sget-object v6, Lcom/android/server/am/AppPcService;->sSecurityPkg:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 422
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v5, v2, :cond_0

    .line 426
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :goto_0
    return v3

    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_0
    move v3, v4

    .line 422
    goto :goto_0

    .line 423
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 424
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move v3, v4

    .line 426
    goto :goto_0
.end method

.method private getControllableSystemApps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1061
    const-string v0, "/etc/com_lenovo_security/controllable_system_apps"

    invoke-direct {p0, v0}, Lcom/android/server/am/AppPcService;->parseFileByLines(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private handlePmInstallApk(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 650
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/am/AppPcService$PmInstallApkMsg;

    .line 654
    .local v2, "msgObjectApkMsg":Lcom/android/server/am/AppPcService$PmInstallApkMsg;
    :try_start_0
    new-instance v5, Landroid/net/LocalSocket;

    invoke-direct {v5}, Landroid/net/LocalSocket;-><init>()V

    .line 655
    .local v5, "socket":Landroid/net/LocalSocket;
    new-instance v6, Landroid/net/LocalSocketAddress;

    const-string v7, "LenovoSecurityLocalServerSocket"

    invoke-direct {v6, v7}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 657
    new-instance v3, Ljava/io/PrintWriter;

    new-instance v6, Ljava/io/BufferedWriter;

    new-instance v7, Ljava/io/OutputStreamWriter;

    invoke-virtual {v5}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    const/4 v7, 0x1

    invoke-direct {v3, v6, v7}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 660
    .local v3, "out":Ljava/io/PrintWriter;
    iget-object v6, v2, Lcom/android/server/am/AppPcService$PmInstallApkMsg;->mPath:Ljava/lang/Object;

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 662
    new-instance v1, Ljava/io/DataInputStream;

    invoke-virtual {v5}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 663
    .local v1, "input":Ljava/io/DataInputStream;
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 664
    .local v4, "read":I
    const-string v6, "Security_AppPcService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "read = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    invoke-virtual {v5}, Landroid/net/LocalSocket;->close()V

    .line 666
    iput v4, v2, Lcom/android/server/am/AppPcService$PmInstallApkMsg;->mResult:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 672
    iget-object v7, v2, Lcom/android/server/am/AppPcService$PmInstallApkMsg;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 673
    :try_start_1
    iget-object v6, v2, Lcom/android/server/am/AppPcService$PmInstallApkMsg;->mLock:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 674
    monitor-exit v7

    .line 676
    .end local v1    # "input":Ljava/io/DataInputStream;
    .end local v3    # "out":Ljava/io/PrintWriter;
    .end local v4    # "read":I
    .end local v5    # "socket":Landroid/net/LocalSocket;
    :goto_0
    return-void

    .line 674
    .restart local v1    # "input":Ljava/io/DataInputStream;
    .restart local v3    # "out":Ljava/io/PrintWriter;
    .restart local v4    # "read":I
    .restart local v5    # "socket":Landroid/net/LocalSocket;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 669
    .end local v1    # "input":Ljava/io/DataInputStream;
    .end local v3    # "out":Ljava/io/PrintWriter;
    .end local v4    # "read":I
    .end local v5    # "socket":Landroid/net/LocalSocket;
    :catch_0
    move-exception v0

    .line 670
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 672
    iget-object v7, v2, Lcom/android/server/am/AppPcService$PmInstallApkMsg;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 673
    :try_start_3
    iget-object v6, v2, Lcom/android/server/am/AppPcService$PmInstallApkMsg;->mLock:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 674
    monitor-exit v7

    goto :goto_0

    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v6

    .line 672
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_2
    move-exception v6

    iget-object v7, v2, Lcom/android/server/am/AppPcService$PmInstallApkMsg;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 673
    :try_start_4
    iget-object v8, v2, Lcom/android/server/am/AppPcService$PmInstallApkMsg;->mLock:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->notifyAll()V

    .line 674
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v6

    :catchall_3
    move-exception v6

    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v6
.end method

.method private handleSendOrderedBroadcastAsUser(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 506
    const-string v0, "Security_AppPcService"

    const-string v1, "handleSendOrderedBroadcastAsUser resultReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    :try_start_0
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Lcom/android/server/am/AppPcService$SendOrderedBroadcastAsUserParam;

    .line 510
    .local v10, "param":Lcom/android/server/am/AppPcService$SendOrderedBroadcastAsUserParam;
    new-instance v4, Lcom/android/server/am/AppPcService$3;

    invoke-direct {v4, p0, v10}, Lcom/android/server/am/AppPcService$3;-><init>(Lcom/android/server/am/AppPcService;Lcom/android/server/am/AppPcService$SendOrderedBroadcastAsUserParam;)V

    .line 525
    .local v4, "resultReceiver":Landroid/content/BroadcastReceiver;
    iget-object v0, p0, Lcom/android/server/am/AppPcService;->mContext:Landroid/content/Context;

    # getter for: Lcom/android/server/am/AppPcService$SendOrderedBroadcastAsUserParam;->mIntent:Landroid/content/Intent;
    invoke-static {v10}, Lcom/android/server/am/AppPcService$SendOrderedBroadcastAsUserParam;->access$500(Lcom/android/server/am/AppPcService$SendOrderedBroadcastAsUserParam;)Landroid/content/Intent;

    move-result-object v1

    # getter for: Lcom/android/server/am/AppPcService$SendOrderedBroadcastAsUserParam;->mUser:Landroid/os/UserHandle;
    invoke-static {v10}, Lcom/android/server/am/AppPcService$SendOrderedBroadcastAsUserParam;->access$600(Lcom/android/server/am/AppPcService$SendOrderedBroadcastAsUserParam;)Landroid/os/UserHandle;

    move-result-object v2

    # getter for: Lcom/android/server/am/AppPcService$SendOrderedBroadcastAsUserParam;->mReceiverPermission:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/server/am/AppPcService$SendOrderedBroadcastAsUserParam;->access$700(Lcom/android/server/am/AppPcService$SendOrderedBroadcastAsUserParam;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    # getter for: Lcom/android/server/am/AppPcService$SendOrderedBroadcastAsUserParam;->mInitialCode:I
    invoke-static {v10}, Lcom/android/server/am/AppPcService$SendOrderedBroadcastAsUserParam;->access$800(Lcom/android/server/am/AppPcService$SendOrderedBroadcastAsUserParam;)I

    move-result v6

    # getter for: Lcom/android/server/am/AppPcService$SendOrderedBroadcastAsUserParam;->mInitialData:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/server/am/AppPcService$SendOrderedBroadcastAsUserParam;->access$900(Lcom/android/server/am/AppPcService$SendOrderedBroadcastAsUserParam;)Ljava/lang/String;

    move-result-object v7

    # getter for: Lcom/android/server/am/AppPcService$SendOrderedBroadcastAsUserParam;->mInitialExtras:Landroid/os/Bundle;
    invoke-static {v10}, Lcom/android/server/am/AppPcService$SendOrderedBroadcastAsUserParam;->access$1000(Lcom/android/server/am/AppPcService$SendOrderedBroadcastAsUserParam;)Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 531
    .end local v4    # "resultReceiver":Landroid/content/BroadcastReceiver;
    .end local v10    # "param":Lcom/android/server/am/AppPcService$SendOrderedBroadcastAsUserParam;
    :goto_0
    return-void

    .line 528
    :catch_0
    move-exception v9

    .line 529
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private handleSetApplicationEnabledSetting(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 460
    :try_start_0
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 461
    .local v3, "packageName":Ljava/lang/String;
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 462
    .local v2, "newState":I
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 463
    .local v1, "flags":I
    iget-object v4, p0, Lcom/android/server/am/AppPcService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v3, v2, v1}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 467
    .end local v1    # "flags":I
    .end local v2    # "newState":I
    .end local v3    # "packageName":Ljava/lang/String;
    :goto_0
    return-void

    .line 464
    :catch_0
    move-exception v0

    .line 465
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private handleSetNotificationsEnabledForPackage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 543
    :try_start_0
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 544
    .local v3, "pkg":Ljava/lang/String;
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 545
    .local v4, "uid":I
    iget v5, p1, Landroid/os/Message;->arg2:I

    if-ne v5, v1, :cond_0

    .line 546
    .local v1, "enabled":Z
    :goto_0
    const-string v5, "notification"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v2

    .line 548
    .local v2, "nm":Landroid/app/INotificationManager;
    invoke-interface {v2, v3, v4, v1}, Landroid/app/INotificationManager;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 552
    .end local v1    # "enabled":Z
    .end local v2    # "nm":Landroid/app/INotificationManager;
    .end local v3    # "pkg":Ljava/lang/String;
    .end local v4    # "uid":I
    :goto_1
    return-void

    .line 545
    .restart local v3    # "pkg":Ljava/lang/String;
    .restart local v4    # "uid":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 549
    .end local v3    # "pkg":Ljava/lang/String;
    .end local v4    # "uid":I
    :catch_0
    move-exception v0

    .line 550
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private handleSetUidPolicy(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 564
    :try_start_0
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 565
    .local v3, "uid":I
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 566
    .local v2, "policy":I
    iget-object v4, p0, Lcom/android/server/am/AppPcService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v1

    .line 567
    .local v1, "npm":Landroid/net/NetworkPolicyManager;
    invoke-virtual {v1, v3, v2}, Landroid/net/NetworkPolicyManager;->setUidPolicy(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 571
    .end local v1    # "npm":Landroid/net/NetworkPolicyManager;
    .end local v2    # "policy":I
    .end local v3    # "uid":I
    :goto_0
    return-void

    .line 568
    :catch_0
    move-exception v0

    .line 569
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private handleShowNetworkBlockToast(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1018
    :try_start_0
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 1019
    .local v4, "pkgName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/am/AppPcService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 1020
    .local v2, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v5, p0, Lcom/android/server/am/AppPcService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1021
    .local v0, "appName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/am/AppPcService;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/android/server/am/AppPcService$AppPcServiceResources$string;->permission_block_network:Ljava/lang/String;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    invoke-static {v5, v6, v7}, Lcom/android/server/am/AppPcService$AppPcServiceResources;->getStringFromSecurityApp(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1022
    .local v3, "msgText":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/am/AppPcService;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-static {v5, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1026
    .end local v0    # "appName":Ljava/lang/String;
    .end local v2    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "msgText":Ljava/lang/String;
    .end local v4    # "pkgName":Ljava/lang/String;
    :goto_0
    return-void

    .line 1023
    :catch_0
    move-exception v1

    .line 1024
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private handleStartActivityForResult(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 583
    :try_start_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    .line 584
    .local v1, "intent":Landroid/content/Intent;
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 585
    .local v2, "requestCode":I
    iget-object v3, p0, Lcom/android/server/am/AppPcService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 589
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "requestCode":I
    :goto_0
    return-void

    .line 586
    :catch_0
    move-exception v0

    .line 587
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private handleStopService(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 443
    :try_start_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    .line 444
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/server/am/AppPcService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 448
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 445
    :catch_0
    move-exception v0

    .line 446
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private parseFileByLines(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1069
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1070
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v6

    .line 1073
    :cond_0
    const/4 v2, 0x0

    .line 1075
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1080
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .local v3, "fis":Ljava/io/FileInputStream;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1082
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_1
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1083
    .local v0, "bufReader":Ljava/io/BufferedReader;
    const-string v4, ""

    .line 1084
    .local v4, "line":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1085
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1087
    .end local v0    # "bufReader":Ljava/io/BufferedReader;
    .end local v4    # "line":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1088
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    const-string v6, "Security_AppPcService"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1091
    if-eqz v3, :cond_1

    .line 1092
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    :goto_1
    move-object v2, v3

    .line 1096
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :goto_2
    return-object v5

    .line 1076
    :catch_1
    move-exception v1

    .line 1077
    .local v1, "e":Ljava/io/FileNotFoundException;
    new-instance v5, Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_2

    .line 1091
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "bufReader":Ljava/io/BufferedReader;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v5    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    if-eqz v3, :cond_1

    .line 1092
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 1094
    :catch_2
    move-exception v6

    goto :goto_1

    .line 1090
    .end local v0    # "bufReader":Ljava/io/BufferedReader;
    .end local v4    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v6

    .line 1091
    if-eqz v3, :cond_3

    .line 1092
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 1094
    :cond_3
    :goto_3
    throw v6

    .local v1, "e":Ljava/io/IOException;
    :catch_3
    move-exception v6

    goto :goto_1

    .end local v1    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v7

    goto :goto_3
.end method

.method private toCallerIDMinMatch(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 948
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 949
    const-string v1, " "

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 950
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 951
    invoke-static {p1}, Lcom/android/server/am/AppPcService$LongDistancePrefix;->queryLongDistacePrefix(Ljava/lang/String;)I

    move-result v0

    .line 952
    .local v0, "prefix":I
    if-eqz v0, :cond_0

    .line 953
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 955
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 956
    :cond_1
    const/4 v1, 0x0

    .line 975
    :goto_0
    return-object v1

    .line 958
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2b

    if-ne v1, v2, :cond_5

    .line 960
    const-string v1, "+86"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 961
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_3
    :goto_1
    move-object v1, p1

    .line 975
    goto :goto_0

    .line 963
    :cond_4
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 964
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "00"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 966
    :cond_5
    const-string v1, "0"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 968
    const-string v1, "0086"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 969
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 971
    :cond_6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xb

    if-le v1, v2, :cond_3

    .line 973
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0xb

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1
.end method


# virtual methods
.method public addBlockedCallLog(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "features"    # I
    .param p3, "date"    # J
    .param p5, "accountComponentName"    # Ljava/lang/String;
    .param p6, "accountId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    .line 755
    iget-boolean v1, p0, Lcom/android/server/am/AppPcService;->FEATURE_HARASSMENT_INTERCEPT_ENABLE:Z

    if-nez v1, :cond_0

    .line 756
    const-string v1, "Security_AppPcService"

    const-string v2, "addBlockedCallLog(): Interception Disabled!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    :goto_0
    return-void

    .line 760
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 762
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "Security_AppPcService"

    const-string v2, "addBlockedCallLog() Enter!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    const-string v1, "number"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    const-string v1, "type"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 766
    const-string v1, "features"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 767
    cmp-long v1, v4, p3

    if-nez v1, :cond_1

    .line 768
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    .line 770
    :cond_1
    const-string v1, "date"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 771
    const-string v1, "duration"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 772
    const-string v1, "subscription_component_name"

    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    const-string v1, "subscription_id"

    invoke-virtual {v0, v1, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    const-string v1, "new"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 775
    const-string v1, "is_read"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 777
    new-instance v1, Lcom/android/server/am/AppPcService$4;

    invoke-direct {v1, p0, v0}, Lcom/android/server/am/AppPcService$4;-><init>(Lcom/android/server/am/AppPcService;Landroid/content/ContentValues;)V

    invoke-virtual {v1}, Lcom/android/server/am/AppPcService$4;->start()V

    goto :goto_0
.end method

.method public areNotificationsEnabledForPackage(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/4 v2, 0x0

    .line 592
    invoke-direct {p0}, Lcom/android/server/am/AppPcService;->checkPermission()Z

    move-result v3

    if-nez v3, :cond_1

    .line 602
    :cond_0
    :goto_0
    return v2

    .line 596
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/AppPcService;->mContext:Landroid/content/Context;

    const-string v4, "appops"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    .line 597
    .local v1, "mAppOps":Landroid/app/AppOpsManager;
    const/16 v3, 0xb

    invoke-virtual {v1, v3, p2, p1}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    .line 599
    .end local v1    # "mAppOps":Landroid/app/AppOpsManager;
    :catch_0
    move-exception v0

    .line 600
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public checkAppLock(Ljava/lang/String;IILandroid/os/Bundle;)Z
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "task"    # I
    .param p3, "flags"    # I
    .param p4, "options"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 398
    if-eqz p1, :cond_1

    iget-object v3, p0, Lcom/android/server/am/AppPcService;->mAppLockInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/am/AppPcService;->mPermControlService:Lcom/android/server/am/AppPcService$PermControlService;

    if-eqz v3, :cond_1

    .line 399
    const-string v3, "Security_AppPcService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkAppLock pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3, v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 400
    iget-object v3, p0, Lcom/android/server/am/AppPcService;->mPermControlService:Lcom/android/server/am/AppPcService$PermControlService;

    # invokes: Lcom/android/server/am/AppPcService$PermControlService;->getFirstTask()Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/am/AppPcService$PermControlService;->access$200(Lcom/android/server/am/AppPcService$PermControlService;)Ljava/lang/String;

    move-result-object v1

    .line 401
    .local v1, "topPkg":Ljava/lang/String;
    const-string v3, "Security_AppPcService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkAppLock topPkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    if-eqz v1, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/android/server/am/AppPcService;->sSecurityPkg:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 403
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/AppPcService;->mPermControlService:Lcom/android/server/am/AppPcService$PermControlService;

    const/16 v4, 0x17

    invoke-virtual {v3, v4, p1, v2, v2}, Lcom/android/server/am/AppPcService$PermControlService;->handleCheckCase(ILjava/lang/String;II)Z

    move-result v3

    if-nez v3, :cond_1

    .line 404
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 405
    .local v0, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    sget-object v3, Lcom/android/server/am/AppPcService;->sSecurityPkg:Ljava/lang/String;

    const-string v4, "com.lenovo.security.applock.AppsLockActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 406
    const-string v2, "security_package"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 407
    const-string v2, "security_task"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 408
    const-string v2, "security_flags"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 409
    const-string v2, "security_bundle"

    invoke-virtual {v0, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 410
    iget-object v2, p0, Lcom/android/server/am/AppPcService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 411
    const/4 v2, 0x1

    .line 415
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "topPkg":Ljava/lang/String;
    :cond_1
    return v2
.end method

.method public checkAutoStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callerApp"    # Ljava/lang/String;
    .param p3, "action"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0x15

    const/4 v7, 0x0

    const/4 v0, 0x1

    .line 321
    sget-boolean v4, Lcom/android/server/am/AppPcService;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 322
    const-string v4, "Security_AppPcService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkAutoStart packageName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";callerApp="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";action="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :cond_0
    iget-boolean v4, p0, Lcom/android/server/am/AppPcService;->IS_SECURITY_APP_EXIST:Z

    if-nez v4, :cond_2

    .line 360
    :cond_1
    :goto_0
    return v0

    .line 326
    :cond_2
    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    .line 327
    const-string v4, "android.appwidget.action"

    invoke-virtual {p3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 328
    const-string v4, "android.provider.Telephony"

    invoke-virtual {p3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 329
    iget-object v4, p0, Lcom/android/server/am/AppPcService;->mContext:Landroid/content/Context;

    invoke-static {v4, v7}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v1

    .line 330
    .local v1, "cName":Landroid/content/ComponentName;
    const/4 v2, 0x0

    .line 331
    .local v2, "defaultSmsPkg":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 332
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 334
    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 338
    .end local v1    # "cName":Landroid/content/ComponentName;
    .end local v2    # "defaultSmsPkg":Ljava/lang/String;
    :cond_4
    iget-object v4, p0, Lcom/android/server/am/AppPcService;->mPermControlService:Lcom/android/server/am/AppPcService$PermControlService;

    if-eqz v4, :cond_1

    .line 339
    if-eqz p2, :cond_6

    .line 340
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 341
    const-string v4, "Security_AppPcService"

    const-string v5, "checkAutoStart the callerApp is the same as the starting App"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 344
    :cond_5
    iget-object v4, p0, Lcom/android/server/am/AppPcService;->mPermControlService:Lcom/android/server/am/AppPcService$PermControlService;

    # invokes: Lcom/android/server/am/AppPcService$PermControlService;->getFirstTask()Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/am/AppPcService$PermControlService;->access$200(Lcom/android/server/am/AppPcService$PermControlService;)Ljava/lang/String;

    move-result-object v3

    .line 345
    .local v3, "topPkg":Ljava/lang/String;
    if-eqz v3, :cond_6

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 346
    const-string v4, "Security_AppPcService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkAutoStart top visible packageName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";callerApp="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";action="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    .end local v3    # "topPkg":Ljava/lang/String;
    :cond_6
    iget-object v4, p0, Lcom/android/server/am/AppPcService;->mPermControlService:Lcom/android/server/am/AppPcService$PermControlService;

    invoke-virtual {v4, v8, p1, v7, v7}, Lcom/android/server/am/AppPcService$PermControlService;->inWhiteList(ILjava/lang/String;II)Z

    move-result v4

    if-nez v4, :cond_1

    .line 352
    iget-object v4, p0, Lcom/android/server/am/AppPcService;->mPermControlService:Lcom/android/server/am/AppPcService$PermControlService;

    invoke-virtual {v4, v8, p1, v7, v7}, Lcom/android/server/am/AppPcService$PermControlService;->handleCheckCase(ILjava/lang/String;II)Z

    move-result v0

    .line 354
    .local v0, "bAutoStart":Z
    if-eqz v0, :cond_1

    .line 355
    const-string v4, "Security_AppPcService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkAutoStart granted packageName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";callerApp="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";action="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public checkIncomingCall(Landroid/content/Intent;)Z
    .locals 14
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 798
    iget-boolean v11, p0, Lcom/android/server/am/AppPcService;->FEATURE_HARASSMENT_INTERCEPT_ENABLE:Z

    if-nez v11, :cond_1

    .line 799
    const-string v11, "Security_AppPcService"

    const-string v12, "checkIncomingCall(): Interception Disabled!"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 841
    :cond_0
    :goto_0
    return v0

    .line 803
    :cond_1
    const/4 v0, 0x0

    .line 804
    .local v0, "bRet":Z
    const-string v11, "number"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 805
    .local v2, "number":Ljava/lang/String;
    const-string v11, "features"

    invoke-virtual {p1, v11, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 806
    .local v3, "features":I
    const-string v1, "date"

    const-wide/16 v12, 0x0

    invoke-virtual {p1, v1, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 807
    .local v4, "date":J
    const-string v1, "account_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 808
    .local v7, "accountId":Ljava/lang/String;
    const-string v1, "account_comp_name"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 810
    .local v6, "accountComponentName":Ljava/lang/String;
    const-string v1, "Security_AppPcService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "checkIncomingCall(): "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "|"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "|"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "|"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "|"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v1, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    iget-boolean v1, p0, Lcom/android/server/am/AppPcService;->FEATURE_NEW_HARASSMENT_INTERCEPT_ENABLE:Z

    if-eqz v1, :cond_2

    .line 814
    const/4 v9, 0x0

    .line 815
    .local v9, "uri":Landroid/net/Uri;
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 817
    .local v10, "values":Landroid/content/ContentValues;
    const-string v1, "Security_AppPcService"

    const-string v11, "checkIncomingCall(): FEATURE_NEW_HARASSMENT_INTERCEPT_ENABLE"

    invoke-static {v1, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    const-string v1, "number"

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    const-string v1, "features"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v1, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 821
    const-string v1, "date"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v1, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 822
    const-string v1, "account_comp_name"

    invoke-virtual {v10, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    const-string v1, "account_id"

    invoke-virtual {v10, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppPcService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v11, Lcom/android/server/am/AppPcService;->HARASS_CALL_CHECK_URI:Landroid/net/Uri;

    invoke-virtual {v1, v11, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 827
    if-eqz v9, :cond_0

    .line 828
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 830
    :catch_0
    move-exception v8

    .line 831
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 835
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v9    # "uri":Landroid/net/Uri;
    .end local v10    # "values":Landroid/content/ContentValues;
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/server/am/AppPcService;->isBlacklistNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, p0

    .line 836
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/AppPcService;->addBlockedCallLog(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;)V

    .line 837
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public checkMMSPushIntent(Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 6
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 882
    const/4 v0, 0x0

    .line 884
    .local v0, "bRet":Z
    iget-boolean v3, p0, Lcom/android/server/am/AppPcService;->FEATURE_HARASSMENT_INTERCEPT_ENABLE:Z

    if-nez v3, :cond_0

    .line 885
    const-string v3, "Security_AppPcService"

    const-string v4, "checkMMSPushIntent(): Interception Disabled!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 903
    .end local v0    # "bRet":Z
    .local v1, "bRet":I
    :goto_0
    return v1

    .line 889
    .end local v1    # "bRet":I
    .restart local v0    # "bRet":Z
    :cond_0
    const-string v3, "Security_AppPcService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LSC MMS Intercept: checkMMSPushIntent(): number="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppPcService;->isBlacklistNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 892
    const-string v3, "Security_AppPcService"

    const-string v4, "LSC MMS Intercept: Is blacklist number!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    new-instance v2, Landroid/content/ComponentName;

    sget-object v3, Lcom/android/server/am/AppPcService;->sSecurityPkg:Ljava/lang/String;

    const-string v4, "com.lenovo.security.harassintercept.PrivilegedBlacklistMessageReceiver"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    .local v2, "newComponentName":Landroid/content/ComponentName;
    const-string v3, "com.lenovo.ideafriend.BLACKLIST.MMS"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 896
    invoke-virtual {p2, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 898
    const/4 v0, 0x1

    .end local v2    # "newComponentName":Landroid/content/ComponentName;
    :goto_1
    move v1, v0

    .line 903
    .restart local v1    # "bRet":I
    goto :goto_0

    .line 900
    .end local v1    # "bRet":I
    :cond_1
    const-string v3, "Security_AppPcService"

    const-string v4, "LSC MMS Intercept: Is Normal number!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public checkNetworkPrompt(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Landroid/content/pm/ActivityInfo;
    .locals 9
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 365
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    iget-object v4, p0, Lcom/android/server/am/AppPcService;->mAppLockInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_1

    .line 366
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 367
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_1

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/am/AppPcService;->mPermControlService:Lcom/android/server/am/AppPcService$PermControlService;

    if-eqz v4, :cond_1

    .line 368
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    sget-object v5, Lcom/android/server/am/AppPcService;->sSecurityPkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 369
    iget-object v4, p0, Lcom/android/server/am/AppPcService;->mPermControlService:Lcom/android/server/am/AppPcService$PermControlService;

    # invokes: Lcom/android/server/am/AppPcService$PermControlService;->getFirstTask()Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/am/AppPcService$PermControlService;->access$200(Lcom/android/server/am/AppPcService$PermControlService;)Ljava/lang/String;

    move-result-object v2

    .line 370
    .local v2, "topPkg":Ljava/lang/String;
    const-string v4, "Security_AppPcService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkAppLock topPkg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    if-eqz v2, :cond_0

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 372
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 373
    .local v1, "oldUid":I
    iget-object v4, p0, Lcom/android/server/am/AppPcService;->mPermControlService:Lcom/android/server/am/AppPcService$PermControlService;

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    # invokes: Lcom/android/server/am/AppPcService$PermControlService;->getUidByPackageName(Ljava/lang/String;)Ljava/lang/Integer;
    invoke-static {v4, v5}, Lcom/android/server/am/AppPcService$PermControlService;->access$300(Lcom/android/server/am/AppPcService$PermControlService;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 374
    .local v3, "uid":Ljava/lang/Integer;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v1, :cond_2

    .line 375
    const-string v4, "Security_AppPcService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "oldUid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";uid.intValue()="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "oldUid":I
    .end local v2    # "topPkg":Ljava/lang/String;
    .end local v3    # "uid":Ljava/lang/Integer;
    .end local p1    # "aInfo":Landroid/content/pm/ActivityInfo;
    :cond_1
    :goto_0
    return-object p1

    .line 379
    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v1    # "oldUid":I
    .restart local v2    # "topPkg":Ljava/lang/String;
    .restart local v3    # "uid":Ljava/lang/Integer;
    .restart local p1    # "aInfo":Landroid/content/pm/ActivityInfo;
    :cond_2
    iget-object v4, p0, Lcom/android/server/am/AppPcService;->mPermControlService:Lcom/android/server/am/AppPcService$PermControlService;

    const/16 v5, 0x17

    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7, v7}, Lcom/android/server/am/AppPcService$PermControlService;->handleCheckCase(ILjava/lang/String;II)Z

    move-result v4

    if-nez v4, :cond_1

    .line 380
    const-string v4, "security_app_lock"

    invoke-virtual {p2, v4, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 381
    const-string v4, "Security_AppPcService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkAppLock appInfo.packageName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";aInfo.name="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    const-string v4, "security_componentname"

    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v7, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 383
    iget-object p1, p0, Lcom/android/server/am/AppPcService;->mAppLockInfo:Landroid/content/pm/ActivityInfo;

    goto :goto_0

    .line 385
    :cond_3
    const-string v4, "security_app_lock"

    invoke-virtual {p2, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0
.end method

.method public checkOperation(IIILcom/android/internal/app/IAppPcCallback;)I
    .locals 1
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "pid"    # I
    .param p4, "callback"    # Lcom/android/internal/app/IAppPcCallback;

    .prologue
    .line 305
    const/4 v0, 0x0

    return v0
.end method

.method public checkOperationAsync(ILjava/lang/String;II)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "pid"    # I

    .prologue
    .line 310
    sget-boolean v0, Lcom/android/server/am/AppPcService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 311
    const-string v0, "Security_AppPcService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkOperationAsync packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AppPcService;->mPermControlService:Lcom/android/server/am/AppPcService$PermControlService;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/am/AppPcService;->IS_SECURITY_APP_EXIST:Z

    if-eqz v0, :cond_1

    .line 313
    iget-object v0, p0, Lcom/android/server/am/AppPcService;->mPermControlService:Lcom/android/server/am/AppPcService$PermControlService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/am/AppPcService$PermControlService;->handleCheckCase(ILjava/lang/String;II)Z

    move-result v0

    .line 316
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public checkSMSIntent(Landroid/content/Intent;)Z
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 848
    const/4 v0, 0x0

    .line 850
    .local v0, "bRet":Z
    iget-boolean v6, p0, Lcom/android/server/am/AppPcService;->FEATURE_HARASSMENT_INTERCEPT_ENABLE:Z

    if-nez v6, :cond_0

    .line 851
    const-string v6, "Security_AppPcService"

    const-string v7, "checkSMSIntent(): Interception Disabled!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 876
    .end local v0    # "bRet":Z
    .local v1, "bRet":I
    :goto_0
    return v1

    .line 855
    .end local v1    # "bRet":I
    .restart local v0    # "bRet":Z
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.provider.Telephony.SMS_DELIVER"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.intent.action.MOMS_SMS_RECEIVED"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 856
    :cond_1
    invoke-static {p1}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v3

    .line 858
    .local v3, "msgs":[Landroid/telephony/SmsMessage;
    if-eqz v3, :cond_3

    .line 859
    const/4 v6, 0x0

    aget-object v2, v3, v6

    .line 860
    .local v2, "message":Landroid/telephony/SmsMessage;
    invoke-virtual {v2}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v5

    .line 861
    .local v5, "number":Ljava/lang/String;
    const-string v6, "Security_AppPcService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sms Intercept: number="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    invoke-virtual {p0, v5}, Lcom/android/server/am/AppPcService;->isBlacklistNumber(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {p0, v3}, Lcom/android/server/am/AppPcService;->isInstructionSMS([Landroid/telephony/SmsMessage;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 864
    :cond_2
    const-string v6, "Security_AppPcService"

    const-string v7, "Sms Intercept: Is blacklist number or Anti-theft Instruction!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    new-instance v4, Landroid/content/ComponentName;

    sget-object v6, Lcom/android/server/am/AppPcService;->sSecurityPkg:Ljava/lang/String;

    const-string v7, "com.lenovo.security.harassintercept.PrivilegedBlacklistMessageReceiver"

    invoke-direct {v4, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    .local v4, "newComponentName":Landroid/content/ComponentName;
    const-string v6, "com.lenovo.ideafriend.BLACKLIST.SMS"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 867
    invoke-virtual {p1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 869
    const/4 v0, 0x1

    .end local v2    # "message":Landroid/telephony/SmsMessage;
    .end local v3    # "msgs":[Landroid/telephony/SmsMessage;
    .end local v4    # "newComponentName":Landroid/content/ComponentName;
    .end local v5    # "number":Ljava/lang/String;
    :cond_3
    :goto_1
    move v1, v0

    .line 876
    .restart local v1    # "bRet":I
    goto :goto_0

    .line 871
    .end local v1    # "bRet":I
    .restart local v2    # "message":Landroid/telephony/SmsMessage;
    .restart local v3    # "msgs":[Landroid/telephony/SmsMessage;
    .restart local v5    # "number":Ljava/lang/String;
    :cond_4
    const-string v6, "Security_AppPcService"

    const-string v7, "Sms Intercept: Is Normal number!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public clearCheckHistorys(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 914
    iget-object v0, p0, Lcom/android/server/am/AppPcService;->mPermControlService:Lcom/android/server/am/AppPcService$PermControlService;

    if-eqz v0, :cond_0

    .line 915
    iget-object v0, p0, Lcom/android/server/am/AppPcService;->mPermControlService:Lcom/android/server/am/AppPcService$PermControlService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/AppPcService$PermControlService;->clearCheckHistorys(Ljava/lang/String;)V

    .line 917
    :cond_0
    return-void
.end method

.method public getCheckHistorys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 907
    iget-object v0, p0, Lcom/android/server/am/AppPcService;->mPermControlService:Lcom/android/server/am/AppPcService$PermControlService;

    if-eqz v0, :cond_0

    .line 908
    iget-object v0, p0, Lcom/android/server/am/AppPcService;->mPermControlService:Lcom/android/server/am/AppPcService$PermControlService;

    invoke-virtual {v0}, Lcom/android/server/am/AppPcService$PermControlService;->getCheckHistorys()Ljava/util/List;

    move-result-object v0

    .line 910
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public inWhiteList(ILjava/lang/String;II)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "pid"    # I

    .prologue
    .line 293
    sget-boolean v0, Lcom/android/server/am/AppPcService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 294
    const-string v0, "Security_AppPcService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inWhiteLis packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AppPcService;->mPermControlService:Lcom/android/server/am/AppPcService$PermControlService;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/am/AppPcService;->IS_SECURITY_APP_EXIST:Z

    if-eqz v0, :cond_1

    .line 296
    iget-object v0, p0, Lcom/android/server/am/AppPcService;->mPermControlService:Lcom/android/server/am/AppPcService$PermControlService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/am/AppPcService$PermControlService;->inWhiteList(ILjava/lang/String;II)Z

    move-result v0

    .line 299
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isBlacklistNumber(Ljava/lang/String;)Z
    .locals 13
    .param p1, "number"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 705
    iget-boolean v0, p0, Lcom/android/server/am/AppPcService;->FEATURE_HARASSMENT_INTERCEPT_ENABLE:Z

    if-nez v0, :cond_0

    .line 706
    const-string v0, "Security_AppPcService"

    const-string v2, "isBlacklistNumber(): Interception Disabled!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    const/4 v0, 0x0

    .line 749
    :goto_0
    return v0

    .line 710
    :cond_0
    const/4 v10, 0x0

    .line 711
    .local v10, "mType":I
    invoke-direct {p0, p1}, Lcom/android/server/am/AppPcService;->toCallerIDMinMatch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 713
    .local v11, "trimedNumber":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 714
    const/4 v0, 0x2

    new-array v12, v0, [Landroid/net/Uri;

    const/4 v0, 0x0

    sget-object v2, Lcom/android/server/am/AppPcService;->E2E_URI:Landroid/net/Uri;

    aput-object v2, v12, v0

    const/4 v0, 0x1

    sget-object v2, Lcom/android/server/am/AppPcService;->E2E_SYSTEM_URI:Landroid/net/Uri;

    aput-object v2, v12, v0

    .line 715
    .local v12, "uirs":[Landroid/net/Uri;
    const/4 v8, 0x0

    .line 717
    .local v8, "found":Z
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    array-length v0, v12

    if-ge v9, v0, :cond_4

    if-nez v8, :cond_4

    .line 718
    const/4 v6, 0x0

    .line 719
    .local v6, "cursor":Landroid/database/Cursor;
    aget-object v1, v12, v9

    .line 722
    .local v1, "uri":Landroid/net/Uri;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/AppPcService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "type"

    aput-object v4, v2, v3

    const-string v3, "number=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v11, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 728
    if-eqz v6, :cond_1

    .line 729
    const/4 v0, -0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 730
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 731
    const-string v0, "type"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    .line 732
    const/4 v8, 0x1

    goto :goto_2

    .line 738
    :cond_1
    if-eqz v6, :cond_2

    .line 739
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 717
    :cond_2
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 735
    :catch_0
    move-exception v7

    .line 736
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "Security_AppPcService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BlacklistNumber Query failed!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 738
    if-eqz v6, :cond_2

    .line 739
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 738
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 739
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 745
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v8    # "found":Z
    .end local v9    # "i":I
    .end local v12    # "uirs":[Landroid/net/Uri;
    :cond_4
    const/4 v0, -0x2

    if-ne v0, v10, :cond_5

    .line 746
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 749
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public isInControllableSystemApps(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1064
    iget-object v1, p0, Lcom/android/server/am/AppPcService;->sControllableSystemApps:Ljava/util/List;

    monitor-enter v1

    .line 1065
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/AppPcService;->sControllableSystemApps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 1066
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isInstructionSMS([Landroid/telephony/SmsMessage;)Z
    .locals 11
    .param p1, "msgs"    # [Landroid/telephony/SmsMessage;

    .prologue
    const/4 v7, 0x0

    .line 982
    iget-boolean v8, p0, Lcom/android/server/am/AppPcService;->FEATURE_HARASSMENT_INTERCEPT_ENABLE:Z

    if-nez v8, :cond_1

    .line 983
    const-string v8, "Security_AppPcService"

    const-string v9, "isInstructionSMS(): Interception Disabled!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    :cond_0
    :goto_0
    return v7

    .line 987
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 990
    .local v5, "msgBuilder":Ljava/lang/StringBuilder;
    move-object v0, p1

    .local v0, "arr$":[Landroid/telephony/SmsMessage;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 991
    .local v3, "message":Landroid/telephony/SmsMessage;
    if-eqz v3, :cond_2

    .line 992
    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 990
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 995
    .end local v3    # "message":Landroid/telephony/SmsMessage;
    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 996
    .local v4, "messageBody":Ljava/lang/String;
    const-string v8, "Security_AppPcService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isInstructionSMS(): messageBody="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    const/16 v8, 0x9

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-ne v8, v9, :cond_0

    .line 998
    const/4 v8, 0x6

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 999
    .local v6, "password":Ljava/lang/String;
    const-string v8, "Security_AppPcService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isInstructionSMS(): digits="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    invoke-static {v6}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1002
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 1003
    const-string v8, "#xh"

    invoke-virtual {v4, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "#bf"

    invoke-virtual {v4, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "#sd"

    invoke-virtual {v4, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "#bj"

    invoke-virtual {v4, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "#dw"

    invoke-virtual {v4, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1008
    :cond_4
    const/4 v7, 0x1

    goto/16 :goto_0
.end method

.method public maybeNetworkBlock(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 607
    :try_start_0
    new-instance v1, Lcom/android/server/am/AppPcService$NetworkBlockSocketServer;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/AppPcService$NetworkBlockSocketServer;-><init>(Lcom/android/server/am/AppPcService;I)V

    invoke-virtual {v1}, Lcom/android/server/am/AppPcService$NetworkBlockSocketServer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 611
    :goto_0
    return-void

    .line 608
    :catch_0
    move-exception v0

    .line 609
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public pmInstallApk(IILjava/lang/String;)I
    .locals 7
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "path"    # Ljava/lang/String;

    .prologue
    .line 615
    :try_start_0
    const-string v0, "com.lenovo.security.packageinstall.SilentInstallProvider"

    .line 617
    .local v0, "AUTHORITY":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/pminstall"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 618
    .local v1, "CONTENT_URI":Landroid/net/Uri;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 619
    .local v3, "value":Landroid/content/ContentValues;
    const-string v4, "UID"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 620
    const-string v4, "PID"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 621
    const-string v4, "PATH"

    invoke-virtual {v3, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    iget-object v4, p0, Lcom/android/server/am/AppPcService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v1, v3, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 626
    .end local v0    # "AUTHORITY":Ljava/lang/String;
    .end local v1    # "CONTENT_URI":Landroid/net/Uri;
    .end local v3    # "value":Landroid/content/ContentValues;
    :goto_0
    return v4

    .line 623
    :catch_0
    move-exception v2

    .line 624
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 626
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public pmInstallApkWithCode(IILjava/lang/String;)I
    .locals 7
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "path"    # Ljava/lang/String;

    .prologue
    .line 631
    :try_start_0
    const-string v0, "com.lenovo.security.packageinstall.SilentInstallProvider"

    .line 633
    .local v0, "AUTHORITY":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/pminstall2"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 634
    .local v1, "CONTENT_URI":Landroid/net/Uri;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 635
    .local v3, "value":Landroid/content/ContentValues;
    const-string v4, "UID"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 636
    const-string v4, "PID"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 637
    const-string v4, "PATH"

    invoke-virtual {v3, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    iget-object v4, p0, Lcom/android/server/am/AppPcService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v1, v3, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 642
    .end local v0    # "AUTHORITY":Ljava/lang/String;
    .end local v1    # "CONTENT_URI":Landroid/net/Uri;
    .end local v3    # "value":Landroid/content/ContentValues;
    :goto_0
    return v4

    .line 639
    :catch_0
    move-exception v2

    .line 640
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 642
    const v4, 0xffff

    goto :goto_0
.end method

.method public sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Lcom/android/internal/app/IAppPcOrderedBroadcastCallback;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "receiverPermission"    # Ljava/lang/String;
    .param p4, "resultCallback"    # Lcom/android/internal/app/IAppPcOrderedBroadcastCallback;
    .param p5, "initialCode"    # I
    .param p6, "initialData"    # Ljava/lang/String;
    .param p7, "initialExtras"    # Landroid/os/Bundle;

    .prologue
    .line 475
    const-string v0, "Security_AppPcService"

    const-string v1, "sendOrderedBroadcastAsUser"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    if-nez p4, :cond_0

    .line 478
    const-string v0, "Security_AppPcService"

    const-string v1, "sendOrderedBroadcastAsUser resultCallback = null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    :goto_0
    return-void

    .line 481
    :cond_0
    invoke-direct {p0}, Lcom/android/server/am/AppPcService;->checkPermission()Z

    move-result v0

    if-nez v0, :cond_1

    .line 482
    const-string v0, "Security_AppPcService"

    const-string v1, "sendOrderedBroadcastAsUser checkPermission = false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 488
    :cond_1
    new-instance v4, Lcom/android/server/am/AppPcService$2;

    invoke-direct {v4, p0, p4}, Lcom/android/server/am/AppPcService$2;-><init>(Lcom/android/server/am/AppPcService;Lcom/android/internal/app/IAppPcOrderedBroadcastCallback;)V

    .line 501
    .local v4, "resultReceiver":Landroid/content/BroadcastReceiver;
    iget-object v0, p0, Lcom/android/server/am/AppPcService;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public setApplicationEnabledSetting(Ljava/lang/String;II)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "newState"    # I
    .param p3, "flags"    # I

    .prologue
    .line 452
    invoke-direct {p0}, Lcom/android/server/am/AppPcService;->checkPermission()Z

    move-result v1

    if-nez v1, :cond_0

    .line 457
    :goto_0
    return-void

    .line 455
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/AppPcService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 456
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/AppPcService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "enabled"    # Z

    .prologue
    .line 535
    invoke-direct {p0}, Lcom/android/server/am/AppPcService;->checkPermission()Z

    move-result v1

    if-nez v1, :cond_0

    .line 540
    :goto_0
    return-void

    .line 538
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/AppPcService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    if-eqz p3, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v2, v3, p2, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 539
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/AppPcService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 538
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public setUidPolicy(II)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "policy"    # I

    .prologue
    .line 556
    invoke-direct {p0}, Lcom/android/server/am/AppPcService;->checkPermission()Z

    move-result v1

    if-nez v1, :cond_0

    .line 561
    :goto_0
    return-void

    .line 559
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/AppPcService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 560
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/AppPcService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 575
    invoke-direct {p0}, Lcom/android/server/am/AppPcService;->checkPermission()Z

    move-result v1

    if-nez v1, :cond_0

    .line 580
    :goto_0
    return-void

    .line 578
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/AppPcService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 579
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/AppPcService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public stopService(Landroid/content/Intent;)Z
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 431
    if-nez p1, :cond_1

    .line 439
    :cond_0
    :goto_0
    return v1

    .line 434
    :cond_1
    invoke-direct {p0}, Lcom/android/server/am/AppPcService;->checkPermission()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 437
    iget-object v1, p0, Lcom/android/server/am/AppPcService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 438
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/AppPcService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 439
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public systemReady()V
    .locals 2

    .prologue
    .line 284
    const-string v0, "Security_AppPcService"

    const-string v1, "systemReady"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    new-instance v0, Lcom/android/server/am/AppPcService$PermControlService;

    iget-object v1, p0, Lcom/android/server/am/AppPcService;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/AppPcService$PermControlService;-><init>(Lcom/android/server/am/AppPcService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/am/AppPcService;->mPermControlService:Lcom/android/server/am/AppPcService$PermControlService;

    .line 287
    const-string v0, "Security_AppPcService"

    const-string v1, "AppPcService Version:201508131751"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    return-void
.end method
