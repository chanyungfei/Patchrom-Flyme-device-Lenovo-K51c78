.class Lcom/android/internal/telephony/SmsStorageMonitor$SimMeFullRunnable;
.super Ljava/lang/Object;
.source "SmsStorageMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SmsStorageMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SimMeFullRunnable"
.end annotation


# instance fields
.field private mAction:Ljava/lang/String;

.field private mResult:I

.field final synthetic this$0:Lcom/android/internal/telephony/SmsStorageMonitor;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SmsStorageMonitor;Ljava/lang/String;I)V
    .locals 0
    .param p2, "act"    # Ljava/lang/String;
    .param p3, "result"    # I

    .prologue
    .line 278
    iput-object p1, p0, Lcom/android/internal/telephony/SmsStorageMonitor$SimMeFullRunnable;->this$0:Lcom/android/internal/telephony/SmsStorageMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    iput-object p2, p0, Lcom/android/internal/telephony/SmsStorageMonitor$SimMeFullRunnable;->mAction:Ljava/lang/String;

    .line 280
    iput p3, p0, Lcom/android/internal/telephony/SmsStorageMonitor$SimMeFullRunnable;->mResult:I

    .line 281
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 285
    const-string v1, "SmsStorageMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "run(), mAction = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/SmsStorageMonitor$SimMeFullRunnable;->mAction:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mIsSubscriptionReady = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/SmsStorageMonitor$SimMeFullRunnable;->this$0:Lcom/android/internal/telephony/SmsStorageMonitor;

    # getter for: Lcom/android/internal/telephony/SmsStorageMonitor;->mIsSubscriptionReady:Z
    invoke-static {v3}, Lcom/android/internal/telephony/SmsStorageMonitor;->access$100(Lcom/android/internal/telephony/SmsStorageMonitor;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object v1, p0, Lcom/android/internal/telephony/SmsStorageMonitor$SimMeFullRunnable;->this$0:Lcom/android/internal/telephony/SmsStorageMonitor;

    # invokes: Lcom/android/internal/telephony/SmsStorageMonitor;->checkAndWaitSubscriptionReady()V
    invoke-static {v1}, Lcom/android/internal/telephony/SmsStorageMonitor;->access$200(Lcom/android/internal/telephony/SmsStorageMonitor;)V

    .line 288
    const-string v1, "SmsStorageMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "run(), new intent to broadcast, mResult = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/SmsStorageMonitor$SimMeFullRunnable;->mResult:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/telephony/SmsStorageMonitor$SimMeFullRunnable;->mAction:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 290
    .local v0, "intent":Landroid/content/Intent;
    iget v1, p0, Lcom/android/internal/telephony/SmsStorageMonitor$SimMeFullRunnable;->mResult:I

    if-lez v1, :cond_0

    .line 291
    const-string v1, "result"

    iget v2, p0, Lcom/android/internal/telephony/SmsStorageMonitor$SimMeFullRunnable;->mResult:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 293
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/SmsStorageMonitor$SimMeFullRunnable;->this$0:Lcom/android/internal/telephony/SmsStorageMonitor;

    # getter for: Lcom/android/internal/telephony/SmsStorageMonitor;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/internal/telephony/SmsStorageMonitor;->access$300(Lcom/android/internal/telephony/SmsStorageMonitor;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 294
    iget-object v1, p0, Lcom/android/internal/telephony/SmsStorageMonitor$SimMeFullRunnable;->this$0:Lcom/android/internal/telephony/SmsStorageMonitor;

    iget-object v1, v1, Lcom/android/internal/telephony/SmsStorageMonitor;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 295
    iget-object v1, p0, Lcom/android/internal/telephony/SmsStorageMonitor$SimMeFullRunnable;->this$0:Lcom/android/internal/telephony/SmsStorageMonitor;

    # getter for: Lcom/android/internal/telephony/SmsStorageMonitor;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/telephony/SmsStorageMonitor;->access$400(Lcom/android/internal/telephony/SmsStorageMonitor;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.RECEIVE_SMS"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 296
    return-void
.end method
