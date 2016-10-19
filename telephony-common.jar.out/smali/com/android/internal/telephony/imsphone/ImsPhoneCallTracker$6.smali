.class Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;
.super Landroid/content/BroadcastReceiver;
.source "ImsPhoneCallTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V
    .locals 0

    .prologue
    .line 1889
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1892
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.android.ims.IMS_INCOMING_CALL_INDICATION"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1893
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v5, "onReceive : indication call intent"

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1895
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    # getter for: Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;
    invoke-static {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->access$000(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/ImsManager;

    move-result-object v4

    if-nez v4, :cond_1

    .line 1896
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v5, "no ims manager"

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1933
    :cond_0
    :goto_0
    return-void

    .line 1900
    :cond_1
    const/4 v2, 0x1

    .line 1901
    .local v2, "isAllow":Z
    const-string v4, "android:imsServiceId"

    const/4 v5, -0x1

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1903
    .local v3, "serviceId":I
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v4

    const-string v5, "persist.radio.terminal-based.cw"

    const-string v6, "disabled_tbcw"

    invoke-static {v4, v5, v6}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1908
    .local v0, "callWaitingSetting":Ljava/lang/String;
    const-string v4, "enabled_tbcw_off"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_2

    .line 1912
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v5, "PROPERTY_TERMINAL_BASED_CALL_WAITING_MODE = TERMINAL_BASED_CALL_WAITING_ENABLED_OFF. Reject the call as UDUB "

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1915
    const/4 v2, 0x0

    .line 1919
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    # invokes: Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isEccExist()Z
    invoke-static {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->access$2700(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1920
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v5, "there is an ECC call, dis-allow this incoming call!"

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1921
    const/4 v2, 0x0

    .line 1924
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setCallIndication : serviceId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", intent = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isAllow = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1928
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    # getter for: Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;
    invoke-static {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->access$000(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/ImsManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    # getter for: Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mServiceId:I
    invoke-static {v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->access$100(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)I

    move-result v5

    invoke-virtual {v4, v5, p2, v2}, Lcom/android/ims/ImsManager;->setCallIndication(ILandroid/content/Intent;Z)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1929
    :catch_0
    move-exception v1

    .line 1930
    .local v1, "e":Lcom/android/ims/ImsException;
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setCallIndication ImsException "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
