.class public final Lcom/android/settings/bluetooth/BluetoothStatusEnabler;
.super Ljava/lang/Object;
.source "BluetoothStatusEnabler.java"

# interfaces
.implements Lcom/lenovo/settings/LenovoStatusStateOperation;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mStatusListener:Lcom/lenovo/settings/LenovoStatusStateChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v1, Lcom/android/settings/bluetooth/BluetoothStatusEnabler$1;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/BluetoothStatusEnabler$1;-><init>(Lcom/android/settings/bluetooth/BluetoothStatusEnabler;)V

    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothStatusEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 58
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothStatusEnabler;->mContext:Landroid/content/Context;

    .line 60
    invoke-static {p1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v0

    .line 61
    .local v0, "manager":Lcom/android/settings/bluetooth/LocalBluetoothManager;
    if-nez v0, :cond_0

    .line 63
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothStatusEnabler;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    .line 67
    :goto_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothStatusEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 68
    return-void

    .line 65
    :cond_0
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothStatusEnabler;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings/bluetooth/BluetoothStatusEnabler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/bluetooth/BluetoothStatusEnabler;
    .param p1, "x1"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothStatusEnabler;->handleStateChanged(I)V

    return-void
.end method

.method private handleStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 90
    packed-switch p1, :pswitch_data_0

    .line 108
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 92
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothStatusEnabler;->mStatusListener:Lcom/lenovo/settings/LenovoStatusStateChangeListener;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothStatusEnabler;->mStatusListener:Lcom/lenovo/settings/LenovoStatusStateChangeListener;

    const-string v1, "BluetoothEnabler"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/lenovo/settings/LenovoStatusStateChangeListener;->onStateChange(Ljava/lang/String;Z)V

    goto :goto_0

    .line 99
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothStatusEnabler;->mStatusListener:Lcom/lenovo/settings/LenovoStatusStateChangeListener;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothStatusEnabler;->mStatusListener:Lcom/lenovo/settings/LenovoStatusStateChangeListener;

    const-string v1, "BluetoothEnabler"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/lenovo/settings/LenovoStatusStateChangeListener;->onStateChange(Ljava/lang/String;Z)V

    goto :goto_0

    .line 90
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getRunningState()Ljava/lang/String;
    .locals 4

    .prologue
    .line 115
    const/4 v0, 0x0

    .line 116
    .local v0, "isOn":Z
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothStatusEnabler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v1

    .line 117
    .local v1, "manager":Lcom/android/settings/bluetooth/LocalBluetoothManager;
    if-eqz v1, :cond_0

    .line 118
    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_1

    const/4 v0, 0x1

    .line 120
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 121
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothStatusEnabler;->mContext:Landroid/content/Context;

    const v3, 0x7f0c0169

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 123
    :goto_1
    return-object v2

    .line 118
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 123
    :cond_2
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothStatusEnabler;->mContext:Landroid/content/Context;

    const v3, 0x7f0c016b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothStatusEnabler;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    if-nez v0, :cond_0

    .line 87
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothStatusEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothStatusEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothStatusEnabler;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    if-nez v0, :cond_0

    .line 79
    :goto_0
    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothStatusEnabler;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothStatusEnabler;->handleStateChanged(I)V

    .line 78
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothStatusEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothStatusEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothStatusEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public setOnStatusStateChangedListener(Lcom/lenovo/settings/LenovoStatusStateChangeListener;)V
    .locals 0
    .param p1, "onStatusChangeListener"    # Lcom/lenovo/settings/LenovoStatusStateChangeListener;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothStatusEnabler;->mStatusListener:Lcom/lenovo/settings/LenovoStatusStateChangeListener;

    .line 136
    return-void
.end method
