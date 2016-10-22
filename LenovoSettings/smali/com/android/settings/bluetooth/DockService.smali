.class public final Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;
.super Landroid/app/Service;
.source "DockService.java"

# interfaces
.implements Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfileManager$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/deviceoriginalsettings/bluetooth/DockService$ServiceHandler;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field private static final DISABLE_BT_GRACE_PERIOD:J = 0x7d0L

.field private static final INVALID_STARTID:I = -0x64

.field private static final KEY_CONNECT_RETRY_COUNT:Ljava/lang/String; = "connect_retry_count"

.field private static final KEY_DISABLE_BT:Ljava/lang/String; = "disable_bt"

.field private static final KEY_DISABLE_BT_WHEN_UNDOCKED:Ljava/lang/String; = "disable_bt_when_undock"

.field private static final MAX_CONNECT_RETRY:I = 0x6

.field private static final MSG_TYPE_DISABLE_BT:I = 0x22b

.field private static final MSG_TYPE_DOCKED:I = 0xde

.field private static final MSG_TYPE_SHOW_UI:I = 0x6f

.field private static final MSG_TYPE_UNDOCKED_PERMANENT:I = 0x1bc

.field private static final MSG_TYPE_UNDOCKED_TEMPORARY:I = 0x14d

.field private static final SHARED_PREFERENCES_NAME:Ljava/lang/String; = "dock_settings"

.field private static final TAG:Ljava/lang/String; = "DockService"

.field private static final UNDOCKED_GRACE_PERIOD:J = 0x3e8L


# instance fields
.field private mAudioMediaCheckbox:Landroid/widget/CheckBox;

.field private final mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mCheckedItems:[Z

.field private final mClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mDeviceManager:Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDeviceManager;

.field private mDialog:Landroid/app/AlertDialog;

.field private final mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mLocalAdapter:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;

.field private final mMultiClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

.field private mPendingDevice:Landroid/bluetooth/BluetoothDevice;

.field private mPendingStartId:I

.field private mPendingTurnOffStartId:I

.field private mPendingTurnOnStartId:I

.field private mProfileManager:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfileManager;

.field private mProfiles:[Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;

.field private mRunnable:Ljava/lang/Runnable;

.field private volatile mServiceHandler:Lcom/flyme/deviceoriginalsettings/bluetooth/DockService$ServiceHandler;

.field private volatile mServiceLooper:Landroid/os/Looper;

.field private mStartIdAssociatedWithDialog:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/16 v0, -0x64

    .line 55
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 124
    iput v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mPendingTurnOnStartId:I

    .line 125
    iput v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mPendingTurnOffStartId:I

    .line 565
    new-instance v0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService$2;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService$2;-><init>(Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mMultiClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 577
    new-instance v0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService$3;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService$3;-><init>(Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 595
    new-instance v0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService$4;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService$4;-><init>(Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 609
    new-instance v0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService$5;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService$5;-><init>(Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$100(Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->processMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$200(Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->handleDocked(Landroid/bluetooth/BluetoothDevice;II)V

    return-void
.end method

.method static synthetic access$300(Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;)[Z
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mCheckedItems:[Z

    return-object v0
.end method

.method static synthetic access$400(Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$500(Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$600(Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;)I
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;

    .prologue
    .line 55
    iget v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mStartIdAssociatedWithDialog:I

    return v0
.end method

.method static synthetic access$700(Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "x2"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->applyBtSettings(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static synthetic access$800(Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mAudioMediaCheckbox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private declared-synchronized applyBtSettings(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 13
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "startId"    # I

    .prologue
    .line 812
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v10, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mProfiles:[Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mCheckedItems:[Z

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mLocalAdapter:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v10, :cond_1

    .line 877
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 818
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mCheckedItems:[Z

    .local v0, "arr$":[Z
    array-length v7, v0

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_1
    if-ge v6, v7, :cond_4

    aget-boolean v4, v0, v6

    .line 819
    .local v4, "enable":Z
    if-eqz v4, :cond_3

    .line 820
    iget-object v10, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mLocalAdapter:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v10}, Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v1

    .line 826
    .local v1, "btState":I
    iget-object v10, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mLocalAdapter:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v10}, Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;->enable()Z

    .line 829
    const/16 v10, 0xc

    if-eq v1, v10, :cond_3

    .line 830
    iget-object v10, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v11, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v10, v11}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 834
    :cond_2
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    .line 835
    iput p2, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mPendingStartId:I

    .line 836
    const/16 v10, 0xb

    if-eq v1, v10, :cond_0

    .line 837
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "disable_bt_when_undock"

    const/4 v12, 0x1

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 812
    .end local v0    # "arr$":[Z
    .end local v1    # "btState":I
    .end local v4    # "enable":Z
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

    .line 818
    .restart local v0    # "arr$":[Z
    .restart local v4    # "enable":Z
    .restart local v6    # "i$":I
    .restart local v7    # "len$":I
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 845
    .end local v4    # "enable":Z
    :cond_4
    const/4 v10, 0x0

    :try_start_2
    iput-object v10, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    .line 847
    const/4 v3, 0x0

    .line 848
    .local v3, "callConnect":Z
    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->getCachedBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;

    move-result-object v2

    .line 850
    .local v2, "cachedDevice":Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    iget-object v10, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mProfiles:[Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;

    array-length v10, v10

    if-ge v5, v10, :cond_7

    .line 851
    iget-object v10, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mProfiles:[Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;

    aget-object v8, v10, v5

    .line 854
    .local v8, "profile":Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;
    iget-object v10, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mCheckedItems:[Z

    aget-boolean v10, v10, v5

    if-eqz v10, :cond_6

    .line 856
    const/4 v3, 0x1

    .line 865
    :cond_5
    :goto_3
    iget-object v10, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mCheckedItems:[Z

    aget-boolean v10, v10, v5

    invoke-interface {v8, p1, v10}, Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 850
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 857
    :cond_6
    iget-object v10, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mCheckedItems:[Z

    aget-boolean v10, v10, v5

    if-nez v10, :cond_5

    .line 859
    invoke-virtual {v2}, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v10

    invoke-interface {v8, v10}, Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v9

    .line 860
    .local v9, "status":I
    const/4 v10, 0x2

    if-ne v9, v10, :cond_5

    .line 862
    iget-object v10, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mProfiles:[Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;

    aget-object v10, v10, v5

    invoke-virtual {v2, v10}, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->disconnect(Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;)V

    goto :goto_3

    .line 873
    .end local v8    # "profile":Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;
    .end local v9    # "status":I
    :cond_7
    if-eqz v3, :cond_0

    .line 875
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->connect(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private declared-synchronized connectIfEnabled(Landroid/bluetooth/BluetoothDevice;)V
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 800
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->getCachedBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 802
    .local v0, "cachedDevice":Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->getConnectableProfiles()Ljava/util/List;

    move-result-object v3

    .line 803
    .local v3, "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;

    .line 804
    .local v2, "profile":Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;
    invoke-interface {v2, p1}, Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;->getPreferred(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    const/16 v5, 0x3e8

    if-ne v4, v5, :cond_0

    .line 805
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->connect(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 809
    .end local v2    # "profile":Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;
    :cond_1
    monitor-exit p0

    return-void

    .line 800
    .end local v0    # "cachedDevice":Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private createDialog(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 14
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I
    .param p3, "startId"    # I

    .prologue
    .line 486
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    .line 488
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 489
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    .line 491
    :cond_0
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 492
    packed-switch p2, :pswitch_data_0

    .line 562
    :goto_0
    return-void

    .line 502
    :pswitch_0
    const/4 v4, 0x0

    new-instance v6, Landroid/app/Notification;

    invoke-direct {v6}, Landroid/app/Notification;-><init>()V

    invoke-virtual {p0, v4, v6}, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->startForeground(ILandroid/app/Notification;)V

    .line 504
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 506
    .local v1, "ab":Landroid/app/AlertDialog$Builder;
    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/LayoutInflater;

    .line 508
    .local v9, "inflater":Landroid/view/LayoutInflater;
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mAudioMediaCheckbox:Landroid/widget/CheckBox;

    .line 510
    if-eqz p1, :cond_4

    .line 512
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothPreferences;->hasDockAutoConnectSetting(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v8, 0x1

    .line 515
    .local v8, "firstTime":Z
    :goto_1
    move/from16 v0, p2

    invoke-direct {p0, p1, v0, v8}, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->initBtSettings(Landroid/bluetooth/BluetoothDevice;IZ)[Ljava/lang/CharSequence;

    move-result-object v10

    .line 517
    .local v10, "items":[Ljava/lang/CharSequence;
    const v4, 0x7f0c05fd

    invoke-virtual {p0, v4}, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 520
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mCheckedItems:[Z

    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mMultiClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    invoke-virtual {v1, v10, v4, v6}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 523
    const v4, 0x7f04009a

    const/4 v6, 0x0

    invoke-virtual {v9, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 524
    .local v2, "view":Landroid/view/View;
    const v4, 0x7f0b0125

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/CheckBox;

    .line 527
    .local v12, "rememberCheckbox":Landroid/widget/CheckBox;
    if-nez v8, :cond_1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothPreferences;->getDockAutoConnectSetting(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_1
    const/4 v7, 0x1

    .line 529
    .local v7, "checked":Z
    :goto_2
    invoke-virtual {v12, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 530
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v12, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 549
    .end local v8    # "firstTime":Z
    .end local v10    # "items":[Ljava/lang/CharSequence;
    .end local v12    # "rememberCheckbox":Landroid/widget/CheckBox;
    :goto_3
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v11, v4, Landroid/util/DisplayMetrics;->density:F

    .line 550
    .local v11, "pixelScaleFactor":F
    const/high16 v4, 0x41600000    # 14.0f

    mul-float/2addr v4, v11

    float-to-int v3, v4

    .line 551
    .local v3, "viewSpacingLeft":I
    const/high16 v4, 0x41600000    # 14.0f

    mul-float/2addr v4, v11

    float-to-int v5, v4

    .line 552
    .local v5, "viewSpacingRight":I
    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;IIII)Landroid/app/AlertDialog$Builder;

    .line 555
    const v4, 0x104000a

    invoke-virtual {p0, v4}, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v4, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 557
    move/from16 v0, p3

    iput v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mStartIdAssociatedWithDialog:I

    .line 558
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    .line 559
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v6, 0x7d9

    invoke-virtual {v4, v6}, Landroid/view/Window;->setType(I)V

    .line 560
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 561
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 512
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "viewSpacingLeft":I
    .end local v5    # "viewSpacingRight":I
    .end local v7    # "checked":Z
    .end local v11    # "pixelScaleFactor":F
    :cond_2
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 527
    .restart local v2    # "view":Landroid/view/View;
    .restart local v8    # "firstTime":Z
    .restart local v10    # "items":[Ljava/lang/CharSequence;
    .restart local v12    # "rememberCheckbox":Landroid/widget/CheckBox;
    :cond_3
    const/4 v7, 0x0

    goto :goto_2

    .line 536
    .end local v2    # "view":Landroid/view/View;
    .end local v8    # "firstTime":Z
    .end local v10    # "items":[Ljava/lang/CharSequence;
    .end local v12    # "rememberCheckbox":Landroid/widget/CheckBox;
    :cond_4
    const v4, 0x7f0c05fd

    invoke-virtual {p0, v4}, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 538
    const v4, 0x7f040035

    const/4 v6, 0x0

    invoke-virtual {v9, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 539
    .restart local v2    # "view":Landroid/view/View;
    const v4, 0x7f0b0095

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mAudioMediaCheckbox:Landroid/widget/CheckBox;

    .line 542
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "dock_audio_media_enabled"

    const/4 v13, 0x0

    invoke-static {v4, v6, v13}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_5

    const/4 v7, 0x1

    .line 545
    .restart local v7    # "checked":Z
    :goto_4
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mAudioMediaCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v4, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 546
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mAudioMediaCheckbox:Landroid/widget/CheckBox;

    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v4, v6}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto/16 :goto_3

    .line 542
    .end local v7    # "checked":Z
    :cond_5
    const/4 v7, 0x0

    goto :goto_4

    .line 492
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getCachedBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 907
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mDeviceManager:Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v1, p1}, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 908
    .local v0, "cachedDevice":Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;
    if-nez v0, :cond_0

    .line 909
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mDeviceManager:Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDeviceManager;

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mLocalAdapter:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mProfileManager:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v1, v2, v3, p1}, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 911
    :cond_0
    return-object v0
.end method

.method private getPrefs()Landroid/content/SharedPreferences;
    .locals 2

    .prologue
    .line 183
    const-string v0, "dock_settings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private handleBluetoothStateOn(I)V
    .locals 9
    .param p1, "startId"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/16 v6, -0x64

    .line 724
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v4, :cond_3

    .line 725
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 729
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    iget v5, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mPendingStartId:I

    invoke-direct {p0, v4, v5}, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->applyBtSettings(Landroid/bluetooth/BluetoothDevice;I)V

    .line 735
    :cond_0
    iput-object v8, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    .line 736
    iget v4, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mPendingStartId:I

    invoke-static {p0, v4}, Lcom/flyme/deviceoriginalsettings/bluetooth/DockEventReceiver;->finishStartingService(Landroid/app/Service;I)V

    .line 763
    :cond_1
    :goto_0
    iget v4, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mPendingTurnOnStartId:I

    if-eq v4, v6, :cond_2

    .line 764
    iget v4, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mPendingTurnOnStartId:I

    invoke-static {p0, v4}, Lcom/flyme/deviceoriginalsettings/bluetooth/DockEventReceiver;->finishStartingService(Landroid/app/Service;I)V

    .line 765
    iput v6, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mPendingTurnOnStartId:I

    .line 768
    :cond_2
    invoke-static {p0, p1}, Lcom/flyme/deviceoriginalsettings/bluetooth/DockEventReceiver;->finishStartingService(Landroid/app/Service;I)V

    .line 769
    :goto_1
    return-void

    .line 738
    :cond_3
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 744
    .local v2, "prefs":Landroid/content/SharedPreferences;
    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.DOCK_EVENT"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v8, v4}, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 745
    .local v1, "i":Landroid/content/Intent;
    if-eqz v1, :cond_1

    .line 746
    const-string v4, "android.intent.extra.DOCK_STATE"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 748
    .local v3, "state":I
    if-eqz v3, :cond_4

    .line 749
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 751
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_1

    .line 752
    invoke-direct {p0, v0}, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->connectIfEnabled(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 754
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_4
    const-string v4, "disable_bt"

    invoke-interface {v2, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mLocalAdapter:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v4}, Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;->disable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 756
    iput p1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mPendingTurnOffStartId:I

    .line 757
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "disable_bt"

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1
.end method

.method private handleBtStateChange(Landroid/content/Intent;I)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    const/16 v3, -0x64

    .line 690
    const-string v1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v2, -0x80000000

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 691
    .local v0, "btState":I
    monitor-enter p0

    .line 693
    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    .line 694
    :try_start_0
    invoke-direct {p0, p2}, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->handleBluetoothStateOn(I)V

    .line 720
    :cond_0
    :goto_0
    monitor-exit p0

    .line 721
    return-void

    .line 695
    :cond_1
    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    .line 700
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "disable_bt_when_undock"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 701
    invoke-static {p0, p2}, Lcom/flyme/deviceoriginalsettings/bluetooth/DockEventReceiver;->finishStartingService(Landroid/app/Service;I)V

    goto :goto_0

    .line 720
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 702
    :cond_2
    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 707
    :try_start_1
    iget v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mPendingTurnOffStartId:I

    if-eq v1, v3, :cond_3

    .line 708
    iget v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mPendingTurnOffStartId:I

    invoke-static {p0, v1}, Lcom/flyme/deviceoriginalsettings/bluetooth/DockEventReceiver;->finishStartingService(Landroid/app/Service;I)V

    .line 709
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "disable_bt"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 710
    const/16 v1, -0x64

    iput v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mPendingTurnOffStartId:I

    .line 713
    :cond_3
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_4

    .line 714
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mLocalAdapter:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;->enable()Z

    .line 715
    iput p2, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mPendingTurnOnStartId:I

    goto :goto_0

    .line 717
    :cond_4
    invoke-static {p0, p2}, Lcom/flyme/deviceoriginalsettings/bluetooth/DockEventReceiver;->finishStartingService(Landroid/app/Service;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized handleDocked(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I
    .param p3, "startId"    # I

    .prologue
    .line 881
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothPreferences;->getDockAutoConnectSetting(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 884
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->initBtSettings(Landroid/bluetooth/BluetoothDevice;IZ)[Ljava/lang/CharSequence;

    .line 885
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v0, p3}, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->applyBtSettings(Landroid/bluetooth/BluetoothDevice;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 889
    :goto_0
    monitor-exit p0

    return-void

    .line 887
    :cond_0
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->createDialog(Landroid/bluetooth/BluetoothDevice;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 881
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized handleUndocked(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 892
    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mRunnable:Ljava/lang/Runnable;

    .line 893
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mProfileManager:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v1, p0}, Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfileManager;->removeServiceListener(Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V

    .line 894
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 895
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 896
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    .line 898
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 899
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    .line 900
    if-eqz p1, :cond_1

    .line 901
    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->getCachedBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 902
    .local v0, "cachedDevice":Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->disconnect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 904
    .end local v0    # "cachedDevice":Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;
    :cond_1
    monitor-exit p0

    return-void

    .line 892
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized handleUnexpectedDisconnect(Landroid/bluetooth/BluetoothDevice;Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;I)V
    .locals 7
    .param p1, "disconnectedDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "profile"    # Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;
    .param p3, "startId"    # I

    .prologue
    .line 778
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 780
    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.DOCK_EVENT"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4, v5}, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    .line 781
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 782
    const-string v4, "android.intent.extra.DOCK_STATE"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 784
    .local v3, "state":I
    if-eqz v3, :cond_0

    .line 785
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 787
    .local v1, "dockedDevice":Landroid/bluetooth/BluetoothDevice;
    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 788
    invoke-direct {p0, v1}, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->getCachedBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 790
    .local v0, "cachedDevice":Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v0, p2}, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->connectProfile(Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;)V

    .line 796
    .end local v0    # "cachedDevice":Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;
    .end local v1    # "dockedDevice":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "state":I
    :cond_0
    invoke-static {p0, p3}, Lcom/flyme/deviceoriginalsettings/bluetooth/DockEventReceiver;->finishStartingService(Landroid/app/Service;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 797
    monitor-exit p0

    return-void

    .line 778
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private initBtSettings(Landroid/bluetooth/BluetoothDevice;IZ)[Ljava/lang/CharSequence;
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I
    .param p3, "firstTime"    # Z

    .prologue
    const v3, 0x7f0c05ff

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 638
    packed-switch p2, :pswitch_data_0

    .line 648
    const/4 v0, 0x0

    .line 685
    :goto_0
    return-object v0

    .line 642
    :pswitch_0
    const/4 v1, 0x1

    .line 651
    .local v1, "numOfProfiles":I
    :goto_1
    new-array v2, v1, [Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;

    iput-object v2, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mProfiles:[Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;

    .line 652
    new-array v2, v1, [Z

    iput-object v2, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mCheckedItems:[Z

    .line 653
    new-array v0, v1, [Ljava/lang/CharSequence;

    .line 656
    .local v0, "items":[Ljava/lang/CharSequence;
    packed-switch p2, :pswitch_data_1

    goto :goto_0

    .line 675
    :pswitch_1
    invoke-virtual {p0, v3}, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    .line 676
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mProfiles:[Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mProfileManager:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v3}, Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfileManager;->getA2dpProfile()Lcom/flyme/deviceoriginalsettings/bluetooth/A2dpProfile;

    move-result-object v3

    aput-object v3, v2, v4

    .line 677
    if-eqz p3, :cond_1

    .line 679
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mCheckedItems:[Z

    aput-boolean v4, v2, v4

    goto :goto_0

    .line 645
    .end local v0    # "items":[Ljava/lang/CharSequence;
    .end local v1    # "numOfProfiles":I
    :pswitch_2
    const/4 v1, 0x2

    .line 646
    .restart local v1    # "numOfProfiles":I
    goto :goto_1

    .line 658
    .restart local v0    # "items":[Ljava/lang/CharSequence;
    :pswitch_3
    const v2, 0x7f0c05fe

    invoke-virtual {p0, v2}, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    .line 659
    invoke-virtual {p0, v3}, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    .line 660
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mProfiles:[Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mProfileManager:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v3}, Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfileManager;->getHeadsetProfile()Lcom/flyme/deviceoriginalsettings/bluetooth/HeadsetProfile;

    move-result-object v3

    aput-object v3, v2, v4

    .line 661
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mProfiles:[Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mProfileManager:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v3}, Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfileManager;->getA2dpProfile()Lcom/flyme/deviceoriginalsettings/bluetooth/A2dpProfile;

    move-result-object v3

    aput-object v3, v2, v5

    .line 662
    if-eqz p3, :cond_0

    .line 664
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mCheckedItems:[Z

    aput-boolean v5, v2, v4

    .line 665
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mCheckedItems:[Z

    aput-boolean v5, v2, v5

    goto :goto_0

    .line 667
    :cond_0
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mCheckedItems:[Z

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mProfiles:[Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;

    aget-object v3, v3, v4

    invoke-interface {v3, p1}, Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    aput-boolean v3, v2, v4

    .line 668
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mCheckedItems:[Z

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mProfiles:[Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;

    aget-object v3, v3, v5

    invoke-interface {v3, p1}, Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    aput-boolean v3, v2, v5

    goto :goto_0

    .line 681
    :cond_1
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mCheckedItems:[Z

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mProfiles:[Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;

    aget-object v3, v3, v4

    invoke-interface {v3, p1}, Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    aput-boolean v3, v2, v4

    goto :goto_0

    .line 638
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 656
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private msgTypeDisableBluetooth(I)Z
    .locals 4
    .param p1, "startId"    # I

    .prologue
    const/4 v1, 0x1

    .line 311
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 312
    .local v0, "prefs":Landroid/content/SharedPreferences;
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mLocalAdapter:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2}, Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;->disable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 313
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "disable_bt_when_undock"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 314
    const/4 v1, 0x0

    .line 322
    :goto_0
    return v1

    .line 317
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "disable_bt"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 318
    iput p1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mPendingTurnOffStartId:I

    goto :goto_0
.end method

.method private msgTypeDocked(Landroid/bluetooth/BluetoothDevice;II)Z
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v5, -0x1

    .line 377
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mServiceHandler:Lcom/flyme/deviceoriginalsettings/bluetooth/DockService$ServiceHandler;

    const/16 v4, 0x1bc

    invoke-virtual {v3, v4}, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService$ServiceHandler;->removeMessages(I)V

    .line 378
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mServiceHandler:Lcom/flyme/deviceoriginalsettings/bluetooth/DockService$ServiceHandler;

    const/16 v4, 0x22b

    invoke-virtual {v3, v4}, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService$ServiceHandler;->removeMessages(I)V

    .line 379
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "disable_bt"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 381
    if-eqz p1, :cond_3

    .line 382
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v3}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 383
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v3, :cond_0

    .line 385
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v3}, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->handleUndocked(Landroid/bluetooth/BluetoothDevice;)V

    .line 388
    :cond_0
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 393
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mProfileManager:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v3, p0}, Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfileManager;->addServiceListener(Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V

    .line 394
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mProfileManager:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v3}, Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfileManager;->isManagerReady()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 395
    invoke-direct {p0, p1, p2, p3}, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->handleDocked(Landroid/bluetooth/BluetoothDevice;II)V

    .line 397
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mProfileManager:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v2, p0}, Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfileManager;->removeServiceListener(Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V

    .line 419
    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 399
    :cond_2
    move-object v0, p1

    .line 400
    .local v0, "d":Landroid/bluetooth/BluetoothDevice;
    new-instance v3, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService$1;

    invoke-direct {v3, p0, v0, p2, p3}, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService$1;-><init>(Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;Landroid/bluetooth/BluetoothDevice;II)V

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mRunnable:Ljava/lang/Runnable;

    goto :goto_0

    .line 411
    .end local v0    # "d":Landroid/bluetooth/BluetoothDevice;
    :cond_3
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "dock_audio_media_enabled"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 413
    .local v1, "dockAudioMediaEnabled":I
    if-ne v1, v5, :cond_1

    const/4 v3, 0x3

    if-ne p2, v3, :cond_1

    .line 415
    const/4 v3, 0x0

    invoke-direct {p0, v3, p2, p3}, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->handleDocked(Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_0
.end method

.method private msgTypeUndockedPermanent(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "startId"    # I

    .prologue
    const/4 v2, 0x0

    .line 336
    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->handleUndocked(Landroid/bluetooth/BluetoothDevice;)V

    .line 337
    if-eqz p1, :cond_0

    .line 338
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 345
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "disable_bt_when_undock"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 346
    invoke-virtual {p0, p1}, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->hasOtherConnectedDevices(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 348
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "disable_bt_when_undock"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 363
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    return v2

    .line 355
    .restart local v1    # "prefs":Landroid/content/SharedPreferences;
    :cond_1
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mServiceHandler:Lcom/flyme/deviceoriginalsettings/bluetooth/DockService$ServiceHandler;

    const/16 v4, 0x22b

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, p2, v5}, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService$ServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 357
    .local v0, "newMsg":Landroid/os/Message;
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mServiceHandler:Lcom/flyme/deviceoriginalsettings/bluetooth/DockService$ServiceHandler;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v0, v4, v5}, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService$ServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 359
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private msgTypeUndockedTemporary(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I
    .param p3, "startId"    # I

    .prologue
    .line 329
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mServiceHandler:Lcom/flyme/deviceoriginalsettings/bluetooth/DockService$ServiceHandler;

    const/16 v2, 0x1bc

    invoke-virtual {v1, v2, p2, p3, p1}, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService$ServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 331
    .local v0, "newMsg":Landroid/os/Message;
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mServiceHandler:Lcom/flyme/deviceoriginalsettings/bluetooth/DockService$ServiceHandler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService$ServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 332
    return-void
.end method

.method private parseIntent(Landroid/content/Intent;)Landroid/os/Message;
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 445
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 446
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    const-string v4, "android.intent.extra.DOCK_STATE"

    const/16 v5, -0x4d2

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 454
    .local v2, "state":I
    packed-switch v2, :pswitch_data_0

    .line 481
    :goto_0
    return-object v3

    .line 456
    :pswitch_0
    const/16 v1, 0x14d

    .line 481
    .local v1, "msgType":I
    :goto_1
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mServiceHandler:Lcom/flyme/deviceoriginalsettings/bluetooth/DockService$ServiceHandler;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v2, v4, v0}, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService$ServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    goto :goto_0

    .line 461
    .end local v1    # "msgType":I
    :pswitch_1
    if-nez v0, :cond_0

    .line 462
    const-string v4, "DockService"

    const-string v5, "device is null"

    invoke-static {v4, v5}, Lcom/lenovo/xlog/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 467
    :cond_0
    :pswitch_2
    const-string v4, "com.android.settings.bluetooth.action.DOCK_SHOW_UI"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 468
    if-nez v0, :cond_1

    .line 469
    const-string v4, "DockService"

    const-string v5, "device is null"

    invoke-static {v4, v5}, Lcom/lenovo/xlog/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 472
    :cond_1
    const/16 v1, 0x6f

    .restart local v1    # "msgType":I
    goto :goto_1

    .line 474
    .end local v1    # "msgType":I
    :cond_2
    const/16 v1, 0xde

    .line 476
    .restart local v1    # "msgType":I
    goto :goto_1

    .line 454
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private declared-synchronized processMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 262
    monitor-enter p0

    :try_start_0
    iget v2, p1, Landroid/os/Message;->what:I

    .line 263
    .local v2, "msgType":I
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 264
    .local v4, "state":I
    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 265
    .local v3, "startId":I
    const/4 v1, 0x0

    .line 266
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v5, :cond_0

    .line 267
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 273
    .restart local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_0
    const/4 v0, 0x0

    .line 275
    .local v0, "deferFinishCall":Z
    sparse-switch v2, :sswitch_data_0

    .line 299
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v5, :cond_2

    const/16 v5, 0x14d

    if-eq v2, v5, :cond_2

    if-nez v0, :cond_2

    .line 303
    invoke-static {p0, v3}, Lcom/flyme/deviceoriginalsettings/bluetooth/DockEventReceiver;->finishStartingService(Landroid/app/Service;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    :cond_2
    monitor-exit p0

    return-void

    .line 277
    :sswitch_0
    if-eqz v1, :cond_1

    .line 278
    :try_start_1
    invoke-direct {p0, v1, v4, v3}, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->createDialog(Landroid/bluetooth/BluetoothDevice;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 262
    .end local v0    # "deferFinishCall":Z
    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "msgType":I
    .end local v3    # "startId":I
    .end local v4    # "state":I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 283
    .restart local v0    # "deferFinishCall":Z
    .restart local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    .restart local v2    # "msgType":I
    .restart local v3    # "startId":I
    .restart local v4    # "state":I
    :sswitch_1
    :try_start_2
    invoke-direct {p0, v1, v4, v3}, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->msgTypeDocked(Landroid/bluetooth/BluetoothDevice;II)Z

    move-result v0

    .line 284
    goto :goto_0

    .line 287
    :sswitch_2
    invoke-direct {p0, v1, v3}, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->msgTypeUndockedPermanent(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v0

    .line 288
    goto :goto_0

    .line 291
    :sswitch_3
    invoke-direct {p0, v1, v4, v3}, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->msgTypeUndockedTemporary(Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_0

    .line 295
    :sswitch_4
    invoke-direct {p0, v3}, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->msgTypeDisableBluetooth(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    goto :goto_0

    .line 275
    nop

    :sswitch_data_0
    .sparse-switch
        0x6f -> :sswitch_0
        0xde -> :sswitch_1
        0x14d -> :sswitch_3
        0x1bc -> :sswitch_2
        0x22b -> :sswitch_4
    .end sparse-switch
.end method


# virtual methods
.method declared-synchronized hasOtherConnectedDevices(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 7
    .param p1, "dock"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v5, 0x0

    .line 423
    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mDeviceManager:Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v6}, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDeviceManager;->getCachedDevicesCopy()Ljava/util/Collection;

    move-result-object v2

    .line 424
    .local v2, "cachedDevices":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;>;"
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mLocalAdapter:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v6}, Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v1

    .line 425
    .local v1, "btDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_1

    .line 441
    :cond_0
    :goto_0
    monitor-exit p0

    return v5

    .line 433
    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;

    .line 434
    .local v3, "deviceUI":Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v3}, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 435
    .local v0, "btDevice":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v3}, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->isConnected()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    if-eqz v6, :cond_2

    .line 438
    const/4 v5, 0x1

    goto :goto_0

    .line 423
    .end local v0    # "btDevice":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "btDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v2    # "cachedDevices":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;>;"
    .end local v3    # "deviceUI":Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;
    .end local v4    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 179
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    .line 133
    invoke-static {p0}, Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothManager;

    move-result-object v0

    .line 134
    .local v0, "manager":Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothManager;
    if-nez v0, :cond_0

    .line 135
    const-string v2, "DockService"

    const-string v3, "Can\'t get LocalBluetoothManager: exiting"

    invoke-static {v2, v3}, Lcom/lenovo/xlog/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :goto_0
    return-void

    .line 139
    :cond_0
    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mLocalAdapter:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;

    .line 140
    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v2

    iput-object v2, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mDeviceManager:Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDeviceManager;

    .line 141
    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v2

    iput-object v2, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mProfileManager:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfileManager;

    .line 142
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mProfileManager:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfileManager;

    if-nez v2, :cond_1

    .line 143
    const-string v2, "DockService"

    const-string v3, "Can\'t get LocalBluetoothProfileManager: exiting"

    invoke-static {v2, v3}, Lcom/lenovo/xlog/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 147
    :cond_1
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "DockService"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 148
    .local v1, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 150
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iput-object v2, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mServiceLooper:Landroid/os/Looper;

    .line 151
    new-instance v2, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService$ServiceHandler;

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mServiceLooper:Landroid/os/Looper;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v3, v4}, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService$ServiceHandler;-><init>(Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;Landroid/os/Looper;Lcom/flyme/deviceoriginalsettings/bluetooth/DockService$1;)V

    iput-object v2, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mServiceHandler:Lcom/flyme/deviceoriginalsettings/bluetooth/DockService$ServiceHandler;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 157
    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mRunnable:Ljava/lang/Runnable;

    .line 158
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 160
    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mProfileManager:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfileManager;

    if-eqz v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mProfileManager:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0, p0}, Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfileManager;->removeServiceListener(Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mServiceLooper:Landroid/os/Looper;

    if-eqz v0, :cond_2

    .line 166
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 169
    :cond_2
    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mLocalAdapter:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;

    .line 170
    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mDeviceManager:Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDeviceManager;

    .line 171
    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mProfileManager:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfileManager;

    .line 172
    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mServiceLooper:Landroid/os/Looper;

    .line 173
    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mServiceHandler:Lcom/flyme/deviceoriginalsettings/bluetooth/DockService$ServiceHandler;

    .line 174
    return-void
.end method

.method public declared-synchronized onServiceConnected()V
    .locals 1

    .prologue
    .line 915
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 916
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 917
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mRunnable:Ljava/lang/Runnable;

    .line 918
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mProfileManager:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0, p0}, Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfileManager;->removeServiceListener(Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 920
    :cond_0
    monitor-exit p0

    return-void

    .line 915
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onServiceDisconnected()V
    .locals 0

    .prologue
    .line 924
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v8, 0x6

    const/4 v6, 0x0

    const/4 v7, 0x2

    .line 190
    if-nez p1, :cond_1

    .line 196
    invoke-static {p0, p3}, Lcom/flyme/deviceoriginalsettings/bluetooth/DockEventReceiver;->finishStartingService(Landroid/app/Service;I)V

    .line 246
    :cond_0
    :goto_0
    return v7

    .line 200
    :cond_1
    const-string v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 201
    invoke-direct {p0, p1, p3}, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->handleBtStateChange(Landroid/content/Intent;I)V

    goto :goto_0

    .line 209
    :cond_2
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 210
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string v4, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 211
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 213
    .local v0, "disconnectedDevice":Landroid/bluetooth/BluetoothDevice;
    const-string v4, "connect_retry_count"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 214
    .local v3, "retryCount":I
    if-ge v3, v8, :cond_0

    .line 215
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "connect_retry_count"

    add-int/lit8 v6, v3, 0x1

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 216
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mProfileManager:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v4}, Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfileManager;->getHeadsetProfile()Lcom/flyme/deviceoriginalsettings/bluetooth/HeadsetProfile;

    move-result-object v4

    invoke-direct {p0, v0, v4, p3}, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->handleUnexpectedDisconnect(Landroid/bluetooth/BluetoothDevice;Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;I)V

    goto :goto_0

    .line 219
    .end local v0    # "disconnectedDevice":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "retryCount":I
    :cond_3
    const-string v4, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 220
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 223
    .restart local v0    # "disconnectedDevice":Landroid/bluetooth/BluetoothDevice;
    const-string v4, "connect_retry_count"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 224
    .restart local v3    # "retryCount":I
    if-ge v3, v8, :cond_0

    .line 225
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "connect_retry_count"

    add-int/lit8 v6, v3, 0x1

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 226
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mProfileManager:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v4}, Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfileManager;->getA2dpProfile()Lcom/flyme/deviceoriginalsettings/bluetooth/A2dpProfile;

    move-result-object v4

    invoke-direct {p0, v0, v4, p3}, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->handleUnexpectedDisconnect(Landroid/bluetooth/BluetoothDevice;Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;I)V

    goto :goto_0

    .line 231
    .end local v0    # "disconnectedDevice":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "retryCount":I
    :cond_4
    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->parseIntent(Landroid/content/Intent;)Landroid/os/Message;

    move-result-object v1

    .line 232
    .local v1, "msg":Landroid/os/Message;
    if-nez v1, :cond_5

    .line 235
    invoke-static {p0, p3}, Lcom/flyme/deviceoriginalsettings/bluetooth/DockEventReceiver;->finishStartingService(Landroid/app/Service;I)V

    goto/16 :goto_0

    .line 239
    :cond_5
    iget v4, v1, Landroid/os/Message;->what:I

    const/16 v5, 0xde

    if-ne v4, v5, :cond_6

    .line 240
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "connect_retry_count"

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 243
    :cond_6
    iput p3, v1, Landroid/os/Message;->arg2:I

    .line 244
    invoke-direct {p0, v1}, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->processMessage(Landroid/os/Message;)V

    goto/16 :goto_0
.end method
