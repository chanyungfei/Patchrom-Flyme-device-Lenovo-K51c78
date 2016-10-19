.class public Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;
.super Ljava/lang/Object;
.source "RadioCapabilitySwitchUtil.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "GSM"

.field public static final MAIN_SIM_PROP:Ljava/lang/String; = "persist.radio.simswitch.iccid"

.field private static final NO_SIM_VALUE:Ljava/lang/String; = "N/A"

.field private static final PLMN_TABLE_TYPE1:[Ljava/lang/String;

.field private static final PLMN_TABLE_TYPE3:[Ljava/lang/String;

.field private static final PROPERTY_ICCID:Ljava/lang/String; = "ril.iccid.sim"

.field private static final PROPERTY_SIM_ICCID:[Ljava/lang/String;

.field public static final SIM_OP_INFO_OP01:I = 0x2

.field public static final SIM_OP_INFO_OP02:I = 0x3

.field public static final SIM_OP_INFO_OVERSEA:I = 0x1

.field public static final SIM_OP_INFO_UNKNOWN:I = 0x0

.field public static final SIM_SWITCH_MODE_DUAL_TALK:I = 0x3

.field public static final SIM_SWITCH_MODE_DUAL_TALK_SWAP:I = 0x4

.field public static final SIM_SWITCH_MODE_SINGLE_TALK_MDSYS:I = 0x1

.field public static final SIM_SWITCH_MODE_SINGLE_TALK_MDSYS_LITE:I = 0x2

.field public static final SIM_TYPE_OTHER:I = 0x2

.field public static final SIM_TYPE_SIM:I = 0x0

.field public static final SIM_TYPE_USIM:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 81
    const/16 v0, 0x16

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "46000"

    aput-object v1, v0, v3

    const-string v1, "46002"

    aput-object v1, v0, v4

    const-string v1, "46007"

    aput-object v1, v0, v5

    const-string v1, "46008"

    aput-object v1, v0, v6

    const-string v1, "45412"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "45413"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "00101"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "00211"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "00321"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "00431"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "00541"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "00651"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "00761"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "00871"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "00902"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "01012"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "01122"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "01232"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "46004"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "46602"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "50270"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "46003"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PLMN_TABLE_TYPE1:[Ljava/lang/String;

    .line 90
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "46001"

    aput-object v1, v0, v3

    const-string v1, "46006"

    aput-object v1, v0, v4

    const-string v1, "46009"

    aput-object v1, v0, v5

    const-string v1, "45407"

    aput-object v1, v0, v6

    const-string v1, "46005"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "45502"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PLMN_TABLE_TYPE3:[Ljava/lang/String;

    .line 96
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "ril.iccid.sim1"

    aput-object v1, v0, v3

    const-string v1, "ril.iccid.sim2"

    aput-object v1, v0, v4

    const-string v1, "ril.iccid.sim3"

    aput-object v1, v0, v5

    const-string v1, "ril.iccid.sim4"

    aput-object v1, v0, v6

    sput-object v0, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PROPERTY_SIM_ICCID:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkOp01(I[I[I)Z
    .locals 11
    .param p0, "targetPhoneId"    # I
    .param p1, "simOpInfo"    # [I
    .param p2, "simType"    # [I

    .prologue
    const/4 v10, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 286
    const-string v8, "persist.radio.simswitch"

    const-string v9, "1"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/lit8 v1, v8, -0x1

    .line 289
    .local v1, "curPhoneId":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkOp01 : curPhoneId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 290
    aget v8, p1, p0

    if-ne v8, v10, :cond_2

    .line 291
    aget v8, p2, p0

    if-nez v8, :cond_1

    .line 292
    aget v8, p1, v1

    if-ne v8, v10, :cond_0

    aget v8, p2, v1

    if-eqz v8, :cond_0

    .line 294
    const-string v7, "checkOp01 : case 1,2; stay in current phone"

    invoke-static {v7}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 353
    :goto_0
    return v6

    .line 299
    :cond_0
    const-string v6, "checkOp01 : case 3,4"

    invoke-static {v6}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    move v6, v7

    .line 300
    goto :goto_0

    .line 305
    :cond_1
    const-string v6, "checkOp01 : case 1,2"

    invoke-static {v6}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    move v6, v7

    .line 306
    goto :goto_0

    .line 308
    :cond_2
    aget v8, p1, p0

    if-ne v8, v7, :cond_6

    .line 309
    aget v8, p1, v1

    if-ne v8, v10, :cond_3

    .line 310
    const-string v7, "checkOp01 : case 1,2,3,4; stay in current phone"

    invoke-static {v7}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 312
    :cond_3
    aget v8, p2, p0

    if-nez v8, :cond_5

    .line 313
    aget v8, p1, v1

    if-ne v8, v7, :cond_4

    aget v8, p2, v1

    if-eqz v8, :cond_4

    .line 315
    const-string v7, "checkOp01 : case 5,6; stay in current phone"

    invoke-static {v7}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 320
    :cond_4
    const-string v6, "checkOp01 : case 7,8"

    invoke-static {v6}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    move v6, v7

    .line 321
    goto :goto_0

    .line 326
    :cond_5
    const-string v6, "checkOp01 : case 5,6"

    invoke-static {v6}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    move v6, v7

    .line 327
    goto :goto_0

    .line 330
    :cond_6
    aget v8, p1, p0

    if-nez v8, :cond_9

    .line 331
    const-string v8, "checkOp01 : case 10, target IMSI not ready"

    invoke-static {v8}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 332
    const/4 v4, 0x0

    .line 333
    .local v4, "insertedStatus":I
    array-length v5, p1

    .line 334
    .local v5, "phoneNum":I
    const-string v0, "N/A"

    .line 335
    .local v0, "NO_SIM_VALUE":Ljava/lang/String;
    new-array v2, v5, [Ljava/lang/String;

    .line 336
    .local v2, "currIccId":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v5, :cond_8

    .line 337
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ril.iccid.sim"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, v3, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v3

    .line 338
    aget-object v8, v2, v3

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 339
    shl-int v8, v7, v3

    or-int/2addr v4, v8

    .line 336
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 342
    :cond_8
    if-gt v4, v10, :cond_9

    .line 343
    const-string v6, "checkOp01 : case 10, single SIM case, switch!"

    invoke-static {v6}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    move v6, v7

    .line 344
    goto :goto_0

    .line 347
    .end local v0    # "NO_SIM_VALUE":Ljava/lang/String;
    .end local v2    # "currIccId":[Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "insertedStatus":I
    .end local v5    # "phoneNum":I
    :cond_9
    const-string v8, "ro.mtk_world_phone_policy"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "1"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 348
    const-string v6, "checkOp01 : case 11, op01-B, switch it!"

    invoke-static {v6}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    move v6, v7

    .line 349
    goto/16 :goto_0

    .line 352
    :cond_a
    const-string v7, "checkOp01 : case 9"

    invoke-static {v7}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static getHigherPrioritySimForOp01(I[Z[Z[Z[Z)I
    .locals 6
    .param p0, "curId"    # I
    .param p1, "op01Usim"    # [Z
    .param p2, "op01Sim"    # [Z
    .param p3, "overseaUsim"    # [Z
    .param p4, "overseaSim"    # [Z

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 247
    const/4 v2, -0x1

    .line 248
    .local v2, "targetSim":I
    array-length v1, p1

    .line 250
    .local v1, "phoneNum":I
    aget-boolean v3, p1, p0

    if-ne v3, v4, :cond_0

    .line 282
    .end local p0    # "curId":I
    :goto_0
    return p0

    .line 253
    .restart local p0    # "curId":I
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 254
    aget-boolean v3, p1, v0

    if-ne v3, v4, :cond_1

    .line 255
    move v2, v0

    .line 253
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 258
    :cond_2
    if-ne v2, v5, :cond_3

    aget-boolean v3, p2, p0

    if-ne v3, v4, :cond_4

    :cond_3
    move p0, v2

    .line 259
    goto :goto_0

    .line 261
    :cond_4
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_6

    .line 262
    aget-boolean v3, p2, v0

    if-ne v3, v4, :cond_5

    .line 263
    move v2, v0

    .line 261
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 266
    :cond_6
    if-ne v2, v5, :cond_7

    aget-boolean v3, p3, p0

    if-ne v3, v4, :cond_8

    :cond_7
    move p0, v2

    .line 267
    goto :goto_0

    .line 269
    :cond_8
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v1, :cond_a

    .line 270
    aget-boolean v3, p3, v0

    if-ne v3, v4, :cond_9

    .line 271
    move v2, v0

    .line 269
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 274
    :cond_a
    if-ne v2, v5, :cond_b

    aget-boolean v3, p4, p0

    if-ne v3, v4, :cond_c

    :cond_b
    move p0, v2

    .line 275
    goto :goto_0

    .line 277
    :cond_c
    const/4 v0, 0x0

    :goto_4
    if-ge v0, v1, :cond_e

    .line 278
    aget-boolean v3, p4, v0

    if-ne v3, v4, :cond_d

    .line 279
    move v2, v0

    .line 277
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_e
    move p0, v2

    .line 282
    goto :goto_0
.end method

.method public static getMainCapabilityPhoneId()I
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 363
    const/4 v0, 0x0

    .line 364
    .local v0, "phoneId":I
    const-string v2, "ro.mtk_dt_support"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-ne v2, v4, :cond_4

    .line 365
    const-string v2, "persist.ril.simswitch.swapmode"

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 366
    .local v1, "swapMode":I
    if-ne v1, v5, :cond_3

    .line 367
    const/4 v0, 0x0

    .line 374
    .end local v1    # "swapMode":I
    :cond_0
    :goto_0
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 375
    if-nez v0, :cond_1

    .line 376
    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CDMA"

    if-ne v2, v3, :cond_1

    .line 378
    const/16 v0, 0xa

    .line 381
    :cond_1
    if-ne v0, v4, :cond_2

    .line 382
    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CDMA"

    if-ne v2, v3, :cond_2

    .line 384
    const/16 v0, 0xb

    .line 388
    :cond_2
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[RadioCapSwitchUtil] getMainCapabilityPhoneId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    return v0

    .line 368
    .restart local v1    # "swapMode":I
    :cond_3
    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 369
    const/4 v0, 0x1

    goto :goto_0

    .line 372
    .end local v1    # "swapMode":I
    :cond_4
    const-string v2, "persist.radio.simswitch"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    goto :goto_0
.end method

.method public static getSimInfo([I[II)Z
    .locals 11
    .param p0, "simOpInfo"    # [I
    .param p1, "simType"    # [I
    .param p2, "insertedStatus"    # I

    .prologue
    .line 127
    array-length v8, p0

    new-array v6, v8, [Ljava/lang/String;

    .line 128
    .local v6, "strMnc":[Ljava/lang/String;
    array-length v8, p0

    new-array v7, v8, [Ljava/lang/String;

    .line 131
    .local v7, "strSimType":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v8, p0

    if-ge v1, v8, :cond_d

    .line 132
    if-nez v1, :cond_2

    .line 133
    const-string v5, "gsm.ril.uicctype"

    .line 137
    .local v5, "propStr":Ljava/lang/String;
    :goto_1
    const-string v8, ""

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v1

    .line 138
    aget-object v8, v7, v1

    const-string v9, "SIM"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 139
    const/4 v8, 0x0

    aput v8, p1, v1

    .line 145
    :goto_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SimType["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v7, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", simType["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget v9, p1, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 146
    const-string v8, "gsm.sim.operator.imsi"

    const-string v9, ""

    invoke-static {v1, v8, v9}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v1

    .line 147
    aget-object v8, v6, v1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x5

    if-lt v8, v9, :cond_0

    .line 148
    aget-object v8, v6, v1

    const/4 v9, 0x0

    const/4 v10, 0x5

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v1

    .line 150
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "strMnc["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] from gsm.sim.operator.imsi:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v6, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 151
    aget-object v8, v6, v1

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 152
    if-nez v1, :cond_5

    .line 153
    const-string v5, "gsm.sim.ril.mcc.mnc"

    .line 157
    :goto_3
    const-string v8, ""

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v1

    .line 158
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "strMnc["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] from ril.mcc.mnc:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v6, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 160
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "insertedStatus:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 161
    if-ltz p2, :cond_7

    const/4 v8, 0x1

    shl-int/2addr v8, v1

    and-int/2addr v8, p2

    if-lez v8, :cond_7

    .line 162
    aget-object v8, v6, v1

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 163
    const-string v8, "SIM is inserted but no imsi"

    invoke-static {v8}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 164
    const/4 v8, 0x0

    .line 194
    .end local v5    # "propStr":Ljava/lang/String;
    :goto_4
    return v8

    .line 135
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "gsm.ril.uicctype."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, v1, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "propStr":Ljava/lang/String;
    goto/16 :goto_1

    .line 140
    :cond_3
    aget-object v8, v7, v1

    const-string v9, "USIM"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 141
    const/4 v8, 0x1

    aput v8, p1, v1

    goto/16 :goto_2

    .line 143
    :cond_4
    const/4 v8, 0x2

    aput v8, p1, v1

    goto/16 :goto_2

    .line 155
    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "gsm.sim.ril.mcc.mnc."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, v1, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_3

    .line 166
    :cond_6
    aget-object v8, v6, v1

    const-string v9, "sim_lock"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 167
    const-string v8, "SIM is lock, wait pin unlock"

    invoke-static {v8}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 168
    const/4 v8, 0x0

    goto :goto_4

    .line 171
    :cond_7
    sget-object v0, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PLMN_TABLE_TYPE1:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_5
    if-ge v2, v3, :cond_8

    aget-object v4, v0, v2

    .line 172
    .local v4, "mccmnc":Ljava/lang/String;
    aget-object v8, v6, v1

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 173
    const/4 v8, 0x2

    aput v8, p0, v1

    .line 177
    .end local v4    # "mccmnc":Ljava/lang/String;
    :cond_8
    aget v8, p0, v1

    if-nez v8, :cond_9

    .line 178
    sget-object v0, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PLMN_TABLE_TYPE3:[Ljava/lang/String;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v3, :cond_9

    aget-object v4, v0, v2

    .line 179
    .restart local v4    # "mccmnc":Ljava/lang/String;
    aget-object v8, v6, v1

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 180
    const/4 v8, 0x3

    aput v8, p0, v1

    .line 185
    .end local v4    # "mccmnc":Ljava/lang/String;
    :cond_9
    aget v8, p0, v1

    if-nez v8, :cond_a

    .line 186
    aget-object v8, v6, v1

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    .line 187
    const/4 v8, 0x1

    aput v8, p0, v1

    .line 190
    :cond_a
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "strMnc["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v6, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", simOpInfo["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget v9, p0, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 131
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 171
    .restart local v4    # "mccmnc":Ljava/lang/String;
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 178
    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 192
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "mccmnc":Ljava/lang/String;
    .end local v5    # "propStr":Ljava/lang/String;
    :cond_d
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getSimInfo(simOpInfo): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 193
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getSimInfo(simType): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 194
    const/4 v8, 0x1

    goto/16 :goto_4
.end method

.method public static isAnySimLocked(I)Z
    .locals 8
    .param p0, "phoneNum"    # I

    .prologue
    const/4 v7, 0x5

    const/4 v4, 0x0

    .line 408
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 409
    const-string v5, "isAnySimLocked always returns false in C2K"

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 438
    :cond_0
    :goto_0
    return v4

    .line 414
    :cond_1
    new-array v2, p0, [Ljava/lang/String;

    .line 415
    .local v2, "mnc":[Ljava/lang/String;
    new-array v1, p0, [Ljava/lang/String;

    .line 417
    .local v1, "iccid":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p0, :cond_0

    .line 418
    const-string v5, "gsm.sim.operator.imsi"

    const-string v6, ""

    invoke-static {v0, v5, v6}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v0

    .line 419
    aget-object v5, v2, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v7, :cond_2

    .line 420
    aget-object v5, v2, v0

    invoke-virtual {v5, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v0

    .line 422
    :cond_2
    aget-object v5, v2, v0

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 423
    if-nez v0, :cond_5

    .line 424
    const-string v3, "gsm.sim.ril.mcc.mnc"

    .line 428
    .local v3, "propStr":Ljava/lang/String;
    :goto_2
    const-string v5, ""

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v0

    .line 429
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mnc["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] from ril.mcc.mnc:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v2, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 431
    .end local v3    # "propStr":Ljava/lang/String;
    :cond_3
    sget-object v5, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PROPERTY_SIM_ICCID:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v0

    .line 432
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "i = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " from gsm.sim.operator.imsi:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v2, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ,iccid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 433
    aget-object v5, v1, v0

    const-string v6, "N/A"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    aget-object v5, v2, v0

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    aget-object v5, v2, v0

    const-string v6, "sim_lock"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 435
    :cond_4
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 426
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "gsm.sim.ril.mcc.mnc."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "propStr":Ljava/lang/String;
    goto/16 :goto_2

    .line 417
    .end local v3    # "propStr":Ljava/lang/String;
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1
.end method

.method public static isNeedSwitchInOpPackage([Lcom/android/internal/telephony/Phone;[Landroid/telephony/RadioAccessFamily;)Z
    .locals 8
    .param p0, "mProxyPhones"    # [Lcom/android/internal/telephony/Phone;
    .param p1, "rats"    # [Landroid/telephony/RadioAccessFamily;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 205
    const-string v6, "ro.operator.optr"

    const-string v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "operatorSpec":Ljava/lang/String;
    array-length v6, p0

    new-array v1, v6, [I

    .line 207
    .local v1, "simOpInfo":[I
    array-length v6, p0

    new-array v2, v6, [I

    .line 209
    .local v2, "simType":[I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Operator Spec:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 210
    const-string v6, "ro.mtk_disable_cap_switch"

    invoke-static {v6, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-ne v6, v5, :cond_0

    .line 211
    const-string v5, "mtk_disable_cap_switch is true"

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 231
    :goto_0
    return v4

    .line 213
    :cond_0
    const-string v4, "OP01"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 219
    const/4 v4, -0x1

    invoke-static {v1, v2, v4}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getSimInfo([I[II)Z

    .line 222
    const/4 v3, 0x0

    .local v3, "targetPhoneId":I
    :goto_1
    array-length v4, p1

    if-ge v3, v4, :cond_1

    .line 223
    aget-object v4, p1, v3

    invoke-virtual {v4}, Landroid/telephony/RadioAccessFamily;->getRadioAccessFamily()I

    move-result v4

    and-int/lit8 v4, v4, 0x8

    const/16 v6, 0x8

    if-ne v4, v6, :cond_3

    .line 228
    :cond_1
    const-string v4, "OP01"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 229
    invoke-static {v3, v1, v2}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->checkOp01(I[I[I)Z

    move-result v4

    goto :goto_0

    .end local v3    # "targetPhoneId":I
    :cond_2
    move v4, v5

    .line 217
    goto :goto_0

    .line 222
    .restart local v3    # "targetPhoneId":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    move v4, v5

    .line 231
    goto :goto_0
.end method

.method public static isSimContainsCdmaApp(I)Z
    .locals 4
    .param p0, "simId"    # I

    .prologue
    .line 397
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    new-array v0, v1, [I

    .line 398
    .local v0, "cardType":[I
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccController;->getC2KWPCardType()[I

    move-result-object v0

    .line 399
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[RadioCapSwitchUtil][getCardType]: SIM"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, p0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    aget v1, v0, p0

    and-int/lit8 v1, v1, 0x4

    if-gtz v1, :cond_0

    aget v1, v0, p0

    and-int/lit8 v1, v1, 0x8

    if-lez v1, :cond_1

    .line 402
    :cond_0
    const/4 v1, 0x1

    .line 404
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 393
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RadioCapSwitchUtil] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    return-void
.end method

.method public static updateIccid([Lcom/android/internal/telephony/Phone;)V
    .locals 4
    .param p0, "mProxyPhones"    # [Lcom/android/internal/telephony/Phone;

    .prologue
    .line 109
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 110
    aget-object v2, p0, v1

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getRadioAccessFamily()I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    .line 112
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ril.iccid.sim"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "currIccId":Ljava/lang/String;
    const-string v2, "persist.radio.simswitch.iccid"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateIccid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 118
    .end local v0    # "currIccId":Ljava/lang/String;
    :cond_0
    return-void

    .line 109
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
