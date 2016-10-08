.class public Lcom/lenovo/datamining/avatar/phone/PhoneDataCollect;
.super Lcom/lenovo/datamining/avatar/api/ActionDefinitions;
.source "PhoneDataCollect.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/lenovo/datamining/avatar/api/ActionDefinitions;-><init>()V

    return-void
.end method

.method public static airplaneModeInfo(JLjava/lang/String;)V
    .locals 4
    .param p0, "time"    # J
    .param p2, "onOrOff"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 75
    new-instance v0, Lcom/lenovo/datamining/avatar/api/LocalParamMap;

    invoke-direct {v0}, Lcom/lenovo/datamining/avatar/api/LocalParamMap;-><init>()V

    .line 77
    .local v0, "localParams":Lcom/lenovo/datamining/avatar/api/LocalParamMap;
    const-string v1, "time"

    invoke-virtual {v0, v3, v1, p0, p1}, Lcom/lenovo/datamining/avatar/api/LocalParamMap;->put(ILjava/lang/String;J)Z

    .line 78
    const/4 v1, 0x2

    const-string v2, "onOff"

    invoke-virtual {v0, v1, v2, p2}, Lcom/lenovo/datamining/avatar/api/LocalParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    .line 80
    const-string v1, "A205"

    const-string v2, ""

    invoke-static {v1, v2, v3, v0}, Lcom/lenovo/datamining/avatar/phone/PhoneDataCollect;->notifyPhoneEvent(Ljava/lang/String;Ljava/lang/String;ILcom/lenovo/datamining/avatar/api/LocalParamMap;)V

    .line 81
    return-void
.end method

.method public static callFailInfo(III)V
    .locals 4
    .param p0, "failCause"    # I
    .param p1, "lac"    # I
    .param p2, "cid"    # I

    .prologue
    const/4 v3, 0x1

    .line 26
    new-instance v0, Lcom/lenovo/datamining/avatar/api/LocalParamMap;

    invoke-direct {v0}, Lcom/lenovo/datamining/avatar/api/LocalParamMap;-><init>()V

    .line 28
    .local v0, "localParams":Lcom/lenovo/datamining/avatar/api/LocalParamMap;
    const-string v1, "failCause"

    invoke-virtual {v0, v3, v1, p0}, Lcom/lenovo/datamining/avatar/api/LocalParamMap;->put(ILjava/lang/String;I)Z

    .line 29
    const/4 v1, 0x2

    const-string v2, "LAC"

    invoke-virtual {v0, v1, v2, p1}, Lcom/lenovo/datamining/avatar/api/LocalParamMap;->put(ILjava/lang/String;I)Z

    .line 30
    const/4 v1, 0x3

    const-string v2, "CID"

    invoke-virtual {v0, v1, v2, p2}, Lcom/lenovo/datamining/avatar/api/LocalParamMap;->put(ILjava/lang/String;I)Z

    .line 31
    const-string v1, "A201"

    const-string v2, ""

    invoke-static {v1, v2, v3, v0}, Lcom/lenovo/datamining/avatar/phone/PhoneDataCollect;->notifyPhoneEvent(Ljava/lang/String;Ljava/lang/String;ILcom/lenovo/datamining/avatar/api/LocalParamMap;)V

    .line 32
    return-void
.end method

.method public static callFailInfo(ILjava/lang/String;)V
    .locals 4
    .param p0, "failCause"    # I
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 18
    new-instance v0, Lcom/lenovo/datamining/avatar/api/LocalParamMap;

    invoke-direct {v0}, Lcom/lenovo/datamining/avatar/api/LocalParamMap;-><init>()V

    .line 20
    .local v0, "localParams":Lcom/lenovo/datamining/avatar/api/LocalParamMap;
    const-string v1, "failCause"

    invoke-virtual {v0, v3, v1, p0}, Lcom/lenovo/datamining/avatar/api/LocalParamMap;->put(ILjava/lang/String;I)Z

    .line 21
    const/4 v1, 0x4

    const-string v2, "location"

    invoke-virtual {v0, v1, v2, p1}, Lcom/lenovo/datamining/avatar/api/LocalParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    .line 22
    const-string v1, "A201"

    const-string v2, ""

    invoke-static {v1, v2, v3, v0}, Lcom/lenovo/datamining/avatar/phone/PhoneDataCollect;->notifyPhoneEvent(Ljava/lang/String;Ljava/lang/String;ILcom/lenovo/datamining/avatar/api/LocalParamMap;)V

    .line 23
    return-void
.end method

.method public static callInfo(IJJIZII)V
    .locals 7
    .param p0, "callTimesTillNow"    # I
    .param p1, "duration"    # J
    .param p3, "startTime"    # J
    .param p5, "volume"    # I
    .param p6, "isBtConnected"    # Z
    .param p7, "networkType"    # I
    .param p8, "disconnectType"    # I

    .prologue
    const/4 v5, 0x1

    .line 37
    if-eqz p6, :cond_0

    const-string v0, "1"

    .line 38
    .local v0, "isBt":Ljava/lang/String;
    :goto_0
    new-instance v1, Lcom/lenovo/datamining/avatar/api/LocalParamMap;

    invoke-direct {v1}, Lcom/lenovo/datamining/avatar/api/LocalParamMap;-><init>()V

    .line 40
    .local v1, "localParams":Lcom/lenovo/datamining/avatar/api/LocalParamMap;
    const-string v2, "dur"

    invoke-virtual {v1, v5, v2, p1, p2}, Lcom/lenovo/datamining/avatar/api/LocalParamMap;->put(ILjava/lang/String;J)Z

    .line 41
    const/4 v2, 0x2

    const-string v3, "startTime"

    invoke-virtual {v1, v2, v3, p3, p4}, Lcom/lenovo/datamining/avatar/api/LocalParamMap;->put(ILjava/lang/String;J)Z

    .line 42
    const/4 v2, 0x3

    const-string v3, "vol"

    invoke-virtual {v1, v2, v3, p5}, Lcom/lenovo/datamining/avatar/api/LocalParamMap;->put(ILjava/lang/String;I)Z

    .line 43
    const/4 v2, 0x4

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/lenovo/datamining/avatar/api/LocalParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    .line 44
    const/4 v2, 0x5

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v1, v2, v3, v4}, Lcom/lenovo/datamining/avatar/api/LocalParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    .line 45
    const-string v2, "A202"

    const-string v3, ""

    invoke-static {v2, v3, v5, v1}, Lcom/lenovo/datamining/avatar/phone/PhoneDataCollect;->notifyPhoneEvent(Ljava/lang/String;Ljava/lang/String;ILcom/lenovo/datamining/avatar/api/LocalParamMap;)V

    .line 46
    return-void

    .line 37
    .end local v0    # "isBt":Ljava/lang/String;
    .end local v1    # "localParams":Lcom/lenovo/datamining/avatar/api/LocalParamMap;
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method public static lossSignalInfo(JII)V
    .locals 4
    .param p0, "lostDuration"    # J
    .param p2, "lac"    # I
    .param p3, "cid"    # I

    .prologue
    const/4 v3, 0x1

    .line 57
    new-instance v0, Lcom/lenovo/datamining/avatar/api/LocalParamMap;

    invoke-direct {v0}, Lcom/lenovo/datamining/avatar/api/LocalParamMap;-><init>()V

    .line 59
    .local v0, "localParams":Lcom/lenovo/datamining/avatar/api/LocalParamMap;
    const-string v1, "lostDur"

    invoke-virtual {v0, v3, v1, p0, p1}, Lcom/lenovo/datamining/avatar/api/LocalParamMap;->put(ILjava/lang/String;J)Z

    .line 60
    const/4 v1, 0x2

    const-string v2, "LAC"

    invoke-virtual {v0, v1, v2, p2}, Lcom/lenovo/datamining/avatar/api/LocalParamMap;->put(ILjava/lang/String;I)Z

    .line 61
    const/4 v1, 0x3

    const-string v2, "CID"

    invoke-virtual {v0, v1, v2, p3}, Lcom/lenovo/datamining/avatar/api/LocalParamMap;->put(ILjava/lang/String;I)Z

    .line 62
    const-string v1, "A203"

    const-string v2, ""

    invoke-static {v1, v2, v3, v0}, Lcom/lenovo/datamining/avatar/phone/PhoneDataCollect;->notifyPhoneEvent(Ljava/lang/String;Ljava/lang/String;ILcom/lenovo/datamining/avatar/api/LocalParamMap;)V

    .line 63
    return-void
.end method

.method public static lossSignalInfo(JLjava/lang/String;)V
    .locals 4
    .param p0, "lostDuration"    # J
    .param p2, "location"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 49
    new-instance v0, Lcom/lenovo/datamining/avatar/api/LocalParamMap;

    invoke-direct {v0}, Lcom/lenovo/datamining/avatar/api/LocalParamMap;-><init>()V

    .line 51
    .local v0, "localParams":Lcom/lenovo/datamining/avatar/api/LocalParamMap;
    const-string v1, "lostDur"

    invoke-virtual {v0, v3, v1, p0, p1}, Lcom/lenovo/datamining/avatar/api/LocalParamMap;->put(ILjava/lang/String;J)Z

    .line 52
    const/4 v1, 0x4

    const-string v2, "location"

    invoke-virtual {v0, v1, v2, p2}, Lcom/lenovo/datamining/avatar/api/LocalParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    .line 53
    const-string v1, "A203"

    const-string v2, ""

    invoke-static {v1, v2, v3, v0}, Lcom/lenovo/datamining/avatar/phone/PhoneDataCollect;->notifyPhoneEvent(Ljava/lang/String;Ljava/lang/String;ILcom/lenovo/datamining/avatar/api/LocalParamMap;)V

    .line 54
    return-void
.end method

.method private static notifyPhoneEvent(Ljava/lang/String;Ljava/lang/String;ILcom/lenovo/datamining/avatar/api/LocalParamMap;)V
    .locals 4
    .param p0, "action"    # Ljava/lang/String;
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "value"    # I
    .param p3, "localParams"    # Lcom/lenovo/datamining/avatar/api/LocalParamMap;

    .prologue
    .line 128
    const-string v2, "true"

    const-string v3, "persist.backgrounddata.enable"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 131
    .local v1, "isCollectOn":Z
    if-nez v1, :cond_0

    .line 141
    :goto_0
    return-void

    .line 137
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2, p0, p1, p2, p3}, Landroid/app/IActivityManager;->notifyPhoneEvent(Ljava/lang/String;Ljava/lang/String;ILcom/lenovo/datamining/avatar/api/LocalParamMap;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static roamingInfo(Ljava/lang/String;J)V
    .locals 5
    .param p0, "operator"    # Ljava/lang/String;
    .param p1, "duration"    # J

    .prologue
    const/4 v3, 0x1

    .line 66
    new-instance v0, Lcom/lenovo/datamining/avatar/api/LocalParamMap;

    invoke-direct {v0}, Lcom/lenovo/datamining/avatar/api/LocalParamMap;-><init>()V

    .line 68
    .local v0, "localParams":Lcom/lenovo/datamining/avatar/api/LocalParamMap;
    const-string v1, "optr"

    invoke-virtual {v0, v3, v1, p0}, Lcom/lenovo/datamining/avatar/api/LocalParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    .line 69
    const/4 v1, 0x2

    const-string v2, "dur"

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/lenovo/datamining/avatar/api/LocalParamMap;->put(ILjava/lang/String;J)Z

    .line 71
    const-string v1, "A204"

    const-string v2, ""

    invoke-static {v1, v2, v3, v0}, Lcom/lenovo/datamining/avatar/phone/PhoneDataCollect;->notifyPhoneEvent(Ljava/lang/String;Ljava/lang/String;ILcom/lenovo/datamining/avatar/api/LocalParamMap;)V

    .line 72
    return-void
.end method

.method public static setupDatafailInfo(Ljava/lang/String;IIII)V
    .locals 4
    .param p0, "apOrModem"    # Ljava/lang/String;
    .param p1, "failCause"    # I
    .param p2, "lac"    # I
    .param p3, "cid"    # I
    .param p4, "networkType"    # I

    .prologue
    const/4 v3, 0x1

    .line 95
    new-instance v0, Lcom/lenovo/datamining/avatar/api/LocalParamMap;

    invoke-direct {v0}, Lcom/lenovo/datamining/avatar/api/LocalParamMap;-><init>()V

    .line 97
    .local v0, "localParams":Lcom/lenovo/datamining/avatar/api/LocalParamMap;
    const-string v1, "errCode"

    invoke-virtual {v0, v3, v1, p1}, Lcom/lenovo/datamining/avatar/api/LocalParamMap;->put(ILjava/lang/String;I)Z

    .line 98
    const/4 v1, 0x2

    const-string v2, "apOrMd"

    invoke-virtual {v0, v1, v2, p0}, Lcom/lenovo/datamining/avatar/api/LocalParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    .line 99
    const/4 v1, 0x3

    const-string v2, "LAC"

    invoke-virtual {v0, v1, v2, p2}, Lcom/lenovo/datamining/avatar/api/LocalParamMap;->put(ILjava/lang/String;I)Z

    .line 100
    const/4 v1, 0x4

    const-string v2, "CID"

    invoke-virtual {v0, v1, v2, p3}, Lcom/lenovo/datamining/avatar/api/LocalParamMap;->put(ILjava/lang/String;I)Z

    .line 101
    const/4 v1, 0x5

    const-string v2, "netType"

    invoke-virtual {v0, v1, v2, p4}, Lcom/lenovo/datamining/avatar/api/LocalParamMap;->put(ILjava/lang/String;I)Z

    .line 103
    const-string v1, "A206"

    const-string v2, ""

    invoke-static {v1, v2, v3, v0}, Lcom/lenovo/datamining/avatar/phone/PhoneDataCollect;->notifyPhoneEvent(Ljava/lang/String;Ljava/lang/String;ILcom/lenovo/datamining/avatar/api/LocalParamMap;)V

    .line 104
    return-void
.end method

.method public static setupDatafailInfo(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 4
    .param p0, "apOrModem"    # Ljava/lang/String;
    .param p1, "failCause"    # I
    .param p2, "location"    # Ljava/lang/String;
    .param p3, "networkType"    # I

    .prologue
    const/4 v3, 0x1

    .line 84
    new-instance v0, Lcom/lenovo/datamining/avatar/api/LocalParamMap;

    invoke-direct {v0}, Lcom/lenovo/datamining/avatar/api/LocalParamMap;-><init>()V

    .line 86
    .local v0, "localParams":Lcom/lenovo/datamining/avatar/api/LocalParamMap;
    const-string v1, "errCode"

    invoke-virtual {v0, v3, v1, p1}, Lcom/lenovo/datamining/avatar/api/LocalParamMap;->put(ILjava/lang/String;I)Z

    .line 87
    const/4 v1, 0x2

    const-string v2, "apOrMd"

    invoke-virtual {v0, v1, v2, p0}, Lcom/lenovo/datamining/avatar/api/LocalParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    .line 88
    const/4 v1, 0x3

    const-string v2, "location"

    invoke-virtual {v0, v1, v2, p2}, Lcom/lenovo/datamining/avatar/api/LocalParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    .line 89
    const/4 v1, 0x5

    const-string v2, "netType"

    invoke-virtual {v0, v1, v2, p3}, Lcom/lenovo/datamining/avatar/api/LocalParamMap;->put(ILjava/lang/String;I)Z

    .line 91
    const-string v1, "A206"

    const-string v2, ""

    invoke-static {v1, v2, v3, v0}, Lcom/lenovo/datamining/avatar/phone/PhoneDataCollect;->notifyPhoneEvent(Ljava/lang/String;Ljava/lang/String;ILcom/lenovo/datamining/avatar/api/LocalParamMap;)V

    .line 92
    return-void
.end method

.method public static simSwitchInfo(IIJJ)V
    .locals 4
    .param p0, "originalType"    # I
    .param p1, "destType"    # I
    .param p2, "duration"    # J
    .param p4, "regTime"    # J

    .prologue
    const/4 v3, 0x1

    .line 107
    new-instance v0, Lcom/lenovo/datamining/avatar/api/LocalParamMap;

    invoke-direct {v0}, Lcom/lenovo/datamining/avatar/api/LocalParamMap;-><init>()V

    .line 109
    .local v0, "localParams":Lcom/lenovo/datamining/avatar/api/LocalParamMap;
    const-string v1, "oCardType"

    invoke-virtual {v0, v3, v1, p0}, Lcom/lenovo/datamining/avatar/api/LocalParamMap;->put(ILjava/lang/String;I)Z

    .line 110
    const/4 v1, 0x2

    const-string v2, "nCardType"

    invoke-virtual {v0, v1, v2, p1}, Lcom/lenovo/datamining/avatar/api/LocalParamMap;->put(ILjava/lang/String;I)Z

    .line 111
    const/4 v1, 0x3

    const-string v2, "rdyTime"

    invoke-virtual {v0, v1, v2, p2, p3}, Lcom/lenovo/datamining/avatar/api/LocalParamMap;->put(ILjava/lang/String;J)Z

    .line 112
    const/4 v1, 0x4

    const-string v2, "regTime"

    invoke-virtual {v0, v1, v2, p4, p5}, Lcom/lenovo/datamining/avatar/api/LocalParamMap;->put(ILjava/lang/String;J)Z

    .line 114
    const-string v1, "A207"

    const-string v2, ""

    invoke-static {v1, v2, v3, v0}, Lcom/lenovo/datamining/avatar/phone/PhoneDataCollect;->notifyPhoneEvent(Ljava/lang/String;Ljava/lang/String;ILcom/lenovo/datamining/avatar/api/LocalParamMap;)V

    .line 115
    return-void
.end method

.method public static simTypeInfo(II)V
    .locals 4
    .param p0, "cardType1"    # I
    .param p1, "cardType2"    # I

    .prologue
    const/4 v3, 0x1

    .line 118
    new-instance v0, Lcom/lenovo/datamining/avatar/api/LocalParamMap;

    invoke-direct {v0}, Lcom/lenovo/datamining/avatar/api/LocalParamMap;-><init>()V

    .line 120
    .local v0, "localParams":Lcom/lenovo/datamining/avatar/api/LocalParamMap;
    const-string v1, "cardType1"

    invoke-virtual {v0, v3, v1, p0}, Lcom/lenovo/datamining/avatar/api/LocalParamMap;->put(ILjava/lang/String;I)Z

    .line 121
    const/4 v1, 0x2

    const-string v2, "cardType2"

    invoke-virtual {v0, v1, v2, p1}, Lcom/lenovo/datamining/avatar/api/LocalParamMap;->put(ILjava/lang/String;I)Z

    .line 123
    const-string v1, "A208"

    const-string v2, ""

    invoke-static {v1, v2, v3, v0}, Lcom/lenovo/datamining/avatar/phone/PhoneDataCollect;->notifyPhoneEvent(Ljava/lang/String;Ljava/lang/String;ILcom/lenovo/datamining/avatar/api/LocalParamMap;)V

    .line 124
    return-void
.end method
