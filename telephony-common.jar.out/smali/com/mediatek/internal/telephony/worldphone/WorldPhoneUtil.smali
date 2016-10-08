.class public Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;
.super Ljava/lang/Object;
.source "WorldPhoneUtil.java"

# interfaces
.implements Lcom/mediatek/internal/telephony/worldphone/IWorldPhone;


# static fields
.field private static final IS_CDMA_LTE_DC_SUPPORT:Z

.field private static final IS_LTE_SUPPORT:Z

.field private static final IS_WORLD_PHONE_SUPPORT:Z

.field private static final PROJECT_SIM_NUM:I

.field private static final PROPERTY_MAJOR_SIM:Ljava/lang/String; = "persist.radio.simswitch"

.field private static sActivePhones:[Lcom/android/internal/telephony/Phone;

.field private static sContext:Landroid/content/Context;

.field private static sDefultPhone:Lcom/android/internal/telephony/Phone;

.field private static sProxyPhones:[Lcom/android/internal/telephony/Phone;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 60
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v0

    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->PROJECT_SIM_NUM:I

    .line 61
    const-string v0, "ro.mtk_world_phone"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->IS_WORLD_PHONE_SUPPORT:Z

    .line 62
    const-string v0, "ro.mtk_lte_support"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    sput-boolean v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->IS_LTE_SUPPORT:Z

    .line 63
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->IS_CDMA_LTE_DC_SUPPORT:Z

    .line 65
    sput-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->sContext:Landroid/content/Context;

    .line 66
    sput-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->sDefultPhone:Lcom/android/internal/telephony/Phone;

    .line 67
    sput-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    .line 68
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->PROJECT_SIM_NUM:I

    new-array v0, v0, [Lcom/android/internal/telephony/Phone;

    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->sActivePhones:[Lcom/android/internal/telephony/Phone;

    return-void

    :cond_0
    move v0, v2

    .line 61
    goto :goto_0

    :cond_1
    move v1, v2

    .line 62
    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const-string v1, "Constructor invoked"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->logd(Ljava/lang/String;)V

    .line 72
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    sput-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->sDefultPhone:Lcom/android/internal/telephony/Phone;

    .line 73
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v1

    sput-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    .line 74
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->PROJECT_SIM_NUM:I

    if-ge v0, v1, :cond_0

    .line 75
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->sActivePhones:[Lcom/android/internal/telephony/Phone;

    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    check-cast v1, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    aput-object v1, v2, v0

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    :cond_0
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->sDefultPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v1, :cond_1

    .line 78
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->sDefultPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->sContext:Landroid/content/Context;

    .line 82
    :goto_1
    return-void

    .line 80
    :cond_1
    const-string v1, "DefaultPhone = null"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->logd(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static denyReasonToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "reason"    # I

    .prologue
    .line 196
    packed-switch p0, :pswitch_data_0

    .line 213
    const-string v0, "Invalid Reason"

    .line 217
    .local v0, "drString":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 198
    .end local v0    # "drString":Ljava/lang/String;
    :pswitch_0
    const-string v0, "CAMP_ON_NOT_DENIED"

    .line 199
    .restart local v0    # "drString":Ljava/lang/String;
    goto :goto_0

    .line 201
    .end local v0    # "drString":Ljava/lang/String;
    :pswitch_1
    const-string v0, "CAMP_ON_DENY_REASON_UNKNOWN"

    .line 202
    .restart local v0    # "drString":Ljava/lang/String;
    goto :goto_0

    .line 204
    .end local v0    # "drString":Ljava/lang/String;
    :pswitch_2
    const-string v0, "CAMP_ON_DENY_REASON_NEED_SWITCH_TO_FDD"

    .line 205
    .restart local v0    # "drString":Ljava/lang/String;
    goto :goto_0

    .line 207
    .end local v0    # "drString":Ljava/lang/String;
    :pswitch_3
    const-string v0, "CAMP_ON_DENY_REASON_NEED_SWITCH_TO_TDD"

    .line 208
    .restart local v0    # "drString":Ljava/lang/String;
    goto :goto_0

    .line 210
    .end local v0    # "drString":Ljava/lang/String;
    :pswitch_4
    const-string v0, "CAMP_ON_DENY_REASON_DOMESTIC_FDD_MD"

    .line 211
    .restart local v0    # "drString":Ljava/lang/String;
    goto :goto_0

    .line 196
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static getMajorSim()I
    .locals 4

    .prologue
    const/16 v1, -0x63

    .line 89
    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/ProxyController;->isCapabilitySwitching()Z

    move-result v2

    if-nez v2, :cond_1

    .line 90
    const-string v2, "persist.radio.simswitch"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "currMajorSim":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getMajorSim]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->logd(Ljava/lang/String;)V

    .line 93
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 100
    .end local v0    # "currMajorSim":Ljava/lang/String;
    :goto_0
    return v1

    .line 95
    .restart local v0    # "currMajorSim":Ljava/lang/String;
    :cond_0
    const-string v2, "[getMajorSim]: fail to get major SIM"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 99
    .end local v0    # "currMajorSim":Ljava/lang/String;
    :cond_1
    const-string v2, "[getMajorSim]: radio capability is switching"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getModemSelectionMode()I
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 105
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->sContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 106
    const-string v1, "sContext = null"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->logd(Ljava/lang/String;)V

    .line 110
    :goto_0
    return v0

    :cond_0
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->sContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "world_phone_auto_select_mode"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public static getProjectSimNum()I
    .locals 1

    .prologue
    .line 85
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->PROJECT_SIM_NUM:I

    return v0
.end method

.method public static getRadioTechModeForWp()I
    .locals 5

    .prologue
    .line 252
    const/4 v1, 0x0

    .line 253
    .local v1, "mode":I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isCdmaLteDcSupport()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 254
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getMajorSim()I

    move-result v0

    .line 255
    .local v0, "majorySimId":I
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getActiveSvlteModeSlotId()I

    move-result v2

    .line 256
    .local v2, "svlteModeSlotId":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getRadioTechModeForWp]: majorySimId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " svlteModeSlotId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->logd(Ljava/lang/String;)V

    .line 258
    const/16 v3, -0x63

    if-eq v0, v3, :cond_1

    .line 259
    if-ne v2, v0, :cond_0

    .line 260
    const/4 v1, 0x2

    .line 270
    .end local v0    # "majorySimId":I
    .end local v2    # "svlteModeSlotId":I
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getRadioTechModeForWp]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->logd(Ljava/lang/String;)V

    .line 271
    return v1

    .line 262
    .restart local v0    # "majorySimId":I
    .restart local v2    # "svlteModeSlotId":I
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 265
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 268
    .end local v0    # "majorySimId":I
    .end local v2    # "svlteModeSlotId":I
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static iccCardTypeToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "iccCardType"    # I

    .prologue
    .line 222
    packed-switch p0, :pswitch_data_0

    .line 233
    const-string v0, "Invalid Icc Card Type"

    .line 237
    .local v0, "iccTypeString":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 224
    .end local v0    # "iccTypeString":Ljava/lang/String;
    :pswitch_0
    const-string v0, "SIM"

    .line 225
    .restart local v0    # "iccTypeString":Ljava/lang/String;
    goto :goto_0

    .line 227
    .end local v0    # "iccTypeString":Ljava/lang/String;
    :pswitch_1
    const-string v0, "USIM"

    .line 228
    .restart local v0    # "iccTypeString":Ljava/lang/String;
    goto :goto_0

    .line 230
    .end local v0    # "iccTypeString":Ljava/lang/String;
    :pswitch_2
    const-string v0, "Icc Card Type Unknown"

    .line 231
    .restart local v0    # "iccTypeString":Ljava/lang/String;
    goto :goto_0

    .line 222
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static isCdmaLteDcSupport()Z
    .locals 1

    .prologue
    .line 247
    sget-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->IS_CDMA_LTE_DC_SUPPORT:Z

    return v0
.end method

.method public static isLteSupport()Z
    .locals 1

    .prologue
    .line 119
    sget-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->IS_LTE_SUPPORT:Z

    return v0
.end method

.method public static isWorldPhoneSupport()Z
    .locals 1

    .prologue
    .line 115
    sget-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->IS_WORLD_PHONE_SUPPORT:Z

    return v0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 275
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WPP_UTIL]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    return-void
.end method

.method public static regStateToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "regState"    # I

    .prologue
    .line 167
    packed-switch p0, :pswitch_data_0

    .line 187
    const-string v0, "Invalid RegState"

    .line 191
    .local v0, "rsString":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 169
    .end local v0    # "rsString":Ljava/lang/String;
    :pswitch_0
    const-string v0, "REGISTRATION_STATE_NOT_REGISTERED_AND_NOT_SEARCHING"

    .line 170
    .restart local v0    # "rsString":Ljava/lang/String;
    goto :goto_0

    .line 172
    .end local v0    # "rsString":Ljava/lang/String;
    :pswitch_1
    const-string v0, "REGISTRATION_STATE_HOME_NETWORK"

    .line 173
    .restart local v0    # "rsString":Ljava/lang/String;
    goto :goto_0

    .line 175
    .end local v0    # "rsString":Ljava/lang/String;
    :pswitch_2
    const-string v0, "REGISTRATION_STATE_NOT_REGISTERED_AND_SEARCHING"

    .line 176
    .restart local v0    # "rsString":Ljava/lang/String;
    goto :goto_0

    .line 178
    .end local v0    # "rsString":Ljava/lang/String;
    :pswitch_3
    const-string v0, "REGISTRATION_STATE_REGISTRATION_DENIED"

    .line 179
    .restart local v0    # "rsString":Ljava/lang/String;
    goto :goto_0

    .line 181
    .end local v0    # "rsString":Ljava/lang/String;
    :pswitch_4
    const-string v0, "REGISTRATION_STATE_UNKNOWN"

    .line 182
    .restart local v0    # "rsString":Ljava/lang/String;
    goto :goto_0

    .line 184
    .end local v0    # "rsString":Ljava/lang/String;
    :pswitch_5
    const-string v0, "REGISTRATION_STATE_ROAMING"

    .line 185
    .restart local v0    # "rsString":Ljava/lang/String;
    goto :goto_0

    .line 167
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static regionToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "region"    # I

    .prologue
    .line 124
    packed-switch p0, :pswitch_data_0

    .line 135
    const-string v0, "Invalid Region"

    .line 139
    .local v0, "regionString":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 126
    .end local v0    # "regionString":Ljava/lang/String;
    :pswitch_0
    const-string v0, "REGION_UNKNOWN"

    .line 127
    .restart local v0    # "regionString":Ljava/lang/String;
    goto :goto_0

    .line 129
    .end local v0    # "regionString":Ljava/lang/String;
    :pswitch_1
    const-string v0, "REGION_DOMESTIC"

    .line 130
    .restart local v0    # "regionString":Ljava/lang/String;
    goto :goto_0

    .line 132
    .end local v0    # "regionString":Ljava/lang/String;
    :pswitch_2
    const-string v0, "REGION_FOREIGN"

    .line 133
    .restart local v0    # "regionString":Ljava/lang/String;
    goto :goto_0

    .line 124
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static stateToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .prologue
    .line 144
    packed-switch p0, :pswitch_data_0

    .line 158
    const-string v0, "Invalid State"

    .line 162
    .local v0, "stateString":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 146
    .end local v0    # "stateString":Ljava/lang/String;
    :pswitch_0
    const-string v0, "STATE_POWER_OFF"

    .line 147
    .restart local v0    # "stateString":Ljava/lang/String;
    goto :goto_0

    .line 149
    .end local v0    # "stateString":Ljava/lang/String;
    :pswitch_1
    const-string v0, "STATE_IN_SERVICE"

    .line 150
    .restart local v0    # "stateString":Ljava/lang/String;
    goto :goto_0

    .line 152
    .end local v0    # "stateString":Ljava/lang/String;
    :pswitch_2
    const-string v0, "STATE_OUT_OF_SERVICE"

    .line 153
    .restart local v0    # "stateString":Ljava/lang/String;
    goto :goto_0

    .line 155
    .end local v0    # "stateString":Ljava/lang/String;
    :pswitch_3
    const-string v0, "STATE_EMERGENCY_ONLY"

    .line 156
    .restart local v0    # "stateString":Ljava/lang/String;
    goto :goto_0

    .line 144
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public notifyRadioCapabilityChange(I)V
    .locals 0
    .param p1, "capailitySimId"    # I

    .prologue
    .line 244
    return-void
.end method

.method public setModemSelectionMode(II)V
    .locals 0
    .param p1, "mode"    # I
    .param p2, "modemType"    # I

    .prologue
    .line 241
    return-void
.end method
