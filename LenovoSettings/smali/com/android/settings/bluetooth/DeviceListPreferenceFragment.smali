.class public abstract Lcom/flyme/deviceoriginalsettings/bluetooth/DeviceListPreferenceFragment;
.super Lcom/flyme/deviceoriginalsettings/RestrictedSettingsFragment;
.source "DeviceListPreferenceFragment.java"

# interfaces
.implements Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothCallback;


# static fields
.field private static final KEY_BT_DEVICE_LIST:Ljava/lang/String; = "bt_device_list"

.field private static final KEY_BT_SCAN:Ljava/lang/String; = "bt_scan"

.field public static final PICKING_LIST_MODE:I = 0x2

.field public static final SETTING_LIST_MODE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DeviceListPreferenceFragment"


# instance fields
.field private mDeviceListGroup:Landroid/preference/PreferenceGroup;

.field final mDevicePreferenceMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;",
            "Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDevicePreference;",
            ">;"
        }
    .end annotation
.end field

.field private mFilter:Lcom/lenovoframework/adapter/essential/Filter;

.field private mListMode:I

.field mLocalAdapter:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;

.field mLocalManager:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothManager;

.field mSelectedDevice:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "restrictedKey"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 70
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    .line 75
    sget-object v0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDeviceFilter;->ALL_FILTER:Lcom/lenovoframework/adapter/essential/Filter;

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DeviceListPreferenceFragment;->mFilter:Lcom/lenovoframework/adapter/essential/Filter;

    .line 76
    return-void
.end method

.method private updateProgressUi(Z)V
    .locals 1
    .param p1, "start"    # Z

    .prologue
    .line 240
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroid/preference/PreferenceGroup;

    instance-of v0, v0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothProgressCategory;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroid/preference/PreferenceGroup;

    check-cast v0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothProgressCategory;

    invoke-virtual {v0, p1}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothProgressCategory;->setProgress(Z)V

    .line 243
    :cond_0
    return-void
.end method


# virtual methods
.method addCachedDevices()V
    .locals 4

    .prologue
    .line 150
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v3}, Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDeviceManager;->getCachedDevicesCopy()Ljava/util/Collection;

    move-result-object v1

    .line 152
    .local v1, "cachedDevices":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;

    .line 153
    .local v0, "cachedDevice":Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;
    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/bluetooth/DeviceListPreferenceFragment;->onDeviceAdded(Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;)V

    goto :goto_0

    .line 155
    .end local v0    # "cachedDevice":Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;
    :cond_0
    return-void
.end method

.method abstract addPreferencesForActivity()V
.end method

.method createDevicePreference(Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;)V
    .locals 4
    .param p1, "cachedDevice"    # Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;

    .prologue
    .line 195
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroid/preference/PreferenceGroup;

    if-nez v2, :cond_0

    .line 196
    const-string v2, "DeviceListPreferenceFragment"

    const-string v3, "Trying to create a device preference before the list group/category exists!"

    invoke-static {v2, v3}, Lcom/lenovo/xlog/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    :goto_0
    return-void

    .line 204
    :cond_0
    const/4 v0, 0x0

    .line 205
    .local v0, "preference":Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDevicePreference;
    iget v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DeviceListPreferenceFragment;->mListMode:I

    .line 206
    .local v1, "type":I
    iget v2, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DeviceListPreferenceFragment;->mListMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 207
    new-instance v0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDevicePreference;

    .end local v0    # "preference":Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDevicePreference;
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/bluetooth/DeviceListPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2, p1, v1}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDevicePreference;-><init>(Landroid/content/Context;Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;I)V

    .line 215
    .restart local v0    # "preference":Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDevicePreference;
    :goto_1
    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/bluetooth/DeviceListPreferenceFragment;->initDevicePreference(Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDevicePreference;)V

    .line 216
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 217
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 210
    :cond_1
    new-instance v0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDevicePreference;

    .end local v0    # "preference":Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDevicePreference;
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/bluetooth/DeviceListPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDevicePreference;-><init>(Landroid/content/Context;Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;)V

    .restart local v0    # "preference":Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDevicePreference;
    goto :goto_1
.end method

.method initDevicePreference(Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDevicePreference;)V
    .locals 0
    .param p1, "preference"    # Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDevicePreference;

    .prologue
    .line 226
    return-void
.end method

.method public onBluetoothStateChanged(I)V
    .locals 1
    .param p1, "bluetoothState"    # I

    .prologue
    .line 246
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 247
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/flyme/deviceoriginalsettings/bluetooth/DeviceListPreferenceFragment;->updateProgressUi(Z)V

    .line 249
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 98
    invoke-super {p0, p1}, Lcom/flyme/deviceoriginalsettings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 101
    const/4 v0, 0x1

    iput v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DeviceListPreferenceFragment;->mListMode:I

    .line 103
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/bluetooth/DeviceListPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothManager;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothManager;

    .line 104
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_0

    .line 105
    const-string v0, "DeviceListPreferenceFragment"

    const-string v1, "Bluetooth is not supported on this device"

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :goto_0
    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;

    .line 110
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/bluetooth/DeviceListPreferenceFragment;->addPreferencesForActivity()V

    .line 112
    const-string v0, "bt_device_list"

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/bluetooth/DeviceListPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroid/preference/PreferenceGroup;

    goto :goto_0
.end method

.method public onDeviceAdded(Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;)V
    .locals 2
    .param p1, "cachedDevice"    # Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;

    .prologue
    .line 181
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 188
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DeviceListPreferenceFragment;->mFilter:Lcom/lenovoframework/adapter/essential/Filter;

    invoke-virtual {p1}, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/lenovoframework/adapter/essential/Filter;->matches(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {p0, p1}, Lcom/flyme/deviceoriginalsettings/bluetooth/DeviceListPreferenceFragment;->createDevicePreference(Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;)V

    goto :goto_0
.end method

.method public onDeviceDeleted(Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;)V
    .locals 2
    .param p1, "cachedDevice"    # Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;

    .prologue
    .line 229
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDevicePreference;

    .line 230
    .local v0, "preference":Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDevicePreference;
    if-eqz v0, :cond_0

    .line 231
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 233
    :cond_0
    return-void
.end method

.method onDevicePreferenceClick(Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDevicePreference;)V
    .locals 0
    .param p1, "btPreference"    # Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDevicePreference;

    .prologue
    .line 177
    invoke-virtual {p1}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDevicePreference;->onClicked()V

    .line 178
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 135
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/RestrictedSettingsFragment;->onPause()V

    .line 136
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_0

    .line 141
    :goto_0
    return-void

    .line 138
    :cond_0
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/bluetooth/DeviceListPreferenceFragment;->removeAllDevices()V

    .line 139
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/content/Context;)V

    .line 140
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;->unregisterCallback(Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothCallback;)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v2, 0x1

    .line 160
    const-string v3, "bt_scan"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 161
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v3, v2}, Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;->startScanning(Z)V

    .line 173
    :goto_0
    return v2

    .line 165
    :cond_0
    instance-of v3, p2, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDevicePreference;

    if-eqz v3, :cond_1

    move-object v0, p2

    .line 166
    check-cast v0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDevicePreference;

    .line 167
    .local v0, "btPreference":Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDevicePreference;
    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 168
    .local v1, "device":Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v1}, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DeviceListPreferenceFragment;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 169
    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/bluetooth/DeviceListPreferenceFragment;->onDevicePreferenceClick(Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDevicePreference;)V

    goto :goto_0

    .line 173
    .end local v0    # "btPreference":Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDevicePreference;
    .end local v1    # "device":Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/flyme/deviceoriginalsettings/RestrictedSettingsFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 124
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/RestrictedSettingsFragment;->onResume()V

    .line 125
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_0

    .line 131
    :goto_0
    return-void

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothManager;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/bluetooth/DeviceListPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/content/Context;)V

    .line 128
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;->registerCallback(Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothCallback;)V

    .line 130
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/flyme/deviceoriginalsettings/bluetooth/DeviceListPreferenceFragment;->updateProgressUi(Z)V

    goto :goto_0
.end method

.method public onScanningStateChanged(Z)V
    .locals 0
    .param p1, "started"    # Z

    .prologue
    .line 236
    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/bluetooth/DeviceListPreferenceFragment;->updateProgressUi(Z)V

    .line 237
    return-void
.end method

.method removeAllDevices()V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    .line 145
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 146
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 147
    return-void
.end method

.method setDeviceListGroup(Landroid/preference/PreferenceGroup;)V
    .locals 0
    .param p1, "preferenceGroup"    # Landroid/preference/PreferenceGroup;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroid/preference/PreferenceGroup;

    .line 117
    return-void
.end method

.method final setFilter(I)V
    .locals 1
    .param p1, "filterType"    # I

    .prologue
    .line 86
    invoke-static {p1}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDeviceFilter;->getFilter(I)Lcom/lenovoframework/adapter/essential/Filter;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DeviceListPreferenceFragment;->mFilter:Lcom/lenovoframework/adapter/essential/Filter;

    .line 87
    return-void
.end method

.method final setFilter(Lcom/lenovoframework/adapter/essential/Filter;)V
    .locals 0
    .param p1, "filter"    # Lcom/lenovoframework/adapter/essential/Filter;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DeviceListPreferenceFragment;->mFilter:Lcom/lenovoframework/adapter/essential/Filter;

    .line 83
    return-void
.end method

.method public setListMode(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 92
    iput p1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DeviceListPreferenceFragment;->mListMode:I

    .line 93
    return-void
.end method
