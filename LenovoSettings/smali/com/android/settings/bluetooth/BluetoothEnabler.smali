.class public final Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;
.super Ljava/lang/Object;
.source "BluetoothEnabler.java"

# interfaces
.implements Lcom/flyme/deviceoriginalsettings/widget/SwitchBar$OnSwitchChangeListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mLocalAdapter:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchBar:Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;

.field private mValidListener:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switchBar"    # Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;

    .prologue
    const/4 v2, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v1, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler$1;

    invoke-direct {v1, p0}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler$1;-><init>(Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;)V

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 56
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;->mSwitchBar:Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;

    .line 58
    invoke-virtual {p2}, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;->getSwitch()Lcom/flyme/deviceoriginalsettings/widget/ToggleSwitch;

    move-result-object v1

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    .line 59
    iput-boolean v2, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;->mValidListener:Z

    .line 61
    invoke-static {p1}, Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothManager;

    move-result-object v0

    .line 62
    .local v0, "manager":Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothManager;
    if-nez v0, :cond_0

    .line 64
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;

    .line 65
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 69
    :goto_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 70
    return-void

    .line 67
    :cond_0
    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;

    goto :goto_0
.end method

.method private setChecked(Z)V
    .locals 1
    .param p1, "isChecked"    # Z

    .prologue
    .line 127
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eq p1, v0, :cond_1

    .line 130
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;->mValidListener:Z

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;->mSwitchBar:Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/flyme/deviceoriginalsettings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 134
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;->mValidListener:Z

    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;->mSwitchBar:Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/flyme/deviceoriginalsettings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 138
    :cond_1
    return-void
.end method


# virtual methods
.method handleStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 105
    packed-switch p1, :pswitch_data_0

    .line 121
    invoke-direct {p0, v1}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;->setChecked(Z)V

    .line 122
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 124
    :goto_0
    return-void

    .line 107
    :pswitch_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 110
    :pswitch_1
    invoke-direct {p0, v2}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;->setChecked(Z)V

    .line 111
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 114
    :pswitch_2
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 117
    :pswitch_3
    invoke-direct {p0, v1}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;->setChecked(Z)V

    .line 118
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 105
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 3
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v2, 0x0

    .line 143
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    const-string v1, "bluetooth"

    invoke-static {v0, v1}, Lcom/flyme/deviceoriginalsettings/Utils;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0615

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 147
    invoke-virtual {p1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0, p2}, Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;->setBluetoothEnabled(Z)V

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 154
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;

    if-nez v0, :cond_0

    .line 102
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;->mValidListener:Z

    goto :goto_0
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 83
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 93
    :goto_0
    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;->handleStateChanged(I)V

    .line 91
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;->mValidListener:Z

    goto :goto_0
.end method

.method public setupSwitchBar()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;->mSwitchBar:Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/flyme/deviceoriginalsettings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 74
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;->mSwitchBar:Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;->show()V

    .line 75
    return-void
.end method

.method public teardownSwitchBar()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;->mSwitchBar:Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/flyme/deviceoriginalsettings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 79
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;->mSwitchBar:Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;->hide()V

    .line 80
    return-void
.end method
