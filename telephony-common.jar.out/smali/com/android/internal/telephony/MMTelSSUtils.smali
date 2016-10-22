.class public Lcom/android/internal/telephony/MMTelSSUtils;
.super Ljava/lang/Object;
.source "MMTelSSUtils.java"


# static fields
.field private static IS_ENG_BUILD:Z = false

.field private static IS_USER_BUILD:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "MMTelSSUtils"

.field private static final MODE_SS_CS:Ljava/lang/String; = "Prefer CS"

.field private static final MODE_SS_XCAP:Ljava/lang/String; = "Prefer XCAP"

.field private static final OP01_MCCMNC_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PROP_SS_MODE:Ljava/lang/String; = "persist.radio.ss.mode"

.field static queryXcapSrvDone:Z

.field static remoteIp:Ljava/lang/String;

.field static sXcapUri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 74
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/MMTelSSUtils;->remoteIp:Ljava/lang/String;

    .line 75
    sput-boolean v2, Lcom/android/internal/telephony/MMTelSSUtils;->queryXcapSrvDone:Z

    .line 82
    const-string v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/MMTelSSUtils;->IS_USER_BUILD:Z

    .line 83
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/MMTelSSUtils;->IS_ENG_BUILD:Z

    .line 86
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "46000"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "46002"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "46007"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "46008"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "46011"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/MMTelSSUtils;->OP01_MCCMNC_LIST:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultImsPhoneId()I
    .locals 6

    .prologue
    .line 604
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v4

    .line 605
    .local v4, "phones":[Lcom/android/internal/telephony/Phone;
    move-object v0, v4

    .local v0, "arr$":[Lcom/android/internal/telephony/Phone;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 606
    .local v3, "phone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 607
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v5

    .line 611
    .end local v3    # "phone":Lcom/android/internal/telephony/Phone;
    :goto_1
    return v5

    .line 605
    .restart local v3    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 611
    .end local v3    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_1
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v5

    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v5

    goto :goto_1
.end method

.method public static getHttpCredentialPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 324
    const-string v0, ""

    .line 326
    .local v0, "sPassword":Ljava/lang/String;
    return-object v0
.end method

.method public static getHttpCredentialUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 317
    const-string v0, ""

    .line 319
    .local v0, "sUserName":Ljava/lang/String;
    return-object v0
.end method

.method private static getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;
    .locals 1

    .prologue
    .line 620
    const-string v0, "iphonesubinfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getXIntendedId(I)Ljava/lang/String;
    .locals 1
    .param p0, "phoneId"    # I

    .prologue
    .line 278
    invoke-static {p0}, Lcom/android/internal/telephony/MMTelSSUtils;->getXui(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getXcapRootUri(I)Ljava/lang/String;
    .locals 13
    .param p0, "phoneId"    # I

    .prologue
    .line 97
    const-string v10, "ro.mtk_bsp_package"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "1"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 98
    const-string v5, ""

    .line 187
    :cond_0
    :goto_0
    return-object v5

    .line 100
    :cond_1
    invoke-static {}, Lcom/mediatek/simservs/client/SimServs;->getInstance()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v6

    .line 102
    .local v6, "simSrv":Lcom/mediatek/simservs/client/SimServs;
    invoke-static {p0}, Lcom/android/internal/telephony/MMTelSSUtils;->isOp01IccCard(I)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 103
    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Lcom/mediatek/simservs/client/SimServs;->setOperator(I)V

    .line 108
    :goto_1
    invoke-virtual {v6}, Lcom/mediatek/simservs/client/SimServs;->getXcapRoot()Ljava/lang/String;

    move-result-object v5

    .line 109
    .local v5, "rootUri":Ljava/lang/String;
    const-string v10, "MMTelSSUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getXcapRootUri():"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v7

    .line 111
    .local v7, "subId":I
    if-nez v5, :cond_0

    .line 114
    if-eqz v5, :cond_3

    .line 116
    invoke-virtual {v6, v5}, Lcom/mediatek/simservs/client/SimServs;->setXcapRoot(Ljava/lang/String;)V

    goto :goto_0

    .line 105
    .end local v5    # "rootUri":Ljava/lang/String;
    .end local v7    # "subId":I
    :cond_2
    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Lcom/mediatek/simservs/client/SimServs;->setOperator(I)V

    goto :goto_1

    .line 120
    .restart local v5    # "rootUri":Ljava/lang/String;
    .restart local v7    # "subId":I
    :cond_3
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v9

    .line 121
    .local v9, "uiccCtl":Lcom/android/internal/telephony/uicc/UiccController;
    const/4 v10, 0x3

    invoke-virtual {v9, p0, v10}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v8

    .line 123
    .local v8, "uiccApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    const/4 v1, 0x0

    .line 126
    .local v1, "impi":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v10

    invoke-interface {v10, v7}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimImpiForSubscriber(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 137
    :goto_2
    if-eqz v8, :cond_5

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_5

    .line 138
    const-string v10, "MMTelSSUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getXcapRootUri():get APP_FAM_IMS and impi="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-virtual {v6, v1}, Lcom/mediatek/simservs/client/SimServs;->setXcapRootByImpi(Ljava/lang/String;)V

    .line 182
    :cond_4
    :goto_3
    invoke-virtual {v6}, Lcom/mediatek/simservs/client/SimServs;->getXcapRoot()Ljava/lang/String;

    move-result-object v5

    .line 183
    const-string v10, "MMTelSSUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getXcapRoot():rootUri="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Landroid/os/RemoteException;
    const-string v10, "MMTelSSUtils"

    const-string v11, "getXcapRootUri(): RemoteExeption for getIsimImpiForSubscriber()"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 131
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 132
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v10, "MMTelSSUtils"

    const-string v11, "getXcapRootUri(): NullPointerExeption for getIsimImpiForSubscriber()"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_2

    .line 142
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_5
    const/4 v3, 0x0

    .line 145
    .local v3, "mccMnc":Ljava/lang/String;
    const/4 v10, 0x1

    invoke-virtual {v9, p0, v10}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v8

    .line 147
    if-nez v8, :cond_6

    .line 148
    const-string v10, "MMTelSSUtils"

    const-string v11, "getXcapRootUri():Select USIM/SIM uiccApp failed: null pointer"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const-string v5, ""

    goto/16 :goto_0

    .line 153
    :cond_6
    invoke-virtual {v8}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v10

    if-eqz v10, :cond_a

    .line 154
    invoke-virtual {v8}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    .line 155
    const-string v2, ""

    .line 156
    .local v2, "mcc":Ljava/lang/String;
    const-string v4, ""

    .line 157
    .local v4, "mnc":Ljava/lang/String;
    if-eqz v3, :cond_7

    .line 158
    const/4 v10, 0x0

    const/4 v11, 0x3

    invoke-virtual {v3, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 159
    const/4 v10, 0x3

    invoke-virtual {v3, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 162
    :cond_7
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_8

    .line 163
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 164
    const-string v10, "MMTelSSUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "add 0 to mnc ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_8
    const-string v10, "MMTelSSUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "get mccMnc="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " from the IccRecrods"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    .end local v2    # "mcc":Ljava/lang/String;
    .end local v4    # "mnc":Ljava/lang/String;
    :goto_4
    if-eqz v3, :cond_4

    .line 172
    const-string v10, "460000"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9

    const-string v10, "460002"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9

    const-string v10, "460007"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9

    const-string v10, "460008"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9

    const-string v10, "460011"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 175
    :cond_9
    const-string v10, "460"

    const-string v11, "000"

    invoke-virtual {v6, v10, v11}, Lcom/mediatek/simservs/client/SimServs;->setXcapRootByMccMnc(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 168
    :cond_a
    const-string v10, "MMTelSSUtils"

    const-string v11, "getXcapRootUri():uiccApp get null IccRecords!"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 177
    :cond_b
    const/4 v10, 0x0

    const/4 v11, 0x3

    invoke-virtual {v3, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x3

    invoke-virtual {v3, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Lcom/mediatek/simservs/client/SimServs;->setXcapRootByMccMnc(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method public static getXui(I)Ljava/lang/String;
    .locals 15
    .param p0, "phoneId"    # I

    .prologue
    const/4 v14, 0x3

    const/4 v13, 0x0

    .line 196
    invoke-static {}, Lcom/mediatek/simservs/client/SimServs;->getInstance()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v6

    .line 197
    .local v6, "simSrv":Lcom/mediatek/simservs/client/SimServs;
    invoke-virtual {v6}, Lcom/mediatek/simservs/client/SimServs;->getXui()Ljava/lang/String;

    move-result-object v5

    .line 198
    .local v5, "sXui":Ljava/lang/String;
    const-string v10, "MMTelSSUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getXui():sXui from simSrv="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v7

    .line 200
    .local v7, "subId":I
    if-nez v5, :cond_6

    .line 205
    invoke-static {}, Lcom/mediatek/ims/internal/ImsXuiManager;->getInstance()Lcom/mediatek/ims/internal/ImsXuiManager;

    move-result-object v10

    invoke-virtual {v10, p0}, Lcom/mediatek/ims/internal/ImsXuiManager;->getXui(I)Ljava/lang/String;

    move-result-object v5

    .line 206
    const-string v10, "MMTelSSUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getXui():sXui from XuiManager="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    if-eqz v5, :cond_0

    .line 208
    const-string v10, ","

    invoke-virtual {v5, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    aget-object v5, v10, v13

    .line 209
    invoke-virtual {v6, v5}, Lcom/mediatek/simservs/client/SimServs;->setXui(Ljava/lang/String;)V

    move-object v10, v5

    .line 267
    :goto_0
    return-object v10

    .line 213
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v9

    .line 214
    .local v9, "uiccCtl":Lcom/android/internal/telephony/uicc/UiccController;
    invoke-virtual {v9, p0, v14}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v8

    .line 216
    .local v8, "uiccApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v8, :cond_3

    .line 219
    const-string v3, ""

    .line 220
    .local v3, "sImpu":Ljava/lang/String;
    const/4 v1, 0x0

    .line 222
    .local v1, "impu":[Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v10

    invoke-interface {v10, v7}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimImpuForSubscriber(I)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 231
    :goto_1
    if-eqz v1, :cond_1

    .line 232
    aget-object v3, v1, v13

    .line 234
    :cond_1
    const-string v10, "MMTelSSUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getXui():sImpu="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-virtual {v6, v3}, Lcom/mediatek/simservs/client/SimServs;->setXuiByImpu(Ljava/lang/String;)V

    .line 261
    .end local v1    # "impu":[Ljava/lang/String;
    .end local v3    # "sImpu":Ljava/lang/String;
    :cond_2
    :goto_2
    invoke-virtual {v6}, Lcom/mediatek/simservs/client/SimServs;->getXui()Ljava/lang/String;

    move-result-object v5

    .line 262
    const-string v10, "MMTelSSUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getXui():sXui="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v10, v5

    .line 263
    goto :goto_0

    .line 223
    .restart local v1    # "impu":[Ljava/lang/String;
    .restart local v3    # "sImpu":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 224
    .local v0, "e":Landroid/os/RemoteException;
    const-string v10, "MMTelSSUtils"

    const-string v11, "getXui(): RemoteExeption for getIsimImpuForSubscriber()"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 226
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 227
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v10, "MMTelSSUtils"

    const-string v11, "getXui(): NullPointerExeption for getIsimImpiForSubscriber()"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    .line 238
    .end local v0    # "e":Ljava/lang/NullPointerException;
    .end local v1    # "impu":[Ljava/lang/String;
    .end local v3    # "sImpu":Ljava/lang/String;
    :cond_3
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v10

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v4

    .line 240
    .local v4, "sImsi":Ljava/lang/String;
    const-string v10, "MMTelSSUtils"

    const-string v11, "getXui():IMS uiccApp is null, try to select USIM uiccApp"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    const/4 v10, 0x1

    invoke-virtual {v9, p0, v10}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v8

    .line 242
    if-nez v8, :cond_4

    .line 243
    const-string v10, "MMTelSSUtils"

    const-string v11, "getXui():Select USIM/SIM uiccApp failed: null pointer"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 247
    :cond_4
    const/4 v2, 0x0

    .line 248
    .local v2, "mccMnc":Ljava/lang/String;
    invoke-virtual {v8}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v10

    if-eqz v10, :cond_5

    .line 249
    invoke-virtual {v8}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    .line 250
    const-string v10, "MMTelSSUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getXui():Imsi="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", mccMnc="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :goto_3
    if-eqz v2, :cond_2

    .line 256
    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v4, v10, v11}, Lcom/mediatek/simservs/client/SimServs;->setXuiByImsiMccMnc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 252
    :cond_5
    const-string v10, "MMTelSSUtils"

    const-string v11, "getXui():uiccApp get null IccRecords!"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 266
    .end local v2    # "mccMnc":Ljava/lang/String;
    .end local v4    # "sImsi":Ljava/lang/String;
    .end local v8    # "uiccApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v9    # "uiccCtl":Lcom/android/internal/telephony/uicc/UiccController;
    :cond_6
    const-string v10, ","

    invoke-virtual {v5, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    aget-object v5, v10, v13

    move-object v10, v5

    .line 267
    goto/16 :goto_0
.end method

.method public static isGsmUtSupport(I)Z
    .locals 3
    .param p0, "phoneId"    # I

    .prologue
    const/4 v0, 0x0

    .line 542
    const-string v1, "ro.mtk_bsp_package"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 552
    :cond_0
    :goto_0
    return v0

    .line 546
    :cond_1
    const-string v1, "ro.mtk_ims_support"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ro.mtk_volte_support"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 548
    invoke-static {p0}, Lcom/android/internal/telephony/MMTelSSUtils;->isOp01IccCard(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/android/internal/telephony/MMTelSSUtils;->isUsimCard(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 549
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isNotifyCallerTest()Z
    .locals 2

    .prologue
    .line 591
    const-string v0, "persist.xcap.notifycaller.test"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "test"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 592
    const/4 v0, 0x1

    .line 594
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isOp01IccCard(I)Z
    .locals 6
    .param p0, "phoneId"    # I

    .prologue
    const/4 v3, 0x0

    .line 556
    const-string v4, "ro.mtk_bsp_package"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 568
    :goto_0
    return v3

    .line 560
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v2

    .line 561
    .local v2, "uiccCtl":Lcom/android/internal/telephony/uicc/UiccController;
    const/4 v4, 0x1

    invoke-virtual {v2, p0, v4}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    .line 562
    .local v0, "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_1

    .line 563
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .line 564
    .local v1, "mccMnc":Ljava/lang/String;
    const-string v3, "MMTelSSUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isOp01IccCard, mccMnc is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    sget-object v3, Lcom/android/internal/telephony/MMTelSSUtils;->OP01_MCCMNC_LIST:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0

    .line 567
    .end local v1    # "mccMnc":Ljava/lang/String;
    :cond_1
    const-string v4, "MMTelSSUtils"

    const-string v5, "isOp01IccCard: false"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isOutgoingCallBarring(Ljava/lang/String;)Z
    .locals 1
    .param p0, "facility"    # Ljava/lang/String;

    .prologue
    .line 582
    const-string v0, "AO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "OI"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "OX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 585
    :cond_0
    const/4 v0, 0x1

    .line 587
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportXcap()Z
    .locals 2

    .prologue
    .line 331
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->getDefaultImsPhoneId()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/MMTelSSUtils;->isSupportXcap(ILandroid/net/Network;)Z

    move-result v0

    return v0
.end method

.method public static isSupportXcap(I)Z
    .locals 1
    .param p0, "phoneId"    # I

    .prologue
    .line 349
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/MMTelSSUtils;->isSupportXcap(ILandroid/net/Network;)Z

    move-result v0

    return v0
.end method

.method public static isSupportXcap(ILandroid/net/Network;)Z
    .locals 29
    .param p0, "phoneId"    # I
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 359
    const-string v24, "ro.mtk_bsp_package"

    invoke-static/range {v24 .. v24}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const-string v25, "1"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_0

    .line 360
    const/16 v24, 0x0

    .line 529
    :goto_0
    return v24

    .line 363
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/MMTelSSUtils;->getXcapRootUri(I)Ljava/lang/String;

    move-result-object v24

    sput-object v24, Lcom/android/internal/telephony/MMTelSSUtils;->sXcapUri:Ljava/lang/String;

    .line 364
    const/16 v24, 0x0

    sput-object v24, Lcom/android/internal/telephony/MMTelSSUtils;->remoteIp:Ljava/lang/String;

    .line 365
    const/4 v11, 0x0

    .line 366
    .local v11, "ia":[Ljava/net/InetAddress;
    const/16 v24, 0x0

    sput-boolean v24, Lcom/android/internal/telephony/MMTelSSUtils;->queryXcapSrvDone:Z

    .line 368
    const-string v20, ""

    .line 369
    .local v20, "ss_mode":Ljava/lang/String;
    const-string v24, "ro.mtk_ims_support"

    invoke-static/range {v24 .. v24}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const-string v25, "1"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_3

    const-string v24, "ro.mtk_volte_support"

    invoke-static/range {v24 .. v24}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const-string v25, "1"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_3

    .line 372
    const-string v24, "persist.radio.ss.mode"

    const-string v25, "Prefer CS"

    invoke-static/range {v24 .. v25}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 373
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/MMTelSSUtils;->isOp01IccCard(I)Z

    move-result v24

    if-eqz v24, :cond_1

    .line 374
    const-string v24, "MMTelSSUtils"

    const-string v25, "isSupportXcap(): op01 set MODE_SS_XCAP"

    invoke-static/range {v24 .. v25}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    const-string v20, "Prefer XCAP"

    .line 380
    :cond_1
    :goto_1
    const-string v24, "MMTelSSUtils"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "isSupportXcap(): sXcapUri="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    sget-object v26, Lcom/android/internal/telephony/MMTelSSUtils;->sXcapUri:Ljava/lang/String;

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ",ss_mode="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    const-string v15, ""

    .line 384
    .local v15, "preConfigPort":Ljava/lang/String;
    const-string v24, "ro.mtk_ims_support"

    invoke-static/range {v24 .. v24}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const-string v25, "1"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_2

    const-string v24, "ro.mtk_volte_support"

    invoke-static/range {v24 .. v24}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const-string v25, "1"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_4

    .line 387
    :cond_2
    const-string v24, "MMTelSSUtils"

    const-string v25, "Not Enable VOLTE feature! Return directly to use CSFB SS"

    invoke-static/range {v24 .. v25}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 378
    .end local v15    # "preConfigPort":Ljava/lang/String;
    :cond_3
    const-string v24, "persist.radio.ss.mode"

    const-string v25, "Prefer CS"

    invoke-static/range {v24 .. v25}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    goto :goto_1

    .line 391
    .restart local v15    # "preConfigPort":Ljava/lang/String;
    :cond_4
    const-string v24, "Prefer CS"

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_5

    .line 392
    const-string v24, "MMTelSSUtils"

    const-string v25, "Config SS via CS! Return directly!"

    invoke-static/range {v24 .. v25}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 396
    :cond_5
    sget-object v24, Lcom/android/internal/telephony/MMTelSSUtils;->sXcapUri:Ljava/lang/String;

    if-eqz v24, :cond_12

    .line 403
    const/4 v4, 0x0

    .line 406
    .local v4, "XcapSrvHostName":Ljava/lang/String;
    :try_start_0
    sget-boolean v24, Lcom/android/internal/telephony/MMTelSSUtils;->IS_ENG_BUILD:Z

    if-eqz v24, :cond_7

    .line 407
    const-string v24, "mediatek.simserv.xcaproot"

    const-string v25, "NON_CONFIG"

    invoke-static/range {v24 .. v25}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 408
    .local v3, "TestingXcapRoot":Ljava/lang/String;
    const-string v24, "MMTelSSUtils"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "mediatek.simserv.xcaproot="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    const-string v24, "NON_CONFIG"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_6

    .line 410
    sput-object v3, Lcom/android/internal/telephony/MMTelSSUtils;->sXcapUri:Ljava/lang/String;

    .line 411
    const-string v24, "MMTelSSUtils"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Replace sXcapUri="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    sget-object v26, Lcom/android/internal/telephony/MMTelSSUtils;->sXcapUri:Ljava/lang/String;

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :cond_6
    const-string v24, "http"

    sget-object v25, Lcom/android/internal/telephony/MMTelSSUtils;->sXcapUri:Ljava/lang/String;

    const/16 v26, 0x0

    sget-object v27, Lcom/android/internal/telephony/MMTelSSUtils;->sXcapUri:Ljava/lang/String;

    const/16 v28, 0x3a

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v27

    invoke-virtual/range {v25 .. v27}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_7

    const-string v24, "https"

    sget-object v25, Lcom/android/internal/telephony/MMTelSSUtils;->sXcapUri:Ljava/lang/String;

    const/16 v26, 0x0

    sget-object v27, Lcom/android/internal/telephony/MMTelSSUtils;->sXcapUri:Ljava/lang/String;

    const/16 v28, 0x3a

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v27

    invoke-virtual/range {v25 .. v27}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_7

    .line 420
    sget-object v24, Lcom/android/internal/telephony/MMTelSSUtils;->sXcapUri:Ljava/lang/String;

    sget-object v25, Lcom/android/internal/telephony/MMTelSSUtils;->sXcapUri:Ljava/lang/String;

    const/16 v26, 0x3a

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v25

    add-int/lit8 v25, v25, 0x1

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 422
    .local v14, "portSubString":Ljava/lang/String;
    const-string v24, "MMTelSSUtils"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "portSubString="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    const/16 v24, 0x0

    const-string v25, "/"

    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 424
    sget-object v24, Lcom/android/internal/telephony/MMTelSSUtils;->sXcapUri:Ljava/lang/String;

    const/16 v25, 0x0

    sget-object v26, Lcom/android/internal/telephony/MMTelSSUtils;->sXcapUri:Ljava/lang/String;

    const/16 v27, 0x3a

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v26

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    sput-object v24, Lcom/android/internal/telephony/MMTelSSUtils;->sXcapUri:Ljava/lang/String;

    .line 426
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v25, Lcom/android/internal/telephony/MMTelSSUtils;->sXcapUri:Ljava/lang/String;

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "/"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    sput-object v24, Lcom/android/internal/telephony/MMTelSSUtils;->sXcapUri:Ljava/lang/String;

    .line 428
    const-string v24, "MMTelSSUtils"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "preConfig sXcapUri="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    sget-object v26, Lcom/android/internal/telephony/MMTelSSUtils;->sXcapUri:Ljava/lang/String;

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " with preConfigPort="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    .end local v3    # "TestingXcapRoot":Ljava/lang/String;
    .end local v14    # "portSubString":Ljava/lang/String;
    :cond_7
    sget-object v24, Lcom/android/internal/telephony/MMTelSSUtils;->sXcapUri:Ljava/lang/String;

    const-string v25, "http://"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_e

    .line 434
    sget-object v24, Lcom/android/internal/telephony/MMTelSSUtils;->sXcapUri:Ljava/lang/String;

    const/16 v25, 0x7

    sget-object v26, Lcom/android/internal/telephony/MMTelSSUtils;->sXcapUri:Ljava/lang/String;

    const-string v27, "/"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v26

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 438
    :cond_8
    :goto_2
    const-string v24, "MMTelSSUtils"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "isSupportXcap():XcapSrvHostName="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    if-eqz p1, :cond_f

    .line 440
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/net/Network;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v11

    .line 446
    :goto_3
    move-object v6, v11

    .local v6, "arr$":[Ljava/net/InetAddress;
    array-length v12, v6

    .local v12, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_4
    if-ge v10, v12, :cond_9

    aget-object v5, v6, v10

    .line 447
    .local v5, "addr":Ljava/net/InetAddress;
    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v24

    sput-object v24, Lcom/android/internal/telephony/MMTelSSUtils;->remoteIp:Ljava/lang/String;

    .line 448
    sget-object v24, Lcom/android/internal/telephony/MMTelSSUtils;->remoteIp:Ljava/lang/String;

    if-eqz v24, :cond_10

    .line 449
    const-string v24, "MMTelSSUtils"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "xcap server ip : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    sget-object v26, Lcom/android/internal/telephony/MMTelSSUtils;->remoteIp:Ljava/lang/String;

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 464
    .end local v5    # "addr":Ljava/net/InetAddress;
    .end local v6    # "arr$":[Ljava/net/InetAddress;
    .end local v10    # "i$":I
    .end local v12    # "len$":I
    :cond_9
    :goto_5
    const/16 v24, 0x1

    sput-boolean v24, Lcom/android/internal/telephony/MMTelSSUtils;->queryXcapSrvDone:Z

    .line 468
    :cond_a
    sget-boolean v24, Lcom/android/internal/telephony/MMTelSSUtils;->queryXcapSrvDone:Z

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_a

    .line 472
    const-string v24, "MMTelSSUtils"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "QueryXcapSrvDone:xcap server ip : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    sget-object v26, Lcom/android/internal/telephony/MMTelSSUtils;->remoteIp:Ljava/lang/String;

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    sget-object v24, Lcom/android/internal/telephony/MMTelSSUtils;->remoteIp:Ljava/lang/String;

    if-eqz v24, :cond_12

    const-string v24, "Prefer XCAP"

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_12

    .line 476
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v19

    .line 477
    .local v19, "sf":Ljavax/net/SocketFactory;
    const/16 v17, 0x0

    .line 478
    .local v17, "s":Ljava/net/Socket;
    const/16 v16, 0x0

    .line 481
    .local v16, "reachable":Z
    const-string v23, ""

    .line 482
    .local v23, "testingPort":Ljava/lang/String;
    sget-boolean v24, Lcom/android/internal/telephony/MMTelSSUtils;->IS_ENG_BUILD:Z

    if-eqz v24, :cond_b

    .line 483
    const-string v24, "mediatek.simserv.port"

    const-string v25, ""

    invoke-static/range {v24 .. v25}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 488
    :cond_b
    const/16 v24, 0x4

    move/from16 v0, v24

    new-array v13, v0, [Ljava/lang/String;

    const/16 v24, 0x0

    const-string v25, "443"

    aput-object v25, v13, v24

    const/16 v24, 0x1

    const-string v25, "80"

    aput-object v25, v13, v24

    const/16 v24, 0x2

    aput-object v15, v13, v24

    const/16 v24, 0x3

    aput-object v23, v13, v24

    .line 489
    .local v13, "portList":[Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_6
    array-length v0, v13

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v9, v0, :cond_12

    .line 490
    const/16 v22, 0x0

    .line 491
    .local v22, "tempPort":I
    aget-object v24, v13, v9

    const-string v25, ""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_c

    .line 492
    aget-object v24, v13, v9

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    .line 495
    :cond_c
    const-string v24, "MMTelSSUtils"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "testingPort="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "try connecting to IP="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    sget-object v26, Lcom/android/internal/telephony/MMTelSSUtils;->remoteIp:Ljava/lang/String;

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " and port="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    aget-object v24, v13, v9

    const-string v25, ""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_11

    .line 489
    :cond_d
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 435
    .end local v9    # "i":I
    .end local v13    # "portList":[Ljava/lang/String;
    .end local v16    # "reachable":Z
    .end local v17    # "s":Ljava/net/Socket;
    .end local v19    # "sf":Ljavax/net/SocketFactory;
    .end local v22    # "tempPort":I
    .end local v23    # "testingPort":Ljava/lang/String;
    :cond_e
    :try_start_1
    sget-object v24, Lcom/android/internal/telephony/MMTelSSUtils;->sXcapUri:Ljava/lang/String;

    const-string v25, "https://"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_8

    .line 436
    sget-object v24, Lcom/android/internal/telephony/MMTelSSUtils;->sXcapUri:Ljava/lang/String;

    const/16 v25, 0x8

    sget-object v26, Lcom/android/internal/telephony/MMTelSSUtils;->sXcapUri:Ljava/lang/String;

    const-string v27, "/"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v26

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_2

    .line 442
    :cond_f
    invoke-static {v4}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v11

    goto/16 :goto_3

    .line 446
    .restart local v5    # "addr":Ljava/net/InetAddress;
    .restart local v6    # "arr$":[Ljava/net/InetAddress;
    .restart local v10    # "i$":I
    .restart local v12    # "len$":I
    :cond_10
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_4

    .line 454
    .end local v5    # "addr":Ljava/net/InetAddress;
    .end local v6    # "arr$":[Ljava/net/InetAddress;
    .end local v10    # "i$":I
    .end local v12    # "len$":I
    :catch_0
    move-exception v8

    .line 455
    .local v8, "ex":Ljava/lang/Exception;
    const-string v24, "MMTelSSUtils"

    const-string v25, "sXcapUri getHostAddress fail : "

    invoke-static/range {v24 .. v25}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 458
    sget-boolean v24, Lcom/android/internal/telephony/MMTelSSUtils;->IS_ENG_BUILD:Z

    if-eqz v24, :cond_9

    .line 461
    const-string v24, "mediatek.simserv.xcapip"

    const-string v25, ""

    invoke-static/range {v24 .. v25}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    sput-object v24, Lcom/android/internal/telephony/MMTelSSUtils;->remoteIp:Ljava/lang/String;

    goto/16 :goto_5

    .line 501
    .end local v8    # "ex":Ljava/lang/Exception;
    .restart local v9    # "i":I
    .restart local v13    # "portList":[Ljava/lang/String;
    .restart local v16    # "reachable":Z
    .restart local v17    # "s":Ljava/net/Socket;
    .restart local v19    # "sf":Ljavax/net/SocketFactory;
    .restart local v22    # "tempPort":I
    .restart local v23    # "testingPort":Ljava/lang/String;
    :cond_11
    :try_start_2
    new-instance v18, Ljava/net/InetSocketAddress;

    sget-object v24, Lcom/android/internal/telephony/MMTelSSUtils;->remoteIp:Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 502
    .local v18, "sa":Ljava/net/InetSocketAddress;
    invoke-virtual/range {v19 .. v19}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v17

    .line 503
    const/16 v24, 0x2710

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 504
    invoke-virtual/range {v17 .. v17}, Ljava/net/Socket;->isConnected()Z

    move-result v16

    .line 505
    const-string v24, "MMTelSSUtils"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Connect to XCAP_IP="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    sget-object v26, Lcom/android/internal/telephony/MMTelSSUtils;->remoteIp:Ljava/lang/String;

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " with port="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    aget-object v26, v13, v9

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", reachable="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    invoke-virtual/range {v17 .. v17}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 511
    .end local v18    # "sa":Ljava/net/InetSocketAddress;
    :goto_7
    if-eqz v16, :cond_d

    .line 512
    const/16 v24, 0x1

    goto/16 :goto_0

    .line 508
    :catch_1
    move-exception v7

    .line 509
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    .line 519
    .end local v4    # "XcapSrvHostName":Ljava/lang/String;
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v9    # "i":I
    .end local v13    # "portList":[Ljava/lang/String;
    .end local v16    # "reachable":Z
    .end local v17    # "s":Ljava/net/Socket;
    .end local v19    # "sf":Ljavax/net/SocketFactory;
    .end local v22    # "tempPort":I
    .end local v23    # "testingPort":Ljava/lang/String;
    :cond_12
    sget-boolean v24, Lcom/android/internal/telephony/MMTelSSUtils;->IS_ENG_BUILD:Z

    if-eqz v24, :cond_13

    .line 520
    const-string v24, "MMTelSSUtils"

    const-string v25, "isSupportXcap(): start to get ss tcname"

    invoke-static/range {v24 .. v25}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    const-string v24, "ril.ss.tcname"

    const-string v25, "Empty"

    invoke-static/range {v24 .. v25}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 523
    .local v21, "tc_name":Ljava/lang/String;
    const-string v24, "MMTelSSUtils"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "isSupportXcap():tc_name="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    if-eqz v21, :cond_13

    const-string v24, "Single_TC_"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_13

    .line 525
    const/16 v24, 0x1

    goto/16 :goto_0

    .line 529
    .end local v21    # "tc_name":Ljava/lang/String;
    :cond_13
    const/16 v24, 0x0

    goto/16 :goto_0
.end method

.method public static isSupportXcap(Landroid/net/Network;)Z
    .locals 1
    .param p0, "network"    # Landroid/net/Network;

    .prologue
    .line 340
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->getDefaultImsPhoneId()I

    move-result v0

    invoke-static {v0, p0}, Lcom/android/internal/telephony/MMTelSSUtils;->isSupportXcap(ILandroid/net/Network;)Z

    move-result v0

    return v0
.end method

.method public static isUsimCard(I)Z
    .locals 2
    .param p0, "phoneId"    # I

    .prologue
    .line 572
    if-ltz p0, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-ge p0, v1, :cond_0

    .line 573
    invoke-static {p0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IccCard;->getIccCardType()Ljava/lang/String;

    move-result-object v0

    .line 574
    .local v0, "iccCardType":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "USIM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 575
    const/4 v1, 0x1

    .line 578
    .end local v0    # "iccCardType":Ljava/lang/String;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
