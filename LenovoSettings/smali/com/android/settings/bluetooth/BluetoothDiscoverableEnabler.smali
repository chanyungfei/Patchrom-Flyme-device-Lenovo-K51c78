.class final Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDiscoverableEnabler;
.super Ljava/lang/Object;
.source "BluetoothDiscoverableEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field static final DEFAULT_DISCOVERABLE_TIMEOUT:I = 0x78

.field private static final DISCOVERABLE_TIMEOUT_FIVE_MINUTES:I = 0x12c

.field static final DISCOVERABLE_TIMEOUT_NEVER:I = 0x0

.field private static final DISCOVERABLE_TIMEOUT_ONE_HOUR:I = 0xe10

.field private static final DISCOVERABLE_TIMEOUT_TWO_MINUTES:I = 0x78

.field private static final KEY_DISCOVERABLE_TIMEOUT:Ljava/lang/String; = "bt_discoverable_timeout"

.field private static final SYSTEM_PROPERTY_DISCOVERABLE_TIMEOUT:Ljava/lang/String; = "debug.bt.discoverable_time"

.field private static final TAG:Ljava/lang/String; = "BluetoothDiscoverableEnabler"

.field private static final VALUE_DISCOVERABLE_TIMEOUT_FIVE_MINUTES:Ljava/lang/String; = "fivemin"

.field private static final VALUE_DISCOVERABLE_TIMEOUT_NEVER:Ljava/lang/String; = "never"

.field private static final VALUE_DISCOVERABLE_TIMEOUT_ONE_HOUR:Ljava/lang/String; = "onehour"

.field private static final VALUE_DISCOVERABLE_TIMEOUT_TWO_MINUTES:Ljava/lang/String; = "twomin"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDiscoverable:Z

.field private final mDiscoveryPreference:Landroid/preference/Preference;

.field private final mLocalAdapter:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;

.field private mNumberOfPairedDevices:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSharedPreferences:Landroid/content/SharedPreferences;

.field private mTimeoutSecs:I

.field private final mUiHandler:Landroid/os/Handler;

.field private final mUpdateCountdownSummaryRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;Landroid/preference/Preference;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapter"    # Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;
    .param p3, "discoveryPreference"    # Landroid/preference/Preference;

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, -0x1

    iput v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDiscoverableEnabler;->mTimeoutSecs:I

    .line 78
    new-instance v0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDiscoverableEnabler$1;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDiscoverableEnabler$1;-><init>(Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDiscoverableEnabler;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDiscoverableEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 91
    new-instance v0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDiscoverableEnabler$2;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDiscoverableEnabler$2;-><init>(Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDiscoverableEnabler;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDiscoverableEnabler;->mUpdateCountdownSummaryRunnable:Ljava/lang/Runnable;

    .line 99
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    .line 100
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDiscoverableEnabler;->mUiHandler:Landroid/os/Handler;

    .line 101
    iput-object p2, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDiscoverableEnabler;->mLocalAdapter:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;

    .line 102
    iput-object p3, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDiscoverableEnabler;->mDiscoveryPreference:Landroid/preference/Preference;

    .line 103
    invoke-virtual {p3}, Landroid/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDiscoverableEnabler;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 104
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 105
    return-void
.end method

.method static synthetic access$000(Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDiscoverableEnabler;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDiscoverableEnabler;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDiscoverableEnabler;->updateCountdownSummary()V

    return-void
.end method

.method private static formatTimeRemaining(I)Ljava/lang/String;
    .locals 5
    .param p0, "timeout"    # I

    .prologue
    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v3, 0x6

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 205
    .local v1, "sb":Ljava/lang/StringBuilder;
    div-int/lit8 v0, p0, 0x3c

    .line 206
    .local v0, "min":I
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 207
    mul-int/lit8 v3, v0, 0x3c

    sub-int v2, p0, v3

    .line 208
    .local v2, "sec":I
    const/16 v3, 0xa

    if-ge v2, v3, :cond_0

    .line 209
    const/16 v3, 0x30

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 211
    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getDiscoverableTimeout()I
    .locals 5

    .prologue
    const/4 v3, -0x1

    .line 249
    iget v2, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDiscoverableEnabler;->mTimeoutSecs:I

    if-eq v2, v3, :cond_0

    .line 250
    iget v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDiscoverableEnabler;->mTimeoutSecs:I

    .line 269
    :goto_0
    return v0

    .line 253
    :cond_0
    const-string v2, "debug.bt.discoverable_time"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 254
    .local v0, "timeout":I
    if-gez v0, :cond_1

    .line 255
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDiscoverableEnabler;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "bt_discoverable_timeout"

    const-string v4, "twomin"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 258
    .local v1, "timeoutValue":Ljava/lang/String;
    const-string v2, "never"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 259
    const/4 v0, 0x0

    .line 268
    .end local v1    # "timeoutValue":Ljava/lang/String;
    :cond_1
    :goto_1
    iput v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDiscoverableEnabler;->mTimeoutSecs:I

    goto :goto_0

    .line 260
    .restart local v1    # "timeoutValue":Ljava/lang/String;
    :cond_2
    const-string v2, "onehour"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 261
    const/16 v0, 0xe10

    goto :goto_1

    .line 262
    :cond_3
    const-string v2, "fivemin"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 263
    const/16 v0, 0x12c

    goto :goto_1

    .line 265
    :cond_4
    const/16 v0, 0x78

    goto :goto_1
.end method

.method private setEnabled(Z)V
    .locals 10
    .param p1, "enable"    # Z

    .prologue
    .line 164
    if-eqz p1, :cond_2

    .line 165
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDiscoverableEnabler;->getDiscoverableTimeout()I

    move-result v2

    .line 169
    .local v2, "timeout":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    int-to-long v6, v2

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    add-long v0, v4, v6

    .line 172
    .local v0, "endTimestamp":J
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    invoke-static {v3, v0, v1}, Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothPreferences;->persistDiscoverableEndTimestamp(Landroid/content/Context;J)V

    .line 174
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDiscoverableEnabler;->mLocalAdapter:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;

    const/16 v4, 0x17

    invoke-virtual {v3, v4, v2}, Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;->setScanMode(II)Z

    .line 175
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDiscoverableEnabler;->updateCountdownSummary()V

    .line 177
    const-string v3, "BluetoothDiscoverableEnabler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setEnabled(): enabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "timeout = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    if-lez v2, :cond_1

    .line 180
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    invoke-static {v3, v0, v1}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDiscoverableTimeoutReceiver;->setDiscoverableAlarm(Landroid/content/Context;J)V

    .line 191
    .end local v0    # "endTimestamp":J
    .end local v2    # "timeout":I
    :cond_0
    :goto_0
    return-void

    .line 182
    .restart local v0    # "endTimestamp":J
    .restart local v2    # "timeout":I
    :cond_1
    if-nez v2, :cond_0

    .line 184
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDiscoverableTimeoutReceiver;->cancelDiscoverableAlarm(Landroid/content/Context;)V

    goto :goto_0

    .line 188
    .end local v0    # "endTimestamp":J
    .end local v2    # "timeout":I
    :cond_2
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDiscoverableEnabler;->mLocalAdapter:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;

    const/16 v4, 0x15

    invoke-virtual {v3, v4}, Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;->setScanMode(I)V

    .line 189
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDiscoverableTimeoutReceiver;->cancelDiscoverableAlarm(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private setSummaryNotDiscoverable()V
    .locals 2

    .prologue
    .line 307
    iget v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDiscoverableEnabler;->mNumberOfPairedDevices:I

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDiscoverableEnabler;->mDiscoveryPreference:Landroid/preference/Preference;

    const v1, 0x7f0c04b0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 312
    :goto_0
    return-void

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDiscoverableEnabler;->mDiscoveryPreference:Landroid/preference/Preference;

    const v1, 0x7f0c04af

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0
.end method

.method private updateCountdownSummary()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x3e8

    const/4 v9, 0x0

    .line 315
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDiscoverableEnabler;->mLocalAdapter:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v6}, Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;->getScanMode()I

    move-result v4

    .line 316
    .local v4, "mode":I
    const/16 v6, 0x17

    if-eq v4, v6, :cond_0

    .line 357
    :goto_0
    return-void

    .line 323
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 326
    .local v0, "currentTimestamp":J
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothPreferences;->getDiscoverableEndTimestamp(Landroid/content/Context;)J

    move-result-wide v2

    .line 328
    .local v2, "endTimestamp":J
    cmp-long v6, v0, v2

    if-lez v6, :cond_2

    .line 333
    const-string v6, "BluetoothDiscoverableEnabler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateCountdownSummary, time elapsed, endTimestamp = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-nez v6, :cond_1

    .line 337
    invoke-direct {p0, v9}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDiscoverableEnabler;->setEnabled(Z)V

    .line 338
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDiscoverableEnabler;->setSummaryNotDiscoverable()V

    goto :goto_0

    .line 344
    :cond_1
    invoke-direct {p0, v9}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDiscoverableEnabler;->updateTimerDisplay(I)V

    goto :goto_0

    .line 350
    :cond_2
    sub-long v6, v2, v0

    div-long/2addr v6, v10

    long-to-int v5, v6

    .line 351
    .local v5, "timeLeft":I
    invoke-direct {p0, v5}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDiscoverableEnabler;->updateTimerDisplay(I)V

    .line 353
    monitor-enter p0

    .line 354
    :try_start_0
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDiscoverableEnabler;->mUiHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDiscoverableEnabler;->mUpdateCountdownSummaryRunnable:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 355
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDiscoverableEnabler;->mUiHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDiscoverableEnabler;->mUpdateCountdownSummaryRunnable:Ljava/lang/Runnable;

    const-wide/16 v8, 0x3e8

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 356
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method private updateTimerDisplay(I)V
    .locals 6
    .param p1, "timeout"    # I

    .prologue
    .line 194
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDiscoverableEnabler;->getDiscoverableTimeout()I

    move-result v1

    if-nez v1, :cond_0

    .line 195
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDiscoverableEnabler;->mDiscoveryPreference:Landroid/preference/Preference;

    const v2, 0x7f0c04ae

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 201
    :goto_0
    return-void

    .line 197
    :cond_0
    invoke-static {p1}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDiscoverableEnabler;->formatTimeRemaining(I)Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, "textTimeout":Ljava/lang/String;
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDiscoverableEnabler;->mDiscoveryPreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    const v3, 0x7f0c04ad

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method getDiscoverableTimeoutIndex()I
    .locals 2

    .prologue
    .line 273
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDiscoverableEnabler;->getDiscoverableTimeout()I

    move-result v0

    .line 274
    .local v0, "timeout":I
    sparse-switch v0, :sswitch_data_0

    .line 277
    const/4 v1, 0x0

    .line 286
    :goto_0
    return v1

    .line 280
    :sswitch_0
    const/4 v1, 0x1

    goto :goto_0

    .line 283
    :sswitch_1
    const/4 v1, 0x2

    goto :goto_0

    .line 286
    :sswitch_2
    const/4 v1, 0x3

    goto :goto_0

    .line 274
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x12c -> :sswitch_0
        0xe10 -> :sswitch_1
    .end sparse-switch
.end method

.method handleModeChanged(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 296
    const-string v0, "BluetoothDiscoverableEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleModeChanged(): mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    const/16 v0, 0x17

    if-ne p1, v0, :cond_0

    .line 298
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDiscoverableEnabler;->mDiscoverable:Z

    .line 299
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDiscoverableEnabler;->updateCountdownSummary()V

    .line 304
    :goto_0
    return-void

    .line 301
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDiscoverableEnabler;->mDiscoverable:Z

    .line 302
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDiscoverableEnabler;->setSummaryNotDiscoverable()V

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v1, 0x1

    .line 158
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDiscoverableEnabler;->mDiscoverable:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDiscoverableEnabler;->mDiscoverable:Z

    .line 159
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDiscoverableEnabler;->mDiscoverable:Z

    invoke-direct {p0, v0}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDiscoverableEnabler;->setEnabled(Z)V

    .line 160
    return v1

    .line 158
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDiscoverableEnabler;->mLocalAdapter:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;

    if-nez v0, :cond_0

    .line 154
    :goto_0
    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDiscoverableEnabler;->mUiHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDiscoverableEnabler;->mUpdateCountdownSummaryRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 152
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDiscoverableEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 153
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDiscoverableEnabler;->mDiscoveryPreference:Landroid/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0
.end method

.method public resetDiscoverableTimeout()V
    .locals 1

    .prologue
    .line 245
    const/4 v0, -0x1

    iput v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDiscoverableEnabler;->mTimeoutSecs:I

    .line 246
    return-void
.end method

.method public resume()V
    .locals 6

    .prologue
    .line 108
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDiscoverableEnabler;->mLocalAdapter:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;

    if-nez v3, :cond_0

    .line 144
    :goto_0
    return-void

    .line 114
    :cond_0
    const-string v3, "debug.bt.discoverable_time"

    const/4 v4, -0x1

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 115
    .local v1, "timeout":I
    if-gez v1, :cond_1

    .line 117
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDiscoverableEnabler;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v4, "bt_discoverable_timeout"

    const-string v5, "twomin"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 119
    .local v2, "timeoutValue":Ljava/lang/String;
    const-string v3, "never"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 121
    const/4 v1, 0x0

    .line 136
    .end local v2    # "timeoutValue":Ljava/lang/String;
    :cond_1
    :goto_1
    const-string v3, "BluetoothDiscoverableEnabler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BluetoothDiscoverableEnabler, resume, TimeoutSecs: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDiscoverableEnabler;->mTimeoutSecs:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", NewTimeout: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iput v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDiscoverableEnabler;->mTimeoutSecs:I

    .line 140
    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "android.bluetooth.adapter.action.SCAN_MODE_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 141
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDiscoverableEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 142
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDiscoverableEnabler;->mDiscoveryPreference:Landroid/preference/Preference;

    invoke-virtual {v3, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 143
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDiscoverableEnabler;->mLocalAdapter:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v3}, Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;->getScanMode()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDiscoverableEnabler;->handleModeChanged(I)V

    goto :goto_0

    .line 123
    .end local v0    # "filter":Landroid/content/IntentFilter;
    .restart local v2    # "timeoutValue":Ljava/lang/String;
    :cond_2
    const-string v3, "onehour"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 125
    const/16 v1, 0xe10

    goto :goto_1

    .line 127
    :cond_3
    const-string v3, "fivemin"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 129
    const/16 v1, 0x12c

    goto :goto_1

    .line 133
    :cond_4
    const/16 v1, 0x78

    goto :goto_1
.end method

.method setDiscoverableTimeout(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 217
    packed-switch p1, :pswitch_data_0

    .line 220
    const/16 v1, 0x78

    iput v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDiscoverableEnabler;->mTimeoutSecs:I

    .line 221
    const-string v0, "twomin"

    .line 239
    .local v0, "timeoutValue":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDiscoverableEnabler;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "bt_discoverable_timeout"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 240
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDiscoverableEnabler;->setEnabled(Z)V

    .line 241
    return-void

    .line 225
    .end local v0    # "timeoutValue":Ljava/lang/String;
    :pswitch_0
    const/16 v1, 0x12c

    iput v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDiscoverableEnabler;->mTimeoutSecs:I

    .line 226
    const-string v0, "fivemin"

    .line 227
    .restart local v0    # "timeoutValue":Ljava/lang/String;
    goto :goto_0

    .line 230
    .end local v0    # "timeoutValue":Ljava/lang/String;
    :pswitch_1
    const/16 v1, 0xe10

    iput v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDiscoverableEnabler;->mTimeoutSecs:I

    .line 231
    const-string v0, "onehour"

    .line 232
    .restart local v0    # "timeoutValue":Ljava/lang/String;
    goto :goto_0

    .line 235
    .end local v0    # "timeoutValue":Ljava/lang/String;
    :pswitch_2
    const/4 v1, 0x0

    iput v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDiscoverableEnabler;->mTimeoutSecs:I

    .line 236
    const-string v0, "never"

    .restart local v0    # "timeoutValue":Ljava/lang/String;
    goto :goto_0

    .line 217
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method setNumberOfPairedDevices(I)V
    .locals 1
    .param p1, "pairedDevices"    # I

    .prologue
    .line 291
    iput p1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDiscoverableEnabler;->mNumberOfPairedDevices:I

    .line 292
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDiscoverableEnabler;->mLocalAdapter:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;->getScanMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDiscoverableEnabler;->handleModeChanged(I)V

    .line 293
    return-void
.end method
