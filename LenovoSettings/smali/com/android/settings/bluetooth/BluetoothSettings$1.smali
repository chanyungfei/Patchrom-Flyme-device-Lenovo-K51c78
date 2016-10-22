.class Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothSettings;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothSettings;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothSettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private updateDeviceName()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothSettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothSettings;

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothSettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothSettings;

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothSettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothSettings;

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothSettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothSettings;

    iget-object v1, v1, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 119
    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 109
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothSettings$1;->updateDeviceName()V

    .line 113
    :cond_0
    return-void
.end method
