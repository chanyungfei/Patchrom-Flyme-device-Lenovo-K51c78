.class public Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;
.super Ljava/lang/Object;
.source "SvlteUiccUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils$1;,
        Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils$SingletonHolder;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "SvlteUiccUtils"

.field private static final PROPERTY_RIL_CT3G:[Ljava/lang/String;

.field private static final PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

.field public static final SIM_TYPE_CDMA:I = 0x2

.field public static final SIM_TYPE_GSM:I = 0x1

.field public static final SIM_TYPE_NONE:I

.field private static final UICCCARD_PROPERTY_RIL_UICC_TYPE:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 41
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "gsm.ril.uicctype"

    aput-object v1, v0, v2

    const-string v1, "gsm.ril.uicctype.2"

    aput-object v1, v0, v3

    const-string v1, "gsm.ril.uicctype.3"

    aput-object v1, v0, v4

    const-string v1, "gsm.ril.uicctype.4"

    aput-object v1, v0, v5

    sput-object v0, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->UICCCARD_PROPERTY_RIL_UICC_TYPE:[Ljava/lang/String;

    .line 47
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "gsm.ril.fulluicctype"

    aput-object v1, v0, v2

    const-string v1, "gsm.ril.fulluicctype.2"

    aput-object v1, v0, v3

    const-string v1, "gsm.ril.fulluicctype.3"

    aput-object v1, v0, v4

    const-string v1, "gsm.ril.fulluicctype.4"

    aput-object v1, v0, v5

    sput-object v0, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

    .line 54
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "gsm.ril.ct3g"

    aput-object v1, v0, v2

    const-string v1, "gsm.ril.ct3g.2"

    aput-object v1, v0, v3

    const-string v1, "gsm.ril.ct3g.3"

    aput-object v1, v0, v4

    const-string v1, "gsm.ril.ct3g.4"

    aput-object v1, v0, v5

    sput-object v0, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->PROPERTY_RIL_CT3G:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils$1;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;-><init>()V

    return-void
.end method

.method private adjustAppType(Lcom/android/internal/telephony/uicc/UiccCard;I)I
    .locals 2
    .param p1, "uiccCard"    # Lcom/android/internal/telephony/uicc/UiccCard;
    .param p2, "appType"    # I

    .prologue
    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "appType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->logd(Ljava/lang/String;)V

    .line 280
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->isUsimSim(Lcom/android/internal/telephony/uicc/UiccCard;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    const/4 v0, 0x1

    .line 283
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private getFullIccCardType(I)[Ljava/lang/String;
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    .line 261
    if-ltz p1, :cond_0

    sget-object v0, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    sget-object v0, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    goto :goto_0
.end method

.method private getIccCardType(I)Ljava/lang/String;
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 252
    if-ltz p1, :cond_0

    sget-object v0, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->UICCCARD_PROPERTY_RIL_UICC_TYPE:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    sget-object v0, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->UICCCARD_PROPERTY_RIL_UICC_TYPE:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;
    .locals 2

    .prologue
    .line 74
    const-class v0, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils$SingletonHolder;->INSTANCE:Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 306
    const-string v0, "SvlteUiccUtils"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    return-void
.end method


# virtual methods
.method public getSimType(I)I
    .locals 10
    .param p1, "slotId"    # I

    .prologue
    .line 315
    const/4 v5, 0x0

    .line 316
    .local v5, "simType":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v4

    .line 317
    .local v4, "phoneCount":I
    if-ltz p1, :cond_0

    if-lt p1, v4, :cond_1

    .line 318
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getSimType, invalid slotId:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->logd(Ljava/lang/String;)V

    move v6, v5

    .line 357
    .end local v5    # "simType":I
    .local v6, "simType":I
    :goto_0
    return v6

    .line 322
    .end local v6    # "simType":I
    .restart local v5    # "simType":I
    :cond_1
    sget-object v8, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

    aget-object v8, v8, p1

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 323
    .local v7, "uiccType":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getSimType, uiccType["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->logd(Ljava/lang/String;)V

    .line 324
    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 325
    .local v0, "appType":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 326
    .local v2, "fullType":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v8, v0

    if-ge v3, v8, :cond_6

    .line 327
    const-string v8, "USIM"

    aget-object v9, v0, v3

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 328
    or-int/lit8 v2, v2, 0x2

    .line 326
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 329
    :cond_3
    const-string v8, "SIM"

    aget-object v9, v0, v3

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 330
    or-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 331
    :cond_4
    const-string v8, "CSIM"

    aget-object v9, v0, v3

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 332
    or-int/lit8 v2, v2, 0x8

    goto :goto_2

    .line 333
    :cond_5
    const-string v8, "RUIM"

    aget-object v9, v0, v3

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 334
    or-int/lit8 v2, v2, 0x4

    goto :goto_2

    .line 338
    :cond_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getSimType, fullType = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->logd(Ljava/lang/String;)V

    .line 339
    if-nez v2, :cond_8

    .line 340
    const/4 v5, 0x0

    .line 356
    :cond_7
    :goto_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getSimType, simType = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->logd(Ljava/lang/String;)V

    move v6, v5

    .line 357
    .end local v5    # "simType":I
    .restart local v6    # "simType":I
    goto/16 :goto_0

    .line 341
    .end local v6    # "simType":I
    .restart local v5    # "simType":I
    :cond_8
    and-int/lit8 v8, v2, 0x8

    if-nez v8, :cond_9

    and-int/lit8 v8, v2, 0x4

    if-eqz v8, :cond_a

    .line 343
    :cond_9
    const/4 v5, 0x2

    goto :goto_3

    .line 345
    :cond_a
    const/4 v5, 0x1

    .line 348
    const/4 v8, 0x1

    if-ne v2, v8, :cond_7

    .line 349
    sget-object v8, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->PROPERTY_RIL_CT3G:[Ljava/lang/String;

    aget-object v8, v8, p1

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 350
    .local v1, "ct3GDualMode":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ct3GDualMode: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->logd(Ljava/lang/String;)V

    .line 351
    const-string v8, "1"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 352
    const/4 v5, 0x2

    goto :goto_3
.end method

.method public getSvlteApplication(Lcom/android/internal/telephony/uicc/UiccController;II)Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .locals 3
    .param p1, "uiccController"    # Lcom/android/internal/telephony/uicc/UiccController;
    .param p2, "slotId"    # I
    .param p3, "family"    # I

    .prologue
    .line 200
    if-eqz p1, :cond_1

    .line 201
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 202
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v1

    invoke-direct {p0, v1, p3}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->adjustAppType(Lcom/android/internal/telephony/uicc/UiccCard;I)I

    move-result v0

    .line 204
    .local v0, "familyTemp":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "family: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", familyTemp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->logd(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p1, p2, v0}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v1

    .line 211
    .end local v0    # "familyTemp":I
    :goto_0
    return-object v1

    .line 208
    :cond_0
    invoke-virtual {p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v1

    goto :goto_0

    .line 211
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isCt3gDualMode(I)Z
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    .line 293
    sget-object v1, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->PROPERTY_RIL_CT3G:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 295
    .local v0, "result":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCt3gDualMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->logd(Ljava/lang/String;)V

    .line 297
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public isHaveCard(I)Z
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    .line 181
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getFullIccCardType(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 183
    .local v0, "fullUiccType":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v1, "CSIM"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "RUIM"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "UIM"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "USIM"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SIM"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isRuimCsim(I)Z
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getIccCardType(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "RUIM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getIccCardType(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CSIM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRuimCsim(Lcom/android/internal/telephony/uicc/UiccCard;)Z
    .locals 3
    .param p1, "uiccCard"    # Lcom/android/internal/telephony/uicc/UiccCard;

    .prologue
    const/4 v0, 0x0

    .line 118
    if-eqz p1, :cond_1

    .line 119
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccCard;->getIccCardType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RUIM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccCard;->getIccCardType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CSIM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 122
    :cond_1
    return v0
.end method

.method public isUsim(I)Z
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    .line 169
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getFullIccCardType(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 171
    .local v0, "fullUiccType":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    const-string v1, "USIM"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isUsimCsimPhone(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    .line 232
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->isActiveSvlteMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->isUsimWithCsim(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUsimOnly(I)Z
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    .line 222
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getIccCardType(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "USIM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isUsimSim(I)Z
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    .line 146
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getFullIccCardType(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 148
    .local v0, "fullUiccType":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v1, "USIM"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getIccCardType(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SIM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isUsimSim(Lcom/android/internal/telephony/uicc/UiccCard;)Z
    .locals 4
    .param p1, "uiccCard"    # Lcom/android/internal/telephony/uicc/UiccCard;

    .prologue
    const/4 v1, 0x0

    .line 84
    if-eqz p1, :cond_1

    .line 85
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccCard;->getFullIccCardType()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 87
    .local v0, "fullUiccType":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v2, "USIM"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccCard;->getIccCardType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SIM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 90
    .end local v0    # "fullUiccType":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_1
    return v1
.end method

.method public isUsimWithCsim(I)Z
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    .line 133
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getFullIccCardType(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 135
    .local v0, "fullUiccType":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v1, "USIM"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "CSIM"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isUsimWithCsim(Lcom/android/internal/telephony/uicc/UiccCard;)Z
    .locals 3
    .param p1, "uiccCard"    # Lcom/android/internal/telephony/uicc/UiccCard;

    .prologue
    const/4 v1, 0x0

    .line 101
    if-eqz p1, :cond_0

    .line 102
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccCard;->getFullIccCardType()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 104
    .local v0, "fullUiccType":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v2, "USIM"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "CSIM"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 107
    .end local v0    # "fullUiccType":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_0
    return v1
.end method
