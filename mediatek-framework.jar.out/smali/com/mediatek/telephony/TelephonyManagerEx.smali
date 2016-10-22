.class public Lcom/mediatek/telephony/TelephonyManagerEx;
.super Ljava/lang/Object;
.source "TelephonyManagerEx.java"


# static fields
.field public static final ERROR_CODE_GENERIC_ERROR:B = 0x1t

.field public static final ERROR_CODE_NO_ERROR:B = 0x0t

.field public static final GET_SC_ADDRESS_KEY_ADDRESS:Ljava/lang/String; = "scAddress"

.field public static final GET_SC_ADDRESS_KEY_RESULT:Ljava/lang/String; = "errorCode"

.field public static final SVLTE_RAT_MODE_3G:I = 0x1

.field public static final SVLTE_RAT_MODE_4G:I = 0x0

.field public static final SVLTE_RAT_MODE_4G_DATA_ONLY:I = 0x2

.field private static final TAG:Ljava/lang/String; = "TelephonyManagerEx"

.field private static defaultSimId:I

.field private static sInstance:Lcom/mediatek/telephony/TelephonyManagerEx;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    sput v0, Lcom/mediatek/telephony/TelephonyManagerEx;->defaultSimId:I

    .line 126
    new-instance v0, Lcom/mediatek/telephony/TelephonyManagerEx;

    invoke-direct {v0}, Lcom/mediatek/telephony/TelephonyManagerEx;-><init>()V

    sput-object v0, Lcom/mediatek/telephony/TelephonyManagerEx;->sInstance:Lcom/mediatek/telephony/TelephonyManagerEx;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/telephony/TelephonyManagerEx;->mContext:Landroid/content/Context;

    .line 122
    const-string v0, "telephony.registry"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/telephony/TelephonyManagerEx;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    .line 124
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/telephony/TelephonyManagerEx;->mContext:Landroid/content/Context;

    .line 112
    const-string v0, "TelephonyManagerEx"

    const-string v1, "getSubscriberInfo"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iput-object p1, p0, Lcom/mediatek/telephony/TelephonyManagerEx;->mContext:Landroid/content/Context;

    .line 114
    const-string v0, "telephony.registry"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/telephony/TelephonyManagerEx;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    .line 117
    return-void
.end method

.method public static getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;
    .locals 1

    .prologue
    .line 132
    sget-object v0, Lcom/mediatek/telephony/TelephonyManagerEx;->sInstance:Lcom/mediatek/telephony/TelephonyManagerEx;

    return-object v0
.end method

.method private getITelephony()Lcom/android/internal/telephony/ITelephony;
    .locals 1

    .prologue
    .line 824
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method private getITelephonyEx()Lcom/mediatek/internal/telephony/ITelephonyEx;
    .locals 1

    .prologue
    .line 828
    const-string v0, "phoneEx"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v0

    return-object v0
.end method

.method private getPhoneTypeFromNetworkType()I
    .locals 4

    .prologue
    .line 841
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v1

    .line 842
    .local v1, "phoneId":I
    const-string v2, "ro.telephony.default_network"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 844
    .local v0, "mode":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 845
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->getPhoneType(I)I

    move-result v2

    .line 847
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getPhoneTypeFromProperty()I
    .locals 3

    .prologue
    .line 833
    const-string v1, "gsm.current.phone-type"

    invoke-direct {p0}, Lcom/mediatek/telephony/TelephonyManagerEx;->getPhoneTypeFromNetworkType()I

    move-result v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 836
    .local v0, "type":I
    return v0
.end method

.method private getSubIdBySlot(I)I
    .locals 5
    .param p1, "slot"    # I

    .prologue
    const/4 v4, 0x0

    .line 427
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 428
    .local v0, "subId":[I
    const-string v2, "TelephonyManagerEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSubIdBySlot, simId "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "subId "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_0

    aget v1, v0, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    if-eqz v0, :cond_1

    aget v1, v0, v4

    :goto_1
    return v1

    .line 428
    :cond_0
    const-string v1, "invalid!"

    goto :goto_0

    .line 430
    :cond_1
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v1

    goto :goto_1
.end method

.method private getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;
    .locals 1

    .prologue
    .line 951
    const-string v0, "iphonesubinfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCallState(I)I
    .locals 3
    .param p1, "simId"    # I

    .prologue
    .line 735
    const-string v0, "TelephonyManagerEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCallState simId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSubIdBySlot(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getCallState(I)I

    .line 737
    const/4 v0, 0x0

    return v0
.end method

.method public getCdmaRatModeKey(I)Ljava/lang/String;
    .locals 3
    .param p1, "subId"    # I

    .prologue
    .line 1278
    const-string v0, "OP09"

    const-string v1, "ro.operator.optr"

    const-string v2, "OM"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1279
    const-string v0, "lte_on_cdma_rat_mode"

    .line 1281
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lte_on_cdma_rat_mode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCellLocation(I)Landroid/telephony/CellLocation;
    .locals 4
    .param p1, "simId"    # I

    .prologue
    .line 192
    const-string v1, "TelephonyManagerEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deprecated! getCellLocation with simId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 199
    :goto_0
    return-object v1

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 199
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDataActivity(I)I
    .locals 3
    .param p1, "simId"    # I

    .prologue
    .line 757
    const-string v0, "TelephonyManagerEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDataActivity simId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSubIdBySlot(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getDataActivity(I)I

    move-result v0

    return v0
.end method

.method public getDataState(I)I
    .locals 3
    .param p1, "simId"    # I

    .prologue
    .line 777
    const-string v0, "TelephonyManagerEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDataState simId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSubIdBySlot(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getDataState(I)I

    move-result v0

    return v0
.end method

.method public getDeviceId(I)Ljava/lang/String;
    .locals 4
    .param p1, "simId"    # I

    .prologue
    .line 167
    const-string v1, "TelephonyManagerEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDeviceId simId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->getDeviceId(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 172
    :goto_0
    return-object v1

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v1, "TelephonyManagerEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDeviceId error, return null. ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDeviceSoftwareVersion(I)Ljava/lang/String;
    .locals 4
    .param p1, "simId"    # I

    .prologue
    .line 141
    const-string v1, "TelephonyManagerEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDeviceSoftwareVersion simId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 146
    :goto_0
    return-object v1

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v1, "TelephonyManagerEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDeviceSoftwareVersion error, return null. ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIccCardType(I)Ljava/lang/String;
    .locals 6
    .param p1, "subId"    # I

    .prologue
    .line 441
    const/4 v2, 0x0

    .line 443
    .local v2, "type":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/TelephonyManagerEx;->getITelephonyEx()Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v1

    .line 444
    .local v1, "telephony":Lcom/mediatek/internal/telephony/ITelephonyEx;
    if-eqz v1, :cond_0

    .line 445
    invoke-interface {v1, p1}, Lcom/mediatek/internal/telephony/ITelephonyEx;->getIccCardType(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 453
    .end local v1    # "telephony":Lcom/mediatek/internal/telephony/ITelephonyEx;
    :cond_0
    :goto_0
    const-string v4, "TelephonyManagerEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getIccCardType sub "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " ,icc type "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v2, :cond_1

    move-object v3, v2

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    return-object v2

    .line 447
    :catch_0
    move-exception v0

    .line 448
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 449
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 451
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 453
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    :cond_1
    const-string v3, "null"

    goto :goto_1
.end method

.method public getIsimDomain(I)Ljava/lang/String;
    .locals 3
    .param p1, "subId"    # I

    .prologue
    const/4 v1, 0x0

    .line 980
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimDomainForSubscriber(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 985
    :goto_0
    return-object v1

    .line 981
    :catch_0
    move-exception v0

    .line 982
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 983
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 985
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getIsimGbabp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1048
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mediatek/telephony/TelephonyManagerEx;->getIsimGbabp(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsimGbabp(I)Ljava/lang/String;
    .locals 3
    .param p1, "subId"    # I

    .prologue
    const/4 v1, 0x0

    .line 1059
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimGbabpForSubscriber(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1064
    :goto_0
    return-object v1

    .line 1060
    :catch_0
    move-exception v0

    .line 1061
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1062
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1064
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getIsimImpi(I)Ljava/lang/String;
    .locals 3
    .param p1, "subId"    # I

    .prologue
    const/4 v1, 0x0

    .line 963
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimImpiForSubscriber(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 968
    :goto_0
    return-object v1

    .line 964
    :catch_0
    move-exception v0

    .line 965
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 966
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 968
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getIsimImpu(I)[Ljava/lang/String;
    .locals 3
    .param p1, "subId"    # I

    .prologue
    const/4 v1, 0x0

    .line 998
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimImpuForSubscriber(I)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1003
    :goto_0
    return-object v1

    .line 999
    :catch_0
    move-exception v0

    .line 1000
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1001
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1003
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getIsimIst(I)Ljava/lang/String;
    .locals 3
    .param p1, "subId"    # I

    .prologue
    const/4 v1, 0x0

    .line 1015
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimIstForSubscriber(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1020
    :goto_0
    return-object v1

    .line 1016
    :catch_0
    move-exception v0

    .line 1017
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1018
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1020
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getIsimPcscf(I)[Ljava/lang/String;
    .locals 3
    .param p1, "subId"    # I

    .prologue
    const/4 v1, 0x0

    .line 1033
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimPcscfForSubscriber(I)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1038
    :goto_0
    return-object v1

    .line 1034
    :catch_0
    move-exception v0

    .line 1035
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1036
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1038
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getLine1Number(I)Ljava/lang/String;
    .locals 4
    .param p1, "simId"    # I

    .prologue
    .line 678
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSubIdBySlot(I)I

    move-result v0

    .line 679
    .local v0, "subId":I
    const-string v1, "TelephonyManagerEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLine1Number with simId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,subId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->getLine1NumberForSubscriber(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getNeighboringCellInfo(I)Ljava/util/List;
    .locals 4
    .param p1, "simId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 222
    const-string v1, "TelephonyManagerEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deprecated! getNeighboringCellInfo with simId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNeighboringCellInfo()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 228
    :goto_0
    return-object v1

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 228
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNetworkCountryIso(I)Ljava/lang/String;
    .locals 5
    .param p1, "simId"    # I

    .prologue
    .line 344
    :try_start_0
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSubIdBySlot(I)I

    move-result v1

    .line 345
    .local v1, "subId":I
    const-string v2, "TelephonyManagerEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Deprecated! getNetworkCountryIso with simId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,subId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIsoForSubscription(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 349
    .end local v1    # "subId":I
    :goto_0
    return-object v2

    .line 347
    :catch_0
    move-exception v0

    .line 348
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 349
    const-string v2, ""

    goto :goto_0
.end method

.method public getNetworkOperator(I)Ljava/lang/String;
    .locals 5
    .param p1, "simId"    # I

    .prologue
    .line 294
    :try_start_0
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSubIdBySlot(I)I

    move-result v1

    .line 295
    .local v1, "subId":I
    const-string v2, "TelephonyManagerEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Deprecated! getNetworkOperator with simId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,subId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorForSubscription(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 299
    .end local v1    # "subId":I
    :goto_0
    return-object v2

    .line 297
    :catch_0
    move-exception v0

    .line 298
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 299
    const-string v2, ""

    goto :goto_0
.end method

.method public getNetworkOperatorName(I)Ljava/lang/String;
    .locals 5
    .param p1, "simId"    # I

    .prologue
    .line 269
    :try_start_0
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSubIdBySlot(I)I

    move-result v1

    .line 270
    .local v1, "subId":I
    const-string v2, "TelephonyManagerEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Deprecated! getNetworkOperatorName with simId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,subId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 274
    .end local v1    # "subId":I
    :goto_0
    return-object v2

    .line 272
    :catch_0
    move-exception v0

    .line 273
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 274
    const-string v2, ""

    goto :goto_0
.end method

.method public getNetworkType(I)I
    .locals 4
    .param p1, "simId"    # I

    .prologue
    .line 398
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSubIdBySlot(I)I

    move-result v0

    .line 399
    .local v0, "subId":I
    const-string v1, "TelephonyManagerEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deprecated! getNetworkType with simId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,subId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->getNetworkType(I)I

    move-result v1

    return v1
.end method

.method public getPhoneType(I)I
    .locals 5
    .param p1, "simId"    # I

    .prologue
    const/4 v4, 0x0

    .line 244
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 245
    .local v0, "subIds":[I
    const-string v1, "TelephonyManagerEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deprecated! getPhoneType with simId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", subId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    aget v2, v0, v4

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(I)I

    move-result v1

    return v1
.end method

.method public getScAddress(I)Ljava/lang/String;
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 861
    invoke-virtual {p0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getScAddressWithErroCode(I)Landroid/os/Bundle;

    move-result-object v0

    .line 862
    .local v0, "result":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 863
    const-string v1, "scAddress"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 865
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getScAddressWithErroCode(I)Landroid/os/Bundle;
    .locals 4
    .param p1, "subId"    # I

    .prologue
    const/4 v2, 0x0

    .line 917
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/TelephonyManagerEx;->getITelephonyEx()Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/ITelephonyEx;->getScAddressUsingSubId(I)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 923
    :goto_0
    return-object v2

    .line 918
    :catch_0
    move-exception v0

    .line 919
    .local v0, "e1":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 921
    .end local v0    # "e1":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 922
    .local v1, "e2":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getSimCountryIso(I)Ljava/lang/String;
    .locals 4
    .param p1, "simId"    # I

    .prologue
    .line 609
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSubIdBySlot(I)I

    move-result v0

    .line 610
    .local v0, "subId":I
    const-string v1, "TelephonyManagerEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSimCountryIso with simId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,subId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSimOperator(I)Ljava/lang/String;
    .locals 4
    .param p1, "simId"    # I

    .prologue
    .line 573
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSubIdBySlot(I)I

    move-result v0

    .line 574
    .local v0, "subId":I
    const-string v1, "TelephonyManagerEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSimOperator with simId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,subId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSimOperatorName(I)Ljava/lang/String;
    .locals 4
    .param p1, "simId"    # I

    .prologue
    .line 592
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSubIdBySlot(I)I

    move-result v0

    .line 593
    .local v0, "subId":I
    const-string v1, "TelephonyManagerEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSimOperatorName with simId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,subId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->getSimOperatorNameForSubscription(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSimSerialNumber(I)Ljava/lang/String;
    .locals 4
    .param p1, "simId"    # I

    .prologue
    .line 631
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSubIdBySlot(I)I

    move-result v0

    .line 632
    .local v0, "subId":I
    const-string v1, "TelephonyManagerEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSimSerialNumber with simId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,subId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSimState(I)I
    .locals 3
    .param p1, "simId"    # I

    .prologue
    .line 555
    const-string v0, "TelephonyManagerEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSimState simId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v0

    return v0
.end method

.method public getSubscriberId(I)Ljava/lang/String;
    .locals 4
    .param p1, "simId"    # I

    .prologue
    .line 657
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSubIdBySlot(I)I

    move-result v0

    .line 658
    .local v0, "subId":I
    const-string v1, "TelephonyManagerEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSubscriberId with simId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,subId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSubscriberIdForLteDcPhone(I)Ljava/lang/String;
    .locals 4
    .param p1, "subId"    # I

    .prologue
    const/4 v2, 0x0

    .line 1199
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/TelephonyManagerEx;->getITelephonyEx()Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/ITelephonyEx;->getSubscriberIdForLteDcPhone(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 1205
    :goto_0
    return-object v2

    .line 1200
    :catch_0
    move-exception v0

    .line 1201
    .local v0, "e1":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1203
    .end local v0    # "e1":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 1204
    .local v1, "e2":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getSvlteCardType(I)I
    .locals 6
    .param p1, "slotId"    # I

    .prologue
    .line 466
    const/4 v2, 0x0

    .line 468
    .local v2, "type":I
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/TelephonyManagerEx;->getITelephonyEx()Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v1

    .line 469
    .local v1, "telephony":Lcom/mediatek/internal/telephony/ITelephonyEx;
    if-eqz v1, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 470
    invoke-interface {v1, p1}, Lcom/mediatek/internal/telephony/ITelephonyEx;->getSvlteCardType(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 478
    .end local v1    # "telephony":Lcom/mediatek/internal/telephony/ITelephonyEx;
    :cond_0
    :goto_0
    const-string v3, "TelephonyManagerEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSvlteCardType(): slotId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ,icc type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    return v2

    .line 472
    :catch_0
    move-exception v0

    .line 473
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 474
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 476
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getUsimGbabp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1136
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mediatek/telephony/TelephonyManagerEx;->getUsimGbabp(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUsimGbabp(I)Ljava/lang/String;
    .locals 3
    .param p1, "subId"    # I

    .prologue
    const/4 v1, 0x0

    .line 1147
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getUsimGbabpForSubscriber(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1152
    :goto_0
    return-object v1

    .line 1148
    :catch_0
    move-exception v0

    .line 1149
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1150
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1152
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getUsimService(I)Z
    .locals 1
    .param p1, "service"    # I

    .prologue
    .line 1109
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getUsimService(II)Z

    move-result v0

    return v0
.end method

.method public getUsimService(II)Z
    .locals 3
    .param p1, "subId"    # I
    .param p2, "service"    # I

    .prologue
    const/4 v1, 0x0

    .line 1121
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getUsimServiceForSubscriber(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1126
    :goto_0
    return v1

    .line 1122
    :catch_0
    move-exception v0

    .line 1123
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1124
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1126
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getVoiceMailAlphaTag(I)Ljava/lang/String;
    .locals 4
    .param p1, "simId"    # I

    .prologue
    .line 716
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSubIdBySlot(I)I

    move-result v0

    .line 717
    .local v0, "subId":I
    const-string v1, "TelephonyManagerEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVoiceMailAlphaTag with simId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,subId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->getVoiceMailAlphaTag(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getVoiceMailNumber(I)Ljava/lang/String;
    .locals 4
    .param p1, "simId"    # I

    .prologue
    .line 696
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSubIdBySlot(I)I

    move-result v0

    .line 697
    .local v0, "subId":I
    const-string v1, "TelephonyManagerEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVoiceMailNumber with simId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,subId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public hasIccCard(I)Z
    .locals 4
    .param p1, "simId"    # I

    .prologue
    .line 421
    const-string v1, "TelephonyManagerEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasIccCard simId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    move v0, p1

    .line 423
    .local v0, "slot":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v1

    return v1
.end method

.method public isAllowAirplaneModeChange()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1262
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/TelephonyManagerEx;->getITelephonyEx()Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v2

    invoke-interface {v2}, Lcom/mediatek/internal/telephony/ITelephonyEx;->isAllowAirplaneModeChange()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1266
    :goto_0
    return v1

    .line 1263
    :catch_0
    move-exception v0

    .line 1264
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1265
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1266
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public isAppTypeSupported(II)Z
    .locals 6
    .param p1, "slotId"    # I
    .param p2, "appType"    # I

    .prologue
    .line 489
    const/4 v1, 0x0

    .line 491
    .local v1, "isSupported":Z
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/TelephonyManagerEx;->getITelephonyEx()Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v2

    .line 492
    .local v2, "telephony":Lcom/mediatek/internal/telephony/ITelephonyEx;
    if-eqz v2, :cond_0

    .line 493
    invoke-interface {v2, p1, p2}, Lcom/mediatek/internal/telephony/ITelephonyEx;->isAppTypeSupported(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 501
    .end local v2    # "telephony":Lcom/mediatek/internal/telephony/ITelephonyEx;
    :cond_0
    :goto_0
    const-string v3, "TelephonyManagerEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isAppTypeSupported slotId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", appType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isSupported: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    return v1

    .line 495
    :catch_0
    move-exception v0

    .line 496
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 497
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 499
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public isInDsdaMode()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1237
    const-string v3, "ro.mtk_switch_antenna"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1251
    :cond_0
    :goto_0
    return v2

    .line 1240
    :cond_1
    const-string v3, "persist.radio.multisim.config"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1242
    .local v0, "mSimConfig":Ljava/lang/String;
    const-string v3, "persist.radio.svlte.mode"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1245
    .local v1, "svlteMode":Ljava/lang/String;
    const-string v3, "dsda"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1246
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "svlte"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1248
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public isInHomeNetwork(I)Z
    .locals 3
    .param p1, "subId"    # I

    .prologue
    const/4 v1, 0x0

    .line 1294
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/TelephonyManagerEx;->getITelephonyEx()Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/mediatek/internal/telephony/ITelephonyEx;->isInHomeNetwork(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1298
    :goto_0
    return v1

    .line 1295
    :catch_0
    move-exception v0

    .line 1296
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1297
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1298
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public isNetworkRoaming(I)Z
    .locals 5
    .param p1, "simId"    # I

    .prologue
    .line 318
    :try_start_0
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSubIdBySlot(I)I

    move-result v1

    .line 319
    .local v1, "subId":I
    const-string v2, "TelephonyManagerEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Deprecated! isNetworkRoaming with simId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,subId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 323
    .end local v1    # "subId":I
    :goto_0
    return v2

    .line 321
    :catch_0
    move-exception v0

    .line 322
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 323
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isTestIccCard(I)Z
    .locals 6
    .param p1, "simId"    # I

    .prologue
    .line 513
    const/4 v1, 0x0

    .line 514
    .local v1, "result":Z
    const-string v3, "TelephonyManagerEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isTestIccCard simId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/TelephonyManagerEx;->getITelephonyEx()Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v2

    .line 517
    .local v2, "telephony":Lcom/mediatek/internal/telephony/ITelephonyEx;
    if-eqz v2, :cond_0

    .line 518
    invoke-interface {v2, p1}, Lcom/mediatek/internal/telephony/ITelephonyEx;->isTestIccCard(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 526
    .end local v2    # "telephony":Lcom/mediatek/internal/telephony/ITelephonyEx;
    :cond_0
    :goto_0
    const-string v3, "TelephonyManagerEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isTestIccCard sim "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ,result "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    return v1

    .line 520
    :catch_0
    move-exception v0

    .line 521
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 522
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 524
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public listen(Landroid/telephony/PhoneStateListener;II)V
    .locals 4
    .param p1, "listener"    # Landroid/telephony/PhoneStateListener;
    .param p2, "events"    # I
    .param p3, "simId"    # I

    .prologue
    .line 817
    const-string v1, "TelephonyManagerEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deprecated api, listen simId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",events="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    iget-object v1, p0, Lcom/mediatek/telephony/TelephonyManagerEx;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/telephony/TelephonyManagerEx;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 819
    .local v0, "pkgForDebug":Ljava/lang/String;
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 820
    return-void

    .line 818
    .end local v0    # "pkgForDebug":Ljava/lang/String;
    :cond_0
    const-string v0, "<unknown>"

    goto :goto_0
.end method

.method public setIsimGbabp(ILjava/lang/String;Landroid/os/Message;)V
    .locals 2
    .param p1, "subId"    # I
    .param p2, "gbabp"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1093
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/telephony/IPhoneSubInfo;->setIsimGbabpForSubscriber(ILjava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1100
    :goto_0
    return-void

    .line 1094
    :catch_0
    move-exception v0

    .line 1095
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1096
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1098
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public setIsimGbabp(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "gbabp"    # Ljava/lang/String;
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1078
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/mediatek/telephony/TelephonyManagerEx;->setIsimGbabp(ILjava/lang/String;Landroid/os/Message;)V

    .line 1079
    return-void
.end method

.method public setScAddress(ILjava/lang/String;)Z
    .locals 4
    .param p1, "subId"    # I
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 939
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/TelephonyManagerEx;->getITelephonyEx()Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/internal/telephony/ITelephonyEx;->setScAddressUsingSubId(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 945
    :goto_0
    return v2

    .line 940
    :catch_0
    move-exception v0

    .line 941
    .local v0, "e1":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 943
    .end local v0    # "e1":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 944
    .local v1, "e2":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public setUsimGbabp(ILjava/lang/String;Landroid/os/Message;)V
    .locals 2
    .param p1, "subId"    # I
    .param p2, "gbabp"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1181
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/telephony/IPhoneSubInfo;->setUsimGbabpForSubscriber(ILjava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1188
    :goto_0
    return-void

    .line 1182
    :catch_0
    move-exception v0

    .line 1183
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1184
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1186
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public setUsimGbabp(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "gbabp"    # Ljava/lang/String;
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1166
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/mediatek/telephony/TelephonyManagerEx;->setUsimGbabp(ILjava/lang/String;Landroid/os/Message;)V

    .line 1167
    return-void
.end method
