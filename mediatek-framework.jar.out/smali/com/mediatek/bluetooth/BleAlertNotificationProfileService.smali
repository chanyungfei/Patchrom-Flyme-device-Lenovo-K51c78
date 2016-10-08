.class public Lcom/mediatek/bluetooth/BleAlertNotificationProfileService;
.super Lcom/mediatek/bluetooth/BleProfileService;
.source "BleAlertNotificationProfileService.java"


# static fields
.field public static final ACTION_REMOTE_CHANGE:Ljava/lang/String; = "com.mediatek.ble.ans.REMOTE_STATE_CHANGED"

.field public static final CATEGORY_ERROR_VALUE:I = -0x80000000

.field public static final CATEGORY_ID_EMAIL:I = 0x1

.field public static final CATEGORY_ID_INCOMING_CALL:I = 0x3

.field public static final CATEGORY_ID_MISSED_CALL:I = 0x4

.field public static final CATEGORY_ID_SMS:I = 0x5

.field public static final CATEGORY_VALUE_ALL_ALERT_ENABLED:I = 0x3

.field public static final CATEGORY_VALUE_NEW_ALERT_ENABLED:I = 0x1

.field public static final CATEGORY_VALUE_UNREAD_ALERT_ENABLED:I = 0x2

.field public static final CATEGORY_VAULE_ALL_ALERT_DISABLED:I = 0x0

.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "BleProximityProfileService"

.field private static final VDBG:Z = true


# instance fields
.field private final mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mService:Lcom/mediatek/bluetoothle/anp/IAlertNotificationProfileService;

.field private mServiceListener:Lcom/mediatek/bluetooth/BleProfileService$ProfileServiceListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/mediatek/bluetooth/BleProfileService$ProfileServiceListener;)V
    .locals 1
    .param p1, "ctxt"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/mediatek/bluetooth/BleProfileService$ProfileServiceListener;

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/mediatek/bluetooth/BleProfileService;-><init>()V

    .line 120
    new-instance v0, Lcom/mediatek/bluetooth/BleAlertNotificationProfileService$1;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/BleAlertNotificationProfileService$1;-><init>(Lcom/mediatek/bluetooth/BleAlertNotificationProfileService;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/BleAlertNotificationProfileService;->mConnection:Landroid/content/ServiceConnection;

    .line 146
    iput-object p1, p0, Lcom/mediatek/bluetooth/BleAlertNotificationProfileService;->mContext:Landroid/content/Context;

    .line 147
    iput-object p2, p0, Lcom/mediatek/bluetooth/BleAlertNotificationProfileService;->mServiceListener:Lcom/mediatek/bluetooth/BleProfileService$ProfileServiceListener;

    .line 148
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/BleAlertNotificationProfileService;->doBind()Z

    .line 149
    return-void
.end method

.method static synthetic access$002(Lcom/mediatek/bluetooth/BleAlertNotificationProfileService;Lcom/mediatek/bluetoothle/anp/IAlertNotificationProfileService;)Lcom/mediatek/bluetoothle/anp/IAlertNotificationProfileService;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/bluetooth/BleAlertNotificationProfileService;
    .param p1, "x1"    # Lcom/mediatek/bluetoothle/anp/IAlertNotificationProfileService;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/mediatek/bluetooth/BleAlertNotificationProfileService;->mService:Lcom/mediatek/bluetoothle/anp/IAlertNotificationProfileService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/mediatek/bluetooth/BleAlertNotificationProfileService;)Lcom/mediatek/bluetooth/BleProfileService$ProfileServiceListener;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/bluetooth/BleAlertNotificationProfileService;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/mediatek/bluetooth/BleAlertNotificationProfileService;->mServiceListener:Lcom/mediatek/bluetooth/BleProfileService$ProfileServiceListener;

    return-object v0
.end method


# virtual methods
.method close()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 152
    iget-object v2, p0, Lcom/mediatek/bluetooth/BleAlertNotificationProfileService;->mConnection:Landroid/content/ServiceConnection;

    monitor-enter v2

    .line 153
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/BleAlertNotificationProfileService;->mService:Lcom/mediatek/bluetoothle/anp/IAlertNotificationProfileService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 155
    const/4 v1, 0x0

    :try_start_1
    iput-object v1, p0, Lcom/mediatek/bluetooth/BleAlertNotificationProfileService;->mService:Lcom/mediatek/bluetoothle/anp/IAlertNotificationProfileService;

    .line 156
    iget-object v1, p0, Lcom/mediatek/bluetooth/BleAlertNotificationProfileService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/mediatek/bluetooth/BleAlertNotificationProfileService;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 162
    iput-object v4, p0, Lcom/mediatek/bluetooth/BleAlertNotificationProfileService;->mServiceListener:Lcom/mediatek/bluetooth/BleProfileService$ProfileServiceListener;

    .line 163
    return-void

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v1, "BleProximityProfileService"

    const-string v3, ""

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 161
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method doBind()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 167
    const-string v2, "BleProximityProfileService"

    const-string v3, "doBind"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/mediatek/bluetoothle/anp/IAlertNotificationProfileService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 170
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.mediatek.bluetoothle"

    const-string v3, "com.mediatek.bluetoothle.anp.AlertNotificationProfileService"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    iget-object v2, p0, Lcom/mediatek/bluetooth/BleAlertNotificationProfileService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/mediatek/bluetooth/BleAlertNotificationProfileService;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v0, v3, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 173
    const-string v1, "BleProximityProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not bind to ProximityProfileService with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const/4 v1, 0x0

    .line 176
    :cond_0
    return v1
.end method

.method public getDeviceSettings(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/util/SparseIntArray;
    .locals 11
    .param p1, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/util/SparseIntArray;"
        }
    .end annotation

    .prologue
    .local p2, "categorylist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v8, 0x0

    .line 193
    :try_start_0
    const-string v7, "BleProximityProfileService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getDeviceSettings:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    if-eqz p2, :cond_5

    .line 196
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 197
    .local v4, "listSize":I
    new-array v1, v4, [I

    .line 198
    .local v1, "categoryArray":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_0

    .line 199
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v1, v3

    .line 198
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 201
    :cond_0
    const/4 v5, 0x0

    .line 202
    .local v5, "resultArray":[I
    iget-object v7, p0, Lcom/mediatek/bluetooth/BleAlertNotificationProfileService;->mService:Lcom/mediatek/bluetoothle/anp/IAlertNotificationProfileService;

    if-eqz v7, :cond_1

    .line 203
    iget-object v7, p0, Lcom/mediatek/bluetooth/BleAlertNotificationProfileService;->mService:Lcom/mediatek/bluetoothle/anp/IAlertNotificationProfileService;

    invoke-interface {v7, p1, v1}, Lcom/mediatek/bluetoothle/anp/IAlertNotificationProfileService;->getDeviceSettings(Ljava/lang/String;[I)[I

    move-result-object v5

    .line 205
    :cond_1
    if-nez v5, :cond_3

    move-object v6, v8

    .line 221
    .end local v1    # "categoryArray":[I
    .end local v3    # "i":I
    .end local v4    # "listSize":I
    .end local v5    # "resultArray":[I
    :cond_2
    :goto_1
    return-object v6

    .line 208
    .restart local v1    # "categoryArray":[I
    .restart local v3    # "i":I
    .restart local v4    # "listSize":I
    .restart local v5    # "resultArray":[I
    :cond_3
    array-length v0, v5

    .line 209
    .local v0, "arraySize":I
    if-eq v4, v0, :cond_4

    move-object v6, v8

    .line 210
    goto :goto_1

    .line 212
    :cond_4
    new-instance v6, Landroid/util/SparseIntArray;

    invoke-direct {v6}, Landroid/util/SparseIntArray;-><init>()V

    .line 213
    .local v6, "resultSparseIntArray":Landroid/util/SparseIntArray;
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v4, :cond_2

    .line 214
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aget v9, v5, v3

    invoke-virtual {v6, v7, v9}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 218
    .end local v0    # "arraySize":I
    .end local v1    # "categoryArray":[I
    .end local v3    # "i":I
    .end local v4    # "listSize":I
    .end local v5    # "resultArray":[I
    .end local v6    # "resultSparseIntArray":Landroid/util/SparseIntArray;
    :catch_0
    move-exception v2

    .line 219
    .local v2, "e":Landroid/os/RemoteException;
    const-string v7, "BleProximityProfileService"

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_5
    move-object v6, v8

    .line 221
    goto :goto_1
.end method

.method public getRemoteSettings(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/util/SparseIntArray;
    .locals 11
    .param p1, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/util/SparseIntArray;"
        }
    .end annotation

    .prologue
    .local p2, "categorylist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v8, 0x0

    .line 237
    :try_start_0
    const-string v7, "BleProximityProfileService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getRemoteSettings:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    if-eqz p2, :cond_5

    .line 240
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 241
    .local v4, "listSize":I
    new-array v1, v4, [I

    .line 242
    .local v1, "categoryArray":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_0

    .line 243
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v1, v3

    .line 242
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 245
    :cond_0
    const/4 v5, 0x0

    .line 246
    .local v5, "resultArray":[I
    iget-object v7, p0, Lcom/mediatek/bluetooth/BleAlertNotificationProfileService;->mService:Lcom/mediatek/bluetoothle/anp/IAlertNotificationProfileService;

    if-eqz v7, :cond_1

    .line 247
    iget-object v7, p0, Lcom/mediatek/bluetooth/BleAlertNotificationProfileService;->mService:Lcom/mediatek/bluetoothle/anp/IAlertNotificationProfileService;

    invoke-interface {v7, p1, v1}, Lcom/mediatek/bluetoothle/anp/IAlertNotificationProfileService;->getRemoteSettings(Ljava/lang/String;[I)[I

    move-result-object v5

    .line 249
    :cond_1
    if-nez v5, :cond_3

    move-object v6, v8

    .line 265
    .end local v1    # "categoryArray":[I
    .end local v3    # "i":I
    .end local v4    # "listSize":I
    .end local v5    # "resultArray":[I
    :cond_2
    :goto_1
    return-object v6

    .line 252
    .restart local v1    # "categoryArray":[I
    .restart local v3    # "i":I
    .restart local v4    # "listSize":I
    .restart local v5    # "resultArray":[I
    :cond_3
    array-length v0, v5

    .line 253
    .local v0, "arraySize":I
    if-eq v4, v0, :cond_4

    move-object v6, v8

    .line 254
    goto :goto_1

    .line 256
    :cond_4
    new-instance v6, Landroid/util/SparseIntArray;

    invoke-direct {v6}, Landroid/util/SparseIntArray;-><init>()V

    .line 257
    .local v6, "resultSparseIntArray":Landroid/util/SparseIntArray;
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v4, :cond_2

    .line 258
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aget v9, v5, v3

    invoke-virtual {v6, v7, v9}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 262
    .end local v0    # "arraySize":I
    .end local v1    # "categoryArray":[I
    .end local v3    # "i":I
    .end local v4    # "listSize":I
    .end local v5    # "resultArray":[I
    .end local v6    # "resultSparseIntArray":Landroid/util/SparseIntArray;
    :catch_0
    move-exception v2

    .line 263
    .local v2, "e":Landroid/os/RemoteException;
    const-string v7, "BleProximityProfileService"

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_5
    move-object v6, v8

    .line 265
    goto :goto_1
.end method

.method public updateDeviceSettings(Ljava/lang/String;Landroid/util/SparseIntArray;)Z
    .locals 9
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "categoryIdValues"    # Landroid/util/SparseIntArray;

    .prologue
    const/4 v5, 0x0

    .line 281
    :try_start_0
    const-string v6, "BleProximityProfileService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateDeviceSetting: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    if-eqz p2, :cond_1

    .line 284
    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    .line 285
    .local v3, "size":I
    new-array v0, v3, [I

    .line 286
    .local v0, "categoryArray":[I
    new-array v4, v3, [I

    .line 287
    .local v4, "valueArray":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 288
    invoke-virtual {p2, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    aput v6, v0, v2

    .line 289
    invoke-virtual {p2, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v6

    aput v6, v4, v2

    .line 287
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 291
    :cond_0
    iget-object v6, p0, Lcom/mediatek/bluetooth/BleAlertNotificationProfileService;->mService:Lcom/mediatek/bluetoothle/anp/IAlertNotificationProfileService;

    if-eqz v6, :cond_1

    .line 292
    iget-object v6, p0, Lcom/mediatek/bluetooth/BleAlertNotificationProfileService;->mService:Lcom/mediatek/bluetoothle/anp/IAlertNotificationProfileService;

    invoke-interface {v6, p1, v0, v4}, Lcom/mediatek/bluetoothle/anp/IAlertNotificationProfileService;->updateDeviceSettings(Ljava/lang/String;[I[I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 300
    .end local v0    # "categoryArray":[I
    .end local v2    # "i":I
    .end local v3    # "size":I
    .end local v4    # "valueArray":[I
    :cond_1
    :goto_1
    return v5

    .line 297
    :catch_0
    move-exception v1

    .line 298
    .local v1, "e":Landroid/os/RemoteException;
    const-string v6, "BleProximityProfileService"

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
