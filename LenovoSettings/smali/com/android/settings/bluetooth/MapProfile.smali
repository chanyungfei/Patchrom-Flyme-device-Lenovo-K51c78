.class final Lcom/flyme/deviceoriginalsettings/bluetooth/MapProfile;
.super Ljava/lang/Object;
.source "MapProfile.java"

# interfaces
.implements Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/deviceoriginalsettings/bluetooth/MapProfile$1;,
        Lcom/flyme/deviceoriginalsettings/bluetooth/MapProfile$MapServiceListener;
    }
.end annotation


# static fields
.field static final NAME:Ljava/lang/String; = "MAP"

.field private static final TAG:Ljava/lang/String; = "MapProfile"

.field static final UUIDS:[Landroid/os/ParcelUuid;

.field private static V:Z


# instance fields
.field private final mDeviceManager:Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDeviceManager;

.field private mIsProfileReady:Z

.field private final mLocalAdapter:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;

.field private final mProfileManager:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfileManager;

.field private mService:Landroid/bluetooth/BluetoothMap;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 43
    sput-boolean v3, Lcom/flyme/deviceoriginalsettings/bluetooth/MapProfile;->V:Z

    .line 52
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/os/ParcelUuid;

    const/4 v1, 0x0

    sget-object v2, Landroid/bluetooth/BluetoothUuid;->MAP:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->MNS:Landroid/os/ParcelUuid;

    aput-object v1, v0, v3

    const/4 v1, 0x2

    sget-object v2, Landroid/bluetooth/BluetoothUuid;->MAS:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    sput-object v0, Lcom/flyme/deviceoriginalsettings/bluetooth/MapProfile;->UUIDS:[Landroid/os/ParcelUuid;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDeviceManager;Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfileManager;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapter"    # Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;
    .param p3, "deviceManager"    # Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDeviceManager;
    .param p4, "profileManager"    # Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfileManager;

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p2, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/MapProfile;->mLocalAdapter:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;

    .line 104
    iput-object p3, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/MapProfile;->mDeviceManager:Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDeviceManager;

    .line 105
    iput-object p4, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/MapProfile;->mProfileManager:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfileManager;

    .line 106
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/MapProfile;->mLocalAdapter:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;

    new-instance v1, Lcom/flyme/deviceoriginalsettings/bluetooth/MapProfile$MapServiceListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/flyme/deviceoriginalsettings/bluetooth/MapProfile$MapServiceListener;-><init>(Lcom/flyme/deviceoriginalsettings/bluetooth/MapProfile;Lcom/flyme/deviceoriginalsettings/bluetooth/MapProfile$1;)V

    const/16 v2, 0x9

    invoke-virtual {v0, p1, v1, v2}, Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)V

    .line 108
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 41
    sget-boolean v0, Lcom/flyme/deviceoriginalsettings/bluetooth/MapProfile;->V:Z

    return v0
.end method

.method static synthetic access$100(Lcom/flyme/deviceoriginalsettings/bluetooth/MapProfile;)Landroid/bluetooth/BluetoothMap;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/bluetooth/MapProfile;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/MapProfile;->mService:Landroid/bluetooth/BluetoothMap;

    return-object v0
.end method

.method static synthetic access$102(Lcom/flyme/deviceoriginalsettings/bluetooth/MapProfile;Landroid/bluetooth/BluetoothMap;)Landroid/bluetooth/BluetoothMap;
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/bluetooth/MapProfile;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothMap;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/MapProfile;->mService:Landroid/bluetooth/BluetoothMap;

    return-object p1
.end method

.method static synthetic access$200(Lcom/flyme/deviceoriginalsettings/bluetooth/MapProfile;)Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDeviceManager;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/bluetooth/MapProfile;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/MapProfile;->mDeviceManager:Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDeviceManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/flyme/deviceoriginalsettings/bluetooth/MapProfile;)Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/bluetooth/MapProfile;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/MapProfile;->mLocalAdapter:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/flyme/deviceoriginalsettings/bluetooth/MapProfile;)Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfileManager;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/bluetooth/MapProfile;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/MapProfile;->mProfileManager:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfileManager;

    return-object v0
.end method

.method static synthetic access$502(Lcom/flyme/deviceoriginalsettings/bluetooth/MapProfile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/bluetooth/MapProfile;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/MapProfile;->mIsProfileReady:Z

    return p1
.end method


# virtual methods
.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 119
    sget-boolean v0, Lcom/flyme/deviceoriginalsettings/bluetooth/MapProfile;->V:Z

    if-eqz v0, :cond_0

    const-string v0, "MapProfile"

    const-string v1, "connect() - should not get called"

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/16 v3, 0x64

    const/4 v2, 0x0

    .line 124
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/MapProfile;->mService:Landroid/bluetooth/BluetoothMap;

    if-nez v1, :cond_0

    move v1, v2

    .line 132
    :goto_0
    return v1

    .line 125
    :cond_0
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/MapProfile;->mService:Landroid/bluetooth/BluetoothMap;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothMap;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 126
    .local v0, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 127
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/MapProfile;->mService:Landroid/bluetooth/BluetoothMap;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothMap;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    if-le v1, v3, :cond_1

    .line 128
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/MapProfile;->mService:Landroid/bluetooth/BluetoothMap;

    invoke-virtual {v1, p1, v3}, Landroid/bluetooth/BluetoothMap;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 130
    :cond_1
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/MapProfile;->mService:Landroid/bluetooth/BluetoothMap;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothMap;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    goto :goto_0

    :cond_2
    move v1, v2

    .line 132
    goto :goto_0
.end method

.method protected finalize()V
    .locals 4

    .prologue
    .line 206
    sget-boolean v1, Lcom/flyme/deviceoriginalsettings/bluetooth/MapProfile;->V:Z

    if-eqz v1, :cond_0

    const-string v1, "MapProfile"

    const-string v2, "finalize()"

    invoke-static {v1, v2}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    :cond_0
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/MapProfile;->mService:Landroid/bluetooth/BluetoothMap;

    if-eqz v1, :cond_1

    .line 209
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    const/16 v2, 0x9

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/MapProfile;->mService:Landroid/bluetooth/BluetoothMap;

    invoke-virtual {v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 211
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/MapProfile;->mService:Landroid/bluetooth/BluetoothMap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    :cond_1
    :goto_0
    return-void

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "MapProfile"

    const-string v2, "Error cleaning up MAP proxy"

    invoke-static {v1, v2, v0}, Lcom/lenovo/xlog/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getConnectedDevices()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 168
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/MapProfile;->mService:Landroid/bluetooth/BluetoothMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 169
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/MapProfile;->mService:Landroid/bluetooth/BluetoothMap;

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothMap;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :array_0
    .array-data 4
        0x2
        0x1
        0x3
    .end array-data
.end method

.method public getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v2, 0x0

    .line 137
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/MapProfile;->mService:Landroid/bluetooth/BluetoothMap;

    if-nez v1, :cond_0

    .line 141
    :goto_0
    return v2

    .line 138
    :cond_0
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/MapProfile;->mService:Landroid/bluetooth/BluetoothMap;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothMap;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 139
    .local v0, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    sget-boolean v1, Lcom/flyme/deviceoriginalsettings/bluetooth/MapProfile;->V:Z

    if-eqz v1, :cond_1

    const-string v1, "MapProfile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getConnectionStatus: status is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/MapProfile;->mService:Landroid/bluetooth/BluetoothMap;

    invoke-virtual {v4, p1}, Landroid/bluetooth/BluetoothMap;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/MapProfile;->mService:Landroid/bluetooth/BluetoothMap;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothMap;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public getDrawableResource(Landroid/bluetooth/BluetoothClass;)I
    .locals 1
    .param p1, "btClass"    # Landroid/bluetooth/BluetoothClass;

    .prologue
    .line 202
    const v0, 0x7f020049

    return v0
.end method

.method public getNameResource(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 184
    const v0, 0x7f0c05d6

    return v0
.end method

.method public getOrdinal()I
    .locals 1

    .prologue
    .line 180
    const/16 v0, 0x9

    return v0
.end method

.method public getPreferred(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/MapProfile;->mService:Landroid/bluetooth/BluetoothMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 153
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/MapProfile;->mService:Landroid/bluetooth/BluetoothMap;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothMap;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    goto :goto_0
.end method

.method public getSummaryResourceForDevice(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 188
    invoke-virtual {p0, p1}, Lcom/flyme/deviceoriginalsettings/bluetooth/MapProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 189
    .local v0, "state":I
    packed-switch v0, :pswitch_data_0

    .line 197
    :pswitch_0
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/bluetooth/Utils;->getConnectionStateSummary(I)I

    move-result v1

    :goto_0
    return v1

    .line 191
    :pswitch_1
    const v1, 0x7f0c05ef

    goto :goto_0

    .line 194
    :pswitch_2
    const v1, 0x7f0c05e5

    goto :goto_0

    .line 189
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public isAutoConnectable()Z
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x1

    return v0
.end method

.method public isConnectable()Z
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x1

    return v0
.end method

.method public isPreferred(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v0, 0x0

    .line 147
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/MapProfile;->mService:Landroid/bluetooth/BluetoothMap;

    if-nez v1, :cond_1

    .line 148
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/MapProfile;->mService:Landroid/bluetooth/BluetoothMap;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothMap;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isProfileReady()Z
    .locals 3

    .prologue
    .line 96
    sget-boolean v0, Lcom/flyme/deviceoriginalsettings/bluetooth/MapProfile;->V:Z

    if-eqz v0, :cond_0

    const-string v0, "MapProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isProfileReady(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/MapProfile;->mIsProfileReady:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :cond_0
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/MapProfile;->mIsProfileReady:Z

    return v0
.end method

.method public setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "preferred"    # Z

    .prologue
    const/16 v1, 0x64

    .line 157
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/MapProfile;->mService:Landroid/bluetooth/BluetoothMap;

    if-nez v0, :cond_1

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    if-eqz p2, :cond_2

    .line 159
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/MapProfile;->mService:Landroid/bluetooth/BluetoothMap;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothMap;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-ge v0, v1, :cond_0

    .line 160
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/MapProfile;->mService:Landroid/bluetooth/BluetoothMap;

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothMap;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_0

    .line 163
    :cond_2
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/MapProfile;->mService:Landroid/bluetooth/BluetoothMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothMap;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    const-string v0, "MAP"

    return-object v0
.end method
