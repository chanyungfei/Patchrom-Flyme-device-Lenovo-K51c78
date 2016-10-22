.class public Landroid/provider/MultiSIMUtils;
.super Ljava/lang/Object;
.source "MultiSIMUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MultiSIMUtils"

.field private static mContext:Landroid/content/Context;

.field private static sInstance:Landroid/provider/MultiSIMUtils;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    sput-object p1, Landroid/provider/MultiSIMUtils;->mContext:Landroid/content/Context;

    .line 24
    return-void
.end method

.method public static getDefault(Landroid/content/Context;)Landroid/provider/MultiSIMUtils;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    sget-object v0, Landroid/provider/MultiSIMUtils;->sInstance:Landroid/provider/MultiSIMUtils;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Landroid/provider/MultiSIMUtils;

    invoke-direct {v0, p0}, Landroid/provider/MultiSIMUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/provider/MultiSIMUtils;->sInstance:Landroid/provider/MultiSIMUtils;

    .line 30
    :cond_0
    sget-object v0, Landroid/provider/MultiSIMUtils;->sInstance:Landroid/provider/MultiSIMUtils;

    return-object v0
.end method

.method private getSubIdBySlot(I)I
    .locals 5
    .param p1, "slot"    # I

    .prologue
    const/4 v4, 0x0

    .line 44
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 45
    .local v0, "subId":[I
    const-string v2, "MultiSIMUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSubIdBySlot, simId "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " subId "

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

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    if-eqz v0, :cond_1

    aget v1, v0, v4

    :goto_1
    return v1

    .line 45
    :cond_0
    const-string v1, "invalid!"

    goto :goto_0

    .line 46
    :cond_1
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v1

    goto :goto_1
.end method


# virtual methods
.method public getCellLocation(I)Landroid/telephony/CellLocation;
    .locals 5
    .param p1, "simid"    # I

    .prologue
    .line 123
    const/4 v1, 0x0

    .line 124
    .local v1, "str":Landroid/telephony/CellLocation;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 125
    .local v0, "mTelephonyMgr":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    .line 126
    invoke-direct {p0, p1}, Landroid/provider/MultiSIMUtils;->getSubIdBySlot(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->getCellLocation(I)Landroid/telephony/CellLocation;

    move-result-object v1

    .line 128
    :cond_0
    const-string v2, "MultiSIMUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCellLocation is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",simid ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    return-object v1
.end method

.method public getDeviceId(I)Ljava/lang/String;
    .locals 4
    .param p1, "simid"    # I

    .prologue
    .line 60
    const/4 v0, 0x0

    .line 61
    .local v0, "IMEIorMEID":Ljava/lang/String;
    if-nez p1, :cond_1

    const-string v1, "ct"

    const-string v2, "ro.lenovo.operator"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 62
    const-string v1, "gsm.ril.c2k.meid"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    :cond_0
    :goto_0
    const-string v1, "MultiSIMUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDeviceId meid or imei="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", simid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    return-object v0

    .line 63
    :cond_1
    if-nez p1, :cond_2

    .line 64
    const-string v1, "gsm.ril.imei1"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 65
    :cond_2
    const/4 v1, 0x1

    if-ne v1, p1, :cond_0

    .line 66
    const-string v1, "gsm.ril.imei2"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNetworkOperator(I)Ljava/lang/String;
    .locals 5
    .param p1, "simid"    # I

    .prologue
    .line 89
    const/4 v1, 0x0

    .line 90
    .local v1, "str":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 91
    .local v0, "mTelephonyMgr":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    .line 92
    invoke-direct {p0, p1}, Landroid/provider/MultiSIMUtils;->getSubIdBySlot(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->getNetworkOperatorForSubscription(I)Ljava/lang/String;

    move-result-object v1

    .line 94
    :cond_0
    const-string v2, "MultiSIMUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNetworkOperator is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",simid ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    return-object v1
.end method

.method public getPhoneCount()I
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    return v0
.end method

.method public getPhoneType(I)I
    .locals 4
    .param p1, "simid"    # I

    .prologue
    .line 176
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/provider/MultiSIMUtils;->getSubIdBySlot(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(I)I

    move-result v0

    .line 177
    .local v0, "phoneType":I
    const-string v1, "MultiSIMUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPhoneType["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    return v0
.end method

.method public getScAddress(I)Ljava/lang/String;
    .locals 9
    .param p1, "simid"    # I

    .prologue
    const/4 v6, 0x0

    .line 135
    const/4 v3, 0x0

    .line 136
    .local v3, "scaBundle":Landroid/os/Bundle;
    const/4 v4, 0x0

    .line 137
    .local v4, "scaString":Ljava/lang/String;
    const/4 v2, 0x0

    .line 138
    .local v2, "iTelEx":Lcom/mediatek/internal/telephony/ITelephonyEx;
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v5

    .line 140
    .local v5, "subId":[I
    const-string v7, "phoneEx"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v2

    .line 141
    if-eqz v2, :cond_0

    .line 143
    const/4 v7, 0x0

    :try_start_0
    aget v7, v5, v7

    invoke-interface {v2, v7}, Lcom/mediatek/internal/telephony/ITelephonyEx;->getScAddressUsingSubId(I)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 153
    :cond_0
    if-eqz v3, :cond_1

    .line 154
    const-string v6, "MultiSIMUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "scaBundle["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const-string v6, "scAddress"

    const-string v7, ""

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    .end local v4    # "scaString":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .restart local v4    # "scaString":Ljava/lang/String;
    :cond_1
    move-object v6, v4

    .line 157
    :goto_0
    return-object v6

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e1":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 147
    .end local v0    # "e1":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 148
    .local v1, "e2":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getSimOperator(I)Ljava/lang/String;
    .locals 5
    .param p1, "simid"    # I

    .prologue
    .line 100
    const/4 v1, 0x0

    .line 101
    .local v1, "str":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 102
    .local v0, "mTelephonyMgr":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    .line 103
    invoke-direct {p0, p1}, Landroid/provider/MultiSIMUtils;->getSubIdBySlot(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v1

    .line 105
    :cond_0
    const-string v2, "MultiSIMUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSimOperator is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",simid ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    return-object v1
.end method

.method public getSimSerialNumber(I)Ljava/lang/String;
    .locals 5
    .param p1, "simid"    # I

    .prologue
    .line 111
    const/4 v1, 0x0

    .line 112
    .local v1, "str":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 113
    .local v0, "mTelephonyMgr":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    .line 114
    invoke-direct {p0, p1}, Landroid/provider/MultiSIMUtils;->getSubIdBySlot(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->getSimSerialNumber(I)Ljava/lang/String;

    move-result-object v1

    .line 116
    :cond_0
    const-string v2, "MultiSIMUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSimSerialNumber is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",simid ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    return-object v1
.end method

.method public getSimState(I)I
    .locals 5
    .param p1, "simid"    # I

    .prologue
    .line 164
    const/4 v1, 0x0

    .line 165
    .local v1, "state":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 166
    .local v0, "mTelephonyMgr":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v1

    .line 169
    :cond_0
    const-string v2, "MultiSIMUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSimState["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    return v1
.end method

.method public getSubscriberId(I)Ljava/lang/String;
    .locals 5
    .param p1, "simid"    # I

    .prologue
    .line 77
    const/4 v1, 0x0

    .line 78
    .local v1, "str":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 79
    .local v0, "mTelephonyMgr":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    .line 80
    invoke-direct {p0, p1}, Landroid/provider/MultiSIMUtils;->getSubIdBySlot(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v1

    .line 82
    :cond_0
    const-string v2, "MultiSIMUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSubscriberId is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",simid ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    return-object v1
.end method
