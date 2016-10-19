.class public final Lcom/android/internal/telephony/SmsStorageMonitor;
.super Landroid/os/Handler;
.source "SmsStorageMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SmsStorageMonitor$SimMeFullRunnable;
    }
.end annotation


# static fields
.field private static final EVENT_ICC_FULL:I = 0x1

.field private static final EVENT_ME_FULL:I = 0x64

.field private static final EVENT_RADIO_ON:I = 0x3

.field private static final EVENT_REPORT_MEMORY_STATUS_DONE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SmsStorageMonitor"

.field private static final WAKE_LOCK_TIMEOUT:I = 0x1388


# instance fields
.field final mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private final mContext:Landroid/content/Context;

.field private mIsSubscriptionReady:Z

.field private final mLock:Ljava/lang/Object;

.field mPhone:Lcom/android/internal/telephony/PhoneBase;

.field private mReportMemoryStatusPending:Z

.field private final mResultReceiver:Landroid/content/BroadcastReceiver;

.field mStorageAvailable:Z

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 4
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 97
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 76
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mLock:Ljava/lang/Object;

    .line 78
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mIsSubscriptionReady:Z

    .line 85
    iput-boolean v2, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mStorageAvailable:Z

    .line 211
    new-instance v1, Lcom/android/internal/telephony/SmsStorageMonitor$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/SmsStorageMonitor$1;-><init>(Lcom/android/internal/telephony/SmsStorageMonitor;)V

    iput-object v1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mResultReceiver:Landroid/content/BroadcastReceiver;

    .line 98
    iput-object p1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 99
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mContext:Landroid/content/Context;

    .line 100
    iget-object v1, p1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 102
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsStorageMonitor;->createWakelock()V

    .line 104
    iget-object v1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnIccSmsFull(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 106
    iget-object v1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x64

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnMeSmsFull(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 108
    iget-object v1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x3

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 112
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 113
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.DEVICE_STORAGE_FULL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 114
    const-string v1, "android.intent.action.DEVICE_STORAGE_NOT_FULL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 116
    const-string v1, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 118
    iget-object v1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mResultReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 119
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/SmsStorageMonitor;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/SmsStorageMonitor;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/SmsStorageMonitor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/SmsStorageMonitor;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mIsSubscriptionReady:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/SmsStorageMonitor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/SmsStorageMonitor;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mIsSubscriptionReady:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/SmsStorageMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/SmsStorageMonitor;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsStorageMonitor;->checkAndWaitSubscriptionReady()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/SmsStorageMonitor;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/SmsStorageMonitor;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/SmsStorageMonitor;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/SmsStorageMonitor;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private checkAndWaitSubscriptionReady()V
    .locals 4

    .prologue
    .line 259
    iget-object v2, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 260
    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mIsSubscriptionReady:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 262
    :try_start_1
    const-string v1, "SmsStorageMonitor"

    const-string v3, "checkAndWaitSubscriptionReady, wait..."

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object v1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 269
    :cond_0
    :try_start_2
    monitor-exit v2

    .line 270
    :goto_0
    return-void

    .line 264
    :catch_0
    move-exception v0

    .line 265
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "SmsStorageMonitor"

    const-string v3, "checkAndWaitSubscriptionReady, wait interrupted"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    monitor-exit v2

    goto :goto_0

    .line 269
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private createWakelock()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 179
    iget-object v1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 180
    .local v0, "pm":Landroid/os/PowerManager;
    const-string v1, "SmsStorageMonitor"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 181
    iget-object v1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 182
    return-void
.end method

.method private handleMeFull()V
    .locals 6

    .prologue
    const/4 v4, 0x3

    .line 240
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 241
    new-instance v1, Lcom/android/internal/telephony/SmsStorageMonitor$SimMeFullRunnable;

    const-string v3, "android.provider.Telephony.SMS_REJECTED"

    invoke-direct {v1, p0, v3, v4}, Lcom/android/internal/telephony/SmsStorageMonitor$SimMeFullRunnable;-><init>(Lcom/android/internal/telephony/SmsStorageMonitor;Ljava/lang/String;I)V

    .line 243
    .local v1, "r":Lcom/android/internal/telephony/SmsStorageMonitor$SimMeFullRunnable;
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 244
    .local v2, "thd":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 252
    .end local v1    # "r":Lcom/android/internal/telephony/SmsStorageMonitor$SimMeFullRunnable;
    .end local v2    # "thd":Ljava/lang/Thread;
    :goto_0
    return-void

    .line 246
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.provider.Telephony.SMS_REJECTED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 247
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "result"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 248
    iget-object v3, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v3

    invoke-static {v0, v3}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 249
    iget-object v3, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 250
    iget-object v3, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.RECEIVE_SMS"

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnIccSmsFull(Landroid/os/Handler;)V

    .line 123
    iget-object v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 124
    iget-object v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mResultReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 125
    return-void
.end method

.method public handleIccFull()V
    .locals 6

    .prologue
    .line 193
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 194
    new-instance v1, Lcom/android/internal/telephony/SmsStorageMonitor$SimMeFullRunnable;

    const-string v3, "android.provider.Telephony.SIM_FULL"

    const/4 v4, -0x1

    invoke-direct {v1, p0, v3, v4}, Lcom/android/internal/telephony/SmsStorageMonitor$SimMeFullRunnable;-><init>(Lcom/android/internal/telephony/SmsStorageMonitor;Ljava/lang/String;I)V

    .line 195
    .local v1, "r":Lcom/android/internal/telephony/SmsStorageMonitor$SimMeFullRunnable;
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 196
    .local v2, "thd":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 204
    .end local v1    # "r":Lcom/android/internal/telephony/SmsStorageMonitor$SimMeFullRunnable;
    .end local v2    # "thd":Ljava/lang/Thread;
    :goto_0
    return-void

    .line 198
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.provider.Telephony.SIM_FULL"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 199
    .local v0, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 200
    iget-object v3, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v3

    invoke-static {v0, v3}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 201
    iget-object v3, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.RECEIVE_SMS"

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 135
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 176
    :goto_0
    return-void

    .line 137
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsStorageMonitor;->handleIccFull()V

    goto :goto_0

    .line 141
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 142
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 143
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mReportMemoryStatusPending:Z

    .line 144
    const-string v1, "SmsStorageMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Memory status report to modem pending : mStorageAvailable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mStorageAvailable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 147
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mReportMemoryStatusPending:Z

    goto :goto_0

    .line 163
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_2
    const-string v1, "SmsStorageMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending pending memory status report : mStorageAvailable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mStorageAvailable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-boolean v2, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mStorageAvailable:Z

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/SmsStorageMonitor;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->reportSmsMemoryStatus(ZLandroid/os/Message;)V

    goto :goto_0

    .line 172
    :sswitch_3
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsStorageMonitor;->handleMeFull()V

    goto :goto_0

    .line 135
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x64 -> :sswitch_3
    .end sparse-switch
.end method

.method public isStorageAvailable()Z
    .locals 1

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mStorageAvailable:Z

    return v0
.end method
