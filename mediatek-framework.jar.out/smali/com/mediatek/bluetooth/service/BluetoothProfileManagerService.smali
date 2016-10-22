.class public Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;
.super Lcom/mediatek/bluetooth/IBluetoothProfileManager$Stub;
.source "BluetoothProfileManagerService.java"

# interfaces
.implements Landroid/bluetooth/BluetoothPbap$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService$2;
    }
.end annotation


# static fields
.field private static final BLUETOOTH_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH"

.field public static final BLUETOOTH_PROFILEMANAGER_SERVICE:Ljava/lang/String; = "bluetooth_profile_manager"

.field private static final DBG:Z = true

.field private static final MESSAGE_MONITOR_TIMEOUT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BluetoothProfileManagerService"

.field private static sConenctedProfileList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBluetoothEnableTime:J

.field private mBroadcastreceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mServiceList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;",
            "Lcom/mediatek/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/mediatek/bluetooth/IBluetoothProfileManager$Stub;-><init>()V

    .line 80
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->mBluetoothEnableTime:J

    .line 96
    new-instance v0, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService$1;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService$1;-><init>(Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->mBroadcastreceiver:Landroid/content/BroadcastReceiver;

    .line 132
    iput-object p1, p0, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->mContext:Landroid/content/Context;

    .line 133
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->mServiceList:Ljava/util/HashMap;

    .line 134
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->sConenctedProfileList:Ljava/util/Set;

    .line 135
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->mIntentFilter:Landroid/content/IntentFilter;

    .line 136
    iget-object v0, p0, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.profilemanager.action.PROFILE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.profilemanager.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->mBroadcastreceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 139
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-static {p0}, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->onBluetoothEnable()V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->onBluetoothDisable()V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;
    .param p1, "x1"    # Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;
    .param p2, "x2"    # I

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->onProfileStateUpdate(Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;
    .param p1, "x1"    # Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;
    .param p2, "x2"    # I

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->updateProfileState(Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;I)V

    return-void
.end method

.method private checkProfileService(Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;)Lcom/mediatek/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    .locals 1
    .param p1, "profile"    # Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    .prologue
    .line 359
    iget-object v0, p0, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->mServiceList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->mServiceList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;

    .line 362
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getProfileBehavior(Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;)Lcom/mediatek/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    .locals 3
    .param p1, "profile"    # Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    .prologue
    .line 391
    const/4 v0, 0x0

    .line 392
    .local v0, "profileBehavior":Lcom/mediatek/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    sget-object v1, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService$2;->$SwitchMap$com$mediatek$bluetooth$BluetoothProfileManager$Profile:[I

    invoke-virtual {p1}, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 442
    const-string v1, "unexpected profile"

    invoke-static {v1}, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    .line 445
    :goto_0
    :pswitch_0
    return-object v0

    .line 403
    :pswitch_1
    new-instance v0, Lcom/mediatek/bluetooth/BluetoothFtp$Client;

    .end local v0    # "profileBehavior":Lcom/mediatek/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    iget-object v1, p0, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mediatek/bluetooth/BluetoothFtp$Client;-><init>(Landroid/content/Context;)V

    .line 404
    .restart local v0    # "profileBehavior":Lcom/mediatek/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    goto :goto_0

    .line 406
    :pswitch_2
    new-instance v0, Lcom/mediatek/bluetooth/BluetoothFtp$Server;

    .end local v0    # "profileBehavior":Lcom/mediatek/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    iget-object v1, p0, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mediatek/bluetooth/BluetoothFtp$Server;-><init>(Landroid/content/Context;)V

    .line 407
    .restart local v0    # "profileBehavior":Lcom/mediatek/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    goto :goto_0

    .line 409
    :pswitch_3
    new-instance v0, Lcom/mediatek/bluetooth/BluetoothBipi;

    .end local v0    # "profileBehavior":Lcom/mediatek/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    iget-object v1, p0, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mediatek/bluetooth/BluetoothBipi;-><init>(Landroid/content/Context;)V

    .line 410
    .restart local v0    # "profileBehavior":Lcom/mediatek/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    goto :goto_0

    .line 412
    :pswitch_4
    new-instance v0, Lcom/mediatek/bluetooth/BluetoothBipr;

    .end local v0    # "profileBehavior":Lcom/mediatek/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    iget-object v1, p0, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mediatek/bluetooth/BluetoothBipr;-><init>(Landroid/content/Context;)V

    .line 413
    .restart local v0    # "profileBehavior":Lcom/mediatek/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    goto :goto_0

    .line 416
    :pswitch_5
    new-instance v0, Lcom/mediatek/bluetooth/BluetoothSimap;

    .end local v0    # "profileBehavior":Lcom/mediatek/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    iget-object v1, p0, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mediatek/bluetooth/BluetoothSimap;-><init>(Landroid/content/Context;)V

    .line 417
    .restart local v0    # "profileBehavior":Lcom/mediatek/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    goto :goto_0

    .line 428
    :pswitch_6
    new-instance v0, Lcom/mediatek/bluetooth/BluetoothDun;

    .end local v0    # "profileBehavior":Lcom/mediatek/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    iget-object v1, p0, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mediatek/bluetooth/BluetoothDun;-><init>(Landroid/content/Context;)V

    .line 429
    .restart local v0    # "profileBehavior":Lcom/mediatek/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    goto :goto_0

    .line 431
    :pswitch_7
    new-instance v0, Lcom/mediatek/bluetooth/BluetoothPrxm;

    .end local v0    # "profileBehavior":Lcom/mediatek/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    iget-object v1, p0, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mediatek/bluetooth/BluetoothPrxm;-><init>(Landroid/content/Context;)V

    .line 432
    .restart local v0    # "profileBehavior":Lcom/mediatek/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    goto :goto_0

    .line 434
    :pswitch_8
    new-instance v0, Lcom/mediatek/bluetooth/BluetoothPrxr;

    .end local v0    # "profileBehavior":Lcom/mediatek/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    iget-object v1, p0, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mediatek/bluetooth/BluetoothPrxr;-><init>(Landroid/content/Context;)V

    .line 435
    .restart local v0    # "profileBehavior":Lcom/mediatek/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    goto :goto_0

    .line 392
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
    .end packed-switch
.end method

.method private isConnectableToMultiDevices(Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;)Z
    .locals 2
    .param p1, "profile"    # Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    .prologue
    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isConnectableToMultiDevices:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    .line 217
    sget-object v0, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->HID:Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    invoke-virtual {p1, v0}, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 518
    const-string v0, "BluetoothProfileManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BT][profile manager]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    return-void
.end method

.method private onBluetoothDisable()V
    .locals 4

    .prologue
    .line 157
    const-string v2, "onBluetoothDisable"

    invoke-static {v2}, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    .line 158
    iget-object v2, p0, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->mServiceList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 159
    .local v1, "service":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 163
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 164
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;

    invoke-interface {v2}, Lcom/mediatek/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;->close()V

    .line 165
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 167
    .end local v0    # "entry":Ljava/util/Map$Entry;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mServiceList size is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->mServiceList:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    .line 169
    const-string v2, "android.bluetooth.profilemanager.action.DISABLE_PROFILES"

    invoke-direct {p0, v2}, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->sendMonitorMessage(Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method private onBluetoothEnable()V
    .locals 2

    .prologue
    .line 142
    const-string v0, "onBluetoothEnable"

    invoke-static {v0}, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    .line 145
    sget-object v0, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->A2DP:Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->updateProfileServiceList(Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;)V

    .line 149
    sget-object v0, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->HEADSET:Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->updateProfileServiceList(Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;)V

    .line 151
    const-string v0, "PRX"

    const-string v1, "hard code service registered."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    sget-object v0, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->PRXM:Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->updateProfileServiceList(Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;)V

    .line 153
    sget-object v0, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->PRXR:Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->updateProfileServiceList(Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;)V

    .line 154
    return-void
.end method

.method private onProfileStateUpdate(Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;I)V
    .locals 2
    .param p1, "profile"    # Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;
    .param p2, "state"    # I

    .prologue
    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onProfileStateUpdate():profile->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",state->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    .line 369
    const/16 v0, 0xb

    if-ne p2, v0, :cond_0

    .line 370
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->updateProfileServiceList(Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;)V

    .line 373
    :cond_0
    return-void
.end method

.method private sendMonitorMessage(Ljava/lang/String;)V
    .locals 4
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 450
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendMonitorMessage():action->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    .line 451
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 453
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 454
    return-void
.end method

.method private updateBluetoothNotification(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 494
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateBluetoothNotification:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    .line 496
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.profilemanager.action.UPDATE_ NOTIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 497
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 498
    const-string v1, "android.bluetooth.profilemanager.extra.EXTRA_NEW_STATE"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 499
    const-string v1, "android.bluetooth.profilemanager.extra.EXTRA_PREVIOUS_STATE"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 506
    :goto_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 507
    return-void

    .line 501
    :cond_0
    const-string v1, "android.bluetooth.profilemanager.extra.EXTRA_NEW_STATE"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 502
    const-string v1, "android.bluetooth.profilemanager.extra.EXTRA_PREVIOUS_STATE"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method private updateProfileServiceList(Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;)V
    .locals 2
    .param p1, "profile"    # Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    .prologue
    .line 377
    const/4 v0, 0x0

    .line 379
    .local v0, "profileBehavior":Lcom/mediatek/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    iget-object v1, p0, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->mServiceList:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 388
    :cond_0
    :goto_0
    return-void

    .line 383
    :cond_1
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->getProfileBehavior(Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;)Lcom/mediatek/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;

    move-result-object v0

    .line 385
    if-eqz v0, :cond_0

    .line 386
    iget-object v1, p0, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->mServiceList:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private updateProfileState(Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;I)V
    .locals 4
    .param p1, "profile"    # Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;
    .param p2, "state"    # I

    .prologue
    const/4 v3, 0x1

    .line 457
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateProfileState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", new state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    .line 461
    sget-object v1, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->sConenctedProfileList:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v0

    .line 462
    .local v0, "mProfileSize":I
    if-eq p2, v3, :cond_0

    if-nez p2, :cond_5

    .line 463
    :cond_0
    sget-object v1, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->sConenctedProfileList:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 464
    sget-object v1, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->sConenctedProfileList:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 465
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add profile:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is added to connected list"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    .line 485
    :cond_1
    :goto_0
    if-lez v0, :cond_2

    sget-object v1, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->sConenctedProfileList:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 486
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->updateBluetoothNotification(Z)V

    .line 488
    :cond_2
    if-nez v0, :cond_3

    sget-object v1, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->sConenctedProfileList:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 489
    invoke-direct {p0, v3}, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->updateBluetoothNotification(Z)V

    .line 491
    :cond_3
    return-void

    .line 467
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add profile:the profile("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") has been connected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 469
    :cond_5
    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    .line 470
    sget-object v1, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->sConenctedProfileList:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 471
    sget-object v1, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->HID:Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    invoke-virtual {p1, v1}, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 472
    sget-object v1, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->sConenctedProfileList:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 473
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove profile:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 474
    :cond_6
    sget-object v1, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->HID:Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    invoke-virtual {v1}, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->getConnectedDevices(Ljava/lang/String;)[Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_7

    .line 475
    sget-object v1, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->sConenctedProfileList:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 476
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove profile:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 478
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove profile:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " still has connected device"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 481
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove profile failure:the profile("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is not in connected profile list"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public connect(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 7
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 174
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "connect:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " device:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    .line 178
    invoke-static {p1}, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->valueOf(Ljava/lang/String;)Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    move-result-object v2

    .line 179
    .local v2, "profile":Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;
    invoke-direct {p0, v2}, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->checkProfileService(Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;)Lcom/mediatek/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;

    move-result-object v1

    .line 180
    .local v1, "mService":Lcom/mediatek/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    if-nez v1, :cond_0

    .line 181
    const-string v5, "connect():mService is null"

    invoke-static {v5}, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    .line 182
    const/4 v5, 0x0

    .line 210
    :goto_0
    return v5

    .line 185
    :cond_0
    invoke-direct {p0, v2}, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->isConnectableToMultiDevices(Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 186
    const/4 v4, 0x0

    .line 187
    .local v4, "sinks":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    sget-object v5, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->A2DP:Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    invoke-virtual {v2, v5}, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 188
    const-string v5, "in connect profile equals Bluetooth_A2DP"

    invoke-static {v5}, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    .line 193
    :goto_1
    if-eqz v4, :cond_2

    .line 194
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 196
    .local v3, "sink":Landroid/bluetooth/BluetoothDevice;
    invoke-interface {v1, v3}, Lcom/mediatek/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_2

    .line 191
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v3    # "sink":Landroid/bluetooth/BluetoothDevice;
    :cond_1
    invoke-interface {v1}, Lcom/mediatek/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;->getConnectedDevices()Ljava/util/Set;

    move-result-object v4

    goto :goto_1

    .line 206
    .end local v4    # "sinks":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_2
    invoke-interface {v1, p2}, Lcom/mediatek/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 210
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public disconnect(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 6
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v3, 0x0

    .line 221
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "disconnect:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " device:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    .line 223
    invoke-static {p1}, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->valueOf(Ljava/lang/String;)Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    move-result-object v2

    .line 224
    .local v2, "profile":Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;
    const/4 v0, 0x0

    .line 225
    .local v0, "devices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-direct {p0, v2}, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->checkProfileService(Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;)Lcom/mediatek/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;

    move-result-object v1

    .line 226
    .local v1, "mService":Lcom/mediatek/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    if-nez v1, :cond_1

    .line 227
    const-string v4, "disconnect():mService is null"

    invoke-static {v4}, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    .line 256
    :cond_0
    :goto_0
    return v3

    .line 232
    :cond_1
    invoke-interface {v1}, Lcom/mediatek/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;->getConnectedDevices()Ljava/util/Set;

    move-result-object v0

    .line 237
    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 250
    invoke-interface {v1, p2}, Lcom/mediatek/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 256
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public getConnectedDevices(Ljava/lang/String;)[Landroid/bluetooth/BluetoothDevice;
    .locals 5
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 260
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getConnectedDevices:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    .line 262
    invoke-static {p1}, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->valueOf(Ljava/lang/String;)Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    move-result-object v2

    .line 263
    .local v2, "profile":Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;
    const/4 v0, 0x0

    .line 264
    .local v0, "devices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-direct {p0, v2}, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->checkProfileService(Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;)Lcom/mediatek/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;

    move-result-object v1

    .line 265
    .local v1, "mService":Lcom/mediatek/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    if-eqz v1, :cond_1

    .line 267
    invoke-interface {v1}, Lcom/mediatek/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;->getConnectedDevices()Ljava/util/Set;

    move-result-object v0

    .line 276
    :goto_0
    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    .end local v0    # "devices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 278
    .restart local v0    # "devices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    new-array v3, v3, [Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v0, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/bluetooth/BluetoothDevice;

    return-object v3

    .line 273
    :cond_1
    const-string v3, "getConnectedDevices():mService is null"

    invoke-static {v3}, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getPreferred(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)I
    .locals 5
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v4, -0x1

    .line 338
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPreferred:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " device:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    .line 340
    invoke-static {p1}, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->valueOf(Ljava/lang/String;)Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    move-result-object v1

    .line 341
    .local v1, "profile":Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;
    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->checkProfileService(Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;)Lcom/mediatek/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;

    move-result-object v0

    .line 342
    .local v0, "mService":Lcom/mediatek/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    if-nez v0, :cond_0

    .line 343
    const-string v2, "getPreferred():mService is null"

    invoke-static {v2}, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    .line 352
    :cond_0
    return v4
.end method

.method public getState(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)I
    .locals 3
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 284
    invoke-static {p1}, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->valueOf(Ljava/lang/String;)Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    move-result-object v1

    .line 285
    .local v1, "profile":Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;
    const/4 v2, 0x5

    .line 286
    .local v2, "state":I
    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->checkProfileService(Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;)Lcom/mediatek/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;

    move-result-object v0

    .line 287
    .local v0, "mService":Lcom/mediatek/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    if-eqz v0, :cond_0

    .line 289
    invoke-interface {v0, p2}, Lcom/mediatek/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;->getState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    .line 297
    :goto_0
    return v2

    .line 295
    :cond_0
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public isPreferred(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v4, 0x0

    .line 301
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPreferred:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " device:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    .line 303
    invoke-static {p1}, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->valueOf(Ljava/lang/String;)Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    move-result-object v1

    .line 304
    .local v1, "profile":Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;
    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->checkProfileService(Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;)Lcom/mediatek/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;

    move-result-object v0

    .line 305
    .local v0, "mService":Lcom/mediatek/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    if-nez v0, :cond_0

    .line 306
    const-string v2, "isPreferred():mService is null"

    invoke-static {v2}, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    .line 313
    :cond_0
    return v4
.end method

.method public onServiceConnected(Landroid/bluetooth/BluetoothPbap;)V
    .locals 0
    .param p1, "proxy"    # Landroid/bluetooth/BluetoothPbap;

    .prologue
    .line 511
    return-void
.end method

.method public onServiceDisconnected()V
    .locals 0

    .prologue
    .line 515
    return-void
.end method

.method public setPreferred(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;Z)Z
    .locals 4
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "preferred"    # Z

    .prologue
    .line 317
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPreferred:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " device:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " value"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    .line 319
    invoke-static {p1}, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->valueOf(Ljava/lang/String;)Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    move-result-object v1

    .line 320
    .local v1, "profile":Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;
    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->checkProfileService(Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;)Lcom/mediatek/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;

    move-result-object v0

    .line 321
    .local v0, "mService":Lcom/mediatek/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    if-nez v0, :cond_0

    .line 322
    const-string v2, "setPreferred():mService is null"

    invoke-static {v2}, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    .line 323
    const/4 v2, 0x0

    .line 334
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method
