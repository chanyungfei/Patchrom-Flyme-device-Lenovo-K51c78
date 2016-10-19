.class public Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;
.super Landroid/os/Handler;
.source "DataRoamingCustomization.java"


# static fields
.field private static final APN_AUTO_MODE:I = 0x0

.field private static final APN_ID:Ljava/lang/String; = "apn_id"

.field private static final APN_MANUAL_MODE:I = 0x1

.field private static final APP_FAM_UNKNOWN:I = 0x0

.field private static final CHINA_MCC:Ljava/lang/String; = "460"

.field private static final EVENT_CDMA_SERVICE_STATE_CHANGED:I = 0x3

.field private static final EVENT_DATA_OR_ROAMING_SETTING_CHANGED:I = 0x1

.field private static final EVENT_GSM_SERVICE_STATE_CHANGED:I = 0x2

.field private static final FIRST_ROAMING_KEY:Ljava/lang/String; = "first_roaming"

.field private static final LAST_OPERATOR_NUMERIC_KEY:Ljava/lang/String; = "last_operator_numeric"

.field private static final LAST_REG_STATE_KEY:Ljava/lang/String; = "last_reg_state"

.field private static final MCC_LENGTH:I = 0x3

.field private static final OPERATOR_OP09:Ljava/lang/String; = "OP09"

.field private static final PREFERAPN_NO_UPDATE_URI_USING_SUBID:Landroid/net/Uri;

.field private static final PREFERENCE_NAME:Ljava/lang/String; = "roaming_customization"

.field private static final PREFER_APN_CTLTE:Ljava/lang/String; = "ctlte"

.field private static final PREFER_APN_CTNET:Ljava/lang/String; = "ctnet"

.field private static final PREFER_APN_UNKNOWN:Ljava/lang/String; = "unknown"

.field private static final TAG:Ljava/lang/String; = "DataRoamingCustomization"


# instance fields
.field private mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

.field private mContext:Landroid/content/Context;

.field private mCurOpNumeric:Ljava/lang/String;

.field private mCurRegState:I

.field private mGsmPhone:Lcom/android/internal/telephony/PhoneBase;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mObserver:Landroid/database/ContentObserver;

.field private mResolver:Landroid/content/ContentResolver;

.field private mSvltePhoneProxy:Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

.field private mUri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-string v0, "content://telephony/carriers/preferapn_no_update/subId/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->PREFERAPN_NO_UPDATE_URI_USING_SUBID:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/PhoneBase;Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "gsmPhone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p3, "cdmaPhone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p4, "svltePhoneProxy"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 103
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 81
    const-string v3, "mobile_data"

    iput-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->mUri:Ljava/lang/String;

    .line 83
    iput v5, p0, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->mCurRegState:I

    .line 84
    const-string v3, "00000"

    iput-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->mCurOpNumeric:Ljava/lang/String;

    .line 86
    new-instance v3, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization$1;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization$1;-><init>(Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->mObserver:Landroid/database/ContentObserver;

    .line 184
    new-instance v3, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization$2;

    invoke-direct {v3, p0}, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization$2;-><init>(Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;)V

    iput-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 104
    const-string v3, "ro.operator.optr"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, "operator":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v3, "OP09"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 106
    const-string v3, "DataRoamingCustomization constructor"

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->logd(Ljava/lang/String;)V

    .line 107
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->mContext:Landroid/content/Context;

    .line 108
    iput-object p2, p0, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->mGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 109
    iput-object p3, p0, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 110
    iput-object p4, p0, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->mSvltePhoneProxy:Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    .line 111
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->mResolver:Landroid/content/ContentResolver;

    .line 112
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->mContext:Landroid/content/Context;

    const-string v4, "roaming_customization"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 114
    .local v2, "roamingPreferences":Landroid/content/SharedPreferences;
    const-string v3, "last_reg_state"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->mCurRegState:I

    .line 116
    const-string v3, "last_operator_numeric"

    const-string v4, "00000"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->mCurOpNumeric:Ljava/lang/String;

    .line 118
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->mGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v4, 0x2

    invoke-virtual {v3, p0, v4, v6}, Lcom/android/internal/telephony/PhoneBase;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 120
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v4, 0x3

    invoke-virtual {v3, p0, v4, v6}, Lcom/android/internal/telephony/PhoneBase;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 123
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 124
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 125
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 128
    .end local v0    # "filter":Landroid/content/IntentFilter;
    .end local v2    # "roamingPreferences":Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->onSubInfoReady()V

    return-void
.end method

.method private checkFirstRoaming()V
    .locals 11

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 231
    iget-object v9, p0, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->mCurOpNumeric:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->isMccInvalid(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    iget-object v9, p0, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->mResolver:Landroid/content/ContentResolver;

    iget-object v10, p0, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->mUri:Ljava/lang/String;

    invoke-static {v9, v10, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v7, :cond_2

    move v6, v7

    .line 235
    .local v6, "userDataEnabled":Z
    :goto_1
    iget v9, p0, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->mCurRegState:I

    const/4 v10, 0x5

    if-ne v9, v10, :cond_3

    move v4, v7

    .line 236
    .local v4, "isRoaming":Z
    :goto_2
    iget-object v9, p0, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->mContext:Landroid/content/Context;

    const-string v10, "roaming_customization"

    invoke-virtual {v9, v10, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 237
    .local v5, "roamingPreferences":Landroid/content/SharedPreferences;
    const-string v9, "first_roaming"

    invoke-interface {v5, v9, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 239
    .local v2, "firstRoaming":Z
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v1

    .line 240
    .local v1, "defaultDataSub":I
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v0

    .line 241
    .local v0, "defaultDataSlot":I
    if-nez v0, :cond_4

    move v3, v7

    .line 243
    .local v3, "isDefaultDataSim":Z
    :goto_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkFirstRoaming, userDataEnabled="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ",isRoaming="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ",firstRoaming="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ",defaultDataSub="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ",defaultDataSlot="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->logd(Ljava/lang/String;)V

    .line 246
    if-eqz v6, :cond_0

    if-eqz v4, :cond_0

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 247
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->popupDialog()V

    .line 248
    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->setFirstRoamingFlag(Z)V

    goto :goto_0

    .end local v0    # "defaultDataSlot":I
    .end local v1    # "defaultDataSub":I
    .end local v2    # "firstRoaming":Z
    .end local v3    # "isDefaultDataSim":Z
    .end local v4    # "isRoaming":Z
    .end local v5    # "roamingPreferences":Landroid/content/SharedPreferences;
    .end local v6    # "userDataEnabled":Z
    :cond_2
    move v6, v8

    .line 234
    goto :goto_1

    .restart local v6    # "userDataEnabled":Z
    :cond_3
    move v4, v8

    .line 235
    goto :goto_2

    .restart local v0    # "defaultDataSlot":I
    .restart local v1    # "defaultDataSub":I
    .restart local v2    # "firstRoaming":Z
    .restart local v4    # "isRoaming":Z
    .restart local v5    # "roamingPreferences":Landroid/content/SharedPreferences;
    :cond_4
    move v3, v8

    .line 241
    goto :goto_3
.end method

.method private getApnIdByName(Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .param p1, "apnName"    # Ljava/lang/String;
    .param p2, "plmn"    # Ljava/lang/String;

    .prologue
    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getApnIdByName: apnName  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->logd(Ljava/lang/String;)V

    .line 357
    const/4 v6, -0x1

    .line 358
    .local v6, "apnId":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "apn = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and numeric = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 359
    .local v3, "selection":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getApnIdByName: selection = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->logd(Ljava/lang/String;)V

    .line 361
    const/4 v7, 0x0

    .line 363
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 366
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 367
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 368
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getApnIdByName: found, the apn id is:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    if-eqz v7, :cond_0

    .line 374
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_0
    move v0, v6

    .line 378
    :goto_0
    return v0

    .line 373
    :cond_1
    if-eqz v7, :cond_2

    .line 374
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 377
    :cond_2
    const-string v0, "getApnIdByName: X not found"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->logd(Ljava/lang/String;)V

    .line 378
    const/4 v0, -0x1

    goto :goto_0

    .line 373
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 374
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private getPreferApnId()I
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 397
    const/4 v7, -0x1

    .line 398
    .local v7, "preferApnId":I
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->mSvltePhoneProxy:Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getPsPhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    move-result v0

    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    .line 399
    .local v8, "subId":Ljava/lang/String;
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->PREFERAPN_NO_UPDATE_URI_USING_SUBID:Landroid/net/Uri;

    invoke-static {v0, v8}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 400
    .local v1, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "name"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "apn"

    aput-object v5, v2, v4

    const-string v5, "name ASC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 404
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 405
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 406
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 408
    :cond_0
    return v7
.end method

.method private getPreferApnNameByRat(I)Ljava/lang/String;
    .locals 3
    .param p1, "rat"    # I

    .prologue
    .line 329
    invoke-static {p1}, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->getUiccFamilyByRat(I)I

    move-result v0

    .line 330
    .local v0, "family":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPreferApnNameByRat rat = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",family = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->logd(Ljava/lang/String;)V

    .line 331
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 332
    const-string v1, "ctlte"

    .line 336
    :goto_0
    return-object v1

    .line 333
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 334
    const-string v1, "ctnet"

    goto :goto_0

    .line 336
    :cond_1
    const-string v1, "unknown"

    goto :goto_0
.end method

.method private getSvlteSubId()I
    .locals 4

    .prologue
    .line 218
    const/4 v0, -0x1

    .line 221
    .local v0, "subId":I
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getActiveSvlteModeSlotId()I

    move-result v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 222
    .local v1, "subIds":[I
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 223
    const/4 v2, 0x0

    aget v0, v1, v2

    .line 225
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSvlteSubId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->logd(Ljava/lang/String;)V

    .line 227
    return v0
.end method

.method private static getUiccFamilyByRat(I)I
    .locals 1
    .param p0, "radioTech"    # I

    .prologue
    .line 341
    if-nez p0, :cond_0

    .line 342
    const/4 v0, 0x0

    .line 350
    :goto_0
    return v0

    .line 345
    :cond_0
    const/4 v0, 0x4

    if-lt p0, v0, :cond_1

    const/16 v0, 0x8

    if-le p0, v0, :cond_2

    :cond_1
    const/16 v0, 0xc

    if-ne p0, v0, :cond_3

    .line 348
    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    .line 350
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isMccInvalid(Ljava/lang/String;)Z
    .locals 4
    .param p1, "opNumeric"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 175
    if-nez p1, :cond_1

    .line 176
    const-string v2, "isMccInvalid, opNumeric=null"

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->logd(Ljava/lang/String;)V

    .line 181
    :cond_0
    :goto_0
    return v1

    .line 179
    :cond_1
    const/4 v2, 0x3

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, "mcc":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isMccInvalid, mcc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->logd(Ljava/lang/String;)V

    .line 181
    if-eqz v0, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "000"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "N/A"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 425
    const-string v0, "DataRoamingCustomization"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    return-void
.end method

.method private msgIdToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 412
    packed-switch p1, :pswitch_data_0

    .line 420
    const-string v0, "unknown event"

    :goto_0
    return-object v0

    .line 414
    :pswitch_0
    const-string v0, "EVENT_DATA_OR_ROAMING_SETTING_CHANGED"

    goto :goto_0

    .line 416
    :pswitch_1
    const-string v0, "EVENT_GSM_SERVICE_STATE_CHANGED"

    goto :goto_0

    .line 418
    :pswitch_2
    const-string v0, "EVENT_CDMA_SERVICE_STATE_CHANGED"

    goto :goto_0

    .line 412
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private onSubInfoReady()V
    .locals 6

    .prologue
    .line 196
    const-string v2, "onSubInfoReady"

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->logd(Ljava/lang/String;)V

    .line 197
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->getSvlteSubId()I

    move-result v1

    .line 198
    .local v1, "subId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mobile_data"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, "newUri":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSubInfoReady: old uri:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->mUri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", new uri:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->logd(Ljava/lang/String;)V

    .line 201
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->mUri:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 202
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->mUri:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->mUri:Ljava/lang/String;

    const-string v3, "mobile_data"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 203
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->mResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 206
    :cond_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 208
    iput-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->mUri:Ljava/lang/String;

    .line 213
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->mObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 215
    :cond_1
    return-void
.end method

.method private popupDialog()V
    .locals 4

    .prologue
    .line 284
    const-string v2, "popupDialog for data enabled on roaming network."

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->logd(Ljava/lang/String;)V

    .line 285
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 286
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x80500d7

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 287
    const v2, 0x80500d8

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 288
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 289
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d8

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 291
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 292
    return-void
.end method

.method private saveLastRegInfo(ILjava/lang/String;)V
    .locals 5
    .param p1, "regState"    # I
    .param p2, "operatorNumeric"    # Ljava/lang/String;

    .prologue
    .line 261
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveLastRegInfo, regState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",operatorNumeric="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->logd(Ljava/lang/String;)V

    .line 262
    iput p1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->mCurRegState:I

    .line 263
    iput-object p2, p0, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->mCurOpNumeric:Ljava/lang/String;

    .line 264
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->mContext:Landroid/content/Context;

    const-string v3, "roaming_customization"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 265
    .local v1, "roamingPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 266
    .local v0, "roamingEditor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "last_reg_state"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 267
    const-string v2, "last_operator_numeric"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 268
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 269
    return-void
.end method

.method private setFirstRoamingFlag(Z)V
    .locals 5
    .param p1, "roaming"    # Z

    .prologue
    .line 253
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setFirstRoamingFlag, roaming="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->logd(Ljava/lang/String;)V

    .line 254
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->mContext:Landroid/content/Context;

    const-string v3, "roaming_customization"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 255
    .local v1, "roamingPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 256
    .local v0, "roamingEditor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "first_roaming"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 257
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 258
    return-void
.end method

.method private setPreferredApn(I)V
    .locals 7
    .param p1, "pos"    # I

    .prologue
    const/4 v6, 0x0

    .line 382
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->mSvltePhoneProxy:Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getPsPhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    move-result v3

    int-to-long v4, v3

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 383
    .local v0, "subId":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setPreferredApn: subId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->logd(Ljava/lang/String;)V

    .line 384
    sget-object v3, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->PREFERAPN_NO_UPDATE_URI_USING_SUBID:Landroid/net/Uri;

    invoke-static {v3, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 385
    .local v1, "uri":Landroid/net/Uri;
    const-string v3, "setPreferredApn: delete"

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->logd(Ljava/lang/String;)V

    .line 386
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v3, v1, v6, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 388
    if-ltz p1, :cond_0

    .line 389
    const-string v3, "setPreferredApn: insert"

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->logd(Ljava/lang/String;)V

    .line 390
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 391
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "apn_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 392
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v3, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 394
    .end local v2    # "values":Landroid/content/ContentValues;
    :cond_0
    return-void
.end method

.method private updatePreferedApn()V
    .locals 8

    .prologue
    .line 295
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->getPreferApnId()I

    move-result v6

    if-ltz v6, :cond_1

    .line 296
    const-string v6, "Don\'t update when have prefer apn"

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->logd(Ljava/lang/String;)V

    .line 326
    :cond_0
    :goto_0
    return-void

    .line 299
    :cond_1
    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->mSvltePhoneProxy:Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getPsPhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v4

    .line 300
    .local v4, "psPhone":Lcom/android/internal/telephony/PhoneBase;
    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v5

    .line 301
    .local v5, "psPhoneId":I
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 302
    invoke-static {v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneIdByPhoneId(I)I

    move-result v5

    .line 304
    :cond_2
    const-string v6, "gsm.sim.operator.numeric"

    const-string v7, ""

    invoke-static {v5, v6, v7}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 306
    .local v2, "plmnNumeric":Ljava/lang/String;
    const/4 v0, -0x1

    .line 307
    .local v0, "apnId":I
    const-string v3, "ctnet"

    .line 309
    .local v3, "preferApnName":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updatePreferedApn, plmnNumeric = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",psPhoneId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->logd(Ljava/lang/String;)V

    .line 311
    if-eqz v2, :cond_4

    const-string v6, ""

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 312
    const-string v6, "460"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 314
    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v1

    .line 315
    .local v1, "dataRat":I
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->getPreferApnNameByRat(I)Ljava/lang/String;

    move-result-object v3

    .line 316
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updatePreferedApn, preferApnName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->logd(Ljava/lang/String;)V

    .line 318
    .end local v1    # "dataRat":I
    :cond_3
    invoke-direct {p0, v3, v2}, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->getApnIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 320
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updatePreferedApn, apnId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->logd(Ljava/lang/String;)V

    .line 322
    if-ltz v0, :cond_0

    .line 324
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->setPreferredApn(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 3

    .prologue
    .line 275
    const-string v1, "ro.operator.optr"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 276
    .local v0, "operator":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "OP09"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 277
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 278
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->mGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/PhoneBase;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 279
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/PhoneBase;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 281
    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x1

    .line 132
    iget v2, p1, Landroid/os/Message;->what:I

    .line 133
    .local v2, "msgId":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleMessage: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->msgIdToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "(id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->logd(Ljava/lang/String;)V

    .line 134
    packed-switch v2, :pswitch_data_0

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 136
    :pswitch_0
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->checkFirstRoaming()V

    goto :goto_0

    .line 140
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 141
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Landroid/telephony/ServiceState;

    .line 142
    .local v5, "serviceState":Landroid/telephony/ServiceState;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "serviceState = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->logd(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v1

    .line 144
    .local v1, "dataRegState":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dataRegState = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->logd(Ljava/lang/String;)V

    .line 145
    if-nez v1, :cond_0

    .line 146
    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getRilDataRegState()I

    move-result v4

    .line 147
    .local v4, "rilDataRegState":I
    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    .line 148
    .local v3, "operatorNumeric":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rilDataRegState = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",operatorNumeric = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",mCurRegState = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->mCurRegState:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",mCurOpNumeric = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->mCurOpNumeric:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->logd(Ljava/lang/String;)V

    .line 151
    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->isMccInvalid(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 154
    iget v6, p0, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->mCurRegState:I

    if-ne v4, v6, :cond_1

    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->mCurOpNumeric:Ljava/lang/String;

    if-eqz v6, :cond_0

    if-eqz v3, :cond_0

    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->mCurOpNumeric:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 157
    :cond_1
    const/4 v6, 0x5

    if-ne v4, v6, :cond_2

    .line 158
    invoke-direct {p0, v4, v3}, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->saveLastRegInfo(ILjava/lang/String;)V

    .line 159
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->checkFirstRoaming()V

    .line 160
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->updatePreferedApn()V

    goto/16 :goto_0

    .line 161
    :cond_2
    if-ne v4, v8, :cond_0

    .line 162
    invoke-direct {p0, v4, v3}, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->saveLastRegInfo(ILjava/lang/String;)V

    .line 163
    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->setFirstRoamingFlag(Z)V

    .line 164
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->updatePreferedApn()V

    goto/16 :goto_0

    .line 134
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
