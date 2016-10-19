.class Lcom/android/internal/telephony/gsm/GSMPhone$1;
.super Landroid/content/BroadcastReceiver;
.source "GSMPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GSMPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GSMPhone;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 0

    .prologue
    .line 3462
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GSMPhone$1;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 3465
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3466
    .local v0, "action":Ljava/lang/String;
    const-string v9, "GSMPhone"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "received broadcast "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3469
    const-string v9, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 3470
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GSMPhone$1;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    # getter for: Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/internal/telephony/gsm/GSMPhone;->access$000(Lcom/android/internal/telephony/gsm/GSMPhone;)Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v8

    .line 3471
    .local v8, "subMgr":Landroid/telephony/SubscriptionManager;
    const/4 v4, 0x0

    .line 3472
    .local v4, "mySubInfo":Landroid/telephony/SubscriptionInfo;
    if-eqz v8, :cond_0

    .line 3473
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GSMPhone$1;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubId()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v4

    .line 3476
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "persist.radio.cfu.iccid."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GSMPhone$1;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v10}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3477
    .local v3, "mySettingName":Ljava/lang/String;
    const-string v9, ""

    invoke-static {v3, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3479
    .local v5, "oldIccId":Ljava/lang/String;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 3480
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 3481
    const-string v9, "GSMPhone"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " mySubId "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GSMPhone$1;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v11}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubId()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " mySettingName "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " old iccid : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " new iccid : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3484
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3485
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "persist.radio.cfu.change."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GSMPhone$1;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v10}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3486
    .local v1, "isChanged":Ljava/lang/String;
    const-string v9, "1"

    invoke-static {v1, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3487
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GSMPhone$1;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    const/4 v10, 0x1

    # setter for: Lcom/android/internal/telephony/gsm/GSMPhone;->needQueryCfu:Z
    invoke-static {v9, v10}, Lcom/android/internal/telephony/gsm/GSMPhone;->access$102(Lcom/android/internal/telephony/gsm/GSMPhone;Z)Z

    .line 3488
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GSMPhone$1;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/gsm/GSMPhone;->setCsFallbackStatus(I)V

    .line 3489
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GSMPhone$1;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    const/4 v10, 0x0

    # setter for: Lcom/android/internal/telephony/gsm/GSMPhone;->mTbcwMode:I
    invoke-static {v9, v10}, Lcom/android/internal/telephony/gsm/GSMPhone;->access$202(Lcom/android/internal/telephony/gsm/GSMPhone;I)I

    .line 3490
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GSMPhone$1;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v9

    invoke-static {v9}, Lcom/android/internal/telephony/MMTelSSUtils;->isOp01IccCard(I)Z

    move-result v9

    if-nez v9, :cond_3

    .line 3491
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GSMPhone$1;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    const/4 v10, 0x1

    # setter for: Lcom/android/internal/telephony/gsm/GSMPhone;->mTbcwMode:I
    invoke-static {v9, v10}, Lcom/android/internal/telephony/gsm/GSMPhone;->access$202(Lcom/android/internal/telephony/gsm/GSMPhone;I)I

    .line 3492
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GSMPhone$1;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    const-string v10, "persist.radio.terminal-based.cw"

    const-string v11, "disabled_tbcw"

    invoke-virtual {v9, v10, v11}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3503
    :cond_1
    :goto_0
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GSMPhone$1;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/gsm/GSMPhone;->saveTimeSlot([J)V

    .line 3504
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GSMPhone$1;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    const/4 v10, -0x1

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/gsm/GSMPhone;->saveClirSetting(I)V

    .line 3506
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GSMPhone$1;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    const-string v10, "persist.radio.ut.cfu.mode"

    const-string v11, "disabled_ut_cfu_mode"

    invoke-virtual {v9, v10, v11}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3510
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GSMPhone$1;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v9, v9, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GSMPhone$1;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v9, v9, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v9, v9, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GSMPhone$1;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v9, v9, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v9, v9, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getState()I

    move-result v9

    if-nez v9, :cond_2

    .line 3512
    const-string v9, "GSMPhone"

    const-string v10, "Send EVENT_QUERY_CFU"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3513
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GSMPhone$1;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    const/16 v10, 0x7d2

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 3514
    .local v2, "msgQueryCfu":Landroid/os/Message;
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GSMPhone$1;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v9, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->sendMessage(Landroid/os/Message;)Z

    .line 3532
    .end local v1    # "isChanged":Ljava/lang/String;
    .end local v2    # "msgQueryCfu":Landroid/os/Message;
    .end local v3    # "mySettingName":Ljava/lang/String;
    .end local v4    # "mySubInfo":Landroid/telephony/SubscriptionInfo;
    .end local v5    # "oldIccId":Ljava/lang/String;
    .end local v8    # "subMgr":Landroid/telephony/SubscriptionManager;
    :cond_2
    :goto_1
    return-void

    .line 3496
    .restart local v1    # "isChanged":Ljava/lang/String;
    .restart local v3    # "mySettingName":Ljava/lang/String;
    .restart local v4    # "mySubInfo":Landroid/telephony/SubscriptionInfo;
    .restart local v5    # "oldIccId":Ljava/lang/String;
    .restart local v8    # "subMgr":Landroid/telephony/SubscriptionManager;
    :cond_3
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GSMPhone$1;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v9

    invoke-static {v9}, Lcom/android/internal/telephony/MMTelSSUtils;->isUsimCard(I)Z

    move-result v9

    if-nez v9, :cond_1

    .line 3497
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GSMPhone$1;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    const/4 v10, 0x3

    # setter for: Lcom/android/internal/telephony/gsm/GSMPhone;->mTbcwMode:I
    invoke-static {v9, v10}, Lcom/android/internal/telephony/gsm/GSMPhone;->access$202(Lcom/android/internal/telephony/gsm/GSMPhone;I)I

    .line 3498
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GSMPhone$1;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    const-string v10, "persist.radio.terminal-based.cw"

    const-string v11, "disabled_tbcw"

    invoke-virtual {v9, v10, v11}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3518
    .end local v1    # "isChanged":Ljava/lang/String;
    .end local v3    # "mySettingName":Ljava/lang/String;
    .end local v4    # "mySubInfo":Landroid/telephony/SubscriptionInfo;
    .end local v5    # "oldIccId":Ljava/lang/String;
    .end local v8    # "subMgr":Landroid/telephony/SubscriptionManager;
    :cond_4
    const-string v9, "com.android.ims.IMS_STATE_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 3519
    const-string v9, "android:regState"

    const/4 v10, -0x1

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 3520
    .local v6, "reg":I
    const-string v9, "android:phone_id"

    const/4 v10, -0x1

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 3521
    .local v7, "slotId":I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GSMPhone$1;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v9

    if-ne v7, v9, :cond_2

    if-nez v6, :cond_2

    .line 3522
    const-string v9, "GSMPhone"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onReceive ACTION_IMS_STATE_CHANGED: reg="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", SimID="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3524
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GSMPhone$1;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v9

    invoke-static {v9}, Lcom/android/internal/telephony/MMTelSSUtils;->isOp01IccCard(I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 3526
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GSMPhone$1;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    const/4 v10, 0x2

    # setter for: Lcom/android/internal/telephony/gsm/GSMPhone;->mTbcwMode:I
    invoke-static {v9, v10}, Lcom/android/internal/telephony/gsm/GSMPhone;->access$202(Lcom/android/internal/telephony/gsm/GSMPhone;I)I

    .line 3527
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GSMPhone$1;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/GSMPhone;->setTbcwToEnabledOnIfDisabled()V

    goto :goto_1
.end method
