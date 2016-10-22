.class final Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;
.super Ljava/lang/Object;
.source "CachedBluetoothDevice.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;",
        ">;"
    }
.end annotation


# static fields
.field static final ACCESS_ALLOWED:I = 0x1

.field static final ACCESS_REJECTED:I = 0x2

.field static final ACCESS_UNKNOWN:I = 0x0

.field private static final DEBUG:Z = false

.field private static final MAX_UUID_DELAY_FOR_AUTO_CONNECT:J = 0x1388L

.field private static final MESSAGE_PREFS_NAME:Ljava/lang/String; = "bluetooth_message_permission"

.field private static final MESSAGE_REJECT_TIMES:Ljava/lang/String; = "bluetooth_message_reject"

.field static final PERSIST_REJECTED_TIMES_LIMIT:I = 0x2

.field private static final PHONEBOOK_PREFS_NAME:Ljava/lang/String; = "bluetooth_phonebook_permission"

.field private static final PHONEBOOK_REJECT_TIMES:Ljava/lang/String; = "bluetooth_phonebook_reject"

.field private static final TAG:Ljava/lang/String; = "CachedBluetoothDevice"


# instance fields
.field private mBtClass:Landroid/bluetooth/BluetoothClass;

.field private final mCallbacks:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectAfterPairing:Z

.field private mConnectAttempted:J

.field private final mContext:Landroid/content/Context;

.field private final mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mDeviceRemove:Z

.field private mIsConnectingErrorPossible:Z

.field private final mLocalAdapter:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;

.field private mLocalNapRoleConnected:Z

.field private mMessagePermissionChoice:I

.field private mMessageRejectedTimes:I

.field private mName:Ljava/lang/String;

.field private mPhonebookPermissionChoice:I

.field private mPhonebookRejectedTimes:I

.field private mProfileConnectionState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mProfileManager:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfileManager;

.field private final mProfiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemovedProfiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;",
            ">;"
        }
    .end annotation
.end field

.field private mRssi:S

.field private mVisible:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapter"    # Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;
    .param p3, "profileManager"    # Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfileManager;
    .param p4, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mRemovedProfiles:Ljava/util/List;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    .line 186
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    .line 187
    iput-object p2, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mLocalAdapter:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;

    .line 188
    iput-object p3, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfileManager;

    .line 189
    iput-object p4, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 190
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    .line 191
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->fillData()V

    .line 192
    return-void
.end method

.method private connectAutoConnectableProfiles()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 265
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->ensurePaired()Z

    move-result v2

    if-nez v2, :cond_1

    .line 277
    :cond_0
    return-void

    .line 269
    :cond_1
    iput-boolean v3, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mIsConnectingErrorPossible:Z

    .line 271
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;

    .line 272
    .local v1, "profile":Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;
    invoke-interface {v1}, Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;->isAutoConnectable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 273
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v1, v2, v3}, Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 274
    invoke-virtual {p0, v1}, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->connectInt(Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;)V

    goto :goto_0
.end method

.method private connectWithoutResettingTimer(Z)V
    .locals 5
    .param p1, "connectAllProfiles"    # Z

    .prologue
    .line 233
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 241
    const-string v3, "CachedBluetoothDevice"

    const-string v4, "No profiles. Maybe we will connect later"

    invoke-static {v3, v4}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mIsConnectingErrorPossible:Z

    .line 248
    const/4 v1, 0x0

    .line 249
    .local v1, "preferredProfiles":I
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;

    .line 250
    .local v2, "profile":Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;
    if-eqz p1, :cond_3

    invoke-interface {v2}, Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;->isConnectable()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 251
    :goto_2
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v2, v3}, Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 252
    add-int/lit8 v1, v1, 0x1

    .line 253
    invoke-virtual {p0, v2}, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->connectInt(Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;)V

    goto :goto_1

    .line 250
    :cond_3
    invoke-interface {v2}, Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;->isAutoConnectable()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    .line 259
    .end local v2    # "profile":Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;
    :cond_4
    if-nez v1, :cond_0

    .line 260
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->connectAutoConnectableProfiles()V

    goto :goto_0
.end method

.method private describe(Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;)Ljava/lang/String;
    .locals 3
    .param p1, "profile"    # Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;

    .prologue
    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Address:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 128
    if-eqz p1, :cond_0

    .line 129
    const-string v1, " Profile:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 132
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private dispatchAttributesChanged()V
    .locals 4

    .prologue
    .line 629
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    monitor-enter v3

    .line 630
    :try_start_0
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice$Callback;

    .line 631
    .local v0, "callback":Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice$Callback;
    invoke-interface {v0}, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice$Callback;->onDeviceAttributesChanged()V

    goto :goto_0

    .line 633
    .end local v0    # "callback":Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice$Callback;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 634
    return-void
.end method

.method private ensurePaired()Z
    .locals 2

    .prologue
    .line 307
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 308
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->startPairing()Z

    .line 309
    const/4 v0, 0x0

    .line 311
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private fetchBtClass()V
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    .line 505
    return-void
.end method

.method private fetchMessagePermissionChoice()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 761
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    const-string v2, "bluetooth_message_permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 763
    .local v0, "preference":Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mMessagePermissionChoice:I

    .line 765
    return-void
.end method

.method private fetchMessageRejectTimes()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 768
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    const-string v2, "bluetooth_message_reject"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 770
    .local v0, "preference":Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mMessageRejectedTimes:I

    .line 771
    return-void
.end method

.method private fetchName()V
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    .line 426
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    .line 430
    :cond_0
    return-void
.end method

.method private fetchPhonebookPermissionChoice()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 710
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    const-string v2, "bluetooth_phonebook_permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 712
    .local v0, "preference":Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mPhonebookPermissionChoice:I

    .line 714
    return-void
.end method

.method private fetchPhonebookRejectTimes()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 717
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    const-string v2, "bluetooth_phonebook_reject"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 719
    .local v0, "preference":Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mPhonebookRejectedTimes:I

    .line 720
    return-void
.end method

.method private fillData()V
    .locals 1

    .prologue
    .line 385
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->fetchName()V

    .line 386
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->fetchBtClass()V

    .line 387
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->updateProfiles()Z

    .line 388
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->fetchPhonebookPermissionChoice()V

    .line 389
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->fetchMessagePermissionChoice()V

    .line 390
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->fetchPhonebookRejectTimes()V

    .line 391
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->fetchMessageRejectTimes()V

    .line 393
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mVisible:Z

    .line 394
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 395
    return-void
.end method

.method private saveMessageRejectTimes()V
    .locals 4

    .prologue
    .line 774
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    const-string v2, "bluetooth_message_reject"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 776
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mMessageRejectedTimes:I

    if-nez v1, :cond_0

    .line 777
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 781
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 782
    return-void

    .line 779
    :cond_0
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mMessageRejectedTimes:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method private savePhonebookRejectTimes()V
    .locals 4

    .prologue
    .line 723
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    const-string v2, "bluetooth_phonebook_reject"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 726
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mPhonebookRejectedTimes:I

    if-nez v1, :cond_0

    .line 727
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 731
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 732
    return-void

    .line 729
    :cond_0
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mPhonebookRejectedTimes:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method private updateProfiles()Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 508
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v1

    .line 509
    .local v1, "uuids":[Landroid/os/ParcelUuid;
    if-nez v1, :cond_1

    .line 527
    :cond_0
    :goto_0
    return v0

    .line 511
    :cond_1
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mLocalAdapter:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v3}, Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v2

    .line 512
    .local v2, "localUuids":[Landroid/os/ParcelUuid;
    if-eqz v2, :cond_0

    .line 514
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfileManager;

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mRemovedProfiles:Ljava/util/List;

    iget-boolean v5, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mLocalNapRoleConnected:Z

    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual/range {v0 .. v6}, Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfileManager;->updateProfiles([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;Ljava/util/Collection;Ljava/util/Collection;ZLandroid/bluetooth/BluetoothDevice;)V

    .line 527
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public clearProfileConnectionState()V
    .locals 5

    .prologue
    .line 376
    const-string v2, "CachedBluetoothDevice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Clearing all connection state for dev:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->getProfiles()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;

    .line 379
    .local v1, "profile":Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 381
    .end local v1    # "profile":Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;
    :cond_0
    return-void
.end method

.method public compareTo(Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;)I
    .locals 6
    .param p1, "another"    # Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;

    .prologue
    const/16 v5, 0xc

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 659
    invoke-virtual {p1}, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v2

    :goto_1
    sub-int v0, v1, v4

    .line 660
    .local v0, "comparison":I
    if-eqz v0, :cond_2

    move v1, v0

    .line 676
    :goto_2
    return v1

    .end local v0    # "comparison":I
    :cond_0
    move v1, v3

    .line 659
    goto :goto_0

    :cond_1
    move v4, v3

    goto :goto_1

    .line 663
    .restart local v0    # "comparison":I
    :cond_2
    invoke-virtual {p1}, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v1

    if-ne v1, v5, :cond_3

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v4

    if-ne v4, v5, :cond_4

    move v4, v2

    :goto_4
    sub-int v0, v1, v4

    .line 665
    if-eqz v0, :cond_5

    move v1, v0

    goto :goto_2

    :cond_3
    move v1, v3

    .line 663
    goto :goto_3

    :cond_4
    move v4, v3

    goto :goto_4

    .line 668
    :cond_5
    iget-boolean v1, p1, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mVisible:Z

    if-eqz v1, :cond_6

    move v1, v2

    :goto_5
    iget-boolean v4, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mVisible:Z

    if-eqz v4, :cond_7

    :goto_6
    sub-int v0, v1, v2

    .line 669
    if-eqz v0, :cond_8

    move v1, v0

    goto :goto_2

    :cond_6
    move v1, v3

    .line 668
    goto :goto_5

    :cond_7
    move v2, v3

    goto :goto_6

    .line 672
    :cond_8
    iget-short v1, p1, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mRssi:S

    iget-short v2, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mRssi:S

    sub-int v0, v1, v2

    .line 673
    if-eqz v0, :cond_9

    move v1, v0

    goto :goto_2

    .line 676
    :cond_9
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    iget-object v2, p1, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    goto :goto_2
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 46
    check-cast p1, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->compareTo(Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;)I

    move-result v0

    return v0
.end method

.method connect(Z)V
    .locals 2
    .param p1, "connectAllProfiles"    # Z

    .prologue
    .line 217
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->ensurePaired()Z

    move-result v0

    if-nez v0, :cond_0

    .line 223
    :goto_0
    return-void

    .line 221
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mConnectAttempted:J

    .line 222
    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->connectWithoutResettingTimer(Z)V

    goto :goto_0
.end method

.method declared-synchronized connectInt(Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;)V
    .locals 3
    .param p1, "profile"    # Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;

    .prologue
    .line 294
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->ensurePaired()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 304
    :goto_0
    monitor-exit p0

    return-void

    .line 297
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p1, v0}, Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 299
    const-string v0, "CachedBluetoothDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Command sent successfully:CONNECT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->describe(Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 294
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 303
    :cond_1
    :try_start_2
    const-string v0, "CachedBluetoothDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to connect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method connectProfile(Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;)V
    .locals 2
    .param p1, "profile"    # Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;

    .prologue
    .line 285
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mConnectAttempted:J

    .line 287
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mIsConnectingErrorPossible:Z

    .line 288
    invoke-virtual {p0, p1}, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->connectInt(Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;)V

    .line 290
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->refresh()V

    .line 291
    return-void
.end method

.method disconnect()V
    .locals 5

    .prologue
    .line 195
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;

    .line 196
    .local v2, "profile":Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;
    invoke-virtual {p0, v2}, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->disconnect(Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;)V

    goto :goto_0

    .line 201
    .end local v2    # "profile":Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;
    :cond_0
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v3}, Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfileManager;->getPbapProfile()Lcom/flyme/deviceoriginalsettings/bluetooth/PbapServerProfile;

    move-result-object v0

    .line 202
    .local v0, "PbapProfile":Lcom/flyme/deviceoriginalsettings/bluetooth/PbapServerProfile;
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v3}, Lcom/flyme/deviceoriginalsettings/bluetooth/PbapServerProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 204
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v3}, Lcom/flyme/deviceoriginalsettings/bluetooth/PbapServerProfile;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 206
    :cond_1
    return-void
.end method

.method disconnect(Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;)V
    .locals 3
    .param p1, "profile"    # Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p1, v0}, Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    const-string v0, "CachedBluetoothDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Command sent successfully:DISCONNECT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->describe(Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 643
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;

    if-nez v0, :cond_1

    .line 644
    :cond_0
    const/4 v0, 0x0

    .line 646
    .end local p1    # "o":Ljava/lang/Object;
    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    check-cast p1, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p1, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method getBondState()I
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    return v0
.end method

.method getBtClass()Landroid/bluetooth/BluetoothClass;
    .locals 1

    .prologue
    .line 594
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    return-object v0
.end method

.method getConnectableProfiles()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 602
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 604
    .local v0, "connectableProfiles":Ljava/util/List;, "Ljava/util/List<Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;>;"
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;

    .line 605
    .local v2, "profile":Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;
    invoke-interface {v2}, Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;->isConnectable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 606
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 609
    .end local v2    # "profile":Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;
    :cond_1
    return-object v0
.end method

.method getDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method getMessagePermissionChoice()I
    .locals 1

    .prologue
    .line 735
    iget v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mMessagePermissionChoice:I

    return v0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    return-object v0
.end method

.method getPhonebookPermissionChoice()I
    .locals 1

    .prologue
    .line 684
    iget v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mPhonebookPermissionChoice:I

    return v0
.end method

.method getProfileConnectionState(Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;)I
    .locals 3
    .param p1, "profile"    # Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;

    .prologue
    .line 364
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 367
    :cond_0
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p1, v1}, Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 368
    .local v0, "state":I
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    .end local v0    # "state":I
    :cond_1
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method getProfiles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 598
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getRemovedProfiles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 613
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mRemovedProfiles:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 651
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method isBusy()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 490
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;

    .line 491
    .local v1, "profile":Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;
    invoke-virtual {p0, v1}, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->getProfileConnectionState(Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;)I

    move-result v2

    .line 492
    .local v2, "status":I
    if-eq v2, v3, :cond_1

    const/4 v4, 0x3

    if-ne v2, v4, :cond_0

    .line 497
    .end local v1    # "profile":Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;
    .end local v2    # "status":I
    :cond_1
    :goto_0
    return v3

    :cond_2
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v4

    const/16 v5, 0xb

    if-eq v4, v5, :cond_1

    const/4 v3, 0x0

    goto :goto_0
.end method

.method isConnected()Z
    .locals 4

    .prologue
    .line 473
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;

    .line 474
    .local v1, "profile":Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;
    invoke-virtual {p0, v1}, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->getProfileConnectionState(Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;)I

    move-result v2

    .line 475
    .local v2, "status":I
    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 476
    const/4 v3, 0x1

    .line 480
    .end local v1    # "profile":Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;
    .end local v2    # "status":I
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method isConnectedProfile(Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;)Z
    .locals 2
    .param p1, "profile"    # Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;

    .prologue
    .line 484
    invoke-virtual {p0, p1}, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->getProfileConnectionState(Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;)I

    move-result v0

    .line 485
    .local v0, "status":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isRemovable()Z
    .locals 1

    .prologue
    .line 448
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mDeviceRemove:Z

    return v0
.end method

.method isUserInitiatedPairing()Z
    .locals 1

    .prologue
    .line 334
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mConnectAfterPairing:Z

    return v0
.end method

.method isVisible()Z
    .locals 1

    .prologue
    .line 437
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mVisible:Z

    return v0
.end method

.method onBondingDockConnect()V
    .locals 1

    .prologue
    .line 228
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->connect(Z)V

    .line 229
    return-void
.end method

.method onBondingStateChanged(I)V
    .locals 2
    .param p1, "bondState"    # I

    .prologue
    const/4 v1, 0x0

    .line 563
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 564
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 565
    iput-boolean v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mConnectAfterPairing:Z

    .line 566
    invoke-virtual {p0, v1}, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->setPhonebookPermissionChoice(I)V

    .line 567
    invoke-virtual {p0, v1}, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->setMessagePermissionChoice(I)V

    .line 568
    iput v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mPhonebookRejectedTimes:I

    .line 569
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->savePhonebookRejectTimes()V

    .line 570
    iput v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mMessageRejectedTimes:I

    .line 571
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->saveMessageRejectTimes()V

    .line 574
    :cond_0
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->refresh()V

    .line 576
    const/16 v0, 0xc

    if-ne p1, v0, :cond_2

    .line 577
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 578
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->onBondingDockConnect()V

    .line 582
    :cond_1
    :goto_0
    iput-boolean v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mConnectAfterPairing:Z

    .line 584
    :cond_2
    return-void

    .line 579
    :cond_3
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mConnectAfterPairing:Z

    if-eqz v0, :cond_1

    .line 580
    invoke-virtual {p0, v1}, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->connect(Z)V

    goto :goto_0
.end method

.method onProfileStateChanged(Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;I)V
    .locals 5
    .param p1, "profile"    # Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;
    .param p2, "newProfileState"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 137
    const-string v0, "CachedBluetoothDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProfileStateChanged: profile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " newProfileState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mLocalAdapter:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    .line 142
    const-string v0, "CachedBluetoothDevice"

    const-string v1, " BT Turninig Off...Profile conn state change ignored..."

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    .line 147
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 148
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mRemovedProfiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 149
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    instance-of v0, p1, Lcom/flyme/deviceoriginalsettings/bluetooth/PanProfile;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/flyme/deviceoriginalsettings/bluetooth/PanProfile;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/bluetooth/PanProfile;->isLocalRoleNap(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 153
    iput-boolean v4, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mLocalNapRoleConnected:Z

    .line 156
    :cond_2
    instance-of v0, p1, Lcom/flyme/deviceoriginalsettings/bluetooth/MapProfile;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p1, v0, v4}, Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 159
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->refresh()V

    goto :goto_0

    .line 162
    :cond_3
    instance-of v0, p1, Lcom/flyme/deviceoriginalsettings/bluetooth/MapProfile;

    if-eqz v0, :cond_5

    if-nez p2, :cond_5

    .line 164
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 165
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mRemovedProfiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 168
    :cond_4
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p1, v0, v3}, Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 170
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->refresh()V

    goto :goto_0

    .line 172
    :cond_5
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mLocalNapRoleConnected:Z

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/flyme/deviceoriginalsettings/bluetooth/PanProfile;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/flyme/deviceoriginalsettings/bluetooth/PanProfile;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/bluetooth/PanProfile;->isLocalRoleNap(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 175
    const-string v0, "CachedBluetoothDevice"

    const-string v1, "Removing PanProfile from device after NAP disconnect"

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 177
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mRemovedProfiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    iput-boolean v3, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mLocalNapRoleConnected:Z

    goto/16 :goto_0
.end method

.method onUuidChanged()V
    .locals 4

    .prologue
    .line 543
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->updateProfiles()Z

    .line 554
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mConnectAttempted:J

    const-wide/16 v2, 0x1388

    add-long/2addr v0, v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 557
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->connectWithoutResettingTimer(Z)V

    .line 559
    :cond_0
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 560
    return-void
.end method

.method refresh()V
    .locals 0

    .prologue
    .line 433
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 434
    return-void
.end method

.method refreshBtClass()V
    .locals 0

    .prologue
    .line 535
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->fetchBtClass()V

    .line 536
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 537
    return-void
.end method

.method refreshName()V
    .locals 0

    .prologue
    .line 419
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->fetchName()V

    .line 420
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 421
    return-void
.end method

.method registerCallback(Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice$Callback;)V
    .locals 2
    .param p1, "callback"    # Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice$Callback;

    .prologue
    .line 617
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    monitor-enter v1

    .line 618
    :try_start_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 619
    monitor-exit v1

    .line 620
    return-void

    .line 619
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setBtClass(Landroid/bluetooth/BluetoothClass;)V
    .locals 1
    .param p1, "btClass"    # Landroid/bluetooth/BluetoothClass;

    .prologue
    .line 587
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    if-eq v0, p1, :cond_0

    .line 588
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    .line 589
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 591
    :cond_0
    return-void
.end method

.method setMessagePermissionChoice(I)V
    .locals 4
    .param p1, "permissionChoice"    # I

    .prologue
    const/4 v2, 0x2

    .line 740
    if-ne p1, v2, :cond_0

    .line 741
    iget v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mMessageRejectedTimes:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mMessageRejectedTimes:I

    .line 742
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->saveMessageRejectTimes()V

    .line 743
    iget v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mMessageRejectedTimes:I

    if-ge v1, v2, :cond_0

    .line 758
    :goto_0
    return-void

    .line 748
    :cond_0
    iput p1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mMessagePermissionChoice:I

    .line 750
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    const-string v2, "bluetooth_message_permission"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 752
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    if-nez p1, :cond_1

    .line 753
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 757
    :goto_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 755
    :cond_1
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method

.method setName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 406
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 407
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 409
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    .line 414
    :goto_0
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 416
    :cond_0
    return-void

    .line 411
    :cond_1
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    .line 412
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->setAlias(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method setPhonebookPermissionChoice(I)V
    .locals 4
    .param p1, "permissionChoice"    # I

    .prologue
    const/4 v2, 0x2

    .line 689
    if-ne p1, v2, :cond_0

    .line 690
    iget v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mPhonebookRejectedTimes:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mPhonebookRejectedTimes:I

    .line 691
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->savePhonebookRejectTimes()V

    .line 692
    iget v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mPhonebookRejectedTimes:I

    if-ge v1, v2, :cond_0

    .line 707
    :goto_0
    return-void

    .line 697
    :cond_0
    iput p1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mPhonebookPermissionChoice:I

    .line 699
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    const-string v2, "bluetooth_phonebook_permission"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 701
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    if-nez p1, :cond_1

    .line 702
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 706
    :goto_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 704
    :cond_1
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method

.method setRemovable(Z)V
    .locals 0
    .param p1, "removable"    # Z

    .prologue
    .line 452
    iput-boolean p1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mDeviceRemove:Z

    .line 453
    return-void
.end method

.method setRssi(S)V
    .locals 1
    .param p1, "rssi"    # S

    .prologue
    .line 461
    iget-short v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mRssi:S

    if-eq v0, p1, :cond_0

    .line 462
    iput-short p1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mRssi:S

    .line 463
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 465
    :cond_0
    return-void
.end method

.method setVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 441
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mVisible:Z

    if-eq v0, p1, :cond_0

    .line 442
    iput-boolean p1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mVisible:Z

    .line 443
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 445
    :cond_0
    return-void
.end method

.method startPairing()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 317
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mLocalAdapter:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 318
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mLocalAdapter:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;->cancelDiscovery()V

    .line 321
    :cond_0
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->createBond()Z

    move-result v1

    if-nez v1, :cond_1

    .line 322
    const/4 v0, 0x0

    .line 326
    :goto_0
    return v0

    .line 325
    :cond_1
    iput-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mConnectAfterPairing:Z

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 638
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method unpair()V
    .locals 6

    .prologue
    .line 338
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v1

    .line 340
    .local v1, "state":I
    const/16 v3, 0xb

    if-ne v1, v3, :cond_0

    .line 341
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->cancelBondProcess()Z

    .line 344
    :cond_0
    const/16 v3, 0xa

    if-eq v1, v3, :cond_1

    .line 345
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 346
    .local v0, "dev":Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_1

    .line 347
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->removeBond()Z

    move-result v2

    .line 348
    .local v2, "successful":Z
    if-eqz v2, :cond_1

    .line 350
    const-string v3, "CachedBluetoothDevice"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Command sent successfully:REMOVE_BOND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->describe(Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->setRemovable(Z)V

    .line 361
    .end local v0    # "dev":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "successful":Z
    :cond_1
    return-void
.end method

.method unregisterCallback(Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice$Callback;)V
    .locals 2
    .param p1, "callback"    # Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice$Callback;

    .prologue
    .line 623
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    monitor-enter v1

    .line 624
    :try_start_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 625
    monitor-exit v1

    .line 626
    return-void

    .line 625
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
