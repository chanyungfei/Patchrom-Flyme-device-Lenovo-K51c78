.class public Lcom/mediatek/bluetooth/BleManager;
.super Ljava/lang/Object;
.source "BleManager.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "BleManager"

.field private static final VDBG:Z = true

.field private static sBleManager:Lcom/mediatek/bluetooth/BleManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    new-instance v0, Lcom/mediatek/bluetooth/BleManager;

    invoke-direct {v0}, Lcom/mediatek/bluetooth/BleManager;-><init>()V

    sput-object v0, Lcom/mediatek/bluetooth/BleManager;->sBleManager:Lcom/mediatek/bluetooth/BleManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method public static getDefaultBleProfileManager()Lcom/mediatek/bluetooth/BleManager;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/mediatek/bluetooth/BleManager;->sBleManager:Lcom/mediatek/bluetooth/BleManager;

    return-object v0
.end method


# virtual methods
.method public closeDeviceManager(Lcom/mediatek/bluetooth/BleDeviceManager;)V
    .locals 2
    .param p1, "proxy"    # Lcom/mediatek/bluetooth/BleDeviceManager;

    .prologue
    .line 107
    const-string v0, "BleManager"

    const-string v1, "closeDeviceManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    if-nez p1, :cond_0

    .line 115
    :goto_0
    return-void

    .line 113
    :cond_0
    invoke-virtual {p1}, Lcom/mediatek/bluetooth/BleDeviceManager;->close()V

    goto :goto_0
.end method

.method public closeProfileServiceManager(Lcom/mediatek/bluetooth/BleProfileServiceManager;)V
    .locals 3
    .param p1, "proxy"    # Lcom/mediatek/bluetooth/BleProfileServiceManager;

    .prologue
    .line 214
    const-string v0, "BleManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closeProfileServiceManager: proxy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    if-eqz p1, :cond_0

    .line 217
    invoke-virtual {p1}, Lcom/mediatek/bluetooth/BleProfileServiceManager;->close()V

    .line 219
    :cond_0
    return-void
.end method

.method public closeProfileServiceProxy(ILcom/mediatek/bluetooth/BleProfileService;)V
    .locals 3
    .param p1, "profile"    # I
    .param p2, "proxy"    # Lcom/mediatek/bluetooth/BleProfileService;

    .prologue
    .line 165
    const-string v0, "BleManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closeProfileServiceProxy: profile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " proxy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    if-nez p2, :cond_0

    .line 182
    .end local p2    # "proxy":Lcom/mediatek/bluetooth/BleProfileService;
    :goto_0
    return-void

    .line 171
    .restart local p2    # "proxy":Lcom/mediatek/bluetooth/BleProfileService;
    :cond_0
    const/4 v0, 0x2

    if-ne v0, p1, :cond_1

    instance-of v0, p2, Lcom/mediatek/bluetooth/BleTimeProfileService;

    if-eqz v0, :cond_1

    .line 172
    check-cast p2, Lcom/mediatek/bluetooth/BleTimeProfileService;

    .end local p2    # "proxy":Lcom/mediatek/bluetooth/BleProfileService;
    invoke-virtual {p2}, Lcom/mediatek/bluetooth/BleTimeProfileService;->close()V

    goto :goto_0

    .line 173
    .restart local p2    # "proxy":Lcom/mediatek/bluetooth/BleProfileService;
    :cond_1
    const/4 v0, 0x1

    if-ne v0, p1, :cond_2

    instance-of v0, p2, Lcom/mediatek/bluetooth/BleProximityProfileService;

    if-eqz v0, :cond_2

    .line 175
    check-cast p2, Lcom/mediatek/bluetooth/BleProximityProfileService;

    .end local p2    # "proxy":Lcom/mediatek/bluetooth/BleProfileService;
    invoke-virtual {p2}, Lcom/mediatek/bluetooth/BleProximityProfileService;->close()V

    goto :goto_0

    .line 176
    .restart local p2    # "proxy":Lcom/mediatek/bluetooth/BleProfileService;
    :cond_2
    const/4 v0, 0x3

    if-ne v0, p1, :cond_3

    instance-of v0, p2, Lcom/mediatek/bluetooth/BleAlertNotificationProfileService;

    if-eqz v0, :cond_3

    .line 178
    check-cast p2, Lcom/mediatek/bluetooth/BleAlertNotificationProfileService;

    .end local p2    # "proxy":Lcom/mediatek/bluetooth/BleProfileService;
    invoke-virtual {p2}, Lcom/mediatek/bluetooth/BleAlertNotificationProfileService;->close()V

    goto :goto_0

    .line 180
    .restart local p2    # "proxy":Lcom/mediatek/bluetooth/BleProfileService;
    :cond_3
    const-string v0, "BleManager"

    const-string v1, "getProfileService: not match!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getDeviceManager(Landroid/content/Context;Lcom/mediatek/bluetooth/BleDeviceManager$DeviceManagerListener;)Z
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "proxyListener"    # Lcom/mediatek/bluetooth/BleDeviceManager$DeviceManagerListener;

    .prologue
    .line 84
    const-string v0, "BleManager"

    const-string v1, "getDeviceManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 87
    :cond_0
    const/4 v0, 0x0

    .line 92
    :goto_0
    return v0

    .line 90
    :cond_1
    new-instance v0, Lcom/mediatek/bluetooth/BleDeviceManager;

    invoke-direct {v0, p1, p2}, Lcom/mediatek/bluetooth/BleDeviceManager;-><init>(Landroid/content/Context;Lcom/mediatek/bluetooth/BleDeviceManager$DeviceManagerListener;)V

    .line 92
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getProfileServiceManager(Landroid/content/Context;Lcom/mediatek/bluetooth/BleProfileServiceManager$ProfileServiceManagerListener;)Z
    .locals 2
    .param p1, "ctxt"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/mediatek/bluetooth/BleProfileServiceManager$ProfileServiceManagerListener;

    .prologue
    .line 193
    const-string v0, "BleManager"

    const-string v1, "getProfileServiceManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 196
    new-instance v0, Lcom/mediatek/bluetooth/BleProfileServiceManager;

    invoke-direct {v0, p1, p2}, Lcom/mediatek/bluetooth/BleProfileServiceManager;-><init>(Landroid/content/Context;Lcom/mediatek/bluetooth/BleProfileServiceManager$ProfileServiceManagerListener;)V

    .line 197
    const/4 v0, 0x1

    .line 199
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProfileServiceProxy(Landroid/content/Context;ILcom/mediatek/bluetooth/BleProfileService$ProfileServiceListener;)Z
    .locals 4
    .param p1, "ctxt"    # Landroid/content/Context;
    .param p2, "profile"    # I
    .param p3, "listener"    # Lcom/mediatek/bluetooth/BleProfileService$ProfileServiceListener;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 127
    const-string v2, "BleManager"

    const-string v3, "getProfileService"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    :cond_0
    move v0, v1

    .line 148
    :goto_0
    return v0

    .line 133
    :cond_1
    const/4 v2, 0x2

    if-ne v2, p2, :cond_2

    .line 134
    const-string v1, "BleManager"

    const-string v2, "getProfileService: BLE_PROFILE_TIP"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    new-instance v1, Lcom/mediatek/bluetooth/BleTimeProfileService;

    invoke-direct {v1, p1, p3}, Lcom/mediatek/bluetooth/BleTimeProfileService;-><init>(Landroid/content/Context;Lcom/mediatek/bluetooth/BleProfileService$ProfileServiceListener;)V

    goto :goto_0

    .line 137
    :cond_2
    if-ne v0, p2, :cond_3

    .line 138
    const-string v1, "BleManager"

    const-string v2, "getProfileService: BLE_PROFILE_PXP"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    new-instance v1, Lcom/mediatek/bluetooth/BleProximityProfileService;

    invoke-direct {v1, p1, p3}, Lcom/mediatek/bluetooth/BleProximityProfileService;-><init>(Landroid/content/Context;Lcom/mediatek/bluetooth/BleProfileService$ProfileServiceListener;)V

    goto :goto_0

    .line 141
    :cond_3
    const/4 v2, 0x3

    if-ne v2, p2, :cond_4

    .line 143
    const-string v1, "BleManager"

    const-string v2, "getProfileService: BLE_PROFILE_ANP"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    new-instance v1, Lcom/mediatek/bluetooth/BleAlertNotificationProfileService;

    invoke-direct {v1, p1, p3}, Lcom/mediatek/bluetooth/BleAlertNotificationProfileService;-><init>(Landroid/content/Context;Lcom/mediatek/bluetooth/BleProfileService$ProfileServiceListener;)V

    goto :goto_0

    :cond_4
    move v0, v1

    .line 148
    goto :goto_0
.end method
