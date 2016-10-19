.class public Lcom/mediatek/internal/telephony/RadioManager;
.super Landroid/os/Handler;
.source "RadioManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/RadioManager$2;,
        Lcom/mediatek/internal/telephony/RadioManager$MSimModeChangeRunnable;,
        Lcom/mediatek/internal/telephony/RadioManager$SimModeChangeRunnable;,
        Lcom/mediatek/internal/telephony/RadioManager$ForceSetRadioPowerRunnable;,
        Lcom/mediatek/internal/telephony/RadioManager$RadioPowerRunnable;,
        Lcom/mediatek/internal/telephony/RadioManager$SimStateChangedRunnable;,
        Lcom/mediatek/internal/telephony/RadioManager$SwitchImsScenario;
    }
.end annotation


# static fields
.field public static final ACTION_FORCE_SET_RADIO_POWER:Ljava/lang/String; = "com.mediatek.internal.telephony.RadioManager.intent.action.FORCE_SET_RADIO_POWER"

.field private static final ACTION_WIFI_ONLY_MODE_CHANGED:Ljava/lang/String; = "android.intent.action.ACTION_WIFI_ONLY_MODE"

.field private static final AIRPLANE_MODE_OFF:Z = false

.field private static final AIRPLANE_MODE_ON:Z = true

.field private static final C2K_5M:Ljava/lang/String; = "CLLWG"

.field private static final CARD_TYPE_CSIM:I = 0x4

.field private static final CARD_TYPE_RUIM:I = 0x8

.field private static final CARD_TYPE_SIM:I = 0x1

.field private static final CARD_TYPE_USIM:I = 0x2

.field private static final CDMA_PROPERTY_SILENT_REBOOT_MD:Ljava/lang/String; = "cdma.ril.eboot"

.field private static final EVENT_RADIO_AVAILABLE:I = 0x1

.field private static final EVENT_VIRTUAL_SIM_ON:I = 0x2

.field private static final ICC_READ_NOT_READY:Z = false

.field private static final ICC_READ_READY:Z = true

.field private static final INITIAL_RETRY_INTERVAL_MSEC:I = 0xc8

.field private static final INVALID_PHONE_ID:I = -0x1

.field private static final IS_INDIAN:Ljava/lang/String; = "1"

.field private static final IS_NOT_SILENT_REBOOT:Ljava/lang/String; = "0"

.field private static final IS_SILENT_REBOOT:Ljava/lang/String; = "1"

.field static final LOG_TAG:Ljava/lang/String; = "RadioManager"

.field private static final MODEM_POWER_OFF:Z = false

.field private static final MODEM_POWER_ON:Z = true

.field private static final MODE_PHONE1_ONLY:I = 0x1

.field private static final MODE_PHONE2_ONLY:I = 0x2

.field private static final MODE_PHONE3_ONLY:I = 0x4

.field private static final MODE_PHONE4_ONLY:I = 0x8

.field private static final NO_NAME:Ljava/lang/String; = "NO_NAME"

.field private static final NO_SIM_INSERTED:I = 0x0

.field private static final PREF_CATEGORY_RADIO_STATUS:Ljava/lang/String; = "RADIO_STATUS"

.field private static final PROPERTY_CONFIG_EMDSTATUS_SEND:Ljava/lang/String; = "ril.cdma.emdstatus.send"

.field private static final PROPERTY_ICCID_SIM_C2K:Ljava/lang/String; = "ril.iccid.sim1_c2k"

.field private static final PROPERTY_ICCID_SIM_LTE:Ljava/lang/String; = "ril.iccid.sim1_lte"

.field private static final PROPERTY_RIL_CARD_TYPE_SET:Ljava/lang/String; = "gsm.ril.cardtypeset"

.field private static final PROPERTY_RIL_CARD_TYPE_SET_2:Ljava/lang/String; = "gsm.ril.cardtypeset.2"

.field private static final PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

.field private static final PROPERTY_SILENT_REBOOT_MD1:Ljava/lang/String; = "gsm.ril.eboot"

.field private static final PROPERTY_SILENT_REBOOT_MD2:Ljava/lang/String; = "gsm.ril.eboot.2"

.field private static final RADIO_POWER_OFF:Z = false

.field private static final RADIO_POWER_ON:Z = true

.field private static final SIM_INSERTED:I = 0x1

.field private static final SIM_NOT_INITIALIZED:I = -0x1

.field private static final STRING_NO_SIM_INSERTED:Ljava/lang/String; = "N/A"

.field private static final WIFI_ONLY_MODE_OFF:Z = false

.field private static final WIFI_ONLY_MODE_ON:Z = true

.field private static mIccidPreference:Landroid/content/SharedPreferences;

.field protected static mNotifyRadioPowerChange:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lcom/mediatek/internal/telephony/IRadioPower;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sRadioManager:Lcom/mediatek/internal/telephony/RadioManager;


# instance fields
.field private PROPERTY_ICCID_SIM:[Ljava/lang/String;

.field private bIsInIpoShutdown:Z

.field private bIsQueueIpoShutdown:Z

.field private mAirplaneMode:Z

.field public mAirplaneRequestHandler:Lcom/mediatek/internal/telephony/AirplaneRequestHandler;

.field private mBitmapForPhoneCount:I

.field private mCi:[Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mImsState:I

.field private mImsSwitchController:Lcom/mediatek/internal/telephony/ImsSwitchController;

.field private mInitializeWaitCounter:[I

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsEccCall:Z

.field private mModemPower:[Z

.field private mPhoneCount:I

.field private mSimInsertedStatus:[I

.field private mWifiOnlyMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 154
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/RadioManager;->mNotifyRadioPowerChange:Ljava/util/concurrent/ConcurrentHashMap;

    .line 164
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "gsm.ril.fulluicctype"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "gsm.ril.fulluicctype.2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "gsm.ril.fulluicctype.3"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "gsm.ril.fulluicctype.4"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/internal/telephony/RadioManager;->PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneCount"    # I
    .param p3, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    const/4 v11, 0x0

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 218
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 110
    iput-boolean v6, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneMode:Z

    .line 114
    iput-boolean v6, p0, Lcom/mediatek/internal/telephony/RadioManager;->mWifiOnlyMode:Z

    .line 152
    iput-object v11, p0, Lcom/mediatek/internal/telephony/RadioManager;->mImsSwitchController:Lcom/mediatek/internal/telephony/ImsSwitchController;

    .line 157
    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    const-string v8, "ril.iccid.sim1"

    aput-object v8, v5, v6

    const-string v8, "ril.iccid.sim2"

    aput-object v8, v5, v7

    const-string v8, "ril.iccid.sim3"

    aput-object v8, v5, v10

    const-string v8, "ril.iccid.sim4"

    aput-object v8, v5, v9

    iput-object v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->PROPERTY_ICCID_SIM:[Ljava/lang/String;

    .line 188
    iput v6, p0, Lcom/mediatek/internal/telephony/RadioManager;->mImsState:I

    .line 283
    new-instance v5, Lcom/mediatek/internal/telephony/RadioManager$1;

    invoke-direct {v5, p0}, Lcom/mediatek/internal/telephony/RadioManager$1;-><init>(Lcom/mediatek/internal/telephony/RadioManager;)V

    iput-object v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 220
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "airplane_mode_on"

    invoke-static {v5, v8, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 221
    .local v0, "airplaneMode":I
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "user_selected_wfc_preference"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 225
    .local v4, "wifionlyMode":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Initialize RadioManager under airplane mode:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " wifi only mode:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 227
    new-array v5, p2, [I

    iput-object v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mSimInsertedStatus:[I

    .line 228
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_0

    .line 229
    iget-object v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mSimInsertedStatus:[I

    const/4 v8, -0x1

    aput v8, v5, v2

    .line 228
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 231
    :cond_0
    new-array v5, p2, [I

    iput-object v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mInitializeWaitCounter:[I

    .line 232
    const/4 v2, 0x0

    :goto_1
    if-ge v2, p2, :cond_1

    .line 233
    iget-object v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mInitializeWaitCounter:[I

    aput v6, v5, v2

    .line 232
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 236
    :cond_1
    iput-object p1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mContext:Landroid/content/Context;

    .line 237
    if-nez v0, :cond_2

    move v5, v6

    :goto_2
    iput-boolean v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneMode:Z

    .line 238
    if-ne v9, v4, :cond_3

    move v5, v7

    :goto_3
    iput-boolean v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mWifiOnlyMode:Z

    .line 239
    iput-object p3, p0, Lcom/mediatek/internal/telephony/RadioManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    .line 240
    iput p2, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPhoneCount:I

    .line 241
    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/RadioManager;->convertPhoneCountIntoBitmap(I)I

    move-result v5

    iput v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mBitmapForPhoneCount:I

    .line 242
    iget-object v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mContext:Landroid/content/Context;

    const-string v8, "RADIO_STATUS"

    invoke-virtual {v5, v8, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    sput-object v5, Lcom/mediatek/internal/telephony/RadioManager;->mIccidPreference:Landroid/content/SharedPreferences;

    .line 243
    iget v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPhoneCount:I

    new-array v5, v5, [Z

    iput-object v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mModemPower:[Z

    .line 245
    new-instance v5, Lcom/mediatek/internal/telephony/ImsSwitchController;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/RadioManager;->mContext:Landroid/content/Context;

    iget v8, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPhoneCount:I

    iget-object v9, p0, Lcom/mediatek/internal/telephony/RadioManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v5, v6, v8, v9}, Lcom/mediatek/internal/telephony/ImsSwitchController;-><init>(Landroid/content/Context;I[Lcom/android/internal/telephony/CommandsInterface;)V

    iput-object v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mImsSwitchController:Lcom/mediatek/internal/telephony/ImsSwitchController;

    .line 247
    const/4 v2, 0x0

    :goto_4
    if-ge v2, p2, :cond_4

    .line 248
    iget-object v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mModemPower:[Z

    aput-boolean v7, v5, v2

    .line 247
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_2
    move v5, v7

    .line 237
    goto :goto_2

    :cond_3
    move v5, v6

    .line 238
    goto :goto_3

    .line 251
    :cond_4
    const-string v5, "ro.mtk_bsp_package"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 252
    const-string v5, "Not BSP Package, register intent!!!"

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 253
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 254
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 255
    const-string v5, "com.mediatek.internal.telephony.RadioManager.intent.action.FORCE_SET_RADIO_POWER"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 256
    const-string v5, "android.intent.action.ACTION_WIFI_ONLY_MODE"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 257
    iget-object v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/RadioManager;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 260
    const/4 v2, 0x0

    :goto_5
    if-ge v2, p2, :cond_5

    .line 261
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 262
    .local v3, "index":Ljava/lang/Integer;
    iget-object v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v5, v5, v2

    invoke-interface {v5, p0, v10, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForVirtualSimOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 263
    iget-object v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v5, v5, v2

    invoke-interface {v5, p0, v7, v11}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 260
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 268
    .end local v1    # "filter":Landroid/content/IntentFilter;
    .end local v3    # "index":Ljava/lang/Integer;
    :cond_5
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 269
    new-instance v5, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/RadioManager;->mContext:Landroid/content/Context;

    iget v7, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPhoneCount:I

    invoke-direct {v5, v6, v7}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;-><init>(Landroid/content/Context;I)V

    iput-object v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneRequestHandler:Lcom/mediatek/internal/telephony/AirplaneRequestHandler;

    .line 272
    :cond_6
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-static {p0}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/internal/telephony/RadioManager;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/RadioManager;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/RadioManager;->onReceiveSimStateChangedIntent(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/internal/telephony/RadioManager;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/RadioManager;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/RadioManager;->onReceiveForceSetRadioPowerIntent(Landroid/content/Intent;)V

    return-void
.end method

.method private checkForCTACase()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1151
    const/4 v1, 0x1

    .line 1152
    .local v1, "isCTACase":Z
    const-string v2, "Check For CTA case!"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1153
    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneMode:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->mWifiOnlyMode:Z

    if-eq v2, v4, :cond_2

    .line 1154
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPhoneCount:I

    if-ge v0, v2, :cond_3

    .line 1155
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Check For CTA case: mSimInsertedStatus["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/internal/telephony/RadioManager;->mSimInsertedStatus:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1156
    iget-object v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->mSimInsertedStatus:[I

    aget v2, v2, v0

    if-eq v2, v4, :cond_0

    iget-object v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->mSimInsertedStatus:[I

    aget v2, v2, v0

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 1157
    :cond_0
    const/4 v1, 0x0

    .line 1154
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1161
    .end local v0    # "i":I
    :cond_2
    const/4 v1, 0x0

    .line 1164
    :cond_3
    if-nez v1, :cond_4

    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->mIsEccCall:Z

    if-nez v2, :cond_4

    .line 1165
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/RadioManager;->turnOffCTARadioIfNecessary()V

    .line 1167
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CTA case: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1168
    return v1
.end method

.method private containsGsm(I)Z
    .locals 1
    .param p1, "cardType"    # I

    .prologue
    .line 1134
    and-int/lit8 v0, p1, 0x1

    if-gtz v0, :cond_0

    and-int/lit8 v0, p1, 0x2

    if-lez v0, :cond_1

    .line 1136
    :cond_0
    const/4 v0, 0x1

    .line 1138
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private convertPhoneCountIntoBitmap(I)I
    .locals 4
    .param p1, "phoneCount"    # I

    .prologue
    .line 275
    const/4 v1, 0x0

    .line 276
    .local v1, "ret":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 277
    const/4 v2, 0x1

    shl-int/2addr v2, v0

    add-int/2addr v1, v2

    .line 276
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 279
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Convert phoneCount "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " into bitmap "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 280
    return v1
.end method

.method private doIpoShutDown()V
    .locals 2

    .prologue
    .line 619
    const-string v0, "do IPO shutdown"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 620
    const-string v0, "gsm.ril.cardtypeset"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    const-string v0, "gsm.ril.cardtypeset.2"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    const-string v0, "ril.cdma.emdstatus.send"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    const/4 v0, 0x0

    iget v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mBitmapForPhoneCount:I

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/internal/telephony/RadioManager;->setModemPower(ZI)V

    .line 624
    return-void
.end method

.method private eventIdtoString(I)Ljava/lang/String;
    .locals 1
    .param p1, "what"    # I

    .prologue
    .line 1643
    const/4 v0, 0x0

    .line 1644
    .local v0, "str":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 1654
    :goto_0
    return-object v0

    .line 1646
    :pswitch_0
    const-string v0, "EVENT_RADIO_AVAILABLE"

    .line 1647
    goto :goto_0

    .line 1649
    :pswitch_1
    const-string v0, "EVENT_VIRTUAL_SIM_ON"

    .line 1650
    goto :goto_0

    .line 1644
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private findMainCapabilityPhoneId()I
    .locals 4

    .prologue
    .line 740
    const/4 v0, 0x0

    .line 741
    .local v0, "result":I
    const-string v2, "persist.radio.simswitch"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 743
    .local v1, "switchStatus":I
    add-int/lit8 v0, v1, -0x1

    .line 744
    if-ltz v0, :cond_0

    iget v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPhoneCount:I

    if-lt v0, v2, :cond_1

    .line 745
    :cond_0
    const/4 v0, 0x0

    .line 747
    .end local v0    # "result":I
    :cond_1
    return v0
.end method

.method private getAirplaneMode()Z
    .locals 1

    .prologue
    .line 1601
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneMode:Z

    return v0
.end method

.method private getCiIndex(Landroid/os/Message;)I
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1659
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 1666
    .local v1, "index":Ljava/lang/Integer;
    if-eqz p1, :cond_0

    .line 1667
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 1668
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v1    # "index":Ljava/lang/Integer;
    check-cast v1, Ljava/lang/Integer;

    .line 1676
    .restart local v1    # "index":Ljava/lang/Integer;
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2

    .line 1669
    :cond_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Landroid/os/AsyncResult;

    if-eqz v2, :cond_0

    .line 1670
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1671
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 1672
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v1    # "index":Ljava/lang/Integer;
    check-cast v1, Ljava/lang/Integer;

    .restart local v1    # "index":Ljava/lang/Integer;
    goto :goto_0
.end method

.method private getFullCardType(I)I
    .locals 7
    .param p1, "slotId"    # I

    .prologue
    .line 1705
    if-ltz p1, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    if-lt p1, v4, :cond_1

    .line 1706
    :cond_0
    const-string v4, "RadioManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getFullCardType invalid slotId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1707
    const/4 v2, 0x0

    .line 1725
    :goto_0
    return v2

    .line 1709
    :cond_1
    sget-object v4, Lcom/mediatek/internal/telephony/RadioManager;->PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1710
    .local v1, "cardType":Ljava/lang/String;
    const-string v4, "RadioManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getFullCardType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1711
    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1712
    .local v0, "appType":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 1713
    .local v2, "fullType":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v4, v0

    if-ge v3, v4, :cond_6

    .line 1714
    const-string v4, "USIM"

    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1715
    or-int/lit8 v2, v2, 0x2

    .line 1713
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1716
    :cond_3
    const-string v4, "SIM"

    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1717
    or-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1718
    :cond_4
    const-string v4, "CSIM"

    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1719
    or-int/lit8 v2, v2, 0x8

    goto :goto_2

    .line 1720
    :cond_5
    const-string v4, "RUIM"

    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1721
    or-int/lit8 v2, v2, 0x4

    goto :goto_2

    .line 1724
    :cond_6
    const-string v4, "RadioManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fullType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getInstance()Lcom/mediatek/internal/telephony/RadioManager;
    .locals 1

    .prologue
    .line 215
    sget-object v0, Lcom/mediatek/internal/telephony/RadioManager;->sRadioManager:Lcom/mediatek/internal/telephony/RadioManager;

    return-object v0
.end method

.method private getSimInsertedStatus(I)I
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    .line 861
    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    .line 862
    const/4 p1, 0x0

    .line 866
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager;->mSimInsertedStatus:[I

    aget v0, v0, p1

    return v0

    .line 863
    :cond_1
    const/16 v0, 0xb

    if-ne p1, v0, :cond_0

    .line 864
    const/4 p1, 0x1

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;I[Lcom/android/internal/telephony/CommandsInterface;)Lcom/mediatek/internal/telephony/RadioManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneCount"    # I
    .param p2, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 199
    const-class v1, Lcom/mediatek/internal/telephony/RadioManager;

    monitor-enter v1

    .line 200
    :try_start_0
    sget-object v0, Lcom/mediatek/internal/telephony/RadioManager;->sRadioManager:Lcom/mediatek/internal/telephony/RadioManager;

    if-nez v0, :cond_0

    .line 201
    new-instance v0, Lcom/mediatek/internal/telephony/RadioManager;

    invoke-direct {v0, p0, p1, p2}, Lcom/mediatek/internal/telephony/RadioManager;-><init>(Landroid/content/Context;I[Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v0, Lcom/mediatek/internal/telephony/RadioManager;->sRadioManager:Lcom/mediatek/internal/telephony/RadioManager;

    .line 203
    :cond_0
    sget-object v0, Lcom/mediatek/internal/telephony/RadioManager;->sRadioManager:Lcom/mediatek/internal/telephony/RadioManager;

    monitor-exit v1

    return-object v0

    .line 204
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isAllowRadioPowerOn(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    .line 1734
    invoke-static {p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getSvlteRatController()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->allowRadioPowerOn(I)Z

    move-result v0

    return v0
.end method

.method private isCdmaOnly(I)Z
    .locals 3
    .param p1, "cardType"    # I

    .prologue
    .line 1763
    const-string v0, "RadioManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCdmaOnly, cardType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1764
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/16 v0, 0xc

    if-ne p1, v0, :cond_1

    .line 1767
    :cond_0
    const/4 v0, 0x1

    .line 1769
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isFlightModePowerOffModemEnabled()Z
    .locals 2

    .prologue
    .line 1504
    const-string v0, "ril.testmode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1505
    const-string v0, "ril.test.poweroffmd"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1507
    :goto_0
    return v0

    :cond_0
    const-string v0, "ro.mtk_flight_mode_power_off_md"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "gsm.sim.ril.testsim"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "gsm.sim.ril.testsim.2"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "gsm.sim.ril.testsim.3"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "gsm.sim.ril.testsim.4"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isGsmCard(I)Z
    .locals 1
    .param p1, "cardType"    # I

    .prologue
    .line 1142
    and-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_0

    and-int/lit8 v0, p1, 0x8

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/RadioManager;->containsGsm(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1145
    const/4 v0, 0x1

    .line 1147
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isIccIdReady(I)Z
    .locals 4
    .param p1, "phoneId"    # I

    .prologue
    .line 1023
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/RadioManager;->readIccIdUsingPhoneId(I)Ljava/lang/String;

    move-result-object v0

    .line 1024
    .local v0, "iccId":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1025
    .local v1, "ret":Z
    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1026
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ICC read not ready for phone:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1027
    const/4 v1, 0x0

    .line 1032
    :goto_0
    return v1

    .line 1029
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ICC read ready, iccid["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1030
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isMSimModeSupport()Z
    .locals 2

    .prologue
    .line 1588
    const-string v0, "ro.mtk_bsp_package"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1589
    const/4 v0, 0x0

    .line 1591
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isModemPowerOff(I)Z
    .locals 7
    .param p0, "phoneId"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1519
    const/4 v2, 0x0

    .line 1520
    .local v2, "powerOff":Z
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getMultiSimConfiguration()Landroid/telephony/TelephonyManager$MultiSimVariants;

    move-result-object v1

    .line 1522
    .local v1, "config":Landroid/telephony/TelephonyManager$MultiSimVariants;
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1531
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getCdmaSocketSlotId()I

    move-result v0

    .line 1532
    .local v0, "cdmaSlot":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isModemPowerOff: cdmaSlot="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " ,phoneId="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1533
    invoke-static {p0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    check-cast v3, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v3, p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getPhoneById(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    const/4 v6, 0x2

    if-ne v3, v6, :cond_3

    .line 1534
    const-string v3, "isModemPowerOff: C2K phone"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1535
    if-nez v0, :cond_2

    .line 1536
    const/4 p0, 0x0

    .line 1549
    .end local v0    # "cdmaSlot":I
    :cond_0
    :goto_0
    sget-object v3, Lcom/mediatek/internal/telephony/RadioManager$2;->$SwitchMap$android$telephony$TelephonyManager$MultiSimVariants:[I

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager$MultiSimVariants;->ordinal()I

    move-result v6

    aget v3, v3, v6

    packed-switch v3, :pswitch_data_0

    .line 1571
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1573
    if-nez p0, :cond_a

    .line 1574
    const-string v3, "ril.ipo.radiooff"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "0"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    move v2, v4

    .line 1583
    :cond_1
    :goto_1
    return v2

    .line 1538
    .restart local v0    # "cdmaSlot":I
    :cond_2
    const/4 p0, 0x1

    goto :goto_0

    .line 1541
    :cond_3
    const-string v3, "isModemPowerOff: GSM phone"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1542
    if-nez v0, :cond_4

    .line 1543
    const/4 p0, 0x1

    goto :goto_0

    .line 1545
    :cond_4
    const/4 p0, 0x0

    goto :goto_0

    .line 1551
    .end local v0    # "cdmaSlot":I
    :pswitch_0
    const-string v3, "ril.ipo.radiooff"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "0"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v2, v4

    .line 1552
    :goto_2
    goto :goto_1

    :cond_5
    move v2, v5

    .line 1551
    goto :goto_2

    .line 1554
    :pswitch_1
    packed-switch p0, :pswitch_data_1

    .line 1562
    const/4 v2, 0x1

    .line 1563
    goto :goto_1

    .line 1556
    :pswitch_2
    const-string v3, "ril.ipo.radiooff"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "0"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    move v2, v4

    .line 1557
    :goto_3
    goto :goto_1

    :cond_6
    move v2, v5

    .line 1556
    goto :goto_3

    .line 1559
    :pswitch_3
    const-string v3, "ril.ipo.radiooff.2"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "0"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    move v2, v4

    .line 1560
    :goto_4
    goto :goto_1

    :cond_7
    move v2, v5

    .line 1559
    goto :goto_4

    .line 1568
    :pswitch_4
    const-string v3, "ril.ipo.radiooff"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "0"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    move v2, v4

    .line 1569
    :goto_5
    goto :goto_1

    :cond_8
    move v2, v5

    .line 1568
    goto :goto_5

    :cond_9
    move v2, v5

    .line 1574
    goto :goto_1

    .line 1575
    :cond_a
    if-ne p0, v4, :cond_1

    .line 1576
    const-string v3, "ril.ipo.radiooff.2"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "0"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    move v2, v4

    :goto_6
    goto :goto_1

    :cond_b
    move v2, v5

    goto :goto_6

    .line 1579
    :cond_c
    const-string v3, "ril.ipo.radiooff"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "0"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    move v2, v4

    :goto_7
    goto :goto_1

    :cond_d
    move v2, v5

    goto :goto_7

    .line 1549
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_4
    .end packed-switch

    .line 1554
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static isMtkIndiaC2k5MSupport()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1244
    const-string v4, "CLLWG"

    const-string v5, "ro.mtk.c2k.om.mode"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v1, v2

    .line 1246
    .local v1, "isSupport":Z
    :goto_0
    const-string v4, "1"

    const-string v5, "ro.mtk_c2k_om_nw_sel_type"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v2

    .line 1249
    .local v0, "isIndia":Z
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isMtkC2k5M(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1250
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isIndia(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1251
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    :goto_2
    return v2

    .end local v0    # "isIndia":Z
    .end local v1    # "isSupport":Z
    :cond_0
    move v1, v3

    .line 1244
    goto :goto_0

    .restart local v1    # "isSupport":Z
    :cond_1
    move v0, v3

    .line 1246
    goto :goto_1

    .restart local v0    # "isIndia":Z
    :cond_2
    move v2, v3

    .line 1251
    goto :goto_2
.end method

.method private isNonCdma(I)Z
    .locals 3
    .param p1, "cardType"    # I

    .prologue
    .line 1774
    const-string v0, "RadioManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNonCdma, cardType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1775
    and-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_0

    and-int/lit8 v0, p1, 0x8

    if-nez v0, :cond_0

    .line 1777
    const/4 v0, 0x1

    .line 1779
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPowerOnFeatureAllClosed()Z
    .locals 2

    .prologue
    .line 1488
    const/4 v0, 0x1

    .line 1489
    .local v0, "ret":Z
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->isFlightModePowerOffModemEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1490
    const/4 v0, 0x0

    .line 1496
    :cond_0
    :goto_0
    return v0

    .line 1491
    :cond_1
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->isRadioOffPowerOffModemEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1492
    const/4 v0, 0x0

    goto :goto_0

    .line 1493
    :cond_2
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->isMSimModeSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1494
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isRadioOffPowerOffModemEnabled()Z
    .locals 2

    .prologue
    .line 1500
    const-string v0, "ro.mtk_radiooff_power_off_md"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isUnderCryptKeeper()Z
    .locals 2

    .prologue
    .line 551
    const-string v0, "ro.crypto.state"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "encrypted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "vold.decrypt"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "trigger_restart_min_framework"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 553
    const-string v0, "[Special Case] Under CryptKeeper, Not to turn on/off modem"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 554
    const/4 v0, 0x1

    .line 557
    :goto_0
    return v0

    .line 556
    :cond_0
    const-string v0, "[Special Case] Not Under CryptKeeper"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 557
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidPhoneId(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    .line 426
    if-ltz p1, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 427
    :cond_0
    const/4 v0, 0x0

    .line 429
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 1701
    const-string v0, "RadioManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RadioManager] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1702
    return-void
.end method

.method private static declared-synchronized notifyRadioPowerChange(ZI)V
    .locals 6
    .param p0, "power"    # Z
    .param p1, "phoneId"    # I

    .prologue
    .line 1693
    const-class v4, Lcom/mediatek/internal/telephony/RadioManager;

    monitor-enter v4

    :try_start_0
    sget-object v3, Lcom/mediatek/internal/telephony/RadioManager;->mNotifyRadioPowerChange:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1694
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/mediatek/internal/telephony/IRadioPower;Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyRadioPowerChange: user:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1695
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/IRadioPower;

    .line 1696
    .local v2, "iRadioPower":Lcom/mediatek/internal/telephony/IRadioPower;
    invoke-interface {v2, p0, p1}, Lcom/mediatek/internal/telephony/IRadioPower;->notifyRadioPowerChange(ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1693
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/mediatek/internal/telephony/IRadioPower;Ljava/lang/String;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "iRadioPower":Lcom/mediatek/internal/telephony/IRadioPower;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 1698
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    monitor-exit v4

    return-void
.end method

.method private onReceiveForceSetRadioPowerIntent(Landroid/content/Intent;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v8, 0xb

    const/16 v7, 0xa

    const/4 v6, -0x1

    const/4 v3, 0x1

    .line 399
    const/4 v1, 0x0

    .line 400
    .local v1, "phoneId":I
    const-string v4, "mode"

    invoke-virtual {p1, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 401
    .local v0, "mode":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "force set radio power, mode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 402
    if-ne v0, v6, :cond_1

    .line 403
    const-string v3, "Invalid mode, MSIM_MODE intent has no extra value"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 423
    :cond_0
    return-void

    .line 406
    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget v4, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPhoneCount:I

    if-ge v1, v4, :cond_0

    .line 407
    shl-int v4, v3, v1

    and-int/2addr v4, v0

    if-nez v4, :cond_3

    const/4 v2, 0x0

    .line 409
    .local v2, "singlePhonePower":Z
    :goto_1
    if-ne v3, v2, :cond_2

    .line 410
    invoke-virtual {p0, v3, v1}, Lcom/mediatek/internal/telephony/RadioManager;->forceSetRadioPower(ZI)V

    .line 411
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getCdmaSocketSlotId()I

    move-result v4

    if-ne v1, v4, :cond_2

    .line 413
    if-nez v1, :cond_4

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/RadioManager;->isAllowRadioPowerOn(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 415
    invoke-virtual {p0, v3, v7}, Lcom/mediatek/internal/telephony/RadioManager;->forceSetRadioPower(ZI)V

    .line 406
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v2    # "singlePhonePower":Z
    :cond_3
    move v2, v3

    .line 407
    goto :goto_1

    .line 416
    .restart local v2    # "singlePhonePower":Z
    :cond_4
    if-ne v1, v3, :cond_2

    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/RadioManager;->isAllowRadioPowerOn(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 418
    invoke-virtual {p0, v3, v8}, Lcom/mediatek/internal/telephony/RadioManager;->forceSetRadioPower(ZI)V

    goto :goto_2
.end method

.method private onReceiveSimStateChangedIntent(Landroid/content/Intent;)V
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v10, 0xb

    const/16 v9, 0xa

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 313
    const-string v5, "ss"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 316
    .local v4, "simStatus":Ljava/lang/String;
    const-string v5, "phone"

    const/4 v6, -0x1

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 318
    .local v2, "phoneId":I
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/RadioManager;->isValidPhoneId(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 319
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "INTENT:Invalid phone id:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", do nothing!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 396
    :cond_0
    :goto_0
    return-void

    .line 323
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "INTENT:SIM_STATE_CHANGED: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", sim status: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", phoneId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 325
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "gsm.ril.cardtypeset"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "gsm.ril.cardtypeset.2"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 330
    :cond_2
    const/4 v0, 0x1

    .line 332
    .local v0, "desiredRadioPower":Z
    const-string v5, "READY"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "LOCKED"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "LOADED"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 335
    :cond_3
    iget-object v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mSimInsertedStatus:[I

    aput v7, v5, v2

    .line 336
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Phone["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/RadioManager;->simStatusToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 339
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/RadioManager;->readIccIdUsingPhoneId(I)Ljava/lang/String;

    move-result-object v1

    .line 340
    .local v1, "iccid":Ljava/lang/String;
    const-string v5, "N/A"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 341
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "LOADED"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getCdmaSocketSlotId()I

    move-result v5

    if-ne v2, v5, :cond_4

    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getInstance()Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->isUsimWithCsim(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 345
    const-string v5, "CT 4G card SIM state loaded, c2k iccid not ready, wait for it..."

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 346
    new-instance v3, Lcom/mediatek/internal/telephony/RadioManager$SimStateChangedRunnable;

    invoke-direct {v3, p0, p1}, Lcom/mediatek/internal/telephony/RadioManager$SimStateChangedRunnable;-><init>(Lcom/mediatek/internal/telephony/RadioManager;Landroid/content/Intent;)V

    .line 347
    .local v3, "simStateChangedRunnable":Lcom/mediatek/internal/telephony/RadioManager$SimStateChangedRunnable;
    const-wide/16 v6, 0xc8

    invoke-virtual {p0, v3, v6, v7}, Lcom/mediatek/internal/telephony/RadioManager;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 350
    .end local v3    # "simStateChangedRunnable":Lcom/mediatek/internal/telephony/RadioManager$SimStateChangedRunnable;
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Phone "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":SIM ready but ICCID not ready, do nothing"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 353
    :cond_5
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getCdmaSocketSlotId()I

    move-result v5

    if-ne v2, v5, :cond_6

    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getInstance()Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->isHaveCard(I)Z

    move-result v5

    if-nez v5, :cond_6

    .line 356
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Phone "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": No card, do nothing"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 360
    :cond_6
    const/4 v0, 0x1

    .line 361
    iget-boolean v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneMode:Z

    if-nez v5, :cond_0

    .line 362
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Set Radio Power due to SIM_STATE_CHANGED, power: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", phoneId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 363
    invoke-virtual {p0, v0, v2}, Lcom/mediatek/internal/telephony/RadioManager;->setRadioPower(ZI)V

    .line 364
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getInstance()Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->isUsimWithCsim(I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getCdmaSocketSlotId()I

    move-result v5

    if-ne v2, v5, :cond_0

    .line 367
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SVLTE phone id:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " SIM_STATE_CHANGED, need to check card type for LTE phone radio"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 369
    if-nez v2, :cond_7

    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/RadioManager;->isAllowRadioPowerOn(I)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->getEngineerMode()I

    move-result v5

    if-eq v5, v7, :cond_7

    .line 372
    invoke-virtual {p0, v0, v9}, Lcom/mediatek/internal/telephony/RadioManager;->setRadioPower(ZI)V

    goto/16 :goto_0

    .line 373
    :cond_7
    if-ne v2, v7, :cond_0

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/RadioManager;->isAllowRadioPowerOn(I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->getEngineerMode()I

    move-result v5

    if-eq v5, v7, :cond_0

    .line 376
    invoke-virtual {p0, v0, v10}, Lcom/mediatek/internal/telephony/RadioManager;->setRadioPower(ZI)V

    goto/16 :goto_0

    .line 382
    .end local v1    # "iccid":Ljava/lang/String;
    :cond_8
    const-string v5, "ABSENT"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 383
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getCdmaSocketSlotId()I

    move-result v5

    if-ne v2, v5, :cond_9

    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getInstance()Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->isHaveCard(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 388
    :cond_9
    iget-object v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mSimInsertedStatus:[I

    aput v8, v5, v2

    .line 389
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Phone["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/RadioManager;->simStatusToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 390
    const/4 v0, 0x0

    .line 391
    iget-boolean v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneMode:Z

    if-nez v5, :cond_0

    .line 392
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Set Radio Power due to SIM_STATE_CHANGED, power: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", phoneId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 393
    invoke-virtual {p0, v0, v2}, Lcom/mediatek/internal/telephony/RadioManager;->setRadioPower(ZI)V

    goto/16 :goto_0
.end method

.method private putIccIdToPreference(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V
    .locals 2
    .param p1, "editor"    # Landroid/content/SharedPreferences$Editor;
    .param p2, "iccid"    # Ljava/lang/String;

    .prologue
    .line 1457
    if-eqz p2, :cond_0

    .line 1458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Add radio off SIM: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1459
    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1461
    :cond_0
    return-void
.end method

.method private readIccIdUsingPhoneId(I)Ljava/lang/String;
    .locals 14
    .param p1, "phoneId"    # I

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 1036
    const/4 v6, 0x0

    .line 1037
    .local v6, "ret":Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v8

    if-nez v8, :cond_0

    .line 1038
    iget-object v8, p0, Lcom/mediatek/internal/telephony/RadioManager;->PROPERTY_ICCID_SIM:[Ljava/lang/String;

    aget-object v8, v8, p1

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1039
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Common ICCID for phone "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    move-object v7, v6

    .line 1130
    .end local v6    # "ret":Ljava/lang/String;
    .local v7, "ret":Ljava/lang/String;
    :goto_0
    return-object v7

    .line 1043
    .end local v7    # "ret":Ljava/lang/String;
    .restart local v6    # "ret":Ljava/lang/String;
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    .line 1044
    .local v4, "phoneCount":I
    new-array v0, v4, [I

    .line 1045
    .local v0, "cardType":[I
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->isSvlteTestSimMode()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1046
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v4, :cond_2

    .line 1047
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/RadioManager;->getFullCardType(I)I

    move-result v8

    aput v8, v0, v1

    .line 1048
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SvlteTestSimMode,  cardType["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget v9, v0, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1046
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1051
    .end local v1    # "i":I
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/uicc/UiccController;->getC2KWPCardType()[I

    move-result-object v0

    .line 1053
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "solution2 readIccIdUsingPhoneId: phoneId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " cardType="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1056
    if-eqz p1, :cond_3

    const/16 v8, 0xa

    if-ne p1, v8, :cond_e

    .line 1058
    :cond_3
    invoke-static {v11}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getRadioTechnologyMode(I)I

    move-result v5

    .line 1059
    .local v5, "radioTechMode":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "readIccIdUsingPhoneId: slot1 radioTechMode="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1060
    if-ne v5, v13, :cond_9

    .line 1062
    iget-object v8, p0, Lcom/mediatek/internal/telephony/RadioManager;->PROPERTY_ICCID_SIM:[Ljava/lang/String;

    aget-object v8, v8, v11

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1063
    .local v3, "iccidCommon":Ljava/lang/String;
    if-eqz v3, :cond_4

    const-string v8, ""

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "N/A"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    :cond_4
    aget v8, v0, v11

    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/RadioManager;->isCdmaOnly(I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1065
    const-string v8, "ril.iccid.sim1_c2k"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1066
    .local v2, "iccidC2K":Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getActiveSvlteModeSlotId()I

    move-result v8

    if-nez v8, :cond_6

    if-eqz v2, :cond_6

    const-string v8, ""

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 1067
    iget-object v8, p0, Lcom/mediatek/internal/telephony/RadioManager;->PROPERTY_ICCID_SIM:[Ljava/lang/String;

    aget-object v8, v8, v11

    invoke-static {v8, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1068
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "readIccIdUsingPhoneId: update iccid[0] use iccidC2K:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1074
    .end local v2    # "iccidC2K":Ljava/lang/String;
    :cond_5
    :goto_2
    if-nez p1, :cond_8

    .line 1076
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->isSvlteTestSimMode()Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/mediatek/internal/telephony/RadioManager;->PROPERTY_ICCID_SIM:[Ljava/lang/String;

    aget-object v8, v8, v11

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1129
    .end local v3    # "iccidCommon":Ljava/lang/String;
    .end local v5    # "radioTechMode":I
    :goto_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ICCID for phone "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    move-object v7, v6

    .line 1130
    .end local v6    # "ret":Ljava/lang/String;
    .restart local v7    # "ret":Ljava/lang/String;
    goto/16 :goto_0

    .line 1070
    .end local v7    # "ret":Ljava/lang/String;
    .restart local v2    # "iccidC2K":Ljava/lang/String;
    .restart local v3    # "iccidCommon":Ljava/lang/String;
    .restart local v5    # "radioTechMode":I
    .restart local v6    # "ret":Ljava/lang/String;
    :cond_6
    const-string v8, "readIccIdUsingPhoneId: CDMA only iccid not ready"

    invoke-static {v8}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 1076
    .end local v2    # "iccidC2K":Ljava/lang/String;
    :cond_7
    const-string v8, "ril.iccid.sim1_c2k"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    .line 1080
    :cond_8
    iget-object v8, p0, Lcom/mediatek/internal/telephony/RadioManager;->PROPERTY_ICCID_SIM:[Ljava/lang/String;

    aget-object v8, v8, v11

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    .line 1082
    .end local v3    # "iccidCommon":Ljava/lang/String;
    :cond_9
    if-ne v5, v12, :cond_d

    .line 1083
    if-eqz p1, :cond_a

    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/RadioManager;->getFullCardType(I)I

    move-result v8

    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/RadioManager;->isGsmCard(I)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 1084
    :cond_a
    iget-object v8, p0, Lcom/mediatek/internal/telephony/RadioManager;->PROPERTY_ICCID_SIM:[Ljava/lang/String;

    aget-object v8, v8, v11

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    .line 1087
    :cond_b
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->isSvlteTestSimMode()Z

    move-result v8

    if-eqz v8, :cond_c

    iget-object v8, p0, Lcom/mediatek/internal/telephony/RadioManager;->PROPERTY_ICCID_SIM:[Ljava/lang/String;

    aget-object v8, v8, v11

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_4
    goto :goto_3

    :cond_c
    const-string v8, "ril.iccid.sim1_c2k"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    .line 1092
    :cond_d
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "readIccIdUsingPhoneId: invalid radioTechMode="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 1094
    .end local v5    # "radioTechMode":I
    :cond_e
    if-eq p1, v10, :cond_f

    const/16 v8, 0xb

    if-ne p1, v8, :cond_18

    .line 1096
    :cond_f
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getRadioTechnologyMode(I)I

    move-result v5

    .line 1097
    .restart local v5    # "radioTechMode":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "readIccIdUsingPhoneId: slot2 radioTechMode="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1098
    if-ne v5, v13, :cond_14

    .line 1100
    iget-object v8, p0, Lcom/mediatek/internal/telephony/RadioManager;->PROPERTY_ICCID_SIM:[Ljava/lang/String;

    aget-object v8, v8, v10

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1101
    .restart local v3    # "iccidCommon":Ljava/lang/String;
    if-eqz v3, :cond_10

    const-string v8, ""

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_10

    const-string v8, "N/A"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    :cond_10
    aget v8, v0, v10

    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/RadioManager;->isCdmaOnly(I)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 1103
    const-string v8, "ril.iccid.sim1_c2k"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1104
    .restart local v2    # "iccidC2K":Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getActiveSvlteModeSlotId()I

    move-result v8

    if-ne v8, v10, :cond_12

    if-eqz v2, :cond_12

    const-string v8, ""

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_12

    .line 1105
    iget-object v8, p0, Lcom/mediatek/internal/telephony/RadioManager;->PROPERTY_ICCID_SIM:[Ljava/lang/String;

    aget-object v8, v8, v10

    invoke-static {v8, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1106
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "readIccIdUsingPhoneId: update iccid[1] use iccidC2K:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1112
    .end local v2    # "iccidC2K":Ljava/lang/String;
    :cond_11
    :goto_5
    if-ne p1, v10, :cond_13

    .line 1113
    const-string v8, "ril.iccid.sim1_c2k"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_3

    .line 1108
    .restart local v2    # "iccidC2K":Ljava/lang/String;
    :cond_12
    const-string v8, "readIccIdUsingPhoneId: CDMA only iccid not ready"

    invoke-static {v8}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    goto :goto_5

    .line 1115
    .end local v2    # "iccidC2K":Ljava/lang/String;
    :cond_13
    iget-object v8, p0, Lcom/mediatek/internal/telephony/RadioManager;->PROPERTY_ICCID_SIM:[Ljava/lang/String;

    aget-object v8, v8, v10

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_3

    .line 1117
    .end local v3    # "iccidCommon":Ljava/lang/String;
    :cond_14
    if-ne v5, v12, :cond_17

    .line 1118
    if-eq p1, v10, :cond_15

    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/RadioManager;->getFullCardType(I)I

    move-result v8

    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/RadioManager;->isGsmCard(I)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 1119
    :cond_15
    iget-object v8, p0, Lcom/mediatek/internal/telephony/RadioManager;->PROPERTY_ICCID_SIM:[Ljava/lang/String;

    aget-object v8, v8, v10

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_3

    .line 1121
    :cond_16
    const-string v8, "ril.iccid.sim1_c2k"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_3

    .line 1124
    :cond_17
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "readIccIdUsingPhoneId: invalid radioTechMode="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1127
    .end local v5    # "radioTechMode":I
    :cond_18
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "readIccIdUsingPhoneId: invalid phoneId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method private refreshIccIdPreference(ZLjava/lang/String;)V
    .locals 2
    .param p1, "power"    # Z
    .param p2, "iccid"    # Ljava/lang/String;

    .prologue
    .line 1446
    const-string v1, "refresh iccid preference"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1447
    sget-object v1, Lcom/mediatek/internal/telephony/RadioManager;->mIccidPreference:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1448
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    if-nez p1, :cond_0

    const-string v1, "N/A"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1449
    invoke-direct {p0, v0, p2}, Lcom/mediatek/internal/telephony/RadioManager;->putIccIdToPreference(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V

    .line 1453
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1454
    return-void

    .line 1451
    :cond_0
    invoke-direct {p0, v0, p2}, Lcom/mediatek/internal/telephony/RadioManager;->removeIccIdFromPreference(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private refreshSimSetting(ZI)V
    .locals 6
    .param p1, "radioPower"    # Z
    .param p2, "phoneId"    # I

    .prologue
    const/16 v4, 0xb

    const/16 v3, 0xa

    const/4 v5, 0x1

    .line 1193
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1194
    if-eqz p1, :cond_3

    .line 1195
    if-ne p2, v3, :cond_2

    .line 1196
    const/4 p2, 0x0

    .line 1210
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "msim_mode_setting"

    iget v4, p0, Lcom/mediatek/internal/telephony/RadioManager;->mBitmapForPhoneCount:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1212
    .local v1, "simMode":I
    move v0, v1

    .line 1214
    .local v0, "oldMode":I
    if-nez p1, :cond_5

    .line 1215
    shl-int v2, v5, p2

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    .line 1220
    :goto_1
    if-eq v1, v0, :cond_1

    .line 1221
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Refresh MSIM mode setting to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1222
    iget-object v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "msim_mode_setting"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1225
    .end local v0    # "oldMode":I
    .end local v1    # "simMode":I
    :cond_1
    :goto_2
    return-void

    .line 1197
    :cond_2
    if-ne p2, v4, :cond_0

    .line 1198
    const/4 p2, 0x1

    goto :goto_0

    .line 1202
    :cond_3
    if-eq p2, v3, :cond_4

    if-ne p2, v4, :cond_0

    .line 1204
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshSimSetting phoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", not update SimSetting!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 1217
    .restart local v0    # "oldMode":I
    .restart local v1    # "simMode":I
    :cond_5
    shl-int v2, v5, p2

    or-int/2addr v1, v2

    goto :goto_1
.end method

.method public static declared-synchronized registerForRadioPowerChange(Ljava/lang/String;Lcom/mediatek/internal/telephony/IRadioPower;)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "iRadioPower"    # Lcom/mediatek/internal/telephony/IRadioPower;

    .prologue
    .line 1680
    const-class v1, Lcom/mediatek/internal/telephony/RadioManager;

    monitor-enter v1

    if-nez p0, :cond_0

    .line 1681
    :try_start_0
    const-string p0, "NO_NAME"

    .line 1683
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " registerForRadioPowerChange"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1684
    sget-object v0, Lcom/mediatek/internal/telephony/RadioManager;->mNotifyRadioPowerChange:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1685
    monitor-exit v1

    return-void

    .line 1680
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private removeIccIdFromPreference(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V
    .locals 2
    .param p1, "editor"    # Landroid/content/SharedPreferences$Editor;
    .param p2, "iccid"    # Ljava/lang/String;

    .prologue
    .line 1464
    if-eqz p2, :cond_0

    .line 1465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Remove radio off SIM: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1466
    invoke-interface {p1, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1468
    :cond_0
    return-void
.end method

.method private resetSimInsertedStatus(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 1606
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reset Sim InsertedStatus for Phone:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1607
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager;->mSimInsertedStatus:[I

    const/4 v1, -0x1

    aput v1, v0, p1

    .line 1608
    return-void
.end method

.method public static sendRequestBeforeSetRadioPower(ZI)V
    .locals 2
    .param p0, "power"    # Z
    .param p1, "phoneId"    # I

    .prologue
    .line 1476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Send request before EFUN, power:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " phoneId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1478
    invoke-static {p0, p1}, Lcom/mediatek/internal/telephony/RadioManager;->notifyRadioPowerChange(ZI)V

    .line 1479
    return-void
.end method

.method private setAirplaneMode(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 1596
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set mAirplaneMode as:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1597
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneMode:Z

    .line 1598
    return-void
.end method

.method private setSilentRebootPropertyForAllModem(Ljava/lang/String;)V
    .locals 3
    .param p1, "isSilentReboot"    # Ljava/lang/String;

    .prologue
    .line 561
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getMultiSimConfiguration()Landroid/telephony/TelephonyManager$MultiSimVariants;

    move-result-object v0

    .line 562
    .local v0, "config":Landroid/telephony/TelephonyManager$MultiSimVariants;
    sget-object v1, Lcom/mediatek/internal/telephony/RadioManager$2;->$SwitchMap$android$telephony$TelephonyManager$MultiSimVariants:[I

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager$MultiSimVariants;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 580
    const-string v1, "set eboot under SS"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 581
    const-string v1, "gsm.ril.eboot"

    invoke-static {v1, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 583
    const-string v1, "cdma.ril.eboot"

    invoke-static {v1, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    :cond_0
    :goto_0
    return-void

    .line 564
    :pswitch_0
    const-string v1, "set eboot under DSDS"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 565
    const-string v1, "gsm.ril.eboot"

    invoke-static {v1, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 568
    :pswitch_1
    const-string v1, "set eboot under DSDA"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 569
    const-string v1, "gsm.ril.eboot"

    invoke-static {v1, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    const-string v1, "gsm.ril.eboot.2"

    invoke-static {v1, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 572
    const-string v1, "cdma.ril.eboot"

    invoke-static {v1, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 576
    :pswitch_2
    const-string v1, "set eboot under TSTS"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 577
    const-string v1, "gsm.ril.eboot"

    invoke-static {v1, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 562
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setSimInsertedStatus(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    .line 1007
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1008
    const/16 v1, 0xa

    if-eq p1, v1, :cond_0

    const/16 v1, 0xb

    if-ne p1, v1, :cond_1

    .line 1020
    :cond_0
    :goto_0
    return-void

    .line 1014
    :cond_1
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/RadioManager;->readIccIdUsingPhoneId(I)Ljava/lang/String;

    move-result-object v0

    .line 1015
    .local v0, "iccId":Ljava/lang/String;
    const-string v1, "N/A"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1016
    iget-object v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mSimInsertedStatus:[I

    const/4 v2, 0x0

    aput v2, v1, p1

    goto :goto_0

    .line 1018
    :cond_2
    iget-object v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mSimInsertedStatus:[I

    const/4 v2, 0x1

    aput v2, v1, p1

    goto :goto_0
.end method

.method private simStatusToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "simStatus"    # I

    .prologue
    .line 434
    const/4 v0, 0x0

    .line 435
    .local v0, "result":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 446
    :goto_0
    return-object v0

    .line 437
    :pswitch_0
    const-string v0, "SIM HAVE NOT INITIALIZED"

    .line 438
    goto :goto_0

    .line 440
    :pswitch_1
    const-string v0, "SIM DETECTED"

    .line 441
    goto :goto_0

    .line 443
    :pswitch_2
    const-string v0, "NO SIM DETECTED"

    goto :goto_0

    .line 435
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private turnOffCTARadioIfNecessary()V
    .locals 3

    .prologue
    .line 1175
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPhoneCount:I

    if-ge v0, v1, :cond_0

    .line 1176
    iget-object v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mSimInsertedStatus:[I

    aget v1, v1, v0

    if-nez v1, :cond_2

    .line 1177
    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->isModemPowerOff(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1178
    const-string v1, "modem off, not to handle CTA"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1186
    :cond_0
    return-void

    .line 1181
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "turn off phone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " radio because we are no longer in CTA mode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1182
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 1175
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static declared-synchronized unregisterForRadioPowerChange(Lcom/mediatek/internal/telephony/IRadioPower;)V
    .locals 3
    .param p0, "iRadioPower"    # Lcom/mediatek/internal/telephony/IRadioPower;

    .prologue
    .line 1688
    const-class v1, Lcom/mediatek/internal/telephony/RadioManager;

    monitor-enter v1

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/mediatek/internal/telephony/RadioManager;->mNotifyRadioPowerChange:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " unregisterForRadioPowerChange"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1689
    sget-object v0, Lcom/mediatek/internal/telephony/RadioManager;->mNotifyRadioPowerChange:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1690
    monitor-exit v1

    return-void

    .line 1688
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private updateMsimModeRadioPower(ZI)V
    .locals 4
    .param p1, "power"    # Z
    .param p2, "phoneId"    # I

    .prologue
    .line 964
    invoke-static {p2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 965
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getCdmaSocketSlotId()I

    move-result v1

    .line 966
    .local v1, "svlteSlot":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateMsimModeRadioPower: power="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " phoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " svlteSlot="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 967
    if-ne v1, p2, :cond_0

    .line 968
    if-nez p1, :cond_1

    .line 969
    invoke-static {p2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/PhoneBase;->setRadioPower(Z)V

    .line 982
    :cond_0
    :goto_0
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 1003
    return-void

    .line 971
    :cond_1
    if-nez p2, :cond_2

    const/16 v2, 0xa

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/RadioManager;->isAllowRadioPowerOn(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 973
    invoke-static {p2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/PhoneBase;->setRadioPower(Z)V

    goto :goto_0

    .line 974
    :cond_2
    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    const/16 v2, 0xb

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/RadioManager;->isAllowRadioPowerOn(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 976
    invoke-static {p2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/PhoneBase;->setRadioPower(Z)V

    goto :goto_0
.end method

.method private updatePhoneRadioPower(ZI)V
    .locals 3
    .param p1, "power"    # Z
    .param p2, "phoneId"    # I

    .prologue
    .line 870
    invoke-static {p2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getPhoneById(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 871
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    if-nez v0, :cond_0

    .line 872
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePhoneRadioPower: phone"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is null, skip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 933
    :goto_0
    return-void

    .line 875
    :cond_0
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    goto :goto_0
.end method


# virtual methods
.method public forceAllowAirplaneModeChange(Z)V
    .locals 1
    .param p1, "forceSwitch"    # Z

    .prologue
    .line 1759
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneRequestHandler:Lcom/mediatek/internal/telephony/AirplaneRequestHandler;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->setForceSwitch(Z)V

    .line 1760
    return-void
.end method

.method public forceSetRadioPower(ZI)V
    .locals 6
    .param p1, "power"    # Z
    .param p2, "phoneId"    # I

    .prologue
    const-wide/16 v4, 0xc8

    .line 1259
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "force set radio power for phone"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,power: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1261
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->isFlightModePowerOffModemEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneMode:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 1262
    const-string v2, "Force Set Radio Power under airplane mode, ignore"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1303
    :cond_0
    :goto_0
    return-void

    .line 1266
    :cond_1
    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->bIsInIpoShutdown:Z

    if-eqz v2, :cond_2

    .line 1267
    const-string v2, "Force Set Radio Power under ipo shutdown, ignore"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1271
    :cond_2
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "ril.cdma.emdstatus.send"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1273
    new-instance v0, Lcom/mediatek/internal/telephony/RadioManager$ForceSetRadioPowerRunnable;

    invoke-direct {v0, p0, p1, p2}, Lcom/mediatek/internal/telephony/RadioManager$ForceSetRadioPowerRunnable;-><init>(Lcom/mediatek/internal/telephony/RadioManager;ZI)V

    .line 1275
    .local v0, "forceSetRadioPowerRunnable":Lcom/mediatek/internal/telephony/RadioManager$ForceSetRadioPowerRunnable;
    invoke-virtual {p0, v0, v4, v5}, Lcom/mediatek/internal/telephony/RadioManager;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1284
    .end local v0    # "forceSetRadioPowerRunnable":Lcom/mediatek/internal/telephony/RadioManager$ForceSetRadioPowerRunnable;
    :cond_3
    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/RadioManager;->isIccIdReady(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1285
    const-string v2, "force set radio power, read iccid not ready, wait for200ms"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1287
    new-instance v0, Lcom/mediatek/internal/telephony/RadioManager$ForceSetRadioPowerRunnable;

    invoke-direct {v0, p0, p1, p2}, Lcom/mediatek/internal/telephony/RadioManager$ForceSetRadioPowerRunnable;-><init>(Lcom/mediatek/internal/telephony/RadioManager;ZI)V

    .line 1289
    .restart local v0    # "forceSetRadioPowerRunnable":Lcom/mediatek/internal/telephony/RadioManager$ForceSetRadioPowerRunnable;
    invoke-virtual {p0, v0, v4, v5}, Lcom/mediatek/internal/telephony/RadioManager;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1294
    .end local v0    # "forceSetRadioPowerRunnable":Lcom/mediatek/internal/telephony/RadioManager$ForceSetRadioPowerRunnable;
    :cond_4
    move v1, p1

    .line 1295
    .local v1, "radioPower":Z
    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/RadioManager;->readIccIdUsingPhoneId(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/mediatek/internal/telephony/RadioManager;->refreshIccIdPreference(ZLjava/lang/String;)V

    .line 1296
    invoke-static {p2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 1297
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getInstance()Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->isUsimWithCsim(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getCdmaSocketSlotId()I

    move-result v2

    if-ne p2, v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->isMtkIndiaC2k5MSupport()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1300
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "forceSetRadioPower: CT 4G card need turn LTE radio: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1301
    invoke-static {p2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/PhoneBase;->setRadioPower(Z)V

    goto/16 :goto_0
.end method

.method public forceSetRadioPower(ZIZ)V
    .locals 2
    .param p1, "power"    # Z
    .param p2, "phoneId"    # I
    .param p3, "isEccOn"    # Z

    .prologue
    .line 1313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "force set radio power isEccOn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1314
    iput-boolean p3, p0, Lcom/mediatek/internal/telephony/RadioManager;->mIsEccCall:Z

    .line 1315
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/internal/telephony/RadioManager;->forceSetRadioPower(ZI)V

    .line 1316
    return-void
.end method

.method public getAirplaneRequestHandler()Lcom/mediatek/internal/telephony/AirplaneRequestHandler;
    .locals 1

    .prologue
    .line 1751
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneRequestHandler:Lcom/mediatek/internal/telephony/AirplaneRequestHandler;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1616
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/RadioManager;->getCiIndex(Landroid/os/Message;)I

    move-result v1

    .line 1618
    .local v1, "phoneIdForMsg":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage msg.what: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/RadioManager;->eventIdtoString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1619
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 1637
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1640
    :cond_0
    :goto_0
    return-void

    .line 1621
    :pswitch_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPhoneCount:I

    if-ge v0, v2, :cond_2

    .line 1622
    iget-object v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isAvailable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1623
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "phone "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "is not available, so return"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1621
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1627
    :cond_2
    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->bIsQueueIpoShutdown:Z

    if-eqz v2, :cond_0

    .line 1628
    const-string v2, "bIsQueueIpoShutdown is true"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1629
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/RadioManager;->doIpoShutDown()V

    .line 1630
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->bIsQueueIpoShutdown:Z

    goto :goto_0

    .line 1634
    .end local v0    # "i":I
    :pswitch_1
    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1}, Lcom/mediatek/internal/telephony/RadioManager;->forceSetRadioPower(ZI)V

    goto :goto_0

    .line 1619
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isAllowAirplaneModeChange()Z
    .locals 1

    .prologue
    .line 1743
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneRequestHandler:Lcom/mediatek/internal/telephony/AirplaneRequestHandler;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->allowSwitching()Z

    move-result v0

    return v0
.end method

.method public isSvlteTestSimAllowPowerOn(I)Z
    .locals 9
    .param p1, "phoneId"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 937
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->isSvlteTestSimMode()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 938
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    .line 939
    .local v3, "phoneCount":I
    new-array v0, v3, [I

    .line 940
    .local v0, "cardType":[I
    const/4 v4, 0x0

    .line 941
    .local v4, "type":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 942
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/RadioManager;->getFullCardType(I)I

    move-result v5

    aput v5, v0, v1

    .line 943
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SvlteTestSimMode,  cardType["

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "]="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v8, v0, v1

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 941
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 945
    :cond_0
    if-eqz p1, :cond_1

    const/16 v5, 0xa

    if-ne p1, v5, :cond_3

    .line 946
    :cond_1
    aget v4, v0, v6

    .line 950
    :cond_2
    :goto_1
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    check-cast v5, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v5, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getPhoneById(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/PhoneBase;

    .line 952
    .local v2, "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    if-eqz v2, :cond_5

    .line 953
    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneName()Ljava/lang/String;

    move-result-object v5

    const-string v8, "CDMA"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/RadioManager;->isNonCdma(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 954
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SvlteTestSimMode: skip CDMA power on phone: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    move v5, v6

    .line 960
    .end local v0    # "cardType":[I
    .end local v1    # "i":I
    .end local v2    # "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    .end local v3    # "phoneCount":I
    .end local v4    # "type":I
    :goto_2
    return v5

    .line 947
    .restart local v0    # "cardType":[I
    .restart local v1    # "i":I
    .restart local v3    # "phoneCount":I
    .restart local v4    # "type":I
    :cond_3
    if-eq p1, v7, :cond_4

    const/16 v5, 0xb

    if-ne p1, v5, :cond_2

    .line 948
    :cond_4
    aget v4, v0, v7

    goto :goto_1

    .line 959
    .end local v0    # "cardType":[I
    .end local v1    # "i":I
    .end local v3    # "phoneCount":I
    .end local v4    # "type":I
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SvlteTestSimMode: power on phone: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    move v5, v7

    .line 960
    goto :goto_2
.end method

.method public notifyAirplaneModeChange(Z)V
    .locals 6
    .param p1, "enabled"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 481
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 482
    iget-object v3, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneRequestHandler:Lcom/mediatek/internal/telephony/AirplaneRequestHandler;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->allowSwitching()Z

    move-result v3

    if-nez v3, :cond_1

    .line 483
    const-string v3, "airplane mode switching, not allow switch now "

    invoke-static {v3}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 484
    iget-object v3, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneRequestHandler:Lcom/mediatek/internal/telephony/AirplaneRequestHandler;

    invoke-virtual {v3, p1}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->pendingAirplaneModeRequest(Z)V

    .line 545
    :cond_0
    :goto_0
    return-void

    .line 491
    :cond_1
    iget-boolean v3, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneMode:Z

    if-ne p1, v3, :cond_2

    .line 492
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mAirplaneMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "is not expected (the same)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 496
    :cond_2
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneMode:Z

    .line 497
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Airplane mode changed:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 499
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->isFlightModePowerOffModemEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/RadioManager;->isUnderCryptKeeper()Z

    move-result v3

    if-nez v3, :cond_5

    .line 500
    const-string v3, "Airplane mode changed: turn on/off all modem"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 501
    if-eqz p1, :cond_4

    .line 503
    .local v1, "modemPower":Z
    :goto_1
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 504
    iget-object v3, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneRequestHandler:Lcom/mediatek/internal/telephony/AirplaneRequestHandler;

    invoke-virtual {v3, v1, v4}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->onAirplaneChangeStarted(ZZ)V

    .line 507
    :cond_3
    const-string v3, "1"

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/RadioManager;->setSilentRebootPropertyForAllModem(Ljava/lang/String;)V

    .line 508
    iget v3, p0, Lcom/mediatek/internal/telephony/RadioManager;->mBitmapForPhoneCount:I

    invoke-virtual {p0, v1, v3}, Lcom/mediatek/internal/telephony/RadioManager;->setModemPower(ZI)V

    .line 509
    const-string v3, "ril.cdma.emdstatus.send"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 512
    iget-object v3, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneRequestHandler:Lcom/mediatek/internal/telephony/AirplaneRequestHandler;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->monitorAirplaneChangeDone()V

    goto :goto_0

    .end local v1    # "modemPower":Z
    :cond_4
    move v1, v4

    .line 501
    goto :goto_1

    .line 515
    :cond_5
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->isMSimModeSupport()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 516
    const-string v3, "Airplane mode changed: turn on/off all radio"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 517
    if-eqz p1, :cond_8

    move v2, v1

    .line 519
    .local v2, "radioPower":Z
    :goto_2
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 520
    iget-object v3, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneRequestHandler:Lcom/mediatek/internal/telephony/AirplaneRequestHandler;

    invoke-virtual {v3, v2, v1}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->onAirplaneChangeStarted(ZZ)V

    .line 523
    :cond_6
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    iget v3, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPhoneCount:I

    if-ge v0, v3, :cond_b

    .line 524
    invoke-virtual {p0, v2, v0}, Lcom/mediatek/internal/telephony/RadioManager;->setRadioPower(ZI)V

    .line 525
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 526
    if-nez v2, :cond_9

    .line 527
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    check-cast v3, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/PhoneBase;->setRadioPower(Z)V

    .line 523
    :cond_7
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .end local v0    # "i":I
    .end local v2    # "radioPower":Z
    :cond_8
    move v2, v4

    .line 517
    goto :goto_2

    .line 529
    .restart local v0    # "i":I
    .restart local v2    # "radioPower":Z
    :cond_9
    if-nez v0, :cond_a

    const/16 v3, 0xa

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/RadioManager;->isAllowRadioPowerOn(I)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 531
    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/PhoneBase;->setRadioPower(Z)V

    goto :goto_4

    .line 532
    :cond_a
    if-ne v0, v4, :cond_7

    const/16 v3, 0xb

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/RadioManager;->isAllowRadioPowerOn(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 534
    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/PhoneBase;->setRadioPower(Z)V

    goto :goto_4

    .line 540
    :cond_b
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 541
    iget-object v3, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneRequestHandler:Lcom/mediatek/internal/telephony/AirplaneRequestHandler;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->monitorAirplaneChangeDone()V

    goto/16 :goto_0
.end method

.method public notifyIpoPreBoot()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 627
    const-string v0, "IPO preboot!"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 628
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->bIsInIpoShutdown:Z

    .line 629
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->bIsQueueIpoShutdown:Z

    .line 630
    const-string v0, "0"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/RadioManager;->setSilentRebootPropertyForAllModem(Ljava/lang/String;)V

    .line 631
    const/4 v0, 0x1

    iget v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mBitmapForPhoneCount:I

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/internal/telephony/RadioManager;->setModemPower(ZI)V

    .line 632
    return-void
.end method

.method public notifyIpoShutDown()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 602
    const-string v1, "notify IPO shutdown!"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 603
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/RadioManager;->bIsInIpoShutdown:Z

    .line 605
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 608
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCi["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "].getRadioState().isAvailable(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isAvailable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 609
    iget-object v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 610
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/RadioManager;->bIsQueueIpoShutdown:Z

    .line 605
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 615
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/RadioManager;->doIpoShutDown()V

    .line 616
    return-void
.end method

.method public notifyMSimModeChange(I)V
    .locals 7
    .param p1, "mode"    # I

    .prologue
    const/4 v4, 0x1

    .line 1400
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MSIM mode changed, mode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1401
    const/4 v5, -0x1

    if-ne p1, v5, :cond_1

    .line 1402
    const-string v4, "Invalid mode, MSIM_MODE intent has no extra value"

    invoke-static {v4}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1443
    :cond_0
    :goto_0
    return-void

    .line 1405
    :cond_1
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->isMSimModeSupport()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneMode:Z

    if-ne v5, v4, :cond_3

    .line 1406
    :cond_2
    const-string v4, "Airplane mode on or MSIM Mode option is closed, do nothing!"

    invoke-static {v4}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1410
    :cond_3
    const/4 v2, 0x0

    .line 1411
    .local v2, "phoneId":I
    const/4 v0, 0x1

    .line 1412
    .local v0, "iccIdReady":Z
    const/4 v2, 0x0

    :goto_1
    iget v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPhoneCount:I

    if-ge v2, v5, :cond_4

    .line 1413
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/RadioManager;->isIccIdReady(I)Z

    move-result v5

    if-nez v5, :cond_5

    .line 1414
    const/4 v0, 0x0

    .line 1418
    :cond_4
    if-nez v0, :cond_6

    .line 1419
    const-string v4, "msim mode read iccid not ready, wait for 200ms"

    invoke-static {v4}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1421
    new-instance v1, Lcom/mediatek/internal/telephony/RadioManager$MSimModeChangeRunnable;

    invoke-direct {v1, p0, p1}, Lcom/mediatek/internal/telephony/RadioManager$MSimModeChangeRunnable;-><init>(Lcom/mediatek/internal/telephony/RadioManager;I)V

    .line 1423
    .local v1, "notifyMSimModeChangeRunnable":Lcom/mediatek/internal/telephony/RadioManager$MSimModeChangeRunnable;
    const-wide/16 v4, 0xc8

    invoke-virtual {p0, v1, v4, v5}, Lcom/mediatek/internal/telephony/RadioManager;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1412
    .end local v1    # "notifyMSimModeChangeRunnable":Lcom/mediatek/internal/telephony/RadioManager$MSimModeChangeRunnable;
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1427
    :cond_6
    const/4 v2, 0x0

    :goto_2
    iget v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPhoneCount:I

    if-ge v2, v5, :cond_0

    .line 1428
    shl-int v5, v4, v2

    and-int/2addr v5, p1

    if-nez v5, :cond_8

    const/4 v3, 0x0

    .line 1429
    .local v3, "singlePhonePower":Z
    :goto_3
    const-string v5, "N/A"

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/RadioManager;->readIccIdUsingPhoneId(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1430
    const/4 v3, 0x0

    .line 1431
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "phoneId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " sim not insert, set  power  to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1433
    :cond_7
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/RadioManager;->readIccIdUsingPhoneId(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v5}, Lcom/mediatek/internal/telephony/RadioManager;->refreshIccIdPreference(ZLjava/lang/String;)V

    .line 1434
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Set Radio Power due to MSIM mode change, power: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", phoneId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1436
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1437
    invoke-direct {p0, v3, v2}, Lcom/mediatek/internal/telephony/RadioManager;->updateMsimModeRadioPower(ZI)V

    .line 1427
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v3    # "singlePhonePower":Z
    :cond_8
    move v3, v4

    .line 1428
    goto :goto_3

    .line 1439
    .restart local v3    # "singlePhonePower":Z
    :cond_9
    invoke-static {v2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5, v3}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    goto :goto_4
.end method

.method public notifyRadioAvailable(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .prologue
    const/4 v3, 0x1

    .line 593
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Phone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " notifies radio available"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 594
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneMode:Z

    if-ne v1, v3, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->isFlightModePowerOffModemEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/RadioManager;->isUnderCryptKeeper()Z

    move-result v1

    if-nez v1, :cond_0

    .line 595
    const-string v1, "Power off modem because boot up under airplane mode"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 596
    invoke-static {p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSlotId(I)I

    move-result v0

    .line 597
    .local v0, "slotId":I
    const/4 v1, 0x0

    shl-int v2, v3, v0

    invoke-virtual {p0, v1, v2}, Lcom/mediatek/internal/telephony/RadioManager;->setModemPower(ZI)V

    .line 599
    .end local v0    # "slotId":I
    :cond_0
    return-void
.end method

.method public notifySimModeChange(ZI)V
    .locals 4
    .param p1, "power"    # Z
    .param p2, "phoneId"    # I

    .prologue
    .line 1342
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIM mode changed, power: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", phoneId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1343
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->isMSimModeSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneMode:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 1344
    :cond_0
    const-string v1, "Airplane mode on or MSIM Mode option is closed, do nothing!"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1373
    :cond_1
    :goto_0
    return-void

    .line 1347
    :cond_2
    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/RadioManager;->isIccIdReady(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1348
    const-string v1, "sim mode read iccid not ready, wait for 200ms"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1350
    new-instance v0, Lcom/mediatek/internal/telephony/RadioManager$SimModeChangeRunnable;

    invoke-direct {v0, p0, p1, p2}, Lcom/mediatek/internal/telephony/RadioManager$SimModeChangeRunnable;-><init>(Lcom/mediatek/internal/telephony/RadioManager;ZI)V

    .line 1352
    .local v0, "notifySimModeChangeRunnable":Lcom/mediatek/internal/telephony/RadioManager$SimModeChangeRunnable;
    const-wide/16 v2, 0xc8

    invoke-virtual {p0, v0, v2, v3}, Lcom/mediatek/internal/telephony/RadioManager;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1356
    .end local v0    # "notifySimModeChangeRunnable":Lcom/mediatek/internal/telephony/RadioManager$SimModeChangeRunnable;
    :cond_3
    const-string v1, "N/A"

    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/RadioManager;->readIccIdUsingPhoneId(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1357
    const/4 p1, 0x0

    .line 1358
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "phoneId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sim not insert, set  power  to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1360
    :cond_4
    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/RadioManager;->readIccIdUsingPhoneId(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/mediatek/internal/telephony/RadioManager;->refreshIccIdPreference(ZLjava/lang/String;)V

    .line 1361
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set Radio Power due to SIM mode change, power: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", phoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1363
    if-eqz p1, :cond_5

    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/RadioManager;->isSvlteTestSimAllowPowerOn(I)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1364
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifySimModeChange: SvlteTestSimMode bypass power on phone:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1368
    :cond_5
    invoke-static {p2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 1369
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1370
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/RadioManager;->updateMsimModeRadioPower(ZI)V

    goto/16 :goto_0
.end method

.method public onReceiveWifiOnlyModeStateChangedIntent(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 455
    const-string v3, "state"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 456
    .local v0, "enabled":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mReceiver: ACTION_WIFI_ONLY_MODE_CHANGED, enabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 459
    iget-boolean v3, p0, Lcom/mediatek/internal/telephony/RadioManager;->mWifiOnlyMode:Z

    if-ne v0, v3, :cond_1

    .line 460
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mWifiOnlyMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/mediatek/internal/telephony/RadioManager;->mWifiOnlyMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "is not expected (the same)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 471
    :cond_0
    return-void

    .line 464
    :cond_1
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/RadioManager;->mWifiOnlyMode:Z

    .line 465
    iget-boolean v3, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneMode:Z

    if-nez v3, :cond_0

    .line 466
    if-eqz v0, :cond_2

    .line 467
    .local v2, "radioPower":Z
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v3, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPhoneCount:I

    if-ge v1, v3, :cond_0

    .line 468
    invoke-virtual {p0, v2, v1}, Lcom/mediatek/internal/telephony/RadioManager;->setRadioPower(ZI)V

    .line 467
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 466
    .end local v1    # "i":I
    .end local v2    # "radioPower":Z
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public setModemPower(ZI)V
    .locals 9
    .param p1, "power"    # Z
    .param p2, "phoneBitMap"    # I

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 644
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Set Modem Power according to bitmap, Power:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", PhoneBitMap:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 645
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getMultiSimConfiguration()Landroid/telephony/TelephonyManager$MultiSimVariants;

    move-result-object v1

    .line 647
    .local v1, "config":Landroid/telephony/TelephonyManager$MultiSimVariants;
    const/4 v4, 0x0

    .line 648
    .local v4, "phoneId":I
    sget-object v5, Lcom/mediatek/internal/telephony/RadioManager$2;->$SwitchMap$android$telephony$TelephonyManager$MultiSimVariants:[I

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager$MultiSimVariants;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 720
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 721
    const-string v5, "Single SIM mode, for SVLTE need turn on/off LTE MD."

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 722
    invoke-static {v4}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    check-cast v5, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v3

    .line 724
    .local v3, "phone":Lcom/android/internal/telephony/PhoneBase;
    iget-object v5, v3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, p1, v7}, Lcom/android/internal/telephony/CommandsInterface;->setModemPower(ZLandroid/os/Message;)V

    .line 725
    const-string v5, "Single SIM mode, for SVLTE need turn on/off Non-LTE MD."

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 726
    invoke-static {v4}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    check-cast v5, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getNLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v3

    .line 727
    iget-object v5, v3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, p1, v7}, Lcom/android/internal/telephony/CommandsInterface;->setModemPower(ZLandroid/os/Message;)V

    .line 737
    .end local v3    # "phone":Lcom/android/internal/telephony/PhoneBase;
    :cond_0
    :goto_0
    return-void

    .line 650
    :pswitch_0
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/RadioManager;->findMainCapabilityPhoneId()I

    move-result v4

    .line 651
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Set Modem Power under DSDS mode, Power:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", phoneId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 653
    invoke-static {v4}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    if-ne v5, v8, :cond_1

    .line 655
    iget-object v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v5, v5, v4

    invoke-interface {v5, p1, v7}, Lcom/android/internal/telephony/CommandsInterface;->setModemPower(ZLandroid/os/Message;)V

    .line 662
    :goto_1
    if-nez p1, :cond_0

    .line 663
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    iget v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPhoneCount:I

    if-ge v2, v5, :cond_0

    .line 664
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/RadioManager;->resetSimInsertedStatus(I)V

    .line 663
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 657
    .end local v2    # "i":I
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    iget v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPhoneCount:I

    if-ge v2, v5, :cond_2

    .line 658
    iget-object v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mModemPower:[Z

    aput-boolean p1, v5, v2

    .line 657
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 660
    :cond_2
    iget-object v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v5, v5, v4

    invoke-interface {v5, p1, v7}, Lcom/android/internal/telephony/CommandsInterface;->setModemPower(ZLandroid/os/Message;)V

    goto :goto_1

    .line 670
    .end local v2    # "i":I
    :pswitch_1
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_4
    iget v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPhoneCount:I

    if-ge v2, v5, :cond_7

    .line 671
    move v4, v2

    .line 672
    const/4 v5, 0x1

    shl-int/2addr v5, v2

    and-int/2addr v5, p2

    if-eqz v5, :cond_3

    .line 673
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Set Modem Power under DSDA mode, Power:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", phoneId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 674
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 675
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getActiveSvlteModeSlotId()I

    move-result v5

    if-ne v4, v5, :cond_4

    .line 676
    invoke-static {v4}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    check-cast v5, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v5

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, p1, v7}, Lcom/android/internal/telephony/CommandsInterface;->setModemPower(ZLandroid/os/Message;)V

    .line 677
    invoke-static {v4}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    check-cast v5, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getNLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v5

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, p1, v7}, Lcom/android/internal/telephony/CommandsInterface;->setModemPower(ZLandroid/os/Message;)V

    .line 691
    :goto_5
    if-nez p1, :cond_3

    .line 692
    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/RadioManager;->resetSimInsertedStatus(I)V

    .line 670
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 679
    :cond_4
    invoke-static {v4}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    check-cast v5, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v5

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, p1, v7}, Lcom/android/internal/telephony/CommandsInterface;->setModemPower(ZLandroid/os/Message;)V

    goto :goto_5

    .line 683
    :cond_5
    invoke-static {v4}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    if-ne v5, v8, :cond_6

    .line 685
    iget-object v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v5, v5, v4

    invoke-interface {v5, p1, v7}, Lcom/android/internal/telephony/CommandsInterface;->setModemPower(ZLandroid/os/Message;)V

    goto :goto_5

    .line 687
    :cond_6
    iget-object v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mModemPower:[Z

    aput-boolean p1, v5, v4

    .line 688
    iget-object v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v5, v5, v4

    invoke-interface {v5, p1, v7}, Lcom/android/internal/telephony/CommandsInterface;->setModemPower(ZLandroid/os/Message;)V

    goto :goto_5

    .line 696
    :cond_7
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getActiveSvlteModeSlotId()I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 698
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getCdmaSocketSlotId()I

    move-result v0

    .line 699
    .local v0, "cdmaSlotId":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Set Modem Power for C2K, cdmaSlotId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ,power="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 700
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    check-cast v5, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getNLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v5

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, p1, v7}, Lcom/android/internal/telephony/CommandsInterface;->setModemPower(ZLandroid/os/Message;)V

    goto/16 :goto_0

    .line 705
    .end local v0    # "cdmaSlotId":I
    .end local v2    # "i":I
    :pswitch_2
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/RadioManager;->findMainCapabilityPhoneId()I

    move-result v4

    .line 706
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Set Modem Power under TSTS mode, Power:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", phoneId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 707
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_6
    iget v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPhoneCount:I

    if-ge v2, v5, :cond_8

    .line 708
    iget-object v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mModemPower:[Z

    aput-boolean p1, v5, v2

    .line 707
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 710
    :cond_8
    iget-object v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v5, v5, v4

    invoke-interface {v5, p1, v7}, Lcom/android/internal/telephony/CommandsInterface;->setModemPower(ZLandroid/os/Message;)V

    .line 711
    if-nez p1, :cond_0

    .line 712
    const/4 v2, 0x0

    :goto_7
    iget v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPhoneCount:I

    if-ge v2, v5, :cond_0

    .line 713
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/RadioManager;->resetSimInsertedStatus(I)V

    .line 712
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 729
    .end local v2    # "i":I
    :cond_9
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v4

    .line 730
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Set Modem Power under SS mode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", phoneId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 731
    iget-object v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mModemPower:[Z

    aput-boolean p1, v5, v4

    .line 732
    iget-object v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v5, v5, v4

    invoke-interface {v5, p1, v7}, Lcom/android/internal/telephony/CommandsInterface;->setModemPower(ZLandroid/os/Message;)V

    goto/16 :goto_0

    .line 648
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setRadioPower(ZI)V
    .locals 10
    .param p1, "power"    # Z
    .param p2, "phoneId"    # I

    .prologue
    const-wide/16 v8, 0xc8

    const/4 v7, 0x1

    .line 768
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setRadioPower, power="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  phoneId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 769
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "ril.cdma.emdstatus.send"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 771
    const-string v5, "emdstatus is not sent, wait for 200ms"

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 772
    new-instance v4, Lcom/mediatek/internal/telephony/RadioManager$RadioPowerRunnable;

    invoke-direct {v4, p0, p1, p2}, Lcom/mediatek/internal/telephony/RadioManager$RadioPowerRunnable;-><init>(Lcom/mediatek/internal/telephony/RadioManager;ZI)V

    .line 773
    .local v4, "setRadioPowerRunnable":Lcom/mediatek/internal/telephony/RadioManager$RadioPowerRunnable;
    invoke-virtual {p0, v4, v8, v9}, Lcom/mediatek/internal/telephony/RadioManager;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 857
    .end local v4    # "setRadioPowerRunnable":Lcom/mediatek/internal/telephony/RadioManager$RadioPowerRunnable;
    :cond_0
    :goto_0
    return-void

    .line 777
    :cond_1
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->isFlightModePowerOffModemEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneMode:Z

    if-ne v5, v7, :cond_2

    .line 778
    const-string v5, "Set Radio Power under airplane mode, ignore"

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 782
    :cond_2
    invoke-static {p2}, Lcom/mediatek/internal/telephony/RadioManager;->isModemPowerOff(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 783
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "modem for phone "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " off, do not set radio again"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 791
    :cond_3
    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/RadioManager;->isIccIdReady(I)Z

    move-result v5

    if-nez v5, :cond_4

    .line 792
    const-string v5, "RILD initialize not completed, wait for 200ms"

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 793
    new-instance v4, Lcom/mediatek/internal/telephony/RadioManager$RadioPowerRunnable;

    invoke-direct {v4, p0, p1, p2}, Lcom/mediatek/internal/telephony/RadioManager$RadioPowerRunnable;-><init>(Lcom/mediatek/internal/telephony/RadioManager;ZI)V

    .line 794
    .restart local v4    # "setRadioPowerRunnable":Lcom/mediatek/internal/telephony/RadioManager$RadioPowerRunnable;
    invoke-virtual {p0, v4, v8, v9}, Lcom/mediatek/internal/telephony/RadioManager;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 798
    .end local v4    # "setRadioPowerRunnable":Lcom/mediatek/internal/telephony/RadioManager$RadioPowerRunnable;
    :cond_4
    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/RadioManager;->setSimInsertedStatus(I)V

    .line 800
    move v3, p1

    .line 801
    .local v3, "radioPower":Z
    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/RadioManager;->readIccIdUsingPhoneId(I)Ljava/lang/String;

    move-result-object v1

    .line 803
    .local v1, "iccId":Ljava/lang/String;
    sget-object v5, Lcom/mediatek/internal/telephony/RadioManager;->mIccidPreference:Landroid/content/SharedPreferences;

    invoke-interface {v5, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 804
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Adjust radio to off because once manually turned off, iccid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , phone: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 805
    const/4 v3, 0x0

    .line 808
    :cond_5
    iget-boolean v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mWifiOnlyMode:Z

    if-ne v5, v7, :cond_6

    iget-boolean v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mIsEccCall:Z

    if-nez v5, :cond_6

    .line 809
    const-string v5, "setradiopower but wifi only, turn off"

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 810
    const/4 v3, 0x0

    .line 813
    :cond_6
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/RadioManager;->checkForCTACase()Z

    move-result v2

    .line 816
    .local v2, "isCTACase":Z
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 817
    if-eqz p1, :cond_7

    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/RadioManager;->isAllowRadioPowerOn(I)Z

    move-result v5

    if-nez v5, :cond_7

    .line 818
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "not allow power on : +phoneId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 822
    :cond_7
    if-eqz p1, :cond_8

    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/RadioManager;->isSvlteTestSimAllowPowerOn(I)Z

    move-result v5

    if-nez v5, :cond_8

    .line 823
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SvlteTest SIM: not allow power on : +phoneId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 829
    :cond_8
    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/RadioManager;->getSimInsertedStatus(I)I

    move-result v5

    if-nez v5, :cond_b

    .line 830
    if-ne v2, v7, :cond_9

    .line 831
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/RadioManager;->findMainCapabilityPhoneId()I

    move-result v0

    .line 832
    .local v0, "capabilityPhoneId":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No SIM inserted, force to turn on 3G/4G phone "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " radio if no any sim radio is enabled!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 833
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5, v7}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 834
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getCdmaSocketSlotId()I

    move-result v5

    if-ne p2, v5, :cond_0

    .line 836
    const-string v5, "No SIM inserted, force to turn on LTE radio"

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 837
    invoke-static {p2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    check-cast v5, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/internal/telephony/PhoneBase;->setRadioPower(Z)V

    goto/16 :goto_0

    .line 839
    .end local v0    # "capabilityPhoneId":I
    :cond_9
    iget-boolean v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mIsEccCall:Z

    if-ne v7, v5, :cond_a

    .line 840
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ECC call Radio Power, power: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", phoneId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 841
    invoke-static {p2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5, v3}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    goto/16 :goto_0

    .line 843
    :cond_a
    const-string v5, "No SIM inserted, turn Radio off!"

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 844
    const/4 v3, 0x0

    .line 845
    invoke-static {p2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5, v3}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    goto/16 :goto_0

    .line 848
    :cond_b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Trigger set Radio Power, power: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", phoneId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 850
    invoke-direct {p0, v3, p2}, Lcom/mediatek/internal/telephony/RadioManager;->refreshSimSetting(ZI)V

    .line 851
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 852
    invoke-direct {p0, v3, p2}, Lcom/mediatek/internal/telephony/RadioManager;->updatePhoneRadioPower(ZI)V

    goto/16 :goto_0

    .line 854
    :cond_c
    invoke-static {p2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5, v3}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    goto/16 :goto_0
.end method
